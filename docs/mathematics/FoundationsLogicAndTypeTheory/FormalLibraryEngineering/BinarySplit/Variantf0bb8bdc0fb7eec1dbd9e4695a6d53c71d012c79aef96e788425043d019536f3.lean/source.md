# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinarySplit.Variantf0bb8bdc0fb7eec1dbd9e4695a6d53c71d012c79aef96e788425043d019536f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59d53fee4b5f3a3f0835ce8c9440162c37b1aafe` · SHA-256 `89ea3a34477b24945d4da824150aa9c08bd6c6ffc3c075c962af2844126c5660`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Midpoint.Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Midpoint.Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Inclusion/Extension/IntervalDyadicReal/BinarySplit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Init
public meta import Mathlib.Tactic.Inclusion.ExtensionAPI.Attr

/-!
# Binary splitting of dyadic real intervals

This file defines the `binarySplit` cover for the `interval_dyadic_real` inclusion family.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Midpoint.Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff

@[expose] public section

open Lean Qq

namespace Inclusion
namespace IntervalDyadicReal

/-- The midpoint of `a` and `b`. -/
def midpoint (a b : Dyadic) : Dyadic :=
  match a + b with
  | .zero => .zero
  | .ofOdd n k hn => .ofOdd n (k + 1) hn

/-- Map `F` over the intervals produced by bisecting `I` to depth `n`, coarsening the results. -/
@[specialize]
def binarySplitMap {Iβ β : Type*} [ToSet Iβ β] [Coarsen Iβ β] :
    ℕ → Interval Dyadic → (Interval Dyadic → Iβ) → Iβ
  | 0, I, F => F I
  | n + 1, I, F =>
      match I with
      | ⟨some l, some u⟩ =>
          let m := midpoint l u
          Coarsen.coarsen β (binarySplitMap n ⟨l, m⟩ F) (binarySplitMap n ⟨m, u⟩ F)
      | _ => F I

theorem mem_binarySplitMap {Iβ β : Type*} [ToSet Iβ β] [Coarsen Iβ β]
    (n : ℕ) {I : Interval Dyadic} {F : Interval Dyadic → Iβ} {y : β} {r : ℝ}
    (hr : r ∈ I) (hy : ∀ J, r ∈ J → y ∈ F J) : y ∈ binarySplitMap n I F := by
  induction n generalizing I with
  | zero => exact hy I hr
  | succ n ih => match I with
    | ⟨some l, some u⟩ =>
      let m := midpoint l u
      by_cases hl : r ≤ Dyadic.toReal m
      · exact Coarsen.mem_coarsen_left (ih ⟨hr.1, WithTop.coe_le_coe.mpr hl⟩)
      · exact Coarsen.mem_coarsen_right (ih ⟨WithBot.coe_le_coe.mpr (le_of_not_ge hl), hr.2⟩)
    | ⟨⊥, ⊤⟩ | ⟨⊥, some u⟩ | ⟨some l, ⊤⟩ => exact hy _ hr

/-- Cover a dyadic interval by repeatedly bisecting it to depth `n`. -/
def binarySplit (n : ℕ) : Cover (Interval Dyadic) ℝ where
  coverMap := binarySplitMap n
  mem_coverMap := mem_binarySplitMap n

/-- The depth to which bounded dyadic intervals are repeatedly bisected. A depth of
`n` produces `2 ^ n` pieces. -/
@[inclusion_param]
meta def binarySplitParam : InclusionParamDecl where
  name := `binSplit
  type := q(ℕ)

/-- Construct the binary-splitting cover with `2 ^ n` pieces. -/
meta def mkBinarySplitCover : InclusionM (Option Expr) := do
  let some depth ← InclusionM.getParam? `binSplit | return none
  return some (mkApp (mkConst ``binarySplit [.zero]) depth)

end IntervalDyadicReal
end Inclusion
```
