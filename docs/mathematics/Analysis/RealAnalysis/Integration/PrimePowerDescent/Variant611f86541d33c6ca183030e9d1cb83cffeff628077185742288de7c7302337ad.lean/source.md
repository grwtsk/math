# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PrimePowerDescent.Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4963666ae38854c5dd8311aa9356403ba9d4abc` · SHA-256 `611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairing
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Analysis.Calculus.ContDiff.Deriv

/-!
# Exact finite prime-power descent

The arithmetic error and closed-right Chebyshev count are the actual definitions
from the immutable RH source interface. Finite summation and ordinary integration
by parts retain both interval endpoints and the prime-two atom. No weak-family
realization, Fourier theorem, improper integral, or RH hypothesis is used.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

open MeasureTheory Set
open scoped BigOperators Interval
open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

/-- The complete closed finite prime-power inventory at a finite logarithmic height. -/
def primePowerInventory (b : ℝ) : Finset ℕ := Finset.Icc 2 ⌊Real.exp b⌋₊

/-- Closed thresholds below `b` select exactly the source's count at `exp t`.
This is an equality of inventories, not a sampled or heuristic coverage claim. -/
theorem inventory_filter_log (b t : ℝ) (ht : t ≤ b) :
    (primePowerInventory b).filter (fun n : ℕ ↦ Real.log n ≤ t) =
      Finset.Icc 2 ⌊Real.exp t⌋₊ := by
  ext n
  simp only [primePowerInventory, Finset.mem_filter, Finset.mem_Icc]
  by_cases hn : 2 ≤ n
  · have hnpos : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le (by omega) hn)
    rw [Real.log_le_iff_le_exp hnpos]
    rw [Nat.le_floor_iff (Real.exp_pos b).le, Nat.le_floor_iff (Real.exp_pos t).le]
    constructor
    · exact fun h ↦ ⟨h.1.1, h.2⟩
    · exact fun h ↦ ⟨⟨h.1, h.2.trans (Real.exp_le_exp.mpr ht)⟩, h.2⟩
  · simp [hn]

/-- The source Chebyshev function is a complete finite sum of closed logarithmic steps. -/
theorem chebyshev_eq_finite_steps (b t : ℝ) (ht : t ≤ b) :
    chebyshevPrimePower (Real.exp t) =
      ∑ n ∈ primePowerInventory b,
        if Real.log n ≤ t then ArithmeticFunction.vonMangoldt n else 0 := by
  rw [← Finset.sum_filter, inventory_filter_log b t ht]
  rfl

/-- A closed step at any `c ∈ [a,b]` integrates over precisely `c..b`.
The possible difference at the threshold is null for Lebesgue measure; the
threshold value remains an explicit boundary evaluation in the next theorem. -/
theorem integral_closed_step (a b c : ℝ) (hac : a ≤ c) (hcb : c ≤ b)
    (f : ℝ → ℝ) :
    (∫ t in a..b, if c ≤ t then f t else 0) = ∫ t in c..b, f t := by
  change (∫ t in a..b, (Ici c).indicator f t) = _
  rw [intervalIntegral.integral_of_le (hac.trans hcb),
    MeasureTheory.integral_indicator measurableSet_Ici,
    Measure.restrict_restrict measurableSet_Ici]
  by_cases heq : a = c
  · subst a
    have hs : Ici c ∩ Ioc c b = Ioc c b := by
      ext t
      simp only [mem_inter_iff, mem_Ici, mem_Ioc]
      constructor
      · exact fun h ↦ h.2
      · exact fun h ↦ ⟨h.1.le, h⟩
    rw [hs, intervalIntegral.integral_of_le hcb]
  · have hac' : a < c := lt_of_le_of_ne hac heq
    have hs : Ici c ∩ Ioc a b = Icc c b := by
      ext t
      simp only [mem_inter_iff, mem_Ici, mem_Ioc, mem_Icc]
      constructor
      · exact fun h ↦ ⟨h.1, h.2.2⟩
      · exact fun h ↦ ⟨h.1, hac'.trans_le h.1, h.2⟩
    rw [hs, integral_Icc_eq_integral_Ioc, intervalIntegral.integral_of_le hcb]

/-- One logarithmic step gives both endpoint values, including a step at `a`. -/
theorem integral_closed_step_deriv (a b c : ℝ) (hac : a ≤ c) (hcb : c ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ t in a..b, if c ≤ t then deriv F t else 0) = F b - F c := by
  rw [integral_closed_step a b c hac hcb]
  exact intervalIntegral.integral_deriv_eq_sub
    (fun t _ ↦ (contDiff_one_iff_deriv.mp hF).1 t)
    (hF.continuous_deriv_one.intervalIntegrable c b)

/-- A finite step restriction preserves integrability on the whole interval. -/
theorem intervalIntegrable_closed_step (a b c : ℝ) (f : ℝ → ℝ)
    (hf : IntervalIntegrable f volume a b) :
    IntervalIntegrable (fun t ↦ if c ≤ t then f t else 0) volume a b := by
  change IntervalIntegrable ((Ici c).indicator f) volume a b
  exact ⟨hf.1.indicator measurableSet_Ici, hf.2.indicator measurableSet_Ici⟩

/-- Every inventory entry has its threshold in the declared closed interval. -/
theorem inventory_log_bounds (b : ℝ) (n : ℕ) (hn : n ∈ primePowerInventory b) :
    lowerEndpoint ≤ Real.log n ∧ Real.log n ≤ b := by
  have hn' := Finset.mem_Icc.mp hn
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le (by omega) hn'.1)
  constructor
  · exact Real.log_le_log (by norm_num) (by exact_mod_cast hn'.1)
  · exact (Real.log_le_iff_le_exp hnpos).mpr
      ((Nat.le_floor_iff (Real.exp_pos b).le).mp hn'.2)

/-- Exact integration of a complete finite weighted inventory of closed steps. -/
theorem integral_finite_steps_deriv (a b : ℝ) (S : Finset ℕ)
    (threshold weight : ℕ → ℝ) (hthreshold : ∀ n ∈ S, a ≤ threshold n ∧ threshold n ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ t in a..b, ∑ n ∈ S,
        weight n * (if threshold n ≤ t then deriv F t else 0)) =
      ∑ n ∈ S, weight n * (F b - F (threshold n)) := by
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro n hn
    rw [intervalIntegral.integral_const_mul, integral_closed_step_deriv a b (threshold n)
      (hthreshold n hn).1 (hthreshold n hn).2 F hF]
  · intro n _
    exact (intervalIntegrable_closed_step a b (threshold n) (deriv F)
      (hF.continuous_deriv_one.intervalIntegrable a b)).const_mul (weight n)

/-- Multiplication by any test value preserves the complete step representation. -/
theorem chebyshev_mul_eq_steps (b t y : ℝ) (ht : t ≤ b) :
    chebyshevPrimePower (Real.exp t) * y =
      ∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n * (if Real.log n ≤ t then y else 0) := by
  rw [chebyshev_eq_finite_steps b t ht, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n _
  split_ifs <;> simp

/-- The finite source count times a continuously differentiable test derivative is integrable. -/
theorem chebyshev_mul_deriv_intervalIntegrable (b : ℝ) (hb : lowerEndpoint ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun t ↦ chebyshevPrimePower (Real.exp t) * deriv F t)
      volume lowerEndpoint b := by
  have hs : IntervalIntegrable (fun t ↦ ∑ n ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt n * (if Real.log n ≤ t then deriv F t else 0))
      volume lowerEndpoint b := by
    have hi : IntervalIntegrable (∑ n ∈ primePowerInventory b,
        fun t : ℝ ↦ ArithmeticFunction.vonMangoldt n *
          (if Real.log n ≤ t then deriv F t else 0)) volume lowerEndpoint b :=
      IntervalIntegrable.sum (primePowerInventory b) (fun n _ ↦
      (intervalIntegrable_closed_step lowerEndpoint b (Real.log n) (deriv F)
        (hF.continuous_deriv_one.intervalIntegrable lowerEndpoint b)).const_mul
          (ArithmeticFunction.vonMangoldt n))
    have heq : (∑ n ∈ primePowerInventory b,
        fun t : ℝ ↦ ArithmeticFunction.vonMangoldt n *
          (if Real.log n ≤ t then deriv F t else 0)) =
        (fun t ↦ ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n *
          (if Real.log n ≤ t then deriv F t else 0)) := by
      funext t
      simp only [Finset.sum_apply]
    rw [heq] at hi
    exact hi
  apply hs.congr
  intro t ht
  exact (chebyshev_mul_eq_steps b t (deriv F t)
    ((uIoc_of_le hb ▸ ht).2)).symm

/-- Exact finite Stieltjes summation for the actual closed-right Chebyshev count. -/
theorem chebyshev_prime_power_step_integral (b : ℝ) (hb : lowerEndpoint ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ t in lowerEndpoint..b, chebyshevPrimePower (Real.exp t) * deriv F t) =
      chebyshevPrimePower (Real.exp b) * F b -
        ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n * F (Real.log n) := by
  calc
    _ = ∫ t in lowerEndpoint..b, ∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n * (if Real.log n ≤ t then deriv F t else 0) := by
      apply intervalIntegral.integral_congr
      intro t ht
      exact chebyshev_mul_eq_steps b t (deriv F t) ((uIcc_of_le hb ▸ ht).2)
    _ = ∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n * (F b - F (Real.log n)) :=
      integral_finite_steps_deriv lowerEndpoint b (primePowerInventory b)
        (fun n ↦ Real.log n) ArithmeticFunction.vonMangoldt
        (fun n hn ↦ inventory_log_bounds b n hn) F hF
    _ = _ := by
      simp_rw [mul_sub]
      rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
      rfl

/-- Finite integration by parts for the source arithmetic error. Both interval
boundaries are retained, and the complete inventory includes the prime-two atom. -/
theorem chebyshev_prime_power_ibp (b : ℝ) (hb : lowerEndpoint ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ t in lowerEndpoint..b, chebyshevError (Real.exp t) * deriv F t) =
      chebyshevError (Real.exp b) * F b -
        ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n * F (Real.log n) +
      2 * F lowerEndpoint + ∫ t in lowerEndpoint..b, Real.exp t * F t := by
  have hexp := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    Real.continuous_exp.continuousOn hF.continuous.continuousOn
    (fun t _ ↦ Real.hasDerivAt_exp t)
    (fun t _ ↦ ((contDiff_one_iff_deriv.mp hF).1 t).hasDerivAt)
    (Real.continuous_exp.intervalIntegrable lowerEndpoint b)
    (hF.continuous_deriv_one.intervalIntegrable lowerEndpoint b)
  have hcontinuous : Continuous (fun t ↦ Real.exp t * deriv F t) :=
    Real.continuous_exp.mul hF.continuous_deriv_one
  simp only [chebyshevError, sub_mul]
  rw [intervalIntegral.integral_sub
    (chebyshev_mul_deriv_intervalIntegrable b hb F hF)
    (hcontinuous.intervalIntegrable lowerEndpoint b),
    chebyshev_prime_power_step_integral b hb F hF, hexp]
  rw [lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  ring

/-- The source's exponentially weighted test, without a weak-family realization assumption. -/
def exponentialTest (C : ℝ → ℝ) (t : ℝ) : ℝ := Real.exp (-t / 2) * C t

/-- Ordinary differentiability of the correlation is the precise regularity used here. -/
theorem exponentialTest_contDiff (C : ℝ → ℝ) (hC : ContDiff ℝ 1 C) :
    ContDiff ℝ 1 (exponentialTest C) :=
  ((contDiff_id.neg.div_const 2).exp).mul hC

/-- Differentiating the actual weighted test gives the signed derivative weight. -/
theorem exponentialTest_deriv (C : ℝ → ℝ) (hC : ContDiff ℝ 1 C) (t : ℝ) :
    deriv (exponentialTest C) t =
      Real.exp (-t / 2) * (deriv C t - C t / 2) := by
  have hd := (((hasDerivAt_id t).neg.div_const 2).exp).mul
    (((contDiff_one_iff_deriv.mp hC).1 t).hasDerivAt)
  rw [show deriv (exponentialTest C) t = _ from hd.deriv]
  dsimp only [Pi.neg_apply, id_eq]
  ring

/-- A direct descent for the actual source pairing, conditional only on the
stated correlation regularity. It does not assume or construct `DilationRealization`.
The upper boundary is deliberately still present. -/
theorem source_signed_pairing_ibp (g : ℝ → ℝ → ℝ) (A : ℝ) (hA : 1 ≤ A)
    (hC : ContDiff ℝ 1 (sourceCorrelation g A)) :
    signedPairing g A =
      chebyshevError (Real.exp (2 * A)) * exponentialTest (sourceCorrelation g A) (2 * A) -
        ∑ n ∈ primePowerInventory (2 * A), ArithmeticFunction.vonMangoldt n *
          exponentialTest (sourceCorrelation g A) (Real.log n) +
      2 * exponentialTest (sourceCorrelation g A) lowerEndpoint +
        ∫ t in lowerEndpoint..2 * A, Real.exp t * exponentialTest (sourceCorrelation g A) t := by
  have hi := chebyshev_prime_power_ibp (2 * A) (source_interval_order A hA)
    (exponentialTest (sourceCorrelation g A)) (exponentialTest_contDiff _ hC)
  simpa only [exponentialTest_deriv _ hC, signedPairing, errorProfile, sourceWeight] using hi

/-- The upper boundary may be removed only after proving its test value vanishes. -/
theorem chebyshev_prime_power_ibp_of_upper_zero (b : ℝ) (hb : lowerEndpoint ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) (hzero : F b = 0) :
    (∫ t in lowerEndpoint..b, chebyshevError (Real.exp t) * deriv F t) =
      -(∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n * F (Real.log n)) +
      2 * F lowerEndpoint + ∫ t in lowerEndpoint..b, Real.exp t * F t := by
  simpa only [hzero, mul_zero, zero_sub] using chebyshev_prime_power_ibp b hb F hF

/-- The `+2 F(log 2)` term becomes exactly the source's separate prime-two
correction when the prime sum is substituted with coefficient `-2`. -/
theorem prime_two_correction (C : ℝ → ℝ) :
    -4 * exponentialTest C lowerEndpoint = -2 * Real.sqrt 2 * C lowerEndpoint := by
  have hs : Real.sqrt (2 : ℝ) ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr (by norm_num))
  have he : Real.exp (-Real.log 2 / 2) = Real.sqrt 2 / 2 := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    apply (eq_div_iff (by norm_num : (2 : ℝ) ≠ 0)).mpr
    field_simp
    nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 2 by norm_num)]
  rw [exponentialTest, lowerEndpoint, he]
  ring

/-- A concrete endpoint check: omitting the prime-two correction leaves `-2`
even on the degenerate interval at the first prime. -/
theorem omitted_prime_two_boundary_is_nonzero :
    chebyshevError (Real.exp lowerEndpoint) -
      (∑ n ∈ primePowerInventory lowerEndpoint, ArithmeticFunction.vonMangoldt n) = -2 := by
  rw [chebyshevError]
  change chebyshevPrimePower (Real.exp lowerEndpoint) - Real.exp lowerEndpoint -
    chebyshevPrimePower (Real.exp lowerEndpoint) = -2
  rw [lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  ring

/-- The exponential test agrees exactly with the manuscript's inverse square-root weight. -/
theorem exponentialTest_log (C : ℝ → ℝ) (n : ℕ) (hn : 0 < n) :
    exponentialTest C (Real.log n) = C (Real.log n) / Real.sqrt n := by
  have hn' : (0 : ℝ) < n := by exact_mod_cast hn
  rw [exponentialTest, neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hn']
  ring

/-- A strict source cutoff is equivalent to the closed inventory only when the
right-endpoint correlation is zero. Prime-power atoms there are accounted for. -/
theorem source_prime_power_contribution_eq_closed (g : ℝ → ℝ → ℝ) (A : ℝ)
    (hzero : sourceCorrelation g A (2 * A) = 0) :
    primePowerContribution g A =
      ∑ n ∈ primePowerInventory (2 * A), ArithmeticFunction.vonMangoldt n *
        exponentialTest (sourceCorrelation g A) (Real.log n) := by
  rw [primePowerContribution, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  have hn' := Finset.mem_Icc.mp hn
  rw [exponentialTest_log _ n (by omega)]
  by_cases hlt : (n : ℝ) < Real.exp (2 * A)
  · simp only [hlt, ↓reduceIte]
    ring
  · have heq : (n : ℝ) = Real.exp (2 * A) :=
      le_antisymm ((Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mp hn'.2)
        (le_of_not_gt hlt)
    have hlog : Real.log n = 2 * A := by rw [heq, Real.log_exp]
    simp only [hlt, ↓reduceIte, hlog, hzero, zero_div, mul_zero]

/-- Multiplication by the smooth prime density changes the half-exponential sign exactly. -/
theorem exp_mul_exponentialTest (C : ℝ → ℝ) (t : ℝ) :
    Real.exp t * exponentialTest C t = Real.exp (t / 2) * C t := by
  rw [exponentialTest, ← mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- RH-0011 equation (9), with the exact source prime sum, derivative weight,
signed pairing, endpoint and normalization. Only C¹ correlation regularity and
its proved upper zero are hypotheses; no uniform-tail or RH premise is used. -/
theorem source_prime_power_descent (g : ℝ → ℝ → ℝ) (A : ℝ) (hA : 1 ≤ A)
    (hC : ContDiff ℝ 1 (sourceCorrelation g A))
    (hzero : sourceCorrelation g A (2 * A) = 0) :
    primePowerContribution g A =
      (∫ t in lowerEndpoint..2 * A, Real.exp (t / 2) * sourceCorrelation g A t) +
      Real.sqrt 2 * sourceCorrelation g A lowerEndpoint - signedPairing g A := by
  have hi := source_signed_pairing_ibp g A hA hC
  have hend : exponentialTest (sourceCorrelation g A) (2 * A) = 0 := by
    rw [exponentialTest, hzero, mul_zero]
  rw [hend, mul_zero, zero_sub, ← source_prime_power_contribution_eq_closed g A hzero] at hi
  simp_rw [exp_mul_exponentialTest] at hi
  have htwo := prime_two_correction (sourceCorrelation g A)
  linarith

/-- Direct arithmetic reduction of `Q = M + 2 I`: the precise remaining pole
condition is an explicit finite correlation moment. This proof cancels the
identical archimedean term algebraically and makes no claim to evaluate it or
to construct a weak-family realization. -/
theorem source_arithmetic_representation_of_correlation_conditions
    (g : ℝ → ℝ → ℝ) (A : ℝ) (hA : 1 ≤ A)
    (hC : ContDiff ℝ 1 (sourceCorrelation g A))
    (hzero : sourceCorrelation g A (2 * A) = 0)
    (hpole : (∫ t in 0..2 * A, Real.exp (t / 2) * sourceCorrelation g A t) +
      (∫ t in 0..2 * A, Real.exp (-t / 2) * sourceCorrelation g A t) = 0) :
    sourceQuadraticValue g A = analyticCorrection g A + 2 * signedPairing g A := by
  have hpositive : Continuous (fun t ↦ Real.exp (t / 2) * sourceCorrelation g A t) :=
    (Real.continuous_exp.comp (continuous_id.div_const 2)).mul hC.continuous
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (hpositive.intervalIntegrable (μ := volume) 0 lowerEndpoint)
    (hpositive.intervalIntegrable lowerEndpoint (2 * A))
  have hprime := source_prime_power_descent g A hA hC hzero
  dsimp only [sourceQuadraticValue, analyticCorrection, primeTwoBoundary]
  linarith

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent
```
