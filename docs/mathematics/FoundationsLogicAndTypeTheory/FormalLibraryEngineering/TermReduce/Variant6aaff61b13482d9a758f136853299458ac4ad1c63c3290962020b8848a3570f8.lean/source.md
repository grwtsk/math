# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TermReduce.Variant6aaff61b13482d9a758f136853299458ac4ad1c63c3290962020b8848a3570f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc5ba0553c5e9bf72b9d6d24143603ef761c6af4` · SHA-256 `e7c6834d51bb3e9aaf068ba2de1b5a178b01adebb38883c64def47e4f54e7830`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabBeta.Variantd646b5bf7805bd6a0a99bb8b95f0c2bac521110ffc83fbeef3157a2e37d05230","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d646b5bf7805bd6a0a99bb8b95f0c2bac521110ffc83fbeef3157a2e37d05230","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabBeta.Variantd646b5bf7805bd6a0a99bb8b95f0c2bac521110ffc83fbeef3157a2e37d05230","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d646b5bf7805bd6a0a99bb8b95f0c2bac521110ffc83fbeef3157a2e37d05230","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/TermReduce.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller, Gabriel Ebner, Yuyang Zhao
-/
import Lean.Meta.Tactic.Delta
import Mathlib.Lean.Expr.Basic

/-!
# Term elaborators for reduction
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabBeta.Variantd646b5bf7805bd6a0a99bb8b95f0c2bac521110ffc83fbeef3157a2e37d05230

namespace Mathlib.Util.TermReduce

open Lean Elab Term Meta

/-!
The `beta% f x1 ... xn` term elaborator elaborates the expression
`f x1 ... xn` and then does one level of beta reduction.
That is, if `f` is a lambda then it will substitute its arguments.

The purpose of this is to support substitutions in notations such as
`∀ i, beta% p i` so that `p i` gets beta reduced when `p` is a lambda.
-/

/-- `beta% t` elaborates `t` and then if the result is in the form
`f x1 ... xn` where `f` is a (nested) lambda expression,
it will substitute all of its arguments by beta reduction.
This does not recursively do beta reduction, nor will it do
beta reduction of subexpressions.

In particular, `t` is elaborated, its metavariables are instantiated,
and then `Lean.Expr.headBeta` is applied. -/
syntax (name := betaStx) "beta% " term : term

@[term_elab betaStx, inherit_doc betaStx]
def elabBeta : TermElab := fun stx expectedType? =>
  match stx with
  | `(beta% $t) => do
    let e ← elabTerm t expectedType?
    return (← instantiateMVars e).headBeta
  | _ => throwUnsupportedSyntax

/-- `delta% t` elaborates to a head-delta reduced version of `t`. -/
syntax (name := deltaStx) "delta% " term : term

@[term_elab deltaStx, inherit_doc deltaStx]
def elabDelta : TermElab := fun stx expectedType? =>
  match stx with
  | `(delta% $t) => do
    let t ← withSynthesize (postpone := .partial) do
      elabTerm t expectedType?
    synthesizeSyntheticMVars
    let t ← instantiateMVars t
    let some t ← delta? t | throwError "cannot delta reduce {t}"
    pure t
  | _ => throwUnsupportedSyntax

/-- `zeta% t` elaborates to a zeta and zeta-delta reduced version of `t`. -/
syntax (name := zetaStx) "zeta% " term : term

@[term_elab zetaStx, inherit_doc zetaStx]
def elabZeta : TermElab := fun stx expectedType? =>
  match stx with
  | `(zeta% $t) => do
    let t ← withSynthesize (postpone := .partial) do
      elabTerm t expectedType?
    synthesizeSyntheticMVars
    let t ← instantiateMVars t
    let t ← zetaReduce t
    pure t
  | _ => throwUnsupportedSyntax

/-- `reduceProj% t` apply `Expr.reduceProjStruct?` to all subexpressions of `t`. -/
syntax (name := reduceProjStx) "reduceProj% " term : term

@[term_elab reduceProjStx, inherit_doc reduceProjStx]
def elabReduceProj : TermElab := fun stx expectedType? =>
  match stx with
  | `(reduceProj% $t) => do
    let t ← withSynthesize (postpone := .partial) do
      elabTerm t expectedType?
    synthesizeSyntheticMVars
    let t ← instantiateMVars t
    let t ← Lean.Core.transform t (post := fun e ↦ do
      return .continue (← Expr.reduceProjStruct? e))
    pure t
  | _ => throwUnsupportedSyntax

end Mathlib.Util.TermReduce
```
