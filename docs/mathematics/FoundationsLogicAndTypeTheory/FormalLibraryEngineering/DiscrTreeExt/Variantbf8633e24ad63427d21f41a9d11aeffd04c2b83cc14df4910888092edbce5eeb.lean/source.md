# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrTreeExt.Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0e7c9b25ff8cc020b24bf7f70b759517b4590ae` · SHA-256 `51ffe0b3a8d617f2fdaebfdfa447154285ea17dec9ac21fd7a1873d583295b94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant8ba33929a29b8a090f5c050baae174874a44e2e43ebbc3903ef13129f0bfeb5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ba33929a29b8a090f5c050baae174874a44e2e43ebbc3903ef13129f0bfeb5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant8ba33929a29b8a090f5c050baae174874a44e2e43ebbc3903ef13129f0bfeb5a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8ba33929a29b8a090f5c050baae174874a44e2e43ebbc3903ef13129f0bfeb5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Inclusion/Core/DiscrTreeExt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public import Mathlib.Init
public meta import Lean.Meta.DiscrTree

/-!
# Discrimination-tree-indexed environment extensions

This file provides an API for scoped environment extensions whose declarations are indexed by
elaborated expression patterns in a `DiscrTree`.

## Implimentation Notes

The inclusion tactic uses two seperate types of `DiscrTree` indexed environment extensions. These
have nearly identical APIs except the stored values are different types (one is `InclusionExt`s
and the other is `HypothesisExt`s). This file essentially generalizes the `DiscrTree` valued
environment extension API from the implimentation for the `norm_num` tactic so that it can take
arbitrary values.

## TODO

Investigate the possibility of using this API for other tactics in Mathlib with `DiscrTree`
indexed environment extensions such as `norm_num` and `positivity`. This should perhaps be
part of a wider investigation into whether more API from the environment extensions of various
Mathlib tactics could be unified.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant8ba33929a29b8a090f5c050baae174874a44e2e43ebbc3903ef13129f0bfeb5a

public meta section

open Lean Elab Term Lean.Meta

namespace DiscrTreeExt

/-- Evaluate `declName` as a value of type `α`, checking that its Lean type is `typeName`. -/
def evalDecl (α : Type) (typeName declName : Name) : ImportM α := do
  let { env, opts, .. } ← read
  IO.ofExcept <| unsafe env.evalConstCheck α opts typeName declName

/-- The discrimination-tree paths and declaration name stored in an `.olean` entry. -/
abbrev Entry := Array (Array DiscrTree.Key) × Name

/-- The state of a discrimination-tree environment extension. -/
structure State (α : Type) where
  /-- The discrimination tree of the extension. -/
  tree : DiscrTree α := {}
  deriving Inhabited

/-- A scoped environment extension containing declaration values indexed by expression patterns. -/
abbrev EnvExt (α : Type) := ScopedEnvExtension Entry (Entry × α) (State α)

variable {α : Type}

/-- Return the declaration values whose `DiscrTree` keys match `e`. -/
def State.getMatch (state : State α) (e : Expr) : MetaM (Array α) := state.tree.getMatch e

/-- Create a scoped environment extension whose declarations have type `typeName`. By default, the
environment extension is named after the declaration in which this function is called. -/
def initializeEnvExt (typeName : Name)
    (envExtName : Name := by exact decl_name%) : IO (EnvExt α) := do
  -- we prevent any deduplication in the DiscrTree
  have : BEq α := ⟨fun _ _ ↦ false⟩
  let insert kss v dt := kss.foldl (fun dt ks ↦ dt.insertKeyValue ks v) dt
  registerScopedEnvExtension {
    name := envExtName
    mkInitial := pure {}
    ofOLeanEntry := fun _ e@(_, n) ↦ return (e, ← evalDecl α typeName n)
    toOLeanEntry := (·.1)
    addEntry := fun state ((kss, _), ext) ↦
      { tree := insert kss ext state.tree }
  }

/-- Elaborate expression patterns into `DiscrTree` paths. -/
def elabExtKeys (patterns : Array Syntax) : CoreM (Array (Array DiscrTree.Key)) :=
  MetaM.run' <| patterns.mapM fun stx => do
    let e ← TermElabM.run' <| withSaveInfoContext <| withAutoBoundImplicit <|
      withReader ({ · with ignoreTCFailures := true }) do
        let e ← elabTerm stx none
        let (_, _, e) ← lambdaMetaTelescope (← mkLambdaFVars (← getLCtx).getFVars e)
        return e
    DiscrTree.mkPath e

end DiscrTreeExt
```
