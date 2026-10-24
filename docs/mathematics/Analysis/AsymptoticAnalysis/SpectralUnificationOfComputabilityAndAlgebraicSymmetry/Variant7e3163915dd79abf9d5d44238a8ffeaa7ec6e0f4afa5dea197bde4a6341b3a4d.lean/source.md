# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant7e3163915dd79abf9d5d44238a8ffeaa7ec6e0f4afa5dea197bde4a6341b3a4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c23ac91c5940382a69516714bf1fe1bfd215828` · SHA-256 `35cbdafe11fc53458fb2d93675e17a18b06f1c7c5343109c468c92e5f87bb997`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.LogSqrtWeight.Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"faf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.LogSqrtWeight.Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"faf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/faf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimePowerSectors
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Analysis.SpecialFunctions.Sqrt

/-!
# Uniform control of the actual odd higher prime powers

The analytic majorant is proved by comparison on preceding unit intervals.
This keeps the exact geometric odd-exponent tail and requires no estimate for
the first-prime contribution.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.LogSqrtWeight.Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateOddPrimePowers

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization PrimePowerDescent EstimateCorrelation EstimatePrimePowerSectors

noncomputable section

/-- The logarithmic summable majorant, indexed from the first integer two. -/
def logSqrtWeight (k : ℕ) : ℝ :=
  Real.log (k + 2 : ℝ) / ((k + 2 : ℝ) * Real.sqrt (k + 2 : ℝ))

private def unitMajorant (x : ℝ) : ℝ := Real.log (2 * x) / (x * Real.sqrt x)

private def unitPrimitive (x : ℝ) : ℝ := -2 * (Real.log (2 * x) + 2) / Real.sqrt x

theorem logSqrtWeight_nonneg (k : ℕ) : 0 ≤ logSqrtWeight k := by
  unfold logSqrtWeight
  exact div_nonneg (Real.log_nonneg (by linarith [Nat.cast_nonneg (α := ℝ) k])) (by positivity)

private theorem unitPrimitive_hasDerivAt (x : ℝ) (hx : 0 < x) :
    HasDerivAt unitPrimitive (unitMajorant x) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.mpr hx).ne'
  have hd := ((((hasDerivAt_id x).const_mul 2).log (by positivity)).add_const 2).const_mul (-2)
  apply (hd.div (Real.hasDerivAt_sqrt hx.ne') hs).congr_deriv
  dsimp [unitPrimitive, unitMajorant]
  have he := Real.sq_sqrt hx.le
  field_simp
  rw [he]
  ring

private theorem unitMajorant_intervalIntegrable (a b : ℝ) (ha : 1 ≤ a) (hab : a ≤ b) :
    IntervalIntegrable unitMajorant volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  apply ContinuousOn.div
  · apply ContinuousOn.log (by fun_prop)
    intro x hx
    have : 0 < x := lt_of_lt_of_le zero_lt_one (ha.trans hx.1)
    positivity
  · exact continuousOn_id.mul Real.continuous_sqrt.continuousOn
  · intro x hx
    have : 0 < x := lt_of_lt_of_le zero_lt_one (ha.trans hx.1)
    positivity

private theorem logSqrtWeight_le_unitMajorant (k : ℕ) (x : ℝ)
    (hx : x ∈ Icc (k + 1 : ℝ) (k + 2 : ℝ)) : logSqrtWeight k ≤ unitMajorant x := by
  have hx1 : 1 ≤ x := by linarith [hx.1, Nat.cast_nonneg (α := ℝ) k]
  have hxp : 0 < x := lt_of_lt_of_le zero_lt_one hx1
  have hn : 0 < (k + 2 : ℝ) := by positivity
  have hlog : Real.log (k + 2 : ℝ) ≤ Real.log (2 * x) :=
    Real.log_le_log hn (by linarith [hx.1, Nat.cast_nonneg (α := ℝ) k])
  have hden : x * Real.sqrt x ≤ (k + 2 : ℝ) * Real.sqrt (k + 2 : ℝ) :=
    mul_le_mul hx.2 (Real.sqrt_le_sqrt hx.2) (Real.sqrt_nonneg _) (by positivity)
  calc
    logSqrtWeight k ≤ Real.log (2 * x) / ((k + 2 : ℝ) * Real.sqrt (k + 2 : ℝ)) :=
      div_le_div_of_nonneg_right hlog (by positivity)
    _ ≤ unitMajorant x := div_le_div_of_nonneg_left
      (Real.log_nonneg (by linarith)) (by positivity) hden

private theorem logSqrtWeight_le_unit_integral (k : ℕ) :
    logSqrtWeight k ≤ ∫ x in (k + 1 : ℝ)..(k + 2 : ℝ), unitMajorant x := by
  have hm := intervalIntegral.integral_mono_on (μ := volume)
    (a := (k + 1 : ℝ)) (b := (k + 2 : ℝ)) (by linarith)
    (intervalIntegrable_const) (unitMajorant_intervalIntegrable _ _
      (by linarith [Nat.cast_nonneg (α := ℝ) k]) (by linarith))
    (logSqrtWeight_le_unitMajorant k)
  simpa only [intervalIntegral.integral_const,
    show (k + 2 : ℝ) - (k + 1 : ℝ) = 1 by ring, smul_eq_mul, one_mul] using hm

/-- Every finite partial sum is controlled by an exact endpoint calculation. -/
theorem sum_logSqrtWeight_le (N : ℕ) :
    (∑ k ∈ Finset.range N, logSqrtWeight k) ≤ 4 + 2 * Real.log 2 := by
  have hN : (1 : ℝ) ≤ N + 1 := by linarith [Nat.cast_nonneg (α := ℝ) N]
  have hint := unitMajorant_intervalIntegrable (1 : ℝ) (N + 1 : ℝ) le_rfl hN
  have heq : (∫ x in (1 : ℝ)..(N + 1 : ℝ), unitMajorant x) =
      unitPrimitive (N + 1 : ℝ) - unitPrimitive 1 := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt _ hint
    intro x hx
    rw [uIcc_of_le hN] at hx
    exact unitPrimitive_hasDerivAt x (lt_of_lt_of_le zero_lt_one hx.1)
  have hsum := intervalIntegral.sum_integral_adjacent_intervals
    (a := fun k : ℕ => (k + 1 : ℝ)) (n := N) (μ := volume)
    (f := unitMajorant) (fun k _ => by
      simpa only [Nat.cast_add, Nat.cast_one, add_assoc, one_add_one_eq_two] using
        unitMajorant_intervalIntegrable (k + 1 : ℝ) (k + 2 : ℝ)
          (by linarith [Nat.cast_nonneg (α := ℝ) k]) (by linarith))
  have hnonpos : unitPrimitive (N + 1 : ℝ) ≤ 0 := by
    unfold unitPrimitive
    apply div_nonpos_of_nonpos_of_nonneg
    · have := Real.log_nonneg (show (1 : ℝ) ≤ 2 * (N + 1 : ℝ) by linarith)
      linarith
    · positivity
  calc
    _ ≤ ∑ k ∈ Finset.range N, ∫ x in (k + 1 : ℝ)..(k + 2 : ℝ), unitMajorant x :=
      Finset.sum_le_sum (fun k _ => logSqrtWeight_le_unit_integral k)
    _ = ∫ x in (1 : ℝ)..(N + 1 : ℝ), unitMajorant x := by
      simpa only [Nat.cast_zero, zero_add, Nat.cast_add, Nat.cast_one,
        add_assoc, one_add_one_eq_two] using hsum
    _ ≤ _ := by rw [heq]; norm_num [unitPrimitive] at *; linarith

/-- Convergence follows from nonnegative partial sums and their proved bound. -/
theorem logSqrtWeight_summable : Summable logSqrtWeight :=
  summable_of_sum_range_le logSqrtWeight_nonneg sum_logSqrtWeight_le

/-- The infinite comparison is a genuine convergent sum. -/
theorem tsum_logSqrtWeight_le : (∑' k : ℕ, logSqrtWeight k) ≤ 4 + 2 * Real.log 2 :=
  Real.tsum_le_of_sum_range_le logSqrtWeight_nonneg sum_logSqrtWeight_le

/-- An arbitrary finite set of integers at least two lies below the convergent majorant. -/
theorem finite_log_sqrt_sum_le (s : Finset ℕ) (hs : ∀ p ∈ s, 2 ≤ p) :
    (∑ p ∈ s, Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) ≤ 4 + 2 * Real.log 2 := by
  have hinj : Set.InjOn (fun p : ℕ => p - 2) (s : Set ℕ) := by
    intro a ha b hb hab
    have := hs a ha
    have := hs b hb
    dsimp only at hab
    omega
  have heq : (∑ p ∈ s, Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) =
      ∑ k ∈ s.image (fun p => p - 2), logSqrtWeight k := by
    rw [Finset.sum_image hinj]
    apply Finset.sum_congr rfl
    intro p hp
    unfold logSqrtWeight
    rw [show ((p - 2 : ℕ) : ℝ) + 2 = (p : ℝ) by exact_mod_cast Nat.sub_add_cancel (hs p hp)]
  rw [heq]
  exact (logSqrtWeight_summable.sum_le_tsum _ (fun k _ => logSqrtWeight_nonneg k)).trans
    tsum_logSqrtWeight_le

private theorem odd_power_weight_eq (p k : ℕ) (hp : 2 ≤ p) :
    Real.log (p : ℝ) / Real.sqrt (p ^ (2 * k + 3) : ℕ) =
      (Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) * (1 / (p : ℝ)) ^ k := by
  have hp0 : (0 : ℝ) < p := by exact_mod_cast (show 0 < p by omega)
  rw [Nat.cast_pow, show 2 * k + 3 = (k + 1) * 2 + 1 by omega,
    pow_add, pow_one, pow_mul, Real.sqrt_mul (by positivity), Real.sqrt_sq (by positivity),
    pow_succ]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

private theorem finite_inverse_geom_le_two (p : ℕ) (hp : 2 ≤ p) (s : Finset ℕ) :
    (∑ k ∈ s, (1 / (p : ℝ)) ^ k) ≤ 2 := by
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp
  have hp0 : (0 : ℝ) < p := by linarith
  have hq : (1 / (p : ℝ)) ≤ 1 / 2 := by
    exact one_div_le_one_div_of_le (by norm_num) hp2
  have hq0 : (0 : ℝ) ≤ 1 / p := by positivity
  have hqa : |1 / (p : ℝ)| < 1 := by rw [abs_of_nonneg hq0]; linarith
  have hsum := (summable_geometric_of_abs_lt_one hqa).sum_le_tsum s (fun k _ => pow_nonneg hq0 k)
  rw [tsum_geometric_of_abs_lt_one hqa] at hsum
  apply hsum.trans
  rw [← one_div]
  exact (div_le_iff₀ (by linarith : (0 : ℝ) < 1 - 1 / p)).2 (by linarith)

/-- Every finite odd-exponent block at one prime is bounded by its complete
geometric series. The source remains the actual correlation. -/
theorem odd_prime_block_abs_le (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : 2 ≤ p) (s : Finset ℕ) :
    |∑ k ∈ s, Real.log (p : ℝ) / Real.sqrt (p ^ (2 * k + 3) : ℕ) *
      sourceCorrelation explicitSecondDerivative A (Real.log (p ^ (2 * k + 3) : ℕ))| ≤
      2 * (Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) := by
  have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast (show 1 ≤ p by omega)
  have hw : 0 ≤ Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p) :=
    div_nonneg (Real.log_nonneg hp1) (by positivity)
  calc
    _ ≤ ∑ k ∈ s, |Real.log (p : ℝ) / Real.sqrt (p ^ (2 * k + 3) : ℕ) *
        sourceCorrelation explicitSecondDerivative A (Real.log (p ^ (2 * k + 3) : ℕ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ s, (Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) * (1 / (p : ℝ)) ^ k := by
      apply Finset.sum_le_sum
      intro k _
      rw [abs_mul, odd_power_weight_eq p k hp, abs_of_nonneg (mul_nonneg hw (by positivity))]
      exact mul_le_of_le_one_right (mul_nonneg hw (by positivity))
        (actual_correlation_abs_le_one A _ hA)
    _ ≤ _ := by
      rw [← Finset.mul_sum]
      simpa only [mul_comm] using mul_le_mul_of_nonneg_left (finite_inverse_geom_le_two p hp s) hw

/-- The complete actual odd higher-prime-power sector is uniformly bounded,
independently of its moving finite cutoff and every real source scale. -/
theorem oddHigherMoment_abs_le (A : ℝ) (hA : 1 ≤ A) : |oddHigherMoment A| ≤ 12 := by
  have hs : ∀ p ∈ (primePowerInventory (2 * A)).filter Nat.Prime, 2 ≤ p := by
    intro p hp
    exact (Finset.mem_filter.mp hp).2.two_le
  unfold oddHigherMoment
  calc
    _ ≤ ∑ p ∈ (primePowerInventory (2 * A)).filter Nat.Prime,
        |∑ k ∈ (Finset.range ⌊Real.exp (2 * A)⌋₊).filter
          (fun k ↦ p ^ (2 * k + 3) ≤ ⌊Real.exp (2 * A)⌋₊),
          Real.log (p : ℝ) / Real.sqrt (p ^ (2 * k + 3) : ℕ) *
            sourceCorrelation explicitSecondDerivative A (Real.log (p ^ (2 * k + 3) : ℕ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ (primePowerInventory (2 * A)).filter Nat.Prime,
        2 * (Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) :=
      Finset.sum_le_sum (fun p hp => odd_prime_block_abs_le A hA p (hs p hp) _)
    _ ≤ 2 * (4 + 2 * Real.log 2) := by
      rw [← Finset.mul_sum]
      exact mul_le_mul_of_nonneg_left (finite_log_sqrt_sum_le _ hs) (by norm_num)
    _ ≤ 12 := by linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]

end
end EstimateOddPrimePowers
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
