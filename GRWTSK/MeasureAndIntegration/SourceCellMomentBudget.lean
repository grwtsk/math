-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SecondMomentMajorant.Variant23e9ee6740a49791413a3e410e56164c3738dc881baf47917ebffd506c1e7a91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23e9ee6740a49791413a3e410e56164c3738dc881baf47917ebffd506c1e7a91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SecondMomentMajorant.Variant23e9ee6740a49791413a3e410e56164c3738dc881baf47917ebffd506c1e7a91","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"23e9ee6740a49791413a3e410e56164c3738dc881baf47917ebffd506c1e7a91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceCellMomentBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationCellTransport

/-!
# A finite second-moment budget for the actual source cells

grwtsk contributors supplied the research direction and high-priority emphasis.
OpenAI Codex selected and proved this specific finite analytic payment on
7 October 2026. Every physical cell, the first moment and the literal
closed cutoff are retained. The signed arithmetic upper cap and RH remain open.
This is a private focused proof candidate, without accepted-main status.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SecondMomentMajorant.Variant23e9ee6740a49791413a3e410e56164c3738dc881baf47917ebffd506c1e7a91

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceCellMomentBudget

open MeasureTheory Set SourceCorrelationCellTransport SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open scoped Interval

/-- Positive integrable majorant for the literal logarithmic second moment. -/
def secondMomentMajorant (x : ℝ) : ℝ := 4 / x ^ (5 / 2 : ℝ)

/-- The exact primitive retains the finite endpoint. -/
def secondMomentPrimitive (x : ℝ) : ℝ := -(8 / 3 : ℝ) * x ^ (-(3 / 2 : ℝ))

theorem secondMomentPrimitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt secondMomentPrimitive (secondMomentMajorant x) x := by
  unfold secondMomentPrimitive secondMomentMajorant
  have h := (Real.hasDerivAt_rpow_const
    (p := -(3 / 2 : ℝ)) (Or.inl hx.ne')).const_mul (-(8 / 3 : ℝ))
  exact h.congr_deriv (by
    rw [show -(3 / 2 : ℝ) - 1 = -(5 / 2 : ℝ) by ring, Real.rpow_neg hx.le]
    ring)

theorem secondMomentMajorant_intervalIntegrable {a b : ℝ}
    (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable secondMomentMajorant volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  intro x hx
  have hx0 : 0 < x := ha.trans_le hx.1
  exact (continuousAt_const.div
    (Real.continuousAt_rpow_const x (5 / 2 : ℝ) (Or.inl hx0.ne'))
    (Real.rpow_pos_of_pos hx0 _).ne').continuousWithinAt

theorem secondMomentMajorant_integral_eq {b : ℝ} (hb : 1 ≤ b) :
    (∫ x in (1 : ℝ)..b, secondMomentMajorant x) =
      (8 / 3 : ℝ) * (1 - b ^ (-(3 / 2 : ℝ))) := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => secondMomentPrimitive_hasDerivAt (by
      rw [uIcc_of_le hb] at hx
      exact zero_lt_one.trans_le hx.1))
    (secondMomentMajorant_intervalIntegrable zero_lt_one hb)]
  simp only [secondMomentPrimitive, Real.one_rpow, mul_one]
  ring

theorem secondMomentMajorant_integral_le {b : ℝ} (hb : 1 ≤ b) :
    (∫ x in (1 : ℝ)..b, secondMomentMajorant x) ≤ 8 / 3 := by
  rw [secondMomentMajorant_integral_eq hb]
  have h := Real.rpow_nonneg (zero_le_one.trans hb) (-(3 / 2 : ℝ))
  linarith

theorem cellSecondMoment_le_majorant {n : ℕ} (hn : 1 ≤ n) :
    cellSecondMoment n ≤
      ∫ x in (n : ℝ)..((n : ℝ) + 1), secondMomentMajorant x := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  apply intervalIntegral.integral_mono_on (by linarith)
    (cellSecondMoment_integrand_intervalIntegrable hn)
    (secondMomentMajorant_intervalIntegrable hn0 (by linarith))
  intro x hx
  have hx0 : 0 < x := hn0.trans_le hx.1
  have hd0 : 0 ≤ Real.log x - Real.log n :=
    sub_nonneg.mpr (Real.log_le_log hn0 hx.1)
  have hd := log_cell_increment_le hn hx
  have hsq : (Real.log x - Real.log n) ^ 2 ≤ (2 / x) ^ 2 :=
    (sq_le_sq₀ hd0 (by positivity)).2 hd
  have hp : x ^ (5 / 2 : ℝ) = x ^ 2 * Real.sqrt x := by
    rw [show (5 / 2 : ℝ) = (2 : ℝ) + 1 / 2 by ring,
      Real.rpow_add hx0, Real.rpow_two, ← Real.sqrt_eq_rpow]
  calc
    _ ≤ (2 / x) ^ 2 / Real.sqrt x :=
      div_le_div_of_nonneg_right hsq (Real.sqrt_nonneg x)
    _ = secondMomentMajorant x := by
      unfold secondMomentMajorant
      rw [hp]
      ring

theorem sum_secondMomentMajorant_integrals (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N,
      ∫ x in (n : ℝ)..((n : ℝ) + 1), secondMomentMajorant x) =
      ∫ x in (1 : ℝ)..((N : ℝ) + 1), secondMomentMajorant x := by
  have h := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun k : ℕ => (k : ℝ)) (m := 1) (n := N + 1) (by omega)
    (f := secondMomentMajorant) (μ := volume) (fun k hk => by
      have hk0 : (0 : ℝ) < k := by exact_mod_cast (Nat.zero_lt_of_lt hk.1)
      apply secondMomentMajorant_intervalIntegrable hk0
      simp only [Nat.cast_add, Nat.cast_one]
      linarith)
  simpa only [Finset.Ico_add_one_right_eq_Icc, Nat.cast_add, Nat.cast_one] using h

/-- An unconditional payment independent of the finite natural inventory. -/
theorem sum_cellSecondMoment_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, cellSecondMoment n) ≤ 8 / 3 := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 N,
        ∫ x in (n : ℝ)..((n : ℝ) + 1), secondMomentMajorant x :=
      Finset.sum_le_sum (fun n hn => cellSecondMoment_le_majorant
        (Finset.mem_Icc.mp hn).1)
    _ = ∫ x in (1 : ℝ)..((N : ℝ) + 1), secondMomentMajorant x :=
      sum_secondMomentMajorant_integrals N
    _ ≤ 8 / 3 := secondMomentMajorant_integral_le (by
      have hN : (0 : ℝ) ≤ N := Nat.cast_nonneg N
      linarith)

/-- The next source consumer pays every Taylor remainder with curvature five. -/
theorem sum_cellTaylorRemainder_abs_le {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, |cellTaylorRemainder A n|) ≤ 20 / (3 * A ^ 2) := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 N, (5 / (2 * A ^ 2)) * cellSecondMoment n :=
      Finset.sum_le_sum (fun n hn => cellTaylorRemainder_abs_le hA
        (Finset.mem_Icc.mp hn).1)
    _ = (5 / (2 * A ^ 2)) * ∑ n ∈ Finset.Icc 1 N, cellSecondMoment n := by
      rw [Finset.mul_sum]
    _ ≤ (5 / (2 * A ^ 2)) * (8 / 3) :=
      mul_le_mul_of_nonneg_left (sum_cellSecondMoment_le N) (by positivity)
    _ = _ := by ring

/-- The complete first-moment compensation survives in the finite source sum. -/
theorem compensated_cellCorrection_sum_abs_le {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    |(∑ n ∈ Finset.Icc 1 N, cellCorrection A n) +
      ∑ n ∈ Finset.Icc 1 N,
        deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
          cellFirstMoment n| ≤ 20 / (3 * A ^ 2) := by
  rw [← Finset.sum_add_distrib]
  have he : (∑ n ∈ Finset.Icc 1 N,
      (cellCorrection A n +
        deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
          cellFirstMoment n)) = ∑ n ∈ Finset.Icc 1 N, cellTaylorRemainder A n := by
    apply Finset.sum_congr rfl
    intro n hn
    exact (cellTaylorRemainder_eq (by linarith) (Finset.mem_Icc.mp hn).1).symm
  rw [he]
  exact (Finset.abs_sum_le_sum_abs _ _).trans (sum_cellTaylorRemainder_abs_le hA N)

/-- Specialization to the unchanged complete closed real-scale cutoff. -/
theorem all_real_cutoff_compensated_cell_price {A : ℝ} (hA : 200 ≤ A) :
    |(∑ n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊, cellCorrection A n) +
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
          cellFirstMoment n| ≤ 20 / (3 * A ^ 2) :=
  compensated_cellCorrection_sum_abs_le hA _

end FormalResearch.RiemannHypothesis.SourceCellMomentBudget
