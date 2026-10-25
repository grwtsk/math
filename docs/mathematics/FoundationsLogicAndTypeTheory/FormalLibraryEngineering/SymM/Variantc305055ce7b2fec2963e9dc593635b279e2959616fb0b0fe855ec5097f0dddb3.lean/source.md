# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symm.Variantc305055ce7b2fec2963e9dc593635b279e2959616fb0b0fe855ec5097f0dddb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2f5c08b7cac3a752070723fb156bc0933440418` · SHA-256 `5df5d29864496db9d1ccc4df73e4a4ac8bcd2b6507b0869b8507641a6c076998`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymmExtConfig.Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SymmExtConfig.Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"be12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/Relation/Symm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Siddhartha Gadgil. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Siddhartha Gadgil, Mario Carneiro, Scott Morrison
-/
import Std.Lean.Meta.Basic

/-!
# `symm` tactic

This implements the `symm` tactic, which can apply symmetry theorems to either the goal or a
hypothesis.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymmExtConfig.Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b

set_option autoImplicit true

open Lean Meta

namespace Std.Tactic

/-- Discrimation tree settings for the `symm` extension. -/
def symmExt.config : WhnfCoreConfig := {}

/-- Environment extensions for symm lemmas -/
initialize symmExt :
    SimpleScopedEnvExtension (Name × Array DiscrTree.Key) (DiscrTree Name) ←
  registerSimpleScopedEnvExtension {
    addEntry := fun dt (n, ks) => dt.insertCore ks n symmExt.config
    initial := {}
  }

initialize registerBuiltinAttribute {
  name := `symm
  descr := "symmetric relation"
  add := fun decl _ kind => MetaM.run' do
    let declTy := (← getConstInfo decl).type
    let (xs, _, targetTy) ← withReducible <| forallMetaTelescopeReducing declTy
    let fail := throwError
      "@[symm] attribute only applies to lemmas proving x ∼ y → y ∼ x, got {declTy}"
    let some _ := xs.back? | fail
    let targetTy ← reduce targetTy
    let .app (.app rel _) _ := targetTy | fail
    let key ← withReducible <| DiscrTree.mkPath rel symmExt.config
    symmExt.add (decl, key) kind
}

end Std.Tactic

open Std.Tactic

namespace Lean.Expr

/-- Given a term `e : a ~ b`, construct a term in `b ~ a` using `@[symm]` lemmas. -/
def applySymm (e : Expr) : MetaM Expr := do
  go (← instantiateMVars (← inferType e)) fun lem args body => do
    let .true ← isDefEq args.back e | failure
    mkExpectedTypeHint (mkAppN lem args) (← instantiateMVars body)
where
  /--
  Internal implementation of `Lean.Expr.applySymm`, `Lean.MVarId.applySymm`,
  and the user-facing tactic.

  `tgt` should be of the form `a ~ b`, and is used to index the symm lemmas.

  `k lem args body` should calculate a result,
  given a candidate `symm` lemma `lem`, which will have type `∀ args, body`.

  In `Lean.Expr.applySymm` this result will be a new `Expr`,
  and in `Lean.MVarId.applySymm` and `Lean.MVarId.applySymmAt` this result will be a new goal.
  -/
  -- This function is rather opaque, but the design with a generic continuation `k`
  -- is necessary in order to factor out all the common requirements below.
  go (tgt : Expr) {α} (k : Expr → Array Expr → Expr → MetaM α) : MetaM α := do
    let .app (.app rel _) _ := tgt
      | throwError "symmetry lemmas only apply to binary relations, not{indentExpr tgt}"
    for lem in ← (symmExt.getState (← getEnv)).getMatch rel symmExt.config do
      try
        let lem ← mkConstWithFreshMVarLevels lem
        let (args, _, body) ← withReducible <| forallMetaTelescopeReducing (← inferType lem)
        return (← k lem args body)
      catch _ => pure ()
    throwError "no applicable symmetry lemma found for{indentExpr tgt}"

end Lean.Expr

namespace Lean.MVarId

/-- Apply a symmetry lemma (i.e. marked with `@[symm]`) to a metavariable. -/
def applySymm (g : MVarId) : MetaM MVarId := do
  go (← g.getTypeCleanup) g fun lem args body g => do
    let .true ← isDefEq (← g.getType) body | failure
    g.assign (mkAppN lem args)
    return args.back.mvarId!
where
  /--
  Internal implementation of `Lean.MVarId.applySymm` and the user-facing tactic.

  `tgt` should be of the form `a ~ b`, and is used to index the symm lemmas.

  `k lem args body goal` should transform `goal` into a new goal,
  given a candidate `symm` lemma `lem`, which will have type `∀ args, body`.
  Depending on whether we are working on a hypothesis or a goal,
  `k` will internally use either `replace` or `assign`.
  -/
  go (tgt : Expr) (g : MVarId) (k : Expr → Array Expr → Expr → MVarId → MetaM MVarId) :
    MetaM MVarId := do
  Expr.applySymm.go tgt fun lem args body => do
    let g' ← k lem args body g
    g'.setTag (← g.getTag)
    return g'

/-- Use a symmetry lemma (i.e. marked with `@[symm]`) to replace a hypothesis in a goal. -/
def applySymmAt (h : FVarId) (g : MVarId) : MetaM MVarId := do
  let h' ← (Expr.fvar h).applySymm
  pure (← g.replace h h').mvarId

end Lean.MVarId

namespace Std.Tactic

open Lean.Elab.Tactic

/--
* `symm` applies to a goal whose target has the form `t ~ u` where `~` is a symmetric relation,
  that is, a relation which has a symmetry lemma tagged with the attribute [symm].
  It replaces the target with `u ~ t`.
* `symm at h` will rewrite a hypothesis `h : t ~ u` to `h : u ~ t`.
-/
elab "symm" loc:((Parser.Tactic.location)?) : tactic =>
  let atHyp h := liftMetaTactic1 fun g => g.applySymmAt h
  let atTarget := liftMetaTactic1 fun g => g.applySymm
  withLocation (expandOptLocation loc) atHyp atTarget fun _ => throwError "symm made no progress"
```
