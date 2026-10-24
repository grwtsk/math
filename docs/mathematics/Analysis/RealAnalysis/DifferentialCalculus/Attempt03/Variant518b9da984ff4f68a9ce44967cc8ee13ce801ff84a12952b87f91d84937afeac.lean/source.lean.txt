import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import Mathlib.Analysis.Calculus.ContDiff.RCLike
import Mathlib.Topology.MetricSpace.Lipschitz

/-! Exact second Abel for the unchanged max-defined paired source test.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
The source curvature is an AE derivative of the actual first derivative;
no global C2 assertion for the max-defined paired test is made.
No uniform signed curvature budget, independent Vaughan M identification or
RH witness is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualSecondAbel
open MeasureTheory Set
open scoped Interval NNReal
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFirstPrimeAbel SourcePairedPrimeWork SourcePairedPrimeAverages
open SourcePairedTailTest SourceCriticalDecayWork SourceCriticalRemovedPrimeWork
open SourceCriticalDensityQuadrature SourceCriticalCumulativeDiscrepancy
open SourceCorrelationCurvature WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The original critical source is C2; the source itself needs only C1. -/
theorem criticalPrimeTest_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (criticalPrimeTest A) :=
  ((contDiff_id.div_const 2).exp).mul (sourceCorrelation_contDiff_two hA)

/-- For each fixed positive A the actual derivative is globally Lipschitz.
The constant is not asserted uniform as A grows. -/
theorem criticalPrimeTest_deriv_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : ℝ≥0, LipschitzWith K (deriv (criticalPrimeTest A)) := by
  have hc : HasCompactSupport (criticalPrimeTest A) := by
    exact (sourceCorrelation_hasCompactSupport A hA).mul_left
  have hd : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hA).deriv'
  exact hd.lipschitzWith_of_hasCompactSupport hc.deriv (by decide)

/-- Max-defined phases are Lipschitz, including their sign-change seams. -/
theorem actual_slope_phases_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : ℝ≥0, LipschitzWith K (positiveSlope A) ∧
      LipschitzWith K (negativeSlope A) := by
  obtain ⟨K,hK⟩ := criticalPrimeTest_deriv_lipschitz hA
  exact ⟨K,hK.max_const 0,hK.neg.max_const 0⟩

/-- The actual first derivative is Lipschitz for fixed A, without a uniform-in-A constant. -/
theorem pairedTailTest_deriv_lipschitz {A : ℝ} (hA : 1 ≤ A) :
    ∃ K : ℝ≥0, LipschitzWith K (deriv (pairedTailTest A)) := by
  obtain ⟨K,hp,hn⟩ := actual_slope_phases_lipschitz (by linarith : 0 < A)
  have hh := hp.neg.add (hn.const_smul (positiveMass A/negativeMass A))
  refine ⟨_,?_⟩
  have he : deriv (pairedTailTest A) = fun u =>
      -positiveSlope A u+(positiveMass A/negativeMass A)*negativeSlope A u := by
    funext u
    exact pairedTailTest_deriv hA u
  rw [he]
  simpa only [smul_eq_mul] using hh

/-- The actual paired first derivative is absolutely continuous on every finite interval. -/
theorem pairedTailTest_deriv_absolutelyContinuous {A : ℝ} (hA : 1 ≤ A) (a b : ℝ) :
    AbsolutelyContinuousOnInterval (deriv (pairedTailTest A)) a b := by
  obtain ⟨K,hp,hn⟩ := actual_slope_phases_lipschitz (by linarith : 0 < A)
  have hpac : AbsolutelyContinuousOnInterval (positiveSlope A) a b :=
    hp.lipschitzOnWith.absolutelyContinuousOnInterval
  have hnac : AbsolutelyContinuousOnInterval (negativeSlope A) a b :=
    hn.lipschitzOnWith.absolutelyContinuousOnInterval
  have he : deriv (pairedTailTest A) = fun u =>
      -positiveSlope A u+(positiveMass A/negativeMass A)*negativeSlope A u := by
    funext u
    exact pairedTailTest_deriv hA u
  rw [he]
  exact hpac.neg.add (hnac.const_mul (positiveMass A/negativeMass A))

/-- A literal representative of the paired test's AE curvature. -/
def pairedTailCurvature (A u : ℝ) : ℝ := deriv (deriv (pairedTailTest A)) u

theorem pairedTailCurvature_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (a b : ℝ) :
    IntervalIntegrable (pairedTailCurvature A) volume a b :=
  (pairedTailTest_deriv_absolutelyContinuous hA a b).intervalIntegrable_deriv

theorem pairedTailCurvature_ae_hasDerivAt {A : ℝ} (hA : 1 ≤ A) (a b : ℝ) :
    ∀ᵐ u ∂volume, u ∈ uIcc a b →
      HasDerivAt (deriv (pairedTailTest A)) (pairedTailCurvature A u) u := by
  filter_upwards [(pairedTailTest_deriv_absolutelyContinuous hA a b).ae_differentiableAt]
    with u hu
  intro hum
  exact (hu hum).hasDerivAt

theorem pairedTailTest_deriv_integral_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2*A, deriv (pairedTailTest A) u) = 0 := by
  have hi := intervalIntegral.integral_deriv_eq_sub
    (fun u _ => (pairedTailTest_contDiff hA).differentiable_one u)
    ((pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
      (μ:=volume) 0 (2*A))
  simpa only [pairedTailTest_at_upper hA,pairedTailTest_at_zero hA,sub_self] using hi

theorem actual_delta_pairing_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => criticalCumulativeDiscrepancy u*
      deriv (pairedTailTest A) u) volume 0 (2*A) :=
  (criticalCumulativeDiscrepancy_intervalIntegrable 0 (2*A)).mul_continuousOn
    (pairedTailTest_contDiff hA).continuous_deriv_one.continuousOn

/-- First Abel on the actual compensated readout: the extra constant in delta cancels
against the paired test's zero endpoints, not an arithmetic mass-balance assumption. -/
theorem actual_first_Abel {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      -(∫ u in 0..2*A, criticalCumulativeDiscrepancy u*
        deriv (pairedTailTest A) u) := by
  have hp : 0 < A := by linarith
  have hh : Continuous criticalDecay := by unfold criticalDecay;fun_prop
  let e : ℝ → ℝ := fun u => primeLogError u-criticalDecay u
  have he : IntervalIntegrable e volume 0 (2*A) :=
    (actualPrimeError_intervalIntegrable hp).sub (hh.intervalIntegrable _ _)
  have hip := he.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := he.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  have hid := he.mul_continuousOn (pairedTailTest_contDiff hA).continuous_deriv_one.continuousOn
  have hD := (pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
    (μ:=volume) 0 (2*A)
  have hw : criticalRemovedPairedWork A =
      (∫ u in 0..2*A,e u*positiveSlope A u)-
        (positiveMass A/negativeMass A)*(∫ u in 0..2*A,e u*negativeSlope A u) := by
    unfold criticalRemovedPairedWork e
    ring
  have hw2 : criticalRemovedPairedWork A = -(∫ u in 0..2*A,e u*deriv (pairedTailTest A) u) := by
    rw [hw,←intervalIntegral.integral_const_mul,←intervalIntegral.integral_sub hip
      (hin.const_mul (positiveMass A/negativeMass A)),←intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro u _
    dsimp only
    rw [pairedTailTest_deriv hA]
    ring
  have hdelta : (fun u => criticalCumulativeDiscrepancy u*deriv (pairedTailTest A) u) =
      fun u => e u*deriv (pairedTailTest A) u+deriv (pairedTailTest A) u := by
    funext u
    rw [criticalCumulativeDiscrepancy_eq]
    dsimp [e]
    ring
  rw [hdelta,intervalIntegral.integral_add hid hD,pairedTailTest_deriv_integral_zero hA,
    add_zero]
  exact hw2

theorem actual_bridge_curvature_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => criticalDiscrepancyBridge A u*pairedTailCurvature A u)
      volume 0 (2*A) :=
  (pairedTailCurvature_intervalIntegrable hA 0 (2*A)).continuousOn_mul
    (criticalDiscrepancyBridge_continuous A).continuousOn

/-- Exact second Abel. Only the bridge endpoints vanish; D' endpoints need not vanish.
Its curvature is the actual AE derivative across max-phase seams. -/
theorem actual_second_Abel {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      ∫ u in 0..2*A, criticalDiscrepancyBridge A u*pairedTailCurvature A u := by
  have hp : 0 < A := by linarith
  have hga := criticalDiscrepancyBridge_absolutelyContinuous A
  have hda := pairedTailTest_deriv_absolutelyContinuous hA 0 (2*A)
  have hibp := hga.integral_mul_deriv_eq_deriv_mul hda
  rw [criticalDiscrepancyBridge_at_upper hp,criticalDiscrepancyBridge_at_zero,
    zero_mul,zero_mul,sub_self,zero_sub] at hibp
  have hae : (∫ u in 0..2*A,deriv (criticalDiscrepancyBridge A) u*
      deriv (pairedTailTest A) u) =
      ∫ u in 0..2*A,(criticalCumulativeDiscrepancy u-
        criticalDiscrepancyPrimitive (2*A)/(2*A))*deriv (pairedTailTest A) u := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalDiscrepancyBridge_ae_hasDerivAt hp] with u hu hum
    rw [(hu (uIoc_subset_uIcc hum)).deriv]
  have hc := ((pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
    (μ:=volume) 0 (2*A)).const_mul (criticalDiscrepancyPrimitive (2*A)/(2*A))
  simp_rw [sub_mul] at hae
  rw [intervalIntegral.integral_sub (actual_delta_pairing_intervalIntegrable hA) hc,
    intervalIntegral.integral_const_mul,pairedTailTest_deriv_integral_zero hA,
    mul_zero,sub_zero] at hae
  rw [hae] at hibp
  rw [actual_first_Abel hA]
  exact hibp.symm

/-- A one-sided optional certificate cost from the literal signed curvature pairing. -/
def negativeCurvatureWork (A : ℝ) : ℝ :=
  ∫ u in 0..2*A, max (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) 0

theorem negativeCurvatureWork_integrand_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun u =>
      max (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) 0)
      volume 0 (2*A) := by
  have hi := actual_bridge_curvature_intervalIntegrable hA
  apply ((hi.abs.sub hi).div_const 2).congr
  intro u _
  dsimp only
  by_cases h : 0 ≤ criticalDiscrepancyBridge A u*pairedTailCurvature A u
  · rw [abs_of_nonneg h,max_eq_right (neg_nonpos.mpr h)]
    ring
  · have h' := le_of_not_ge h
    rw [abs_of_nonpos h',max_eq_left (neg_nonneg.mpr h')]
    ring

theorem negativeCurvatureWork_nonneg {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ negativeCurvatureWork A :=
  intervalIntegral.integral_nonneg (by linarith) (fun u _ => le_max_right _ _)

/-- The signed integral discards only its negative part in this optional sufficient bound. -/
theorem actual_work_ge_negativeCurvatureWork {A : ℝ} (hA : 1 ≤ A) :
    -negativeCurvatureWork A ≤ criticalRemovedPairedWork A := by
  rw [actual_second_Abel hA]
  have hh := intervalIntegral.integral_mono_on (μ:=volume) (show 0 ≤ 2*A by linarith)
    (negativeCurvatureWork_integrand_intervalIntegrable hA).neg
    (actual_bridge_curvature_intervalIntegrable hA)
    (fun u _ => by dsimp only; linarith [le_max_left
      (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) (0:ℝ)])
  rw [intervalIntegral.integral_neg] at hh
  exact hh

/-- This stronger optional premise is open; it is not a new gate for the parent. -/
def NegativeCurvatureTailBudget : Prop :=
  ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → negativeCurvatureWork A ≤ B

theorem actual_tail_of_negativeCurvature_budget (h : NegativeCurvatureTailBudget) :
    CriticalRemovedPairedTailLowerBound := by
  obtain ⟨B,hB,R,hR,hcost⟩ := h
  refine ⟨B,hB,R,hR,?_⟩
  intro A hRA
  linarith [actual_work_ge_negativeCurvatureWork (hR.trans hRA),hcost A hRA]

/-- Conditional reuse of the unchanged all-real source consumer. No budget is constructed. -/
theorem actual_estimate_of_negativeCurvature_budget (h : NegativeCurvatureTailBudget) :
    CorrelationAssembly.EstimateObligation :=
  EstimateMertensResidual.estimate_of_mertens_residual_tail
    (criticalRemoved_tail_iff_residual_tail.mp (actual_tail_of_negativeCurvature_budget h))

end ContinuousResearch.ActualSecondAbel
