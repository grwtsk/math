# Complete source: GRWTSK.Analysis.InnerProductSpace.CausalIndividualRealization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c0b1f76322c939ccb53b82b4476615c43026ee4` · SHA-256 `7aada64405305bf7ac09456134a742df47be593d60c0b4af05f4bd0318a14ed7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization
import GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Individual native feature realization after strict arrival


The actual native diagonal is strictly positive when log(n)<T, n>=1. This uses
its genuine integrable square and an entire positive-measure open interval.
The actual native L2 class is nonzero and admits an explicit continuous linear
map to the actual prescribed unit source at A>0. The least operator norm squared
is exactly1/gram(T,n,n). Each strictly positive gap is feasible individually,
while the earlier quantitative cost forbids a uniform norm across all gaps.

Every map in the conclusion is for ONE label only. It does not simultaneously
realize the whole finite family, equate Gram matrices, bound signed arithmetic
energy or prove an amplitude return. Native budgets, general operator bridges,
strict negative/joint sectors, RH and converse remain open. No C-infinity premise.
Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Analysis.InnerProductSpace.CausalIndividualRealization

open MeasureTheory Set
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticPickupSource ArithmeticPickupEnergy
open GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation
open GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation
open GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost
open GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization

noncomputable section

theorem response_pos_after_contact {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (mature : Real.log (n : ℝ) < u) : 0 < response n u := by
  have positive : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have half := exp_inverse_half (Real.log (n : ℝ))
  rw [Real.exp_log positive] at half
  have below : Real.exp (-u / 2) < Real.exp (-Real.log (n : ℝ) / 2) :=
    Real.exp_lt_exp.mpr (by linarith)
  rw [response_of_arrived mature.le]
  unfold responseKernel
  rw [half]
  linarith

/-- Strict positivity is paid by a genuine open interval, not a single point. -/
theorem gram_diagonal_pos {n : ℕ} (hn : 1 ≤ n) {T : ℝ}
    (mature : Real.log (n : ℝ) < T) : 0 < gram T n n := by
  have logNonnegative : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have supported : Ioo (Real.log (n : ℝ)) T ⊆
      Function.support (fun u ↦ response n u * response n u) ∩ Ioc 0 T := by
    intro u hu
    have positive := response_pos_after_contact hn hu.1
    exact ⟨(mul_pos positive positive).ne',
      ⟨lt_of_le_of_lt logNonnegative hu.1, hu.2.le⟩⟩
  unfold gram
  apply (setIntegral_pos_iff_support_of_nonneg_ae
    (Filter.Eventually.of_forall (fun u ↦ mul_self_nonneg (response n u)))
    (response_product_integrable T n n)).mpr
  apply lt_of_lt_of_le ?_ (measure_mono supported)
  rw [Real.volume_Ioo]
  exact ENNReal.ofReal_pos.mpr (sub_pos.mpr mature)

theorem original_window_L2_ne_zero_of_strict_maturity {n : ℕ} (hn : 1 ≤ n) {T : ℝ}
    (mature : Real.log (n : ℝ) < T) : originalWindowL2 T n ≠ 0 := by
  intro zero
  have energyZero : gram T n n = 0 := by
    simpa only [zero, norm_zero, zero_pow (by decide : (2 : ℕ) ≠ 0)] using
      (original_window_L2_norm_square T n).symm
  exact (gram_diagonal_pos hn mature).ne' energyZero

/-- Exact minimal cost for this individual genuine native/source L2 realization. -/
theorem bounded_individual_realization_exists {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) {T : ℝ} (mature : Real.log (n : ℝ) < T) :
    ∃ map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
      map (originalWindowL2 T n) = prescribedSourceL2 A hA n ∧
      ‖map‖ ^ 2 = 1 / gram T n n ∧
      ∀ other : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        other (originalWindowL2 T n) = prescribedSourceL2 A hA n → ‖map‖ ≤ ‖other‖ := by
  have nonzero := original_window_L2_ne_zero_of_strict_maturity hn mature
  refine ⟨realizationMap (originalWindowL2 T n) (prescribedSourceL2 A hA n),
    realization_map_self nonzero _, ?_, ?_⟩
  · rw [realization_map_norm nonzero, div_pow, prescribed_source_L2_norm_square hA hn,
      original_window_L2_norm_square]
  · intro other realizes
    exact realization_map_norm_minimal nonzero _ other realizes

/-- Feasibility for each positive gap on the literal T=2A family; no uniform norm. -/
theorem prescribed_horizon_individual_realization {δ : ℝ} (gap : 0 < δ) :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ hA : 0 < A,
      ∃ map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        map (originalWindowL2 (2 * A) 8) = prescribedSourceL2 A hA 8 ∧
        ‖map‖ ^ 2 = 1 / gram (2 * A) 8 8 ∧
        ∀ other : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
          other (originalWindowL2 (2 * A) 8) = prescribedSourceL2 A hA 8 →
            ‖map‖ ≤ ‖other‖ := by
  refine ⟨(Real.log (8 : ℝ) + δ) / 2, (log_eight_near_contact_scale_bounds gap).1, ?_⟩
  intro hA
  apply bounded_individual_realization_exists hA (by norm_num : 1 ≤ (8 : ℕ))
  linarith

end

end GRWTSK.Analysis.InnerProductSpace.CausalIndividualRealization
```
