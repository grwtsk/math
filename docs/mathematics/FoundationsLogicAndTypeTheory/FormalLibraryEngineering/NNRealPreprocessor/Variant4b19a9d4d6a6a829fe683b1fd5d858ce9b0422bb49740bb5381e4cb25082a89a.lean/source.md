# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NNRealPreprocessor.Variant4b19a9d4d6a6a829fe683b1fd5d858ce9b0422bb49740bb5381e4cb25082a89a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `044eef1dd2f35b77f1f120f80ad1c74764133859` · SHA-256 `a039e8f455d9822eb94a57a5bd98662d130c60bd2b72893f82408045fd83896a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsNNRealProp.Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsNNRealProp.Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Linarith/NNRealPreprocessor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Linarith
public import Mathlib.Basic.NNReal.Basic -- shake: keep (tactic dependency)
public import Mathlib.Tactic.Rify

/-!
# NNReal linarith preprocessing

This file contains a `linarith` preprocessor for converting (in)equalities in `ℝ≥0` to `ℝ`.

By overriding the behaviour of the placeholder preprocessor `nnrealToReal` (which does nothing
unless this file is imported) `linarith` can still be used without importing `NNReal`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsNNRealProp.Variant61a3f1aebeb5b8809eb261ebe35553ed96630bb167da60b05e9f7e30ea863e19

public meta section

namespace Mathlib.Tactic.Linarith

open Lean Meta

/--
`isNNRealProp tp` is true iff `tp` is an inequality or equality between nonnegative real numbers
or the negation thereof.
-/
partial def isNNRealProp (e : Expr) : MetaM Bool := succeeds do
  let (_, _, .const ``NNReal _, _, _) ← e.ineqOrNotIneq? | failure

/-- If `e` is of the form `((x : ℝ≥0) : ℝ)`, `NNReal.toReal e` returns `x`. -/
def getNNRealToRealArg? (e : Expr) : Option Expr :=
  match e with
  | .app (.const ``NNReal.toReal _) n => some n
  | _ => none

@[deprecated (since := "2026-05-27")] alias isNNRealtoReal := getNNRealToRealArg?

/--
`getNNRealComparisons e` returns a list of all subexpressions of `e` of the form `(x : ℝ)`.
-/
partial def getNNRealCoes (e : Expr) : List Expr :=
  match getNNRealToRealArg? e with
  | some x => [x]
  | none => match e.getAppFnArgs with
    | (``HAdd.hAdd, #[_, _, _, _, a, b]) => getNNRealCoes a ++ getNNRealCoes b
    | (``HMul.hMul, #[_, _, _, _, a, b]) => getNNRealCoes a ++ getNNRealCoes b
    | (``HSub.hSub, #[_, _, _, _, a, b]) => getNNRealCoes a ++ getNNRealCoes b
    | (``HDiv.hDiv, #[_, _, _, _, a, _]) => getNNRealCoes a
    | (``Neg.neg, #[_, _, a]) => getNNRealCoes a
    | _ => []

/-- If `e : ℝ≥0`, returns a proof of `0 ≤ (e : ℝ)`. -/
def mkToRealNonnegProof? (e : Expr) : MetaM (Option Expr) :=
  try commitIfNoEx (mkAppM ``NNReal.coe_nonneg #[e])
  catch e => do
    trace[linarith] "Got exception when using `coe_nonneg` {e.toMessageData}"
    return none

@[deprecated (since := "2026-05-27")] alias mk_toReal_nonneg_prf := mkToRealNonnegProof?

initialize nnrealToRealTransform.set fun l => do
  let l ← l.mapM fun e => do
    let t ← whnfR (← instantiateMVars (← inferType e))
    if ← isNNRealProp t then
      return (← Rify.rifyProof e t).1
    else
      return e
  let atoms : List Expr ← withNewMCtxDepth <| AtomM.run .reducible do
    for e in l do
      let (_, _, a, b) ← (← inferType e).ineq?
      discard <| (getNNRealCoes a).mapM AtomM.addAtom
      discard <| (getNNRealCoes b).mapM AtomM.addAtom
    return (← get).atoms.toList
  let nonnegProofs : List Expr ← atoms.filterMapM mkToRealNonnegProof?
  return nonnegProofs ++ l

end  Mathlib.Tactic.Linarith
```
