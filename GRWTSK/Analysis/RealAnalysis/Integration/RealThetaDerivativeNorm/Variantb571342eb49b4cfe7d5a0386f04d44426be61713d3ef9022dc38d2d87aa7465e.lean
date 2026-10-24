-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.RealThetaKernel.Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.RealThetaKernel.Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47","mathematical_subject":"Analysis.Integration","original_sha256":"c6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/RealThetaDerivativeNorm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationThirdDerivative
import FormalResearch.RiemannHypothesis.SourceComparison.SamplingSecondDerivative
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitiveMoments

/-!
Scratch source-bound real theta extension and its exact derivative. The outer
rectangle is fixed in q; each inner source sampling kernel already has a
checked derivative through its strict-cutoff transitions.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.RealThetaKernel.Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47

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


open CorrelationSecondDerivative CorrelationThirdDerivative SamplingSecondDerivative
open Filter Topology

def iteratedDifference (A t : ℝ) : ℝ :=
  deriv (correlationDifference A) t - correlationDifference A t / 2

theorem iteratedDifference_eq (A t : ℝ) (hA : 1 ≤ A) :
    iteratedDifference A t = deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
      deriv (sourceCorrelation explicitSecondDerivative A) t +
      sourceCorrelation explicitSecondDerivative A t / 4 := by
  rw [iteratedDifference, (correlationDifference_hasDerivAt A t hA).deriv]
  unfold correlationDifference
  ring

theorem iteratedDifference_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (iteratedDifference A) := by
  have he : iteratedDifference A = fun t ↦
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t +
          sourceCorrelation explicitSecondDerivative A t / 4 := by
    funext t; exact iteratedDifference_eq A t hA
  rw [he]
  exact ((sourceCorrelation_second_derivative_contDiff A hA).sub
    (sourceCorrelation_derivative_contDiff A hA)).add
    ((CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).div_const 4)

theorem iteratedDifference_hasCompactSupport (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (iteratedDifference A) := by
  have he : iteratedDifference A = deriv (correlationDifference A) -
      (correlationDifference A * fun _ ↦ (2 : ℝ)⁻¹) := by
    funext t; simp [iteratedDifference, div_eq_mul_inv]
  rw [he]
  exact (correlationDifference_hasCompactSupport A hA).deriv.sub
    (correlationDifference_hasCompactSupport A hA).mul_right

theorem iteratedDifference_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |iteratedDifference A t| ≤
      65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / A + 1 / 4 := by
  rw [iteratedDifference_eq A t hA]
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |sourceCorrelation explicitSecondDerivative A t / 4| :=
      (abs_add_le _ _).trans (add_le_add (abs_sub _ _) le_rfl)
    _ ≤ _ := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
      exact add_le_add (add_le_add (sourceCorrelation_second_derivative_abs_le A t hA)
        (DerivativeEnergy.sourceCorrelation_derivative_abs_le A t hA))
        (div_le_div_of_nonneg_right (EstimateCorrelation.actual_correlation_abs_le_one A t hA)
          (by norm_num))

theorem iteratedDifference_derivative_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (iteratedDifference A) t| ≤
      Real.sqrt (325325 / 18) / A ^ 3 + 65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / (4 * A) := by
  have he : iteratedDifference A = fun t ↦
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t +
          sourceCorrelation explicitSecondDerivative A t / 4 := by
    funext t; exact iteratedDifference_eq A t hA
  have hd := (((sourceCorrelation_second_derivative_contDiff A hA).differentiable
    (by norm_num) t).hasDerivAt.sub
    ((sourceCorrelation_derivative_contDiff A hA).differentiable (by norm_num) t).hasDerivAt).add
    ((((CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).differentiable
      (by norm_num)) t).hasDerivAt.div_const 4)
  have hd' : deriv (iteratedDifference A) t =
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t -
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 4 := by
    rw [he]
    exact hd.deriv
  rw [hd']
  calc
    _ ≤ |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| +
        |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 4| :=
      (abs_add_le _ _).trans (add_le_add (abs_sub _ _) le_rfl)
    _ ≤ Real.sqrt (325325 / 18) / A ^ 3 + 65 / (3 * A ^ 2) +
        (Real.sqrt (65 / 3) / A) / 4 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
      exact add_le_add (add_le_add (sourceCorrelation_third_derivative_abs_le A t hA)
        (sourceCorrelation_second_derivative_abs_le A t hA))
        (div_le_div_of_nonneg_right (DerivativeEnergy.sourceCorrelation_derivative_abs_le A t hA)
          (by norm_num))
    _ = _ := by ring

theorem compact_derivative_two_moments_zero (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F)
    (hs : HasCompactSupport F)
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hz1 : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = 0) :
    (∫ t : ℝ, Real.exp (t / 2) * deriv F t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * deriv F t) = 0 := by
  have hi (u : ℝ → ℝ) (hu : Continuous u) : Integrable (fun t ↦ u t * F t) :=
    (hu.mul hF.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hid (u : ℝ → ℝ) (hu : Continuous u) : Integrable (fun t ↦ u t * deriv F t) :=
    (hu.mul hF.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  have hb (u u' : ℝ → ℝ) (hu : Continuous u) (hu' : Continuous u')
      (hd : ∀ t, HasDerivAt u (u' t) t) :
      (∫ t, u t * deriv F t) = -(∫ t, u' t * F t) :=
    integral_mul_deriv_eq_deriv_mul_of_integrable (fun t _ ↦ hd t)
      (fun t _ ↦ (hF.differentiable (by norm_num) t).hasDerivAt)
      (hid u hu) (hi u' hu') (hi u hu)
  have he : Continuous (fun t : ℝ ↦ Real.exp (t / 2)) := by fun_prop
  constructor
  · have h := hb (fun t ↦ Real.exp (t / 2)) (fun t ↦ (1 / 2 : ℝ) * Real.exp (t / 2))
      he (by fun_prop) (fun t ↦ by
        apply (((hasDerivAt_id t).div_const 2).exp).congr_deriv
        simp [div_eq_mul_inv, mul_comm])
    simp only [mul_assoc, integral_const_mul, hz0, mul_zero, neg_zero] at h
    exact h
  · have h := hb (fun t ↦ t * Real.exp (t / 2))
      (fun t ↦ Real.exp (t / 2) + (1 / 2 : ℝ) * (t * Real.exp (t / 2)))
      (by fun_prop) (by fun_prop) (fun t ↦ by
        apply ((hasDerivAt_id t).mul (((hasDerivAt_id t).div_const 2).exp)).congr_deriv
        dsimp; ring)
    have hi0 := hi (fun t ↦ Real.exp (t / 2)) he
    have hi1 := hi (fun t ↦ t * Real.exp (t / 2)) (by fun_prop)
    simp_rw [add_mul, mul_assoc (1 / 2 : ℝ)] at h
    rw [integral_add hi0 (hi1.const_mul (1 / 2)), integral_const_mul, hz0, hz1] at h
    simpa using h

theorem iteratedDifference_two_moments_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * iteratedDifference A t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * iteratedDifference A t) = 0 := by
  have hc := correlationDifference_contDiff A hA
  have hs := correlationDifference_hasCompactSupport A hA
  have hz := difference_two_moments_zero A hA
  have hzd := compact_derivative_two_moments_zero _ hc hs hz.1 hz.2
  have hi0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * correlationDifference A t) := by
    simpa only [one_div_mul_eq_div] using (difference_moments_integrable A (1 / 2) hA).1
  have hi1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * correlationDifference A t) := by
    simpa only [one_div_mul_eq_div] using (difference_moments_integrable A (1 / 2) hA).2
  have hid0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * deriv (correlationDifference A) t) :=
    ((continuous_id.div_const 2).rexp.mul hc.continuous_deriv_one).integrable_of_hasCompactSupport
      hs.deriv.mul_left
  have hid1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * deriv (correlationDifference A) t) :=
    ((continuous_id.mul (continuous_id.div_const 2).rexp).mul
      hc.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  constructor
  · simp only [iteratedDifference, mul_sub, ← mul_div_assoc]
    rw [integral_sub hid0 (hi0.div_const 2), integral_div, hz.1, hzd.1]
    ring
  · simp only [iteratedDifference, mul_sub, ← mul_div_assoc]
    rw [integral_sub hid1 (hi1.div_const 2), integral_div, hz.2, hzd.2]
    ring

theorem iteratedDifference_zero_right (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    iteratedDifference A t = 0 := by
  have hd : deriv (correlationDifference A) t = 0 := by
    apply HasDerivWithinAt.deriv_eq_zero (s := Set.Ici t)
      ((hasDerivWithinAt_const t (Set.Ici t) (0 : ℝ)).congr_of_mem ?_ (le_refl t))
      (uniqueDiffWithinAt_Ici t)
    intro u hu
    exact source_difference_zero_right A u hA (ht.trans hu)
  rw [iteratedDifference, hd, source_difference_zero_right A t hA ht]
  ring

theorem differenceSamplingKernel_hasDerivAt (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (differenceSamplingKernel A)
      (1 / x * ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        iteratedDifference A (Real.log (x * (k : ℝ)))) x := by
  have hd := (hasDerivAt_id x).mul (sourceSamplingKernel_derivative_hasDerivAt A x hA hx)
  have he : differenceSamplingKernel A =ᶠ[𝓝 x]
      (fun y ↦ y * deriv (sourceSamplingKernel A) y) := by
    filter_upwards [eventually_gt_nhds hx] with y hy
    exact differenceSamplingKernel_eq_mul_deriv A y hA hy
  apply (hd.congr_of_eventuallyEq he).congr_deriv
  rw [sourceSamplingKernel_deriv A x hA hx]
  simp only [one_mul, id_eq, mul_sum]
  rw [← sum_add_distrib]
  apply sum_congr rfl
  intro k hk
  unfold secondDifference iteratedDifference
  field_simp
  ring


theorem iteratedDifference_sampling_zero (A x u : ℝ) (hA : 1 ≤ A)
    (hx : 0 < x) (hu : 0 < u) (hcut : Real.exp (2 * A) ≤ x * u) :
    TwoMomentSampling.samplingIntegrand (iteratedDifference A) x u = 0 := by
  have hlog : 2 * A ≤ Real.log (x * u) := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
  rw [TwoMomentSampling.samplingIntegrand, ← Real.log_mul hx.ne' hu.ne',
    iteratedDifference_zero_right A _ hA hlog, mul_zero]

theorem iteratedDifference_sampling_sum_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      iteratedDifference A (Real.log (x * (k : ℝ)))| ≤
      (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt x := by
  let N : ℕ := ⌊Real.exp (2 * A) / x⌋₊ + 1
  have hN : Real.exp (2 * A) / x ≤ (N : ℝ) := by
    have h := Nat.lt_floor_add_one (Real.exp (2 * A) / x)
    exact le_of_lt (by simpa only [N, Nat.cast_add, Nat.cast_one] using h)
  have hsum : (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      iteratedDifference A (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Icc 1 N, TwoMomentSampling.samplingIntegrand (iteratedDifference A) x k := by
    calc
      _ = ∑ k ∈ samplingIndices A x,
          TwoMomentSampling.samplingIntegrand (iteratedDifference A) x k := by
        apply sum_congr rfl
        intro k hk
        have hk0 : (0 : ℝ) < k := by
          exact_mod_cast (show 0 < k by have := ((mem_samplingIndices_iff A x k hx).mp hk).1; omega)
        rw [TwoMomentSampling.samplingIntegrand, Real.log_mul hx.ne' hk0.ne']
      _ = _ := by
        apply sum_subset (samplingIndices_subset_fixed A x N hx hN)
        intro k hk hout
        have hk1 := (mem_Icc.mp hk).1
        have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
        have hcut : Real.exp (2 * A) ≤ x * (k : ℝ) := by
          by_contra h
          exact hout ((mem_samplingIndices_iff A x k hx).mpr ⟨hk1, lt_of_not_ge h⟩)
        exact iteratedDifference_sampling_zero A x k hA hx hk0 hcut
  rw [hsum]
  have hz := iteratedDifference_two_moments_zero A hA
  have h := TwoMomentSampling.sampling_sum_abs_le (iteratedDifference A) x
    (65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / A + 1 / 4)
    (Real.sqrt (325325 / 18) / A ^ 3 + 65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / (4 * A))
    N hx (by dsimp [N]; omega) (iteratedDifference_contDiff A hA)
    (iteratedDifference_hasCompactSupport A hA)
    (fun t ↦ iteratedDifference_abs_le A t hA)
    (fun t ↦ iteratedDifference_derivative_abs_le A t hA) hz.1 hz.2 (fun u hu ↦ by
      have hu0 : 0 < u := lt_of_lt_of_le (by dsimp [N]; positivity : (0 : ℝ) < N) hu
      apply iteratedDifference_sampling_zero A x u hA hx hu0
      exact (div_le_iff₀ hx).mp (hN.trans hu) |>.trans_eq (mul_comm u x))
  convert h using 1
  ring

theorem differenceSamplingKernel_derivative_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |deriv (differenceSamplingKernel A) x| ≤
      (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / (x * Real.sqrt x) := by
  rw [(differenceSamplingKernel_hasDerivAt A x hA hx).deriv, abs_mul,
    abs_of_pos (one_div_pos.mpr hx)]
  calc
    _ ≤ 1 / x * ((2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt x) :=
      mul_le_mul_of_nonneg_left (iteratedDifference_sampling_sum_abs_le A x hA hx)
        (one_div_nonneg.mpr hx.le)
    _ = _ := by ring


theorem inverse_root_majorant_eq (q C t : ℝ) (hq : 0 < q) (ht : 0 < t) :
    q * (C / (q * t * Real.sqrt (q * t))) =
      (C / Real.sqrt q) * t ^ (-(3 / 2 : ℝ)) := by
  have hr : t ^ (3 / 2 : ℝ) = t * Real.sqrt t := by
    rw [show (3 / 2 : ℝ) = 1 + 1 / 2 by norm_num, Real.rpow_add ht,
      Real.rpow_one, ← Real.sqrt_eq_rpow]
  rw [Real.rpow_neg ht.le, hr, Real.sqrt_mul hq.le]
  field_simp

theorem inverse_root_majorant_integrable (q C : ℝ) (hq : 0 < q) :
    IntegrableOn (fun t : ℝ ↦ q * (C / (q * t * Real.sqrt (q * t)))) (Set.Ioi 1) := by
  have hi : IntegrableOn (fun t : ℝ ↦ (C / Real.sqrt q) * t ^ (-(3 / 2 : ℝ)))
      (Set.Ioi 1) := (integrableOn_Ioi_rpow_of_lt (by norm_num : -(3 / 2 : ℝ) < -1)
    (by norm_num : (0 : ℝ) < 1)).const_mul (C / Real.sqrt q)
  apply hi.congr_fun _ measurableSet_Ioi
  intro t ht
  exact (inverse_root_majorant_eq q C t hq (zero_lt_one.trans ht)).symm

theorem inverse_root_majorant_integral (q C : ℝ) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), q * (C / (q * t * Real.sqrt (q * t)))) =
      2 * C / Real.sqrt q := by
  have he := integral_Ioi_rpow_of_lt (by norm_num : -(3 / 2 : ℝ) < -1)
    (by norm_num : (0 : ℝ) < 1)
  calc
    _ = ∫ t in Set.Ioi (1 : ℝ), (C / Real.sqrt q) * t ^ (-(3 / 2 : ℝ)) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      exact inverse_root_majorant_eq q C t hq (zero_lt_one.trans ht)
    _ = _ := by rw [integral_const_mul, he]; norm_num; ring

theorem scaledDifference_hasDerivAt (A q x : ℝ) (hA : 1 ≤ A) (hq : 0 < q) (hx : 0 < x) :
    HasDerivAt (fun t : ℝ ↦ differenceSamplingKernel A (q * t))
      (q * deriv (differenceSamplingKernel A) (q * x)) x := by
  have h := (differenceSamplingKernel_hasDerivAt A (q * x) hA (mul_pos hq hx)).differentiableAt
  apply (h.hasDerivAt.comp x ((hasDerivAt_id x).const_mul q)).congr_deriv
  simp only [mul_one, mul_comm]

theorem scaledDifference_derivative_integrable (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t))) (Set.Ioi 1) := by
  let K := 2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
    4 * Real.sqrt (325325 / 18) / A ^ 3
  apply (inverse_root_majorant_integrable q K hq).mono'
    (stronglyMeasurable_deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t))).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [Real.norm_eq_abs, (scaledDifference_hasDerivAt A q t hA hq (zero_lt_one.trans ht)).deriv,
    abs_mul, abs_of_pos hq]
  exact mul_le_mul_of_nonneg_left
    (differenceSamplingKernel_derivative_abs_le A (q * t) hA (mul_pos hq (zero_lt_one.trans ht))) hq.le

theorem scaledDifference_variation_le (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), |deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t)) t|) ≤
      2 * (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  let K := 2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
    4 * Real.sqrt (325325 / 18) / A ^ 3
  calc
    _ ≤ ∫ t in Set.Ioi (1 : ℝ), q * (K / (q * t * Real.sqrt (q * t))) := by
      apply setIntegral_mono_on (scaledDifference_derivative_integrable A q hA hq).abs
        (inverse_root_majorant_integrable q K hq) measurableSet_Ioi
      intro t ht
      rw [(scaledDifference_hasDerivAt A q t hA hq (zero_lt_one.trans ht)).deriv,
        abs_mul, abs_of_pos hq]
      exact mul_le_mul_of_nonneg_left
        (differenceSamplingKernel_derivative_abs_le A (q * t) hA
          (mul_pos hq (zero_lt_one.trans ht))) hq.le
    _ = _ := inverse_root_majorant_integral q K hq

theorem differenceSamplingKernel_zero_of_exp_le (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2 * A) ≤ x) : differenceSamplingKernel A x = 0 := by
  have hi : samplingIndices A x = ∅ := by
    apply eq_empty_iff_forall_notMem.mpr
    intro k hk
    obtain ⟨hk1, hkcut⟩ := (mem_samplingIndices_iff A x k hx).mp hk
    have hk1r : (1 : ℝ) ≤ k := by exact_mod_cast hk1
    nlinarith
  simp only [differenceSamplingKernel, hi, sum_empty]

theorem realThetaDifferenceKernel_eq_padded_sum (A q : ℝ) (hq : 1 ≤ q) :
    realThetaDifferenceKernel A q =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), differenceSamplingKernel A (q * (k : ℝ)) := by
  unfold realThetaDifferenceKernel
  apply sum_subset
  · intro k hk
    obtain ⟨hk1, hkB⟩ := mem_Icc.mp hk
    exact mem_Icc.mpr ⟨hk1, by omega⟩
  · intro k hk hout
    have hk' := mem_Icc.mp hk
    have hkN : k = ⌊Real.exp (2 * A)⌋₊ + 1 := by
      by_contra h
      exact hout (mem_Icc.mpr ⟨hk'.1, by omega⟩)
    have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
    apply differenceSamplingKernel_zero_of_exp_le A _ (mul_pos (by linarith) hk0)
    have hf := Nat.lt_floor_add_one (Real.exp (2 * A))
    have hkX : Real.exp (2 * A) < (k : ℝ) := by
      simpa only [hkN, Nat.cast_add, Nat.cast_one] using hf
    nlinarith

theorem realThetaDifferenceKernel_sub_integral_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |realThetaDifferenceKernel A q -
      (∫ t in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * t))| ≤
      2 * (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  have hq0 : 0 < q := by linarith
  let N := ⌊Real.exp (2 * A)⌋₊ + 1
  have hN : 1 ≤ N := by dsimp [N]; omega
  have he := SamplingError.abs_sum_sub_integral_Ioi_le
    (fun t : ℝ ↦ differenceSamplingKernel A (q * t)) N hN
    (fun t ht ↦ (scaledDifference_hasDerivAt A q t hA hq0
      (zero_lt_one.trans_le ht.1)).differentiableAt)
    (differenceKernel_rescaled_integrable A q hA hq)
    (scaledDifference_derivative_integrable A q hA hq0) (fun t ht ↦ by
      have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
      have ht0 : 0 < t := zero_lt_one.trans_le (hNr.trans ht)
      apply differenceSamplingKernel_zero_of_exp_le A _ (mul_pos hq0 ht0)
      have hf : Real.exp (2 * A) < (N : ℝ) := by
        simpa only [N, Nat.cast_add, Nat.cast_one] using Nat.lt_floor_add_one (Real.exp (2 * A))
      nlinarith)
  rw [realThetaDifferenceKernel_eq_padded_sum A q hq]
  exact he.trans (scaledDifference_variation_le A q hA hq0)

theorem realThetaDifferenceKernel_add_rankOne_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |realThetaDifferenceKernel A q + sourceRankOneCoefficient A / q| ≤
      (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  have he : realThetaDifferenceKernel A q + sourceRankOneCoefficient A / q =
      (realThetaDifferenceKernel A q - (∫ t in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * t))) +
      ((∫ t in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * t)) + sourceRankOneCoefficient A / q) := by ring
  rw [he]
  calc
    _ ≤ |realThetaDifferenceKernel A q -
        (∫ t in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * t))| +
        |(∫ t in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * t)) +
          sourceRankOneCoefficient A / q| := abs_add_le _ _
    _ ≤ 2 * (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q +
        (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt q :=
      add_le_add (realThetaDifferenceKernel_sub_integral_abs_le A q hA hq)
        (differenceKernel_integral_add_rankOne_abs_le A q hA hq)
    _ = _ := by ring

theorem realThetaRemainder_derivative_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (realThetaRemainder A) q| ≤
      (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / (q * Real.sqrt q) := by
  have hq0 : 0 < q := by linarith
  rw [(realThetaRemainder_hasDerivAt A q hA hq0).deriv, abs_mul,
    abs_of_pos (one_div_pos.mpr hq0)]
  calc
    _ ≤ 1 / q * ((28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q) :=
      mul_le_mul_of_nonneg_left (realThetaDifferenceKernel_add_rankOne_abs_le A q hA hq)
        (one_div_nonneg.mpr hq0.le)
    _ = _ := by ring

end
end RealThetaDerivativeScratch
