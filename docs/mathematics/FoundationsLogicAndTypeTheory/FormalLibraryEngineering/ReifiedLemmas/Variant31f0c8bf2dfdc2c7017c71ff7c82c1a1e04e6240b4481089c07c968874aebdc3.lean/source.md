# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReifiedLemmas.Variant31f0c8bf2dfdc2c7017c71ff7c82c1a1e04e6240b4481089c07c968874aebdc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06b4baa8cd17cf9902e6c3147dfe4229fabe44dd` · SHA-256 `f45144b754d804badf0e5c91999c49658ec3e75753043d76fcbfe0a6df011777`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddCondLemmas.Variant63c08ed9ea3b6aa69665d12af277c36e045101d48e8a83babe4f564c5fded6b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63c08ed9ea3b6aa69665d12af277c36e045101d48e8a83babe4f564c5fded6b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddCondLemmas.Variant63c08ed9ea3b6aa69665d12af277c36e045101d48e8a83babe4f564c5fded6b4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"63c08ed9ea3b6aa69665d12af277c36e045101d48e8a83babe4f564c5fded6b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Reflect/ReifiedLemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Reflect.ReifiedBVLogical


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddCondLemmas.Variant63c08ed9ea3b6aa69665d12af277c36e045101d48e8a83babe4f564c5fded6b4

section

/-!
Provides the logic for generating auxiliary lemmas during reification.
-/

namespace Lean.Meta.Tactic.BVDecide

open Std.Tactic.BVDecide

/--
This function adds the two lemmas:
- `discrExpr = true → atomExpr = lhsExpr`
- `discrExpr = false → atomExpr = rhsExpr`
It assumes that `discrExpr`, `lhsExpr` and `rhsExpr` are the expressions corresponding to `discr`,
`lhs` and `rhs`. Furthermore it assumes that `atomExpr` is of the form
`bif discrExpr then lhsExpr else rhsExpr`.
-/
public def addCondLemmas (discr : ReifiedBVLogical) (atom lhs rhs : ReifiedBVExpr)
    (discrExpr atomExpr lhsExpr rhsExpr : Expr) : LemmaM Unit := do
  let some trueLemma ← mkCondTrueLemma discr atom lhs discrExpr atomExpr lhsExpr rhsExpr | return ()
  LemmaM.addLemma trueLemma
  let some falseLemma ← mkCondFalseLemma discr atom rhs discrExpr atomExpr lhsExpr rhsExpr | return ()
  LemmaM.addLemma falseLemma
where
  mkCondTrueLemma (discr : ReifiedBVLogical) (atom lhs : ReifiedBVExpr)
      (discrExpr atomExpr lhsExpr rhsExpr : Expr) : M (Option SatAtBVLogical) := do
    let resExpr := lhsExpr
    let resValExpr := lhs
    let lemmaName := ``Std.Tactic.BVDecide.Reflect.BitVec.cond_true

    let notDiscrExpr := mkApp (mkConst ``Bool.not) discrExpr
    let notDiscr ← ReifiedBVLogical.mkNot discr discrExpr notDiscrExpr

    let eqBVExpr ← mkAppM ``BEq.beq #[atomExpr, resExpr]
    let some eqBVPred ← ReifiedBVPred.mkBinPred atom resValExpr atomExpr resExpr .eq eqBVExpr
      | return none
    let eqBV ← ReifiedBVLogical.ofPred eqBVPred

    let orExpr := mkApp2 (mkConst ``Bool.or) notDiscrExpr eqBVExpr
    let imp ← ReifiedBVLogical.mkGate notDiscr eqBV notDiscrExpr eqBVExpr .or orExpr

    let proof := do
      let evalExpr ← ReifiedBVLogical.mkEvalExpr imp.expr
      let congrProof := (← imp.evalsAtAtoms).getD (ReifiedBVLogical.mkRefl evalExpr)
      let lemmaProof := mkApp4 (mkConst lemmaName) (toExpr lhs.width) discrExpr lhsExpr rhsExpr

      -- !discr || (atom == rhs)
      let impExpr := mkApp2 (mkConst ``Bool.or) notDiscrExpr eqBVExpr

      return mkApp4
        (mkConst ``Std.Tactic.BVDecide.Reflect.Bool.lemma_congr)
        impExpr
        evalExpr
        congrProof
        lemmaProof
    return some ⟨imp.bvExpr, proof, imp.expr⟩

  mkCondFalseLemma (discr : ReifiedBVLogical) (atom rhs : ReifiedBVExpr)
      (discrExpr atomExpr lhsExpr rhsExpr : Expr) : M (Option SatAtBVLogical) := do
    let resExpr := rhsExpr
    let resValExpr := rhs
    let lemmaName := ``Std.Tactic.BVDecide.Reflect.BitVec.cond_false

    let eqBVExpr ← mkAppM ``BEq.beq #[atomExpr, resExpr]
    let some eqBVPred ← ReifiedBVPred.mkBinPred atom resValExpr atomExpr resExpr .eq eqBVExpr
      | return none
    let eqBV ← ReifiedBVLogical.ofPred eqBVPred

    let orExpr := mkApp2 (mkConst ``Bool.or) discrExpr eqBVExpr
    let imp ← ReifiedBVLogical.mkGate discr eqBV discrExpr eqBVExpr .or orExpr

    let proof := do
      let evalExpr ← ReifiedBVLogical.mkEvalExpr imp.expr
      let congrProof := (← imp.evalsAtAtoms).getD (ReifiedBVLogical.mkRefl evalExpr)
      let lemmaProof := mkApp4 (mkConst lemmaName) (toExpr rhs.width) discrExpr lhsExpr rhsExpr

      -- discr || (atom == rhs)
      let impExpr := mkApp2 (mkConst ``Bool.or) discrExpr eqBVExpr

      return mkApp4
        (mkConst ``Std.Tactic.BVDecide.Reflect.Bool.lemma_congr)
        impExpr
        evalExpr
        congrProof
        lemmaProof
    return some ⟨imp.bvExpr, proof, imp.expr⟩

end Lean.Meta.Tactic.BVDecide
```
