# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaQuadratureCurvature.Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a9a5e7f118c85cb4c47919a0e945f7c475c54ab` · SHA-256 `d9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# All-real curvature pricing of the retained mean-one cutoff remainder

grwtsk contributors retains the originating direction, theorem selection,
corrections and evaluation. OpenAI Codex supplied this particular refinement
on 7 October 2026. The compensated arithmetic cap remains an explicit,
independent premise; this comparison does not supply its uniform witness.

The proof keeps the original finite endpoint and floor phase. Its signed
baseline is integrated only up to the actual physical endpoint, with the full
exponential antiderivative trace retained. The actual global correlation and
its derivative are zero past that endpoint; no extra source tail is inserted.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaQuadratureCurvature

open MeasureTheory Set SourcePairing SourceKapitzaReconstruction
open SourceKapitzaCompensatedReadout SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual
open EstimatePrimeSmoothDefect
open scoped Interval Topology

/-- The curvature coefficient in this module, with the following exact parameterization.

def curvatureCoefficient : ℝ := 162826 / 7623
-/
def curvatureCoefficient : ℝ := 162826 / 7623

/-- The original finite signed baseline keeps the exact floor phase and endpoint. -/
def cutoffBaseline (A : ℝ) : ℝ :=
  -(1 / 2 : ℝ) * (∫ s in 0..2 * A, cutoffPhase s * Real.exp (-s / 2))

theorem cutoffPhase_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable cutoffPhase volume a b := by
  have hfloor : Monotone (fun s : ℝ => (⌊Real.exp s⌋₊ : ℝ)) := by
    intro s t hst
    change (⌊Real.exp s⌋₊ : ℝ) ≤ (⌊Real.exp t⌋₊ : ℝ)
    exact_mod_cast Nat.floor_mono (Real.exp_le_exp.mpr hst)
  change IntervalIntegrable
    (fun s : ℝ => Real.exp s - (⌊Real.exp s⌋₊ : ℝ)) volume a b
  simpa only [Pi.sub_apply] using
    (Real.continuous_exp.intervalIntegrable (μ := volume) a b).sub hfloor.intervalIntegrable

theorem kernel_continuous (A : ℝ) (hA : 0 < A) : Continuous (kapitzaKernel A) := by
  have hc := sourceCorrelation_contDiff A hA
  exact hc.continuous.div_const 2 |>.sub hc.continuous_deriv_one

theorem weightedPhase_intervalIntegrable (A : ℝ) :
    IntervalIntegrable (fun s => cutoffPhase s * Real.exp (-s / 2)) volume 0 (2 * A) :=
  (cutoffPhase_intervalIntegrable 0 (2 * A)).mul_continuousOn (by fun_prop)

theorem cutoffBaseline_nonpos (A : ℝ) (hA : 0 ≤ A) : cutoffBaseline A ≤ 0 := by
  have hi : 0 ≤ ∫ s in 0..2 * A, cutoffPhase s * Real.exp (-s / 2) :=
    intervalIntegral.integral_nonneg (by linarith) (fun s _ =>
      mul_nonneg (cutoffPhase_bounds s).1 (Real.exp_pos _).le)
  unfold cutoffBaseline
  linarith

/-- Exact finite exponential moment: its positive terminal trace is retained. -/
theorem exponential_moment_le_eight (T : ℝ) (hT : 0 ≤ T) :
    (∫ s in 0..T, Real.exp (-s / 2) * (s + s ^ 2 / 4)) ≤ 8 := by
  have hd (s : ℝ) : HasDerivAt
      (fun t => -(t ^ 2 / 2 + 4 * t + 8) * Real.exp (-t / 2))
      (Real.exp (-s / 2) * (s + s ^ 2 / 4)) s := by
    have hp := ((((hasDerivAt_id s).pow 2).div_const 2).add
      ((hasDerivAt_id s).const_mul 4)).add_const 8
    have he := (((hasDerivAt_id s).neg.div_const 2).exp)
    exact (hp.neg.mul he).congr_deriv (by dsimp; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ =>
      Real.exp (-s / 2) * (s + s ^ 2 / 4))).intervalIntegrable 0 T)]
  simp only [neg_zero, zero_div, Real.exp_zero, zero_pow (by norm_num : 2 ≠ 0),
    zero_add, mul_one]
  have hp : 0 ≤ (T ^ 2 / 2 + 4 * T + 8) * Real.exp (-T / 2) := by positivity
  linarith

/-- Evenness anchors the derivative at zero without a large-scale curvature premise. -/
theorem sourceCorrelation_deriv_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hd := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) 0).hasDerivAt
  have heq : (fun x : ℝ => sourceCorrelation explicitSecondDerivative A (-x)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  have hdneg : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-0) := by
    simpa only [neg_zero] using hd
  have hn := hdneg.comp 0 (hasDerivAt_neg (0 : ℝ))
  have hn' : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [Function.comp_def, heq, mul_neg, mul_one] using hn
  have h := hd.unique hn'
  linarith

/-- The source kernel's actual zero extension contributes no physical tail. -/
theorem kernel_zero_after_support (A s : ℝ) (hA : 0 < A) (hs : 2 * A < s) :
    kapitzaKernel A s = 0 := by
  have he : sourceCorrelation explicitSecondDerivative A =ᶠ[𝓝 s]
      (fun _ : ℝ => (0 : ℝ)) := by
    filter_upwards [eventually_gt_nhds hs] with t ht
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA
      (ht.le.trans (le_abs_self t))
  have hd := (hasDerivAt_const s (0 : ℝ)).congr_of_eventuallyEq he
  have hc := sourceCorrelation_eq_zero_of_two_mul_le_abs A s hA
    (hs.le.trans (le_abs_self s))
  rw [kapitzaKernel, hc, hd.deriv]
  norm_num

/-- The global derivative estimate is anchored at the unchanged even origin. -/
theorem sourceCorrelation_deriv_abs_le_coefficient (A s : ℝ) (hA : 1 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) s| ≤
      curvatureCoefficient / A ^ 2 * |s| := by
  have hp : 0 < A := by linarith
  simpa only [zero_add, sourceCorrelation_deriv_zero hp, sub_zero,
    curvatureCoefficient, div_div] using
      sourceCorrelation_deriv_increment_bound hA 0 s

/-- The global Taylor remainder includes both compact-support seams. -/
theorem sourceCorrelation_sub_one_abs_le_coefficient (A s : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A s - 1| ≤
      curvatureCoefficient / A ^ 2 * s ^ 2 / 2 := by
  have hp : 0 < A := by linarith
  have hc := actual_correlation_at_zero A hA
  simpa only [zero_add, hc, sourceCorrelation_deriv_zero hp, mul_zero,
    sub_zero, curvatureCoefficient, div_div] using
      sourceCorrelation_linear_taylor_bound hA 0 s

theorem kernel_sub_half_abs_le_coefficient (A s : ℝ) (hA : 1 ≤ A) (hs : 0 ≤ s) :
    |kapitzaKernel A s - 1 / 2| ≤
      (curvatureCoefficient / A ^ 2) * (s + s ^ 2 / 4) := by
  have ht := sourceCorrelation_sub_one_abs_le_coefficient A s hA
  have hd := sourceCorrelation_deriv_abs_le_coefficient A s hA
  rw [abs_of_nonneg hs] at hd
  have hid : kapitzaKernel A s - 1 / 2 =
      (sourceCorrelation explicitSecondDerivative A s - 1) / 2 -
        deriv (sourceCorrelation explicitSecondDerivative A) s := by
    unfold kapitzaKernel
    ring
  rw [hid]
  have htri := abs_sub
    ((sourceCorrelation explicitSecondDerivative A s - 1) / 2)
    (deriv (sourceCorrelation explicitSecondDerivative A) s)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at htri
  linarith

/-- Exact finite baseline comparison; the physical endpoint is never replaced by infinity. -/
theorem quadratureError_sub_baseline_abs_le_coefficient (A : ℝ) (hA : 1 ≤ A) :
    |quadratureError A - cutoffBaseline A| ≤ 8 * curvatureCoefficient / A ^ 2 := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ 2 * A := by linarith
  have hphase := weightedPhase_intervalIntegrable A
  have hk := hphase.mul_continuousOn (kernel_continuous A hp).continuousOn
  have hconst := hphase.mul_const (1 / 2 : ℝ)
  have hid : quadratureError A - cutoffBaseline A =
      -(∫ s in 0..2 * A,
        cutoffPhase s * Real.exp (-s / 2) * (kapitzaKernel A s - 1 / 2)) := by
    have hfun : (fun s => cutoffPhase s * Real.exp (-s / 2) *
        (kapitzaKernel A s - 1 / 2)) =
        (fun s => cutoffPhase s * Real.exp (-s / 2) * kapitzaKernel A s -
          cutoffPhase s * Real.exp (-s / 2) * (1 / 2 : ℝ)) := by funext s; ring
    unfold quadratureError cutoffBaseline
    rw [hfun, intervalIntegral.integral_sub hk hconst,
      intervalIntegral.integral_mul_const]
    have hsame : (fun s => cutoffPhase s *
        (Real.exp (-s / 2) * kapitzaKernel A s)) =
        (fun s => cutoffPhase s * Real.exp (-s / 2) * kapitzaKernel A s) := by
      funext s
      ring
    rw [hsame]
    ring
  rw [hid, abs_neg]
  have hg : IntervalIntegrable (fun s : ℝ => (curvatureCoefficient / A ^ 2) *
      (Real.exp (-s / 2) * (s + s ^ 2 / 4))) volume 0 (2 * A) :=
    (by fun_prop : Continuous (fun s : ℝ => (curvatureCoefficient / A ^ 2) *
      (Real.exp (-s / 2) * (s + s ^ 2 / 4)))).intervalIntegrable 0 (2 * A)
  have hn := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun s => cutoffPhase s * Real.exp (-s / 2) * (kapitzaKernel A s - 1 / 2))
    ha (Filter.Eventually.of_forall (fun s hs => ?_)) hg
  · rw [intervalIntegral.integral_const_mul] at hn
    simp only [Real.norm_eq_abs] at hn
    have hm := exponential_moment_le_eight (2 * A) ha
    have hcoef : 0 ≤ curvatureCoefficient / A ^ 2 := by
      unfold curvatureCoefficient
      positivity
    calc
      _ ≤ (curvatureCoefficient / A ^ 2) *
          (∫ s in 0..2 * A, Real.exp (-s / 2) * (s + s ^ 2 / 4)) := hn
      _ ≤ (curvatureCoefficient / A ^ 2) * 8 := mul_le_mul_of_nonneg_left hm hcoef
      _ = 8 * curvatureCoefficient / A ^ 2 := by ring
  · have hs0 : 0 ≤ s := hs.1.le
    have hb : cutoffPhase s ≤ 1 := (cutoffPhase_bounds s).2.le
    simp only [Real.norm_eq_abs, abs_mul, abs_of_nonneg (cutoffPhase_bounds s).1,
      abs_of_pos (Real.exp_pos _)]
    have he : 0 ≤ Real.exp (-s / 2) := (Real.exp_pos _).le
    have htri := kernel_sub_half_abs_le_coefficient A s hA hs0
    calc
      _ ≤ 1 * Real.exp (-s / 2) *
          ((curvatureCoefficient / A ^ 2) * (s + s ^ 2 / 4)) :=
        mul_le_mul (mul_le_mul_of_nonneg_right hb he) htri
          (abs_nonneg _) (by positivity)
      _ = _ := by ring

/-- Only the signed positive debt is priced; the literal baseline remains nonpositive. -/
theorem quadratureError_le_coefficient (A : ℝ) (hA : 1 ≤ A) :
    quadratureError A ≤ 8 * curvatureCoefficient / A ^ 2 := by
  have he := (abs_le.mp (quadratureError_sub_baseline_abs_le_coefficient A hA)).2
  have hb := cutoffBaseline_nonpos A (by linarith)
  linarith

/-- The quadrature price in this module, with the following exact parameterization.

def quadraturePrice (R : ℝ) : ℝ := min (1 + 10 / R) (8 * curvatureCoefficient / R ^ 2)
-/
def quadraturePrice (R : ℝ) : ℝ :=
  min (1 + 10 / R) (8 * curvatureCoefficient / R ^ 2)

/-- Both existing physical bounds are transported to the same real tail radius. -/
theorem quadratureError_le_price (R A : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A) :
    quadratureError A ≤ quadraturePrice R := by
  have hA : 1 ≤ A := hR.trans hRA
  have hR0 : 0 < R := by linarith
  unfold quadraturePrice
  apply le_min
  · have hq := (abs_le.mp (quadratureError_abs_le A hA)).2
    have hr : 10 / A ≤ 10 / R :=
      div_le_div_of_nonneg_left (by norm_num) hR0 hRA
    linarith
  · have hq := quadratureError_le_coefficient A hA
    have hs : R ^ 2 ≤ A ^ 2 := by nlinarith
    have hcoef : 0 ≤ 8 * curvatureCoefficient := by
      unfold curvatureCoefficient
      positivity
    exact hq.trans (div_le_div_of_nonneg_left hcoef (sq_pos_of_pos hR0) hs)

/-- The tighter comparison requires the same independent compensated arithmetic cap. -/
theorem residual_le_of_compensated_cap (R A B : ℝ)
    (hR : 1 ≤ R) (hRA : R ≤ A) (hS : compensatedSourceSum A ≤ B) :
    mertensResidual A ≤ B - 2 + continuousDefect R + quadraturePrice R := by
  have hA : 1 ≤ A := hR.trans hRA
  have hq := quadratureError_le_price R A hR hRA
  have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
  have hi := one_add_continuous_eq_defect A hA
  rw [mertensResidual_eq_compensated_add_moment_error A hA]
  linarith

/-- Conditional return to the unchanged all-real target, with the finite prefix retained. -/
theorem original_lower_of_compensated_cap (R B : ℝ) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → compensatedSourceSum A ≤ B) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R)
        (archimedeanMultiplier 0 + 4 - 2 * B - 2 * continuousDefect R -
          2 * quadraturePrice R) ≤ sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hr := residual_le_of_compensated_cap R A B hR hRA (hS A hRA)
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

theorem estimate_of_compensated_cap (R B : ℝ) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → compensatedSourceSum A ≤ B) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_compensated_cap R B hR hS⟩

end FormalResearch.RiemannHypothesis.SourceKapitzaQuadratureCurvature
```
