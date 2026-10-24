import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitive
import FormalResearch.RiemannHypothesis.SourceComparison.SourceSamplingDerivative

set_option autoImplicit false

namespace InnerPrimitiveTransportScratch

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open Realization CorrelationRegularity CorrelationMoment
open CorrelationPrimitive

noncomputable section

theorem integral_shift_Ioi (f : ℝ → ℝ) (s : ℝ) :
    (∫ r in Ioi (0 : ℝ), f (s + r)) = ∫ t in Ioi s, f t := by
  have h := integral_add_left_eq_self ((Ioi s).indicator f) s (μ := volume)
  rw [integral_indicator measurableSet_Ioi] at h
  rw [← h, ← integral_indicator measurableSet_Ioi]
  apply integral_congr_ae
  filter_upwards [] with r
  simp only [indicator_apply, mem_Ioi, lt_add_iff_pos_right]

theorem correlation_tail_eq_neg_primitive (A s : ℝ) (hA : 1 ≤ A) :
    (∫ r in Ioi (0 : ℝ), Real.exp (r / 2) *
      sourceCorrelation explicitSecondDerivative A (s + r)) = -correlationPrimitive A s := by
  let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t
  have hi : Integrable f :=
    ((Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      (sourceCorrelation_contDiff A (by linarith)).continuous).integrable_of_hasCompactSupport
      (sourceCorrelation_hasCompactSupport A (by linarith)).mul_left
  have hz : (∫ t, f t) = 0 := by
    simpa only [f, one_div_mul_eq_div] using full_correlation_moment_zero A hA
  have hl : (∫ t in Ioi (-2 * A), f t) = 0 := by
    rw [setIntegral_eq_integral_of_forall_compl_eq_zero, hz]
    intro t ht
    have ht' : t ≤ -2 * A := le_of_not_gt ht
    dsimp only [f]
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
      (by have := neg_le_abs t; linarith), mul_zero]
  have hsplit := intervalIntegral.integral_interval_add_Ioi
    (a := -2 * A) (b := s) hi.integrableOn hi.integrableOn
  rw [hl] at hsplit
  have he (r : ℝ) : Real.exp (r / 2) *
      sourceCorrelation explicitSecondDerivative A (s + r) =
      Real.exp (-s / 2) * f (s + r) := by
    dsimp only [f]
    rw [← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  simp_rw [he]
  rw [integral_const_mul, integral_shift_Ioi f s]
  dsimp only [correlationPrimitive]
  change Real.exp (-s / 2) * (∫ t in Ioi s, f t) =
    -(Real.exp (-s / 2) * ∫ t in (-2 * A)..s, f t)
  linear_combination Real.exp (-s / 2) * hsplit

def rootWeight (F : ℝ → ℝ) (y u : ℝ) : ℝ :=
  1 / Real.sqrt (y * u) * F (Real.log y + Real.log u)

theorem rootWeight_exp_substitution (F : ℝ → ℝ) (y r : ℝ) (hy : 0 < y) :
    Real.exp r * rootWeight F y (Real.exp r) =
      (1 / Real.sqrt y) * (Real.exp (r / 2) * F (Real.log y + r)) := by
  rw [rootWeight, Real.log_exp, Real.sqrt_mul hy.le, ← Real.exp_half]
  have he : Real.exp r = Real.exp (r / 2) * Real.exp (r / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  field_simp

theorem rootWeight_integrable (F : ℝ → ℝ) (y : ℝ) (hy : 0 < y)
    (hF : Continuous F) (hcompact : HasCompactSupport F) :
    IntegrableOn (rootWeight F y) (Ioi 1) := by
  have hc : HasCompactSupport (fun r : ℝ ↦ F (Real.log y + r)) :=
    hcompact.comp_homeomorph (Homeomorph.addLeft (Real.log y))
  have hi : Integrable (fun r : ℝ ↦ Real.exp (r / 2) * F (Real.log y + r)) :=
    ((continuous_id.div_const 2).rexp.mul
      (hF.comp (continuous_const.add continuous_id))).integrable_of_hasCompactSupport hc.mul_left
  have hs : IntegrableOn (fun r : ℝ ↦ Real.exp r * rootWeight F y (Real.exp r))
      (Ioi 0) := by
    simp_rw [rootWeight_exp_substitution F y _ hy]
    exact hi.integrableOn.const_mul _
  simpa only [smul_eq_mul, Real.exp_zero] using
    (integrableOn_comp_exp_Ioi (rootWeight F y) 0).mp hs

theorem rootWeight_source_integral (A y : ℝ) (hA : 1 ≤ A) (hy : 0 < y) :
    (∫ x in Ioi (1 : ℝ), rootWeight (sourceCorrelation explicitSecondDerivative A) y x) =
      (1 / Real.sqrt y) * (-correlationPrimitive A (Real.log y)) := by
  have h := integral_comp_exp_Ioi
    (rootWeight (sourceCorrelation explicitSecondDerivative A) y) 0
  simp only [smul_eq_mul, Real.exp_zero] at h
  rw [← h]
  simp_rw [rootWeight_exp_substitution _ y _ hy]
  rw [integral_const_mul, correlation_tail_eq_neg_primitive A (Real.log y) hA]

def innerTerm (A q : ℝ) (l : ℕ) (x : ℝ) : ℝ :=
  Real.log (l : ℝ) / Real.sqrt ((q * x) * (l : ℝ)) *
    sourceCorrelation explicitSecondDerivative A (Real.log ((q * x) * (l : ℝ)))

theorem innerTerm_eq (A q x : ℝ) (l : ℕ) (hq : 0 < q) (hx : 0 < x) (hl : 1 ≤ l) :
    innerTerm A q l x = Real.log (l : ℝ) *
      rootWeight (sourceCorrelation explicitSecondDerivative A) (q * (l : ℝ)) x := by
  have hl0 : (0 : ℝ) < l := by exact_mod_cast (show 0 < l by omega)
  have hprod : (q * x) * (l : ℝ) = (q * (l : ℝ)) * x := by ring
  rw [innerTerm, hprod, Real.log_mul (mul_pos hq hl0).ne' hx.ne', rootWeight]
  ring

theorem innerTerm_integrable (A q : ℝ) (l : ℕ) (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    IntegrableOn (innerTerm A q l) (Ioi 1) := by
  have hl0 : (0 : ℝ) < l := by exact_mod_cast (show 0 < l by omega)
  have hi : IntegrableOn (fun x ↦ Real.log (l : ℝ) *
      rootWeight (sourceCorrelation explicitSecondDerivative A) (q * (l : ℝ)) x) (Ioi 1) :=
    (rootWeight_integrable (sourceCorrelation explicitSecondDerivative A)
    (q * (l : ℝ)) (mul_pos hq hl0)
    (sourceCorrelation_contDiff A (by linarith)).continuous
    (sourceCorrelation_hasCompactSupport A (by linarith))).const_mul (Real.log (l : ℝ))
  apply hi.congr_fun _ measurableSet_Ioi
  intro x hx
  exact (innerTerm_eq A q x l hq (zero_lt_one.trans hx) hl).symm

theorem innerTerm_integral (A q : ℝ) (l : ℕ) (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    (∫ x in Ioi (1 : ℝ), innerTerm A q l x) =
      Real.log (l : ℝ) / Real.sqrt (q * (l : ℝ)) *
        (-correlationPrimitive A (Real.log (q * (l : ℝ)))) := by
  have hl0 : (0 : ℝ) < l := by exact_mod_cast (show 0 < l by omega)
  calc
    _ = ∫ x in Ioi (1 : ℝ), Real.log (l : ℝ) *
        rootWeight (sourceCorrelation explicitSecondDerivative A) (q * (l : ℝ)) x := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      exact innerTerm_eq A q x l hq (zero_lt_one.trans hx) hl
    _ = _ := by
      rw [integral_const_mul, rootWeight_source_integral A (q * (l : ℝ)) hA (mul_pos hq hl0)]
      ring

theorem sourceKernel_eq_inner_sum (A q x : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) (hx : 1 ≤ x) :
    SourceSampling.sourceSamplingKernel A (q * x) =
      ∑ l ∈ Finset.Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), innerTerm A q l x := by
  have hqx : (1 : ℝ) ≤ q * x := by nlinarith
  apply SourceSamplingDerivative.kernel_eq_fixed_sum A (q * x)
    (⌊Real.exp (2 * A)⌋₊ + 1) hA (lt_of_lt_of_le zero_lt_one hqx)
  have hfloor := Nat.lt_floor_add_one (Real.exp (2 * A))
  have hbound : Real.exp (2 * A) / (q * x) ≤ Real.exp (2 * A) :=
    div_le_self (Real.exp_pos _).le hqx
  exact hbound.trans (le_of_lt (by simpa only [Nat.cast_add, Nat.cast_one] using hfloor))

theorem sourceKernel_rescaled_integrable (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    IntegrableOn (fun x ↦ SourceSampling.sourceSamplingKernel A (q * x)) (Ioi 1) := by
  have hi : IntegrableOn (fun x ↦
      ∑ l ∈ Finset.Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), innerTerm A q l x) (Ioi 1) :=
    integrable_finsetSum _ (fun l hl ↦ innerTerm_integrable A q l hA
      (by linarith) (Finset.mem_Icc.mp hl).1)
  apply hi.congr_fun _ measurableSet_Ioi
  intro x hx
  exact (sourceKernel_eq_inner_sum A q x hA hq hx.le).symm

theorem sourceKernel_integral_eq_primitive_sum (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    (∫ x in Ioi (1 : ℝ), SourceSampling.sourceSamplingKernel A (q * x)) =
      ∑ l ∈ Finset.Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        Real.log (l : ℝ) / Real.sqrt (q * (l : ℝ)) *
          (-correlationPrimitive A (Real.log (q * (l : ℝ)))) := by
  calc
    _ = ∫ x in Ioi (1 : ℝ),
        ∑ l ∈ Finset.Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), innerTerm A q l x := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      exact sourceKernel_eq_inner_sum A q x hA hq hx.le
    _ = ∑ l ∈ Finset.Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        ∫ x in Ioi (1 : ℝ), innerTerm A q l x :=
      integral_finsetSum _ (fun l hl ↦ innerTerm_integrable A q l hA
        (by linarith) (Finset.mem_Icc.mp hl).1)
    _ = _ := by
      apply Finset.sum_congr rfl
      intro l hl
      exact innerTerm_integral A q l hA (by linarith) (Finset.mem_Icc.mp hl).1

end
end InnerPrimitiveTransportScratch

#print axioms InnerPrimitiveTransportScratch.integral_shift_Ioi
#print axioms InnerPrimitiveTransportScratch.correlation_tail_eq_neg_primitive
#print axioms InnerPrimitiveTransportScratch.rootWeight
#print axioms InnerPrimitiveTransportScratch.rootWeight_exp_substitution
#print axioms InnerPrimitiveTransportScratch.rootWeight_integrable
#print axioms InnerPrimitiveTransportScratch.rootWeight_source_integral
#print axioms InnerPrimitiveTransportScratch.innerTerm
#print axioms InnerPrimitiveTransportScratch.innerTerm_eq
#print axioms InnerPrimitiveTransportScratch.innerTerm_integrable
#print axioms InnerPrimitiveTransportScratch.innerTerm_integral
#print axioms InnerPrimitiveTransportScratch.sourceKernel_eq_inner_sum
#print axioms InnerPrimitiveTransportScratch.sourceKernel_rescaled_integrable
#print axioms InnerPrimitiveTransportScratch.sourceKernel_integral_eq_primitive_sum
