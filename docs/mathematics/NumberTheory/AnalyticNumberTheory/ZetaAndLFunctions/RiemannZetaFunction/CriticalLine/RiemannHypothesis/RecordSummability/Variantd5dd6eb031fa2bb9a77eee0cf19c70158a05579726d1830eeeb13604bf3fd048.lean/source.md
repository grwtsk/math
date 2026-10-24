# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RecordSummability.Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d4878ca84797189a2864074d3ec1975c0bec775` · SHA-256 `d5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.RecordEndpoint

/-!
# Bounded actual signed prefixes are exactly summable record increments

Batch 08's infinite record-height criterion is instantiated on the unchanged
ordinary-prime primitive and its entrance-normalized running maximum.
Nonnegative record increments telescope to that maximum; they are summable
exactly when the signed integer prefixes have a common upper bound. No such
bound is constructed for the actual prime path.

Human causal record framework: grwtsk contributors. Local infinite actual-source
adapter and Lean implementation: OpenAI Codex. Sum convergence retains Mathlib
identity; the existing finite native record interface is used at its own names.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RecordSummability

open OpenArithmeticSuppliers NativeRecordConsumer RecordEndpoint
open Filter
open scoped BigOperators Topology
noncomputable section

theorem record_summable_iff_levels_bounded (N : ℕ) :
    Summable (primeRecordIncrement N) ↔
      ∃ E : ℝ, 0 ≤ E ∧ ∀ K : ℕ, primeRecordLevel N K ≤ E := by
  constructor
  · intro hsum
    refine ⟨∑' j, primeRecordIncrement N j,
      tsum_nonneg (fun _ => CausalRecords.recordIncrement_nonneg _ _), ?_⟩
    intro K
    rw [← record_sum_eq_level]
    exact hsum.sum_le_tsum (Finset.range K)
      (fun _ _ => CausalRecords.recordIncrement_nonneg _ _)
  · rintro ⟨E, _hE, hbound⟩
    apply summable_of_sum_range_le (f := primeRecordIncrement N) (c := E)
      (fun _ => CausalRecords.recordIncrement_nonneg _ _)
    intro K
    rw [record_sum_eq_level]
    exact hbound K

theorem record_summable_iff_signed_prefixes_bounded (N : ℕ) :
    Summable (primeRecordIncrement N) ↔
      ∃ E : ℝ, 0 ≤ E ∧ ∀ K : ℕ,
        ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ≤ E := by
  rw [record_summable_iff_levels_bounded]
  constructor
  · rintro ⟨E, hE, hbound⟩
    exact ⟨E, hE, fun K => (actual_prefix_le_record N K).trans (hbound K)⟩
  · rintro ⟨E, hE, hbound⟩
    exact ⟨E, hE, fun K => level_le_of_all_prefixes hE hbound K⟩

theorem record_level_converges_to_total {N : ℕ} (hsum : Summable (primeRecordIncrement N)) :
    Tendsto (primeRecordLevel N) atTop (𝓝 (∑' j, primeRecordIncrement N j)) := by
  simpa only [record_sum_eq_level] using hsum.hasSum.tendsto_sum_nat

theorem total_record_height_is_least_bound {N : ℕ}
    (hsum : Summable (primeRecordIncrement N)) {E : ℝ}
    (hbound : ∀ K : ℕ, primeRecordLevel N K ≤ E) :
    (∑' j, primeRecordIncrement N j) ≤ E :=
  le_of_tendsto_of_tendsto' (record_level_converges_to_total hsum) tendsto_const_nhds hbound

end
end GRWTSK.RiemannHypothesis.Conversation.RecordSummability
```
