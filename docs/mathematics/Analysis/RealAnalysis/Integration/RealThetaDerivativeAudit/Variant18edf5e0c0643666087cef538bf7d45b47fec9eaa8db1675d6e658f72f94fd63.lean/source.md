# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.RealThetaDerivativeAudit.Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b0d5394eeaa2ffd3ae58da8d9af7c33f6e61336` · SHA-256 `18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitiveMoments

/-!
Scratch source-bound real theta extension and its exact derivative. The outer
rectangle is fixed in q; each inner source sampling kernel already has a
checked derivative through its strict-cutoff transitions.
-/

set_option autoImplicit false

namespace RealThetaDerivativeScratch

open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceSampling SourceSamplingDerivative CorrelationDifferenceMoments
open CorrelationSecondMoment CorrelationPrimitive CorrelationPrimitiveMoments

noncomputable section

def realThetaKernel (A q : ℝ) : ℝ :=
  ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, sourceSamplingKernel A (q * (k : ℝ))

def differenceSamplingKernel (A x : ℝ) : ℝ :=
  ∑ l ∈ samplingIndices A x, Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
    correlationDifference A (Real.log (x * (l : ℝ)))

def realThetaDifferenceKernel (A q : ℝ) : ℝ :=
  ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, differenceSamplingKernel A (q * (k : ℝ))

def realThetaRemainder (A q : ℝ) : ℝ :=
  realThetaKernel A q - sourceRankOneCoefficient A / q

theorem samplingIndices_eq_fixed_filter (A x : ℝ) (hx : 1 ≤ x) :
    samplingIndices A x = (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
      (fun l : ℕ ↦ x * (l : ℝ) < Real.exp (2 * A)) := by
  have hx0 : 0 < x := zero_lt_one.trans_le hx
  ext l
  rw [mem_samplingIndices_iff A x l hx0, mem_filter, mem_Icc]
  constructor
  · rintro ⟨hl, hcut⟩
    refine ⟨⟨hl, ?_⟩, hcut⟩
    apply (Nat.le_floor_iff (Real.exp_pos _).le).mpr
    have hxl : (l : ℝ) ≤ x * (l : ℝ) := by
      simpa only [one_mul] using mul_le_mul_of_nonneg_right hx (Nat.cast_nonneg l)
    exact (hxl.trans_lt hcut).le
  · rintro ⟨⟨hl, _⟩, hcut⟩
    exact ⟨hl, hcut⟩

theorem realThetaKernel_eq_strict_sum (A q : ℝ) (hq : 1 ≤ q) :
    realThetaKernel A q = ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
      ∑ l ∈ (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
        (fun l : ℕ ↦ (q * (k : ℝ)) * (l : ℝ) < Real.exp (2 * A)),
        Real.log (l : ℝ) / Real.sqrt ((q * (k : ℝ)) * (l : ℝ)) *
          sourceCorrelation explicitSecondDerivative A
            (Real.log ((q * (k : ℝ)) * (l : ℝ))) := by
  unfold realThetaKernel
  apply sum_congr rfl
  intro k hk
  have hk1 : (1 : ℝ) ≤ k := by exact_mod_cast (mem_Icc.mp hk).1
  have hqk : 1 ≤ q * (k : ℝ) := by nlinarith
  unfold sourceSamplingKernel
  rw [samplingIndices_eq_fixed_filter A _ hqk]

theorem realThetaKernel_eq_nat (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    realThetaKernel A (q : ℝ) = ThetaKernelTransport.thetaKernel A q := by
  simpa only [realThetaKernel, Nat.cast_mul] using
    (ThetaKernelTransport.thetaKernel_eq_sum_sourceSamplingKernel A q hq).symm

theorem realThetaRemainder_eq_nat (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    realThetaRemainder A (q : ℝ) = ThetaRemainder.thetaRemainder A q := by
  rw [realThetaRemainder, realThetaKernel_eq_nat A q hq]
  rfl

theorem differenceSamplingKernel_eq_mul_deriv (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    differenceSamplingKernel A x = x * deriv (sourceSamplingKernel A) x := by
  rw [sourceSamplingKernel_deriv A x hA hx]
  unfold differenceSamplingKernel
  field_simp

theorem realThetaKernel_hasDerivAt (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (realThetaKernel A)
      (1 / q * realThetaDifferenceKernel A q) q := by
  have hd := HasDerivAt.fun_sum (u := Icc 1 ⌊Real.exp (2 * A)⌋₊)
    (fun k hk ↦ (sourceSamplingKernel_hasDerivAt A (q * (k : ℝ)) hA
      (mul_pos hq (by exact_mod_cast (show 0 < k by have := (mem_Icc.mp hk).1; omega)))).comp q
      (by simpa only [id_eq, one_mul] using (hasDerivAt_id q).mul_const (k : ℝ)))
  apply hd.congr_deriv
  rw [realThetaDifferenceKernel, mul_sum]
  apply sum_congr rfl
  intro k hk
  have hk0 : (k : ℝ) ≠ 0 := by
    exact_mod_cast (show k ≠ 0 by have := (mem_Icc.mp hk).1; omega)
  unfold differenceSamplingKernel
  field_simp

theorem realThetaKernel_deriv (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    deriv (realThetaKernel A) q = 1 / q * realThetaDifferenceKernel A q :=
  (realThetaKernel_hasDerivAt A q hA hq).deriv

theorem realThetaRemainder_hasDerivAt (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (realThetaRemainder A)
      (1 / q * (realThetaDifferenceKernel A q + sourceRankOneCoefficient A / q)) q := by
  have hinv : HasDerivAt (fun x : ℝ ↦ sourceRankOneCoefficient A / x)
      (-sourceRankOneCoefficient A / q ^ 2) q := by
    simpa only [div_eq_mul_inv, mul_neg, neg_mul] using
      (hasDerivAt_inv hq.ne').const_mul (sourceRankOneCoefficient A)
  apply ((realThetaKernel_hasDerivAt A q hA hq).sub hinv).congr_deriv
  ring

theorem realThetaRemainder_differentiableOn (A : ℝ) (hA : 1 ≤ A) :
    DifferentiableOn ℝ (realThetaRemainder A) (Set.Ioi 0) := by
  intro q hq
  exact (realThetaRemainder_hasDerivAt A q hA hq).differentiableAt.differentiableWithinAt

theorem difference_primitive_eq (A s : ℝ) (hA : 1 ≤ A) :
    Real.exp (-s / 2) * (∫ t in (-2 * A)..s,
      Real.exp (t / 2) * correlationDifference A t) =
      sourceCorrelation explicitSecondDerivative A s - correlationPrimitive A s := by
  have hc := CorrelationRegularity.sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hiC := primitive_integrand_intervalIntegrable A s hA
  have hiD : IntervalIntegrable (fun t : ℝ ↦ Real.exp (t / 2) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume (-2 * A) s :=
    (((continuous_id.div_const 2).rexp).mul hc.continuous_deriv_one).intervalIntegrable _ _
  simp only [correlationDifference, mul_sub, ← mul_div_assoc]
  rw [intervalIntegral.integral_sub hiD (hiC.div_const 2),
    intervalIntegral.integral_div, mul_sub, ← mul_div_assoc,
    ← correlationPrimitive_derivative_eq A s hA,
    (correlationPrimitive_hasDerivAt A s hA).deriv]
  change sourceCorrelation explicitSecondDerivative A s - correlationPrimitive A s / 2 -
    correlationPrimitive A s / 2 = _
  ring

def differencePrimitiveSamplingKernel (A x : ℝ) : ℝ :=
  ∑ l ∈ samplingIndices A x, Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
    (correlationPrimitive A (Real.log (x * (l : ℝ))) -
      sourceCorrelation explicitSecondDerivative A (Real.log (x * (l : ℝ))))

theorem differencePrimitiveSamplingKernel_eq (A x : ℝ) :
    differencePrimitiveSamplingKernel A x =
      -SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x - sourceSamplingKernel A x := by
  unfold differencePrimitiveSamplingKernel SourcePrimitiveSampling.sourcePrimitiveSamplingKernel
    sourceSamplingKernel
  simp_rw [mul_sub, mul_neg, sum_sub_distrib, sum_neg_distrib, neg_neg]

theorem differencePrimitiveSamplingKernel_add_rankOne_abs_le (A x : ℝ)
    (hA : 1 ≤ A) (hx : 0 < x) :
    |differencePrimitiveSamplingKernel A x + sourceRankOneCoefficient A / x| ≤
      (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt x := by
  rw [differencePrimitiveSamplingKernel_eq]
  have he : -SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x -
      sourceSamplingKernel A x + sourceRankOneCoefficient A / x =
      -(SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x -
        sourceRankOneCoefficient A / x) - sourceSamplingKernel A x := by ring
  rw [he]
  calc
    _ ≤ |SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x -
        sourceRankOneCoefficient A / x| + |sourceSamplingKernel A x| := by
      simpa only [abs_neg] using abs_sub
        (-(SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x -
          sourceRankOneCoefficient A / x)) (sourceSamplingKernel A x)
    _ ≤ (16 + 8 * Real.sqrt (65 / 3) / A) / Real.sqrt x +
        (8 + 4 * Real.sqrt (65 / 3) / A) / Real.sqrt x :=
      add_le_add
        (SourcePrimitiveSampling.sourcePrimitiveSamplingKernel_sub_rankOne_abs_le A x hA hx)
        (SourceSampling.sourceSamplingKernel_abs_le A x hA hx)
    _ = _ := by ring

theorem differencePrimitiveSamplingKernel_eq_fixed_sum (A x : ℝ)
    (hA : 1 ≤ A) (hx : 1 ≤ x) :
    differencePrimitiveSamplingKernel A x =
      ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
          (correlationPrimitive A (Real.log (x * (l : ℝ))) -
            sourceCorrelation explicitSecondDerivative A (Real.log (x * (l : ℝ)))) := by
  rw [differencePrimitiveSamplingKernel_eq,
    SourcePrimitiveSampling.sourcePrimitiveSamplingKernel_eq_fixed_sum A x hA hx]
  have hx0 : 0 < x := zero_lt_one.trans_le hx
  have hN : Real.exp (2 * A) / x ≤ (⌊Real.exp (2 * A)⌋₊ + 1 : ℕ) := by
    have h := (div_le_self (Real.exp_pos (2 * A)).le hx).trans
      (Nat.lt_floor_add_one (Real.exp (2 * A))).le
    simpa only [Nat.cast_add, Nat.cast_one] using h
  rw [kernel_eq_fixed_sum A x _ hA hx0 hN]
  simp_rw [mul_sub, mul_neg, sum_sub_distrib, sum_neg_distrib, neg_neg]


open InnerPrimitiveTransport

theorem difference_tail_eq_primitive (A s : ℝ) (hA : 1 ≤ A) :
    (∫ r in Set.Ioi (0 : ℝ), Real.exp (r / 2) * correlationDifference A (s + r)) =
      correlationPrimitive A s - sourceCorrelation explicitSecondDerivative A s := by
  let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) * correlationDifference A t
  have hi : Integrable f := by
    simpa only [f, one_div_mul_eq_div] using (difference_moments_integrable A (1 / 2) hA).1
  have hz : (∫ t, f t) = 0 := (difference_two_moments_zero A hA).1
  have hl : (∫ t in Set.Ioi (-2 * A), f t) = 0 := by
    rw [setIntegral_eq_integral_of_forall_compl_eq_zero, hz]
    intro t ht
    have ht' : t ≤ -2 * A := le_of_not_gt ht
    have hd : deriv (sourceCorrelation explicitSecondDerivative A) t = 0 := by
      apply HasDerivWithinAt.deriv_eq_zero (s := Set.Iic t)
        ((hasDerivWithinAt_const t (Set.Iic t) (0 : ℝ)).congr_of_mem ?_ (le_refl t))
        (uniqueDiffWithinAt_Iic t)
      intro u hu
      have hu' : u ≤ t := hu
      exact CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A u
        (by linarith) (by have := neg_le_abs u; linarith)
    dsimp only [f, correlationDifference]
    rw [hd, CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A t
      (by linarith) (by have := neg_le_abs t; linarith)]
    ring
  have hsplit := intervalIntegral.integral_interval_add_Ioi
    (a := -2 * A) (b := s) hi.integrableOn hi.integrableOn
  rw [hl] at hsplit
  have he (r : ℝ) : Real.exp (r / 2) * correlationDifference A (s + r) =
      Real.exp (-s / 2) * f (s + r) := by
    dsimp only [f]
    rw [← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  simp_rw [he]
  rw [integral_const_mul, integral_shift_Ioi f s]
  have hp := difference_primitive_eq A s hA
  change Real.exp (-s / 2) * (∫ t in (-2 * A)..s, f t) = _ at hp
  linear_combination Real.exp (-s / 2) * hsplit - hp

theorem rootWeight_difference_integral (A y : ℝ) (hA : 1 ≤ A) (hy : 0 < y) :
    (∫ x in Set.Ioi (1 : ℝ), rootWeight (correlationDifference A) y x) =
      (1 / Real.sqrt y) * (correlationPrimitive A (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y)) := by
  have h := integral_comp_exp_Ioi (rootWeight (correlationDifference A) y) 0
  simp only [smul_eq_mul, Real.exp_zero] at h
  rw [← h]
  simp_rw [rootWeight_exp_substitution _ y _ hy]
  rw [integral_const_mul, difference_tail_eq_primitive A (Real.log y) hA]

def differenceInnerTerm (A q : ℝ) (l : ℕ) (x : ℝ) : ℝ :=
  Real.log (l : ℝ) / Real.sqrt ((q * x) * (l : ℝ)) *
    correlationDifference A (Real.log ((q * x) * (l : ℝ)))

theorem differenceInnerTerm_eq (A q x : ℝ) (l : ℕ)
    (hq : 0 < q) (hx : 0 < x) (hl : 1 ≤ l) :
    differenceInnerTerm A q l x = Real.log (l : ℝ) *
      rootWeight (correlationDifference A) (q * (l : ℝ)) x := by
  have hl0 : (0 : ℝ) < l := by exact_mod_cast (show 0 < l by omega)
  have hprod : (q * x) * (l : ℝ) = (q * (l : ℝ)) * x := by ring
  rw [differenceInnerTerm, hprod, Real.log_mul (mul_pos hq hl0).ne' hx.ne', rootWeight]
  ring

theorem differenceInnerTerm_integrable (A q : ℝ) (l : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    IntegrableOn (differenceInnerTerm A q l) (Set.Ioi 1) := by
  have hl0 : (0 : ℝ) < l := by exact_mod_cast (show 0 < l by omega)
  have hi : IntegrableOn (fun x ↦ Real.log (l : ℝ) *
      rootWeight (correlationDifference A) (q * (l : ℝ)) x) (Set.Ioi 1) :=
    (rootWeight_integrable (correlationDifference A) (q * (l : ℝ)) (mul_pos hq hl0)
      (CorrelationSecondDerivative.correlationDifference_contDiff A hA).continuous
      (CorrelationSecondDerivative.correlationDifference_hasCompactSupport A hA)).const_mul _
  apply hi.congr_fun _ measurableSet_Ioi
  intro x hx
  exact (differenceInnerTerm_eq A q x l hq (zero_lt_one.trans hx) hl).symm

theorem differenceInnerTerm_integral (A q : ℝ) (l : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    (∫ x in Set.Ioi (1 : ℝ), differenceInnerTerm A q l x) =
      Real.log (l : ℝ) / Real.sqrt (q * (l : ℝ)) *
        (correlationPrimitive A (Real.log (q * (l : ℝ))) -
          sourceCorrelation explicitSecondDerivative A (Real.log (q * (l : ℝ)))) := by
  have hl0 : (0 : ℝ) < l := by exact_mod_cast (show 0 < l by omega)
  calc
    _ = ∫ x in Set.Ioi (1 : ℝ), Real.log (l : ℝ) *
        rootWeight (correlationDifference A) (q * (l : ℝ)) x := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      exact differenceInnerTerm_eq A q x l hq (zero_lt_one.trans hx) hl
    _ = _ := by
      rw [integral_const_mul, rootWeight_difference_integral A (q * (l : ℝ)) hA (mul_pos hq hl0)]
      ring

theorem differenceKernel_eq_inner_sum (A q x : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) (hx : 1 ≤ x) :
    differenceSamplingKernel A (q * x) =
      ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), differenceInnerTerm A q l x := by
  have hqx : (1 : ℝ) ≤ q * x := by nlinarith
  apply difference_sum_eq_fixed_sum A (q * x) (⌊Real.exp (2 * A)⌋₊ + 1)
    hA (zero_lt_one.trans_le hqx)
  have hfloor := Nat.lt_floor_add_one (Real.exp (2 * A))
  have hbound : Real.exp (2 * A) / (q * x) ≤ Real.exp (2 * A) :=
    div_le_self (Real.exp_pos _).le hqx
  exact hbound.trans (le_of_lt (by simpa only [Nat.cast_add, Nat.cast_one] using hfloor))

theorem differenceKernel_rescaled_integrable (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    IntegrableOn (fun x ↦ differenceSamplingKernel A (q * x)) (Set.Ioi 1) := by
  have hi : IntegrableOn (fun x ↦
      ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), differenceInnerTerm A q l x) (Set.Ioi 1) :=
    integrable_finsetSum _ (fun l hl ↦ differenceInnerTerm_integrable A q l hA
      (by linarith) (mem_Icc.mp hl).1)
  apply hi.congr_fun _ measurableSet_Ioi
  intro x hx
  exact (differenceKernel_eq_inner_sum A q x hA hq hx.le).symm

theorem differenceKernel_integral_eq_primitive (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    (∫ x in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * x)) =
      differencePrimitiveSamplingKernel A q := by
  rw [differencePrimitiveSamplingKernel_eq_fixed_sum A q hA hq]
  calc
    _ = ∫ x in Set.Ioi (1 : ℝ),
        ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), differenceInnerTerm A q l x := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      exact differenceKernel_eq_inner_sum A q x hA hq hx.le
    _ = ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        ∫ x in Set.Ioi (1 : ℝ), differenceInnerTerm A q l x :=
      integral_finsetSum _ (fun l hl ↦ differenceInnerTerm_integrable A q l hA
        (by linarith) (mem_Icc.mp hl).1)
    _ = _ := by
      apply Finset.sum_congr rfl
      intro l hl
      exact differenceInnerTerm_integral A q l hA (by linarith) (mem_Icc.mp hl).1

theorem differenceKernel_integral_add_rankOne_abs_le (A q : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |(∫ x in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * x)) +
      sourceRankOneCoefficient A / q| ≤
      (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt q := by
  rw [differenceKernel_integral_eq_primitive A q hA hq]
  exact differencePrimitiveSamplingKernel_add_rankOne_abs_le A q hA (by linarith)

end
end RealThetaDerivativeScratch

#print axioms RealThetaDerivativeScratch.realThetaKernel
#print axioms RealThetaDerivativeScratch.differenceSamplingKernel
#print axioms RealThetaDerivativeScratch.realThetaDifferenceKernel
#print axioms RealThetaDerivativeScratch.realThetaRemainder
#print axioms RealThetaDerivativeScratch.samplingIndices_eq_fixed_filter
#print axioms RealThetaDerivativeScratch.realThetaKernel_eq_strict_sum
#print axioms RealThetaDerivativeScratch.realThetaKernel_eq_nat
#print axioms RealThetaDerivativeScratch.realThetaRemainder_eq_nat
#print axioms RealThetaDerivativeScratch.differenceSamplingKernel_eq_mul_deriv
#print axioms RealThetaDerivativeScratch.realThetaKernel_hasDerivAt
#print axioms RealThetaDerivativeScratch.realThetaKernel_deriv
#print axioms RealThetaDerivativeScratch.realThetaRemainder_hasDerivAt
#print axioms RealThetaDerivativeScratch.realThetaRemainder_differentiableOn
#print axioms RealThetaDerivativeScratch.difference_primitive_eq
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel_eq
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel_add_rankOne_abs_le
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel_eq_fixed_sum
#print axioms RealThetaDerivativeScratch.difference_tail_eq_primitive
#print axioms RealThetaDerivativeScratch.rootWeight_difference_integral
#print axioms RealThetaDerivativeScratch.differenceInnerTerm
#print axioms RealThetaDerivativeScratch.differenceInnerTerm_eq
#print axioms RealThetaDerivativeScratch.differenceInnerTerm_integrable
#print axioms RealThetaDerivativeScratch.differenceInnerTerm_integral
#print axioms RealThetaDerivativeScratch.differenceKernel_eq_inner_sum
#print axioms RealThetaDerivativeScratch.differenceKernel_rescaled_integrable
#print axioms RealThetaDerivativeScratch.differenceKernel_integral_eq_primitive
#print axioms RealThetaDerivativeScratch.differenceKernel_integral_add_rankOne_abs_le
```
