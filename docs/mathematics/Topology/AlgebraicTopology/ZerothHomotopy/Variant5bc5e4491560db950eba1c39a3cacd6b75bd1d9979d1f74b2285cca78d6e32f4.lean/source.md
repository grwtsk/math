# Complete source: GRWTSK.Topology.AlgebraicTopology.ZerothHomotopy.Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14bbc2d95b911d16e811828ade1b3ed56d4a4949` · SHA-256 `c669272a0256066192142e5e083cc6cb68e9d269ae1f6ea0a2118aeeaefb2ed8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.ToSSetObjEquiv.Variant6fd1ece3d852d96e946a4cbf05c16bc5031758d6ca5031267fd57ce925f50cc7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fd1ece3d852d96e946a4cbf05c16bc5031758d6ca5031267fd57ce925f50cc7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.ToSSetObjEquiv.Variant6fd1ece3d852d96e946a4cbf05c16bc5031758d6ca5031267fd57ce925f50cc7","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"6fd1ece3d852d96e946a4cbf05c16bc5031758d6ca5031267fd57ce925f50cc7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Homotopy/TopCat/ZerothHomotopy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.PiZero
public import Mathlib.AlgebraicTopology.SimplicialSet.TopAdj
public import Mathlib.Topology.Homotopy.TopCat.Path

/-!
# `ZerothHomotopy` and connected components of `TopCat.toSSet.obj X`

In this file, given `X : TopCat`, we define a bijection
`TopCat.zerothHomotopyEquiv` between `ZerothHomotopy X` and
`(TopCat.toSSet.obj X).π₀`.

-/


namespace GRWTSK.Topology.AlgebraicTopology.ToSSetObjEquiv.Variant6fd1ece3d852d96e946a4cbf05c16bc5031758d6ca5031267fd57ce925f50cc7

@[expose] public section

universe u

open Convexity
open scoped Simplicial

namespace TopCat

variable {X : TopCat.{u}}

/-- Given `X : TopCat`, this is the bijection between `1`-simplices of the
singular simplicial set of `X` and the type of morphisms `I ⟶ X`. -/
noncomputable def toSSetObj₁Equiv :
    toSSet.obj X _⦋1⦌ ≃ (I ⟶ X) :=
  (toSSetObjEquiv _ _).trans
    { toFun f := ofHom (f.comp (toContinuousMap TopCat.stdSimplexHomeomorphI.symm))
      invFun f := f.hom.comp TopCat.stdSimplexHomeomorphI
      left_inv _ := by simp
      right_inv _ := by simp }

@[simp]
lemma toSSetObj₁Equiv_apply_zero (s : toSSet.obj X _⦋1⦌) :
    X.toSSetObj₁Equiv s 0 = toSSetObj₀Equiv ((toSSet.obj X).δ 1 s) := by
  simp [toSSetObj₀Equiv, toSSetObj₁Equiv, -ContinuousMap.coe_mk,
    Subsingleton.elim (default : StdSimplex ℝ (Fin 1)) (.single 0)]

@[simp]
lemma toSSetObj₁Equiv_apply_one (s : toSSet.obj X _⦋1⦌) :
    X.toSSetObj₁Equiv s 1 = toSSetObj₀Equiv ((toSSet.obj X).δ 0 s) := by
  simp [toSSetObj₀Equiv, toSSetObj₁Equiv, -ContinuousMap.coe_mk,
    Subsingleton.elim (default : StdSimplex ℝ (Fin 1)) (.single 0)]

@[simp]
lemma δ_one_toSSetObj₁Equiv.symm (f : I ⟶ X) :
    (toSSet.obj X).δ 1 (toSSetObj₁Equiv.symm f) =
      toSSetObj₀Equiv.symm (f 0) :=
  toSSetObj₀Equiv.injective (by simp [← toSSetObj₁Equiv_apply_zero])

@[simp]
lemma δ_zero_toSSetObj₁Equiv.symm (f : I ⟶ X) :
    (toSSet.obj X).δ 0 (toSSetObj₁Equiv.symm f) =
      toSSetObj₀Equiv.symm (f 1) :=
  toSSetObj₀Equiv.injective (by simp [← toSSetObj₁Equiv_apply_one])

/-- Given two points `x` and `y` of `X : TopCat`, this is the bijection between
edges in the simplicial set `toSSet.obj X` connecting the vertices corresponding
to `x` and `y`, and paths from `x` to `y`. -/
@[simps]
noncomputable def toSSetObjEdgeEquiv {x y : X} :
    SSet.Edge (toSSetObj₀Equiv.symm x) (toSSetObj₀Equiv.symm y) ≃ X.Path x y where
  toFun e := { hom := toSSetObj₁Equiv e.edge }
  invFun p := SSet.Edge.mk (toSSetObj₁Equiv.symm p.hom)
  left_inv _ := by aesop
  right_inv _ := by aesop

/-- Given `X : TopCat`, this is the bijection between `ZerothHomotopy X` and the
type of connected components of the simplicial set `toSSet.obj X`. -/
noncomputable def zerothHomotopyEquiv : ZerothHomotopy X ≃ (toSSet.obj X).π₀ where
  toFun :=
    ZerothHomotopy.lift (SSet.π₀.mk ∘ toSSetObj₀Equiv.symm)
      (fun _ _ p ↦ SSet.π₀.sound (toSSetObjEdgeEquiv.symm (pathEquiv.symm p)))
  invFun := SSet.π₀.lift (ZerothHomotopy.mk ∘ toSSetObj₀Equiv) (fun x y e ↦ by
    obtain ⟨x, rfl⟩ := toSSetObj₀Equiv.symm.surjective x
    obtain ⟨y, rfl⟩ := toSSetObj₀Equiv.symm.surjective y
    exact ZerothHomotopy.sound (pathEquiv (toSSetObjEdgeEquiv e)))
  left_inv x := by induction x; simp
  right_inv x := by induction x; simp

@[simp]
lemma zerothHomotopyEquiv_mk (x : X) :
    zerothHomotopyEquiv (.mk x) = .mk (toSSetObj₀Equiv.symm x) := rfl

@[simp]
lemma zerothHomotopyEquiv_symm_mk (x : (toSSet.obj X) _⦋0⦌) :
    zerothHomotopyEquiv.symm (.mk x) = .mk (toSSetObj₀Equiv x) := rfl

instance [PathConnectedSpace X] : (toSSet.obj X).IsConnected := by
  let : Unique (ZerothHomotopy X) := Nonempty.some (by
    rw [unique_iff_subsingleton_and_nonempty]
    constructor <;> infer_instance)
  rw [SSet.isConnected_iff_nonempty_unique]
  exact ⟨zerothHomotopyEquiv.symm.unique⟩

end TopCat
```
