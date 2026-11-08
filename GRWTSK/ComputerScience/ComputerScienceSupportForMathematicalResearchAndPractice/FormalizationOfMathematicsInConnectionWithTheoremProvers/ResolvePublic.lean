/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone, Gabriel Ebner
-/
module

prelude
public import Lake.Config.Workspace
public import Lake.Load.Manifest
import Lake.Util.IO
import Lake.Util.StoreInsts
import Lake.Config.Monad
import Lake.Load.Materialize
import Lake.Load.Lean.Eval
import Lake.Load.Package
import Init.Data.Vector.Lemmas
import Init.Data.Range.Polymorphic.Iterators
import Init.Data.Range.Polymorphic.Lemmas
import Init.TacticsExtra
import Lean.Runtime

public section

open System Lean

/-! # Dependency Resolution

This module contains definitions for resolving the dependencies of a package.
-/

namespace Lake

/-- Returns the load configuration of a materialized dependency. -/
@[inline] def mkDepLoadConfig
  (ws : Workspace) (dep : MaterializedDep)
  (lakeOpts : NameMap String) (leanOpts : Options) (reconfigure : Bool)
: LoadConfig where
  lakeEnv := ws.lakeEnv
  wsDir := ws.dir
  pkgIdx := ws.packages.size
  pkgName := dep.name
  pkgDir := dep.pkgDir
  relPkgDir := dep.relPkgDir
  relConfigFile := dep.relConfigFile
  relManifestFile := dep.relManifestFile
  lakeOpts; leanOpts; reconfigure
  scope := dep.scope
  remoteUrl := dep.remoteUrl

def Workspace.addFacetDecls (decls : Array FacetDecl) (self : Workspace) : Workspace :=
  decls.foldl (·.addFacetConfig ·.config) self

theorem Workspace.packages_addFacetDecls :
  (addFacetDecls decls ws).packages = ws.packages
:= by
  simp only [addFacetDecls]
  apply Array.foldl_induction (fun _ (s : Workspace) => s.packages = ws.packages) rfl
  intro i s h
  simp only [packages_addFacetConfig, h]

def Workspace.setDepIdxs
  (self : Workspace) (pkg : Package) (depIdxs : Array Nat)
  (h_wsIdx : pkg.wsIdx < self.packages.size) (h_depIdxs : ∀ i ∈ depIdxs, i < self.packages.size)
: Workspace :=
  let pkg := {pkg with depIdxs}
  {self with
    packages := self.packages.set pkg.wsIdx pkg h_wsIdx
    packageMap := self.packageMap.insert pkg.keyName pkg
    size_packages_pos := by simp [self.size_packages_pos]
    packages_wsIdx {i} := by
      intro hi
      rw [Array.size_set] at hi
      rw [self.packages.getElem_set]
      split
      · assumption
      · rw [self.packages_wsIdx]
    depIdxs_packages {p} p_mem {i} i_mem := by
      simp only [Array.size_set]
      cases Array.mem_or_eq_of_mem_set p_mem with
      | inl p_mem => exact self.depIdxs_packages p p_mem i i_mem
      | inr p_eq => apply h_depIdxs; simpa only [p_eq, pkg] using i_mem
  }

@[local simp] theorem Workspace.size_packages_setDepIdxs :
  (setDepIdxs ws pkg depIdxs h h').packages.size = ws.packages.size
:= by simp [setDepIdxs]

def Workspace.updateDepPkgs (self : Workspace) : Workspace :=
  let s : {pkgs : Vector Package self.packages.size //
    ∀ i, (h : i < pkgs.size) → pkgs[i].wsIdx = i ∧ ∀ j ∈ pkgs[i].depIdxs, j < pkgs.size} :=
    ⟨self.packages.toVector, fun i i_lt => ⟨self.packages_wsIdx i_lt,
      self.depIdxs_packages self.packages[i] (Array.getElem_mem ..)⟩⟩
  -- Set `depPkgs` in reverse order (starting from a leaf package).
  -- Since the workspace's packages are topologically sorted, no recursion is necessary.
  let ⟨pkgs, h⟩ := self.packages.size.foldRev (init := s) fun i i_lt ⟨pkgs, h⟩ =>
    let pkg := pkgs[i]'i_lt
    let depPkgs := pkg.depIdxs.attach.map fun ⟨j, j_mem⟩ =>
      pkgs[j]'(h i i_lt |>.2 j j_mem)
    let pkgs' := pkgs.set i {pkg with depPkgs}
    have h : ∀ j, (h : j < pkgs'.size) →
        pkgs'[j].wsIdx = j ∧ ∀ k ∈ pkgs'[j].depIdxs, k < pkgs'.size := by
      intro j j_lt
      simp only [Vector.getElem_set, Vector.size, pkgs', pkg]
      split
      · next i_eq => simpa [i_eq] using h j j_lt
      · exact h j j_lt
    ⟨pkgs', h⟩
  {self with
    packages := pkgs.toArray
    packageMap := pkgs.foldl (fun map pkg => map.insert pkg.keyName pkg) {}
    size_packages_pos := by simp [self.size_packages_pos]
    packages_wsIdx {i} i_lt := h i (pkgs.size_toArray.subst i_lt) |>.1
    depIdxs_packages p p_mem := by
      have ⟨i, i_lt, p_eq⟩ := Array.mem_iff_getElem.mp p_mem
      simpa [← p_eq] using h i (pkgs.size_toArray.subst i_lt) |>.2
  }

structure ResolveState (start : Nat) where
  ws : Workspace
  depIdxs : Array Nat
  lt_of_mem : ∀ i ∈ depIdxs, i < ws.packages.size
  start_le : start ≤ ws.packages.size

namespace ResolveState

@[inline] def init (ws : Workspace) (size : Nat) : ResolveState ws.packages.size :=
  {ws, depIdxs := Array.mkEmpty size, lt_of_mem := by simp, start_le := Nat.le_refl ..}

@[inline] def reuseDep (s : ResolveState n) (wsIdx : Fin s.ws.packages.size) : ResolveState n :=
  have lt_of_mem := by
    intro i i_mem
    cases Array.mem_push.mp i_mem with
    | inl i_mem => exact s.lt_of_mem i i_mem
    | inr i_eq => simp only [i_eq, wsIdx.isLt]
  {s with depIdxs := s.depIdxs.push wsIdx, lt_of_mem}

end ResolveState

@[inline] unsafe def guardBySizeImpl [Pure m] [MonadError m] (as : Array α) : m (PLift (as.size ≤ Lean.maxSmallNat)) :=
  pure ⟨lcProof⟩

/--
Returns a proof that the size of an `Array` is at most `Lean.maxSmallNat`.

This is modelled to fail via `MonadError` if this property does not hold. However, when compiled,
this is implemented by a no-op, because this is a fixed property of the Lean runtime.

This function can be used to prove that Array-bounded recursion terminates.
-/
@[implemented_by guardBySizeImpl]
def guardBySize! [Pure m] [MonadError m] (as : Array α) : m (PLift (as.size ≤ Lean.maxSmallNat)) :=
  if h : as.size ≤ Lean.maxSmallNat then pure ⟨h⟩ else error "Array-bounded termination"

/--
Adds monad state used to update the manifest.
It equips the monad with a map of locked dependencies.
-/
abbrev UpdateT := StateT (NameMap PackageEntry)

@[inline] nonrec def UpdateT.run (x : UpdateT m α) (init : NameMap PackageEntry := {}) : m (α × NameMap PackageEntry) :=
  x.run init

end Lake

/-!
Local attribution: grwtsk contributors.
Boundary split of math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec, blob 12bc63da52e494f596009abb873fad86cfda7530.
The Noe driver at tools/math/relocated/GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolvePublic.lean
imports this retained core. Historical evidence applies only to its original bytes.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/
