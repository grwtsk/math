# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimpM.Variantcc3f03480a9474e37afc63037ff283b15246c4ff86c665aed24f2d50a828cd48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f4d107c3e0cdd1a9e3cd10450ac1f4071ccf101` · SHA-256 `6e4afe62194063ee4cb0ee74d3c45d2a6d0a4b8445263cbd65eec01f5e1135b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantf2bebedd99365e7e950486c59235e0fb32461cd4ab5a2c08967408bde5b7b381","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2bebedd99365e7e950486c59235e0fb32461cd4ab5a2c08967408bde5b7b381","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Config.Variantf2bebedd99365e7e950486c59235e0fb32461cd4ab5a2c08967408bde5b7b381","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f2bebedd99365e7e950486c59235e0fb32461cd4ab5a2c08967408bde5b7b381","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/DSimp/DSimpM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM
import Lean.Meta.Sym.ExprPtr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantf2bebedd99365e7e950486c59235e0fb32461cd4ab5a2c08967408bde5b7b381

public section
namespace Lean.Meta.Sym.DSimp

/-!
# Definitional Simplifier for SymM

`DSimp` mirrors `Sym.Simp` but does **not** produce proof terms. Every rewrite must hold
by definitional equality, so the kernel checks `e ≡ e'` at the use site and we only need
to return the simplified expression.
-/

/-- Configuration options for the definitional simplifier. -/
structure Config where
  /-- Maximum number of steps that can be performed by the simplifier. -/
  maxSteps : Nat := 100_000
  deriving Inhabited

/--
The result of definitionally simplifying an expression `e`.

The `done` flag controls whether simplification should continue after this result:
- `done = false` (default): Continue with subsequent simplification steps. If a
  `pre`/`post` method returns `.step e' false`, `dsimp` recurses on `e'`.
- `done = true`: Stop processing, return this result as final.

Unlike `Sym.Simp.Result`, this carries no proof term and no `contextDependent` flag.
-/
inductive Result where
  /-- No change. If `done = true`, skip remaining simplification steps for this term. -/
  | rfl  (done : Bool := false)
  /-- Simplified to `e'`. If `done = true`, skip recursive simplification of `e'`. -/
  | step (e' : Expr) (done : Bool := false)
  deriving Inhabited

private opaque MethodsRefPointed : NonemptyType.{0}
def MethodsRef : Type := MethodsRefPointed.type
instance : Nonempty MethodsRef := by exact MethodsRefPointed.property

/-- Read-only context for the definitional simplifier. -/
structure Context where
  /-- Simplifier configuration options. -/
  config : Config := {}

/-- Cache mapping expressions (by pointer equality) to their simplified results. -/
abbrev Cache := PHashMap ExprPtr Result

/-- Mutable state for the definitional simplifier. -/
structure State where
  /-- Number of steps performed so far. -/
  numSteps : Nat := 0
  /-- Cache for simplification results. Survives across binder entry. -/
  cache : Cache := {}

/-- Monad for the definitional simplifier, layered on top of `SymM`. -/
abbrev DSimpM := ReaderT MethodsRef $ ReaderT Context StateRefT State SymM

instance : Inhabited (DSimpM α) where
  default := throwError "<default>"

abbrev DSimproc := Expr → DSimpM Result

structure Methods where
  pre  : DSimproc := fun _ => return .rfl
  post : DSimproc := fun _ => return .rfl
  deriving Inhabited

unsafe def Methods.toMethodsRefImpl (m : Methods) : MethodsRef :=
  unsafeCast m

@[implemented_by Methods.toMethodsRefImpl]
opaque Methods.toMethodsRef (m : Methods) : MethodsRef

unsafe abbrev MethodsRef.toMethodsImpl (m : MethodsRef) : Methods :=
  unsafeCast m

@[implemented_by MethodsRef.toMethodsImpl]
opaque MethodsRef.toMethods (m : MethodsRef) : Methods

def getMethods : DSimpM Methods :=
  return MethodsRef.toMethods (← read)

/-- Runs a `DSimpM` computation with the given methods, configuration, and state.
The `cache` and `numSteps` from `s` are preserved (cache entries persist across
invocations because results are not context-dependent). -/
def DSimpM.run (x : DSimpM α) (methods : Methods := {}) (config : Config := {})
    (s : State := {}) : SymM (α × State) := do
  x methods.toMethodsRef { config } |>.run { s with numSteps := 0 }

/-- Runs a `DSimpM` computation with the given methods and configuration. -/
def DSimpM.run' (x : DSimpM α) (methods : Methods := {}) (config : Config := {}) : SymM α := do
  x methods.toMethodsRef { config } |>.run' {}

set_option compiler.ignoreBorrowAnnotation true in
@[extern "lean_sym_dsimp"] -- Forward declaration
opaque dsimp : DSimproc

def getConfig : DSimpM Config :=
  return (← readThe Context).config

abbrev pre : DSimproc := fun e => do
  (← getMethods).pre e

abbrev post : DSimproc := fun e => do
  (← getMethods).post e

end DSimp

abbrev dsimp (e : Expr) (methods : DSimp.Methods := {}) (config : DSimp.Config := {})
    : SymM Expr := do
  match (← DSimp.DSimpM.run' (DSimp.dsimp e) methods config) with
  | .rfl _     => return e
  | .step e' _ => return e'

end Lean.Meta.Sym
```
