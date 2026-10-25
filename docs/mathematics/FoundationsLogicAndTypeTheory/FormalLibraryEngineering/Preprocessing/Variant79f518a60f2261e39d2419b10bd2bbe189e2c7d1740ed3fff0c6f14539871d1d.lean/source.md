# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocessing.Variant79f518a60f2261e39d2419b10bd2bbe189e2c7d1740ed3fff0c6f14539871d1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25eeb3ef7dd0d54c55668ceadeee8d5521c70a2b` · SHA-256 `04ed33ed0403c9285c268ecaa48d5aa065f6f680a25e9067b50c17aa812d76c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NotLtOfNotLe.Variantb844a8fa22b47c2968947e859bbdfd093b14d86c5b37de68ab9ca3ab190c67d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b844a8fa22b47c2968947e859bbdfd093b14d86c5b37de68ab9ca3ab190c67d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NotLtOfNotLe.Variantb844a8fa22b47c2968947e859bbdfd093b14d86c5b37de68ab9ca3ab190c67d8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b844a8fa22b47c2968947e859bbdfd093b14d86c5b37de68ab9ca3ab190c67d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Order/Preprocessing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Vasilii Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vasilii Nesterov
-/
import Mathlib.Tactic.Order.CollectFacts

/-!
# Facts preprocessing for the `order` tactic

In this file we implement the preprocessing procedure for the `order` tactic.
See `Mathlib/Tactic/Order.lean` for details of preprocessing.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NotLtOfNotLe.Variantb844a8fa22b47c2968947e859bbdfd093b14d86c5b37de68ab9ca3ab190c67d8

namespace Mathlib.Tactic.Order

universe u

open Lean Expr Meta

section Lemmas

lemma not_lt_of_not_le {α : Type u} [Preorder α] {x y : α} (h : ¬(x ≤ y)) : ¬(x < y) :=
  (h ·.le)

lemma le_of_not_lt_le {α : Type u} [Preorder α] {x y : α} (h1 : ¬(x < y)) (h2 : x ≤ y) :
    y ≤ x := by
  rw [not_lt_iff_not_le_or_ge] at h1
  rcases h1 with (h1 | h1)
  · exact False.elim (h1 h2)
  · assumption

end Lemmas

/-- Preprocesses facts for preorders. Replaces `x < y` with two equivalent facts: `x ≤ y` and
`¬ (y ≤ x)`. Replaces `x = y` with `x ≤ y`, `y ≤ x` and removes `x ≠ y`. -/
def preprocessFactsPreorder (g : MVarId) (facts : Array AtomicFact) :
    MetaM <| Array AtomicFact := g.withContext do
  let mut res : Array AtomicFact := #[]
  for fact in facts do
    match fact with
    | .lt lhs rhs proof =>
      res := res.push <| .le lhs rhs (← mkAppM ``le_of_lt #[proof])
      res := res.push <| .nle rhs lhs (← mkAppM ``not_le_of_lt #[proof])
    | .eq lhs rhs proof =>
      res := res.push <| .le lhs rhs (← mkAppM ``le_of_eq #[proof])
      res := res.push <| .le rhs lhs (← mkAppM ``ge_of_eq #[proof])
    | .ne _ _ _ =>
      continue
    | _ =>
      res := res.push fact
  return res

/-- Preprocesses facts for partial orders. Replaces `x < y`, `¬ (x ≤ y)`, and `x = y` with
equivalent facts involving only `≤`, `≠`, and `≮`. -/
def preprocessFactsPartial (g : MVarId) (facts : Array AtomicFact) :
    MetaM <| Array AtomicFact := g.withContext do
  let mut res : Array AtomicFact := #[]
  for fact in facts do
    match fact with
    | .lt lhs rhs proof =>
      res := res.push <| .ne lhs rhs (← mkAppM ``LT.lt.ne #[proof])
      res := res.push <| .le lhs rhs (← mkAppM ``LT.lt.le #[proof])
    | .nle lhs rhs proof =>
      res := res.push <| .ne lhs rhs (← mkAppM ``ne_of_not_le #[proof])
      res := res.push <| .nlt lhs rhs (← mkAppM ``not_lt_of_not_le #[proof])
    | .eq lhs rhs proof =>
      res := res.push <| .le lhs rhs (← mkAppM ``le_of_eq #[proof])
      res := res.push <| .le rhs lhs (← mkAppM ``ge_of_eq #[proof])
    | _ =>
      res := res.push fact
  return res

/-- Preprocesses facts for linear orders. Replaces `x < y`, `¬ (x ≤ y)`, `¬ (x < y)`, and `x = y`
with equivalent facts involving only `≤` and `≠`. -/
def preprocessFactsLinear (g : MVarId) (facts : Array AtomicFact) :
    MetaM <| Array AtomicFact := g.withContext do
  let mut res : Array AtomicFact := #[]
  for fact in facts do
    match fact with
    | .lt lhs rhs proof =>
      res := res.push <| .ne lhs rhs (← mkAppM ``LT.lt.ne #[proof])
      res := res.push <| .le lhs rhs (← mkAppM ``LT.lt.le #[proof])
    | .nle lhs rhs proof =>
      res := res.push <| .ne lhs rhs (← mkAppM ``ne_of_not_le #[proof])
      res := res.push <| .le rhs lhs (← mkAppM ``le_of_not_le #[proof])
    | .nlt lhs rhs proof =>
      res := res.push <| .le rhs lhs (← mkAppM ``le_of_not_lt #[proof])
    | .eq lhs rhs proof =>
      res := res.push <| .le lhs rhs (← mkAppM ``le_of_eq #[proof])
      res := res.push <| .le rhs lhs (← mkAppM ``ge_of_eq #[proof])
    | _ =>
      res := res.push fact
  return res


end Mathlib.Tactic.Order
```
