# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.25SourceMangoldtWorkScale.Variantd665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1538504d43e2f037b91bead5c92732779e4b66b4` · SHA-256 `d665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Scale calculus of the original full Mangoldt work

The integral-defined signed work is transported through the checked full-prefix Abel
identity. Its derivative is independently specified using the actual rational source
energy and the complete closed prime-power moment derivative. No arithmetic lower
witness or positivity is assumed. Ordinary actual calculus is scoped to A>1.

AI attribution: developed with OpenAI Codex; Lean checks proof terms.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMangoldtWorkScale

open MeasureTheory Set Filter
open SourceFirstPrimeAbel SourceMangoldtAbel SourceContinuousHalfEnergy SourcePrimeMomentScale
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect

noncomputable section

/-- The unchanged polynomial denominator in the actual continuous-half evaluation. -/
def continuousHalfDenominator (A : ℝ) : ℝ := 7 * A ^ 4 + 272 * A ^ 2 + 7344

/-- The rational source surrogate, defined independently of the actual half integral. -/
def continuousHalfRational (A : ℝ) : ℝ :=
  -(14 * A ^ 4 + 272 * A ^ 2) / continuousHalfDenominator A

/-- The independently specified rational source derivative. -/
def continuousHalfScaleDerivative (A : ℝ) : ℝ :=
  -544 * A * (7 * A ^ 4 + 756 * A ^ 2 + 7344) / continuousHalfDenominator A ^ 2

/-- The polynomial denominator is strictly positive, without an arithmetic premise. -/
theorem continuousHalfDenominator_pos (A : ℝ) : 0 < continuousHalfDenominator A := by
  unfold continuousHalfDenominator
  positivity

/-- The rational source surrogate has the independently computed quotient-rule slope. -/
theorem continuousHalfRational_hasDerivAt (A : ℝ) :
    HasDerivAt continuousHalfRational (continuousHalfScaleDerivative A) A := by
  have hn := (((hasDerivAt_id A).pow 4).const_mul 14).add
    (((hasDerivAt_id A).pow 2).const_mul 272)
  have hd := ((((hasDerivAt_id A).pow 4).const_mul 7).add
    (((hasDerivAt_id A).pow 2).const_mul 272)).add (hasDerivAt_const A 7344)
  exact (hn.neg.div hd (ne_of_gt (continuousHalfDenominator_pos A))).congr_deriv (by
    dsimp [continuousHalfScaleDerivative, continuousHalfDenominator]
    field_simp
    ring)

/-- Polynomial positivity makes the rational surrogate globally C¹. -/
theorem continuousHalfRational_contDiff : ContDiff ℝ 1 continuousHalfRational := by
  have hn : ContDiff ℝ 1 (fun A : ℝ => -(14 * A ^ 4 + 272 * A ^ 2)) := by fun_prop
  have hd : ContDiff ℝ 1 continuousHalfDenominator := by
    unfold continuousHalfDenominator
    fun_prop
  exact hn.div hd (fun A => ne_of_gt (continuousHalfDenominator_pos A))

/-- The independent rational slope is continuous before any FTC use. -/
theorem continuousHalfScaleDerivative_continuous : Continuous continuousHalfScaleDerivative := by
  have hn : Continuous (fun A : ℝ => -544 * A * (7 * A ^ 4 + 756 * A ^ 2 + 7344)) := by
    fun_prop
  have hd : Continuous continuousHalfDenominator := by
    unfold continuousHalfDenominator
    fun_prop
  exact hn.div (hd.pow 2) (fun A => pow_ne_zero 2 (ne_of_gt (continuousHalfDenominator_pos A)))

/-- The actual independent source slope is negative at every positive scale. -/
theorem continuousHalfScaleDerivative_lt_zero {A : ℝ} (hA : 0 < A) :
    continuousHalfScaleDerivative A < 0 := by
  unfold continuousHalfScaleDerivative
  apply div_neg_of_neg_of_pos
  · have hp : 0 < 7 * A ^ 4 + 756 * A ^ 2 + 7344 := by positivity
    have hn : -544 * A < 0 := by nlinarith
    exact mul_neg_of_neg_of_pos hn hp
  · exact sq_pos_of_pos (continuousHalfDenominator_pos A)

/-- The literal half integral agrees with its rational evaluation near an ordinary scale
 above one. -/
theorem criticalContinuousMoment_eventually_eq_rational {A : ℝ} (hA : 1 < A) :
    criticalContinuousMoment =ᶠ[nhds A] continuousHalfRational := by
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact criticalContinuousMoment_eq_rational hB.le

/-- Ordinary calculus for the original half integral retains the strict A>1 adapter scope. -/
theorem criticalContinuousMoment_hasDerivAt {A : ℝ} (hA : 1 < A) :
    HasDerivAt criticalContinuousMoment (continuousHalfScaleDerivative A) A :=
  (continuousHalfRational_hasDerivAt A).congr_of_eventuallyEq
    (criticalContinuousMoment_eventually_eq_rational hA)

/-- The actual continuous half is locally C¹ at every scale strictly above one. -/
theorem criticalContinuousMoment_contDiffAt {A : ℝ} (hA : 1 < A) :
    ContDiffAt ℝ 1 criticalContinuousMoment A :=
  continuousHalfRational_contDiff.contDiffAt.congr_of_eventuallyEq
    (criticalContinuousMoment_eventually_eq_rational hA)

/-- Global scalar C¹ here means the open scale domain A>1, with no endpoint-one assertion. -/
theorem criticalContinuousMoment_contDiffOn :
    ContDiffOn ℝ 1 criticalContinuousMoment (Ioi 1) :=
  fun _ hA => (criticalContinuousMoment_contDiffAt hA).contDiffWithinAt

/-- The ordinary actual half derivative is the independently specified rational slope. -/
theorem criticalContinuousMoment_deriv {A : ℝ} (hA : 1 < A) :
    deriv criticalContinuousMoment A = continuousHalfScaleDerivative A :=
  (criticalContinuousMoment_hasDerivAt hA).deriv

/-- The independent work slope retains every coefficient in the literal full moment derivative. -/
def mangoldtWorkScaleDerivative (A : ℝ) : ℝ :=
  continuousHalfScaleDerivative A - closedPrimeMomentScaleDerivative A

/-- The original integral-defined work is locally identified using the proved full-prefix
 Abel sum. -/
theorem criticalMangoldtWork_eventually_eq_sub {A : ℝ} (hA : 1 < A) :
    criticalMangoldtWork =ᶠ[nhds A]
      (fun B => criticalContinuousMoment B - closedPrimeMoment B) := by
  filter_upwards [eventually_gt_nhds hA] with B hB
  have h := closedPrimeMoment_eq_continuous_sub_Mangoldt_work B hB.le
  linarith

/-- Ordinary work differentiation follows the actual Abel identity, without redefining the work. -/
theorem criticalMangoldtWork_hasDerivAt {A : ℝ} (hA : 1 < A) :
    HasDerivAt criticalMangoldtWork (mangoldtWorkScaleDerivative A) A :=
  ((criticalContinuousMoment_hasDerivAt hA).sub
      (closedPrimeMoment_hasDerivAt (by linarith))).congr_of_eventuallyEq
    (criticalMangoldtWork_eventually_eq_sub hA)

/-- The original full signed work is locally C¹, including upper births in its scalar moment. -/
theorem criticalMangoldtWork_contDiffAt {A : ℝ} (hA : 1 < A) :
    ContDiffAt ℝ 1 criticalMangoldtWork A :=
  ((criticalContinuousMoment_contDiffAt hA).sub
      (closedPrimeMoment_contDiffAt (by linarith))).congr_of_eventuallyEq
    (criticalMangoldtWork_eventually_eq_sub hA)

/-- Scalar work C¹ on A>1 gives no continuity of the raw changing arithmetic Hilbert state. -/
theorem criticalMangoldtWork_contDiffOn : ContDiffOn ℝ 1 criticalMangoldtWork (Ioi 1) :=
  fun _ hA => (criticalMangoldtWork_contDiffAt hA).contDiffWithinAt

/-- The ordinary work derivative equals the full independently authored source-minus-moment
 slope. -/
theorem criticalMangoldtWork_deriv {A : ℝ} (hA : 1 < A) :
    deriv criticalMangoldtWork A = mangoldtWorkScaleDerivative A :=
  (criticalMangoldtWork_hasDerivAt hA).deriv

/-- The actual full work slope is continuous on its precise ordinary scale-calculus domain. -/
theorem mangoldtWorkScaleDerivative_continuousOn :
    ContinuousOn mangoldtWorkScaleDerivative (Ioi 1) := by
  exact continuousHalfScaleDerivative_continuous.continuousOn.sub
    (closedPrimeMomentScaleDerivative_continuousOn.mono (by
      intro A hA
      exact lt_trans (by norm_num : (0 : ℝ) < 1) hA))

/-- Every unordered interval with endpoints above one lies in the actual calculus domain. -/
theorem uIcc_subset_scaleDomain {a b : ℝ} (ha : 1 < a) (hb : 1 < b) :
    uIcc a b ⊆ Ioi (1 : ℝ) := by
  intro A hA
  rcases mem_uIcc.mp hA with h | h
  · exact ha.trans_le h.1
  · exact hb.trans_le h.1

/-- The rational source slope is genuinely integrable on every finite oriented interval. -/
theorem continuousHalfScaleDerivative_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable continuousHalfScaleDerivative volume a b :=
  continuousHalfScaleDerivative_continuous.intervalIntegrable a b

/-- The complete closed-moment slope is integrable before the signed derivative sum is split. -/
theorem closedPrimeMomentScaleDerivative_intervalIntegrable {a b : ℝ}
    (ha : 1 < a) (hb : 1 < b) :
    IntervalIntegrable closedPrimeMomentScaleDerivative volume a b := by
  exact (closedPrimeMomentScaleDerivative_continuousOn.mono
    ((uIcc_subset_scaleDomain ha hb).trans (by
      intro A hA
      exact lt_trans (by norm_num : (0 : ℝ) < 1) hA))).intervalIntegrable

/-- All actual work-FTC integrability hypotheses are discharged from proved derivative
 continuity. -/
theorem mangoldtWorkScaleDerivative_intervalIntegrable {a b : ℝ}
    (ha : 1 < a) (hb : 1 < b) :
    IntervalIntegrable mangoldtWorkScaleDerivative volume a b :=
  (mangoldtWorkScaleDerivative_continuousOn.mono
    (uIcc_subset_scaleDomain ha hb)).intervalIntegrable

/-- Actual source FTC keeps its sign for either orientation, with both endpoints above one. -/
theorem criticalContinuousMoment_flux {a b : ℝ} (ha : 1 < a) (hb : 1 < b) :
    (∫ A in a..b, continuousHalfScaleDerivative A) =
      criticalContinuousMoment b - criticalContinuousMoment a :=
  intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun _ hA => criticalContinuousMoment_hasDerivAt (uIcc_subset_scaleDomain ha hb hA))
    (continuousHalfScaleDerivative_intervalIntegrable a b)

/-- The original full signed work has the exact oriented scalar scale-flux identity. -/
theorem criticalMangoldtWork_flux {a b : ℝ} (ha : 1 < a) (hb : 1 < b) :
    (∫ A in a..b, mangoldtWorkScaleDerivative A) =
      criticalMangoldtWork b - criticalMangoldtWork a :=
  intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun _ hA => criticalMangoldtWork_hasDerivAt (uIcc_subset_scaleDomain ha hb hA))
    (mangoldtWorkScaleDerivative_intervalIntegrable ha hb)

/-- Splitting the actual work slope retains the sign of the complete arithmetic derivative. -/
theorem criticalMangoldtWork_flux_eq_sub {a b : ℝ} (ha : 1 < a) (hb : 1 < b) :
    criticalMangoldtWork b - criticalMangoldtWork a =
      (∫ A in a..b, continuousHalfScaleDerivative A) -
        ∫ A in a..b, closedPrimeMomentScaleDerivative A := by
  rw [← criticalMangoldtWork_flux ha hb]
  exact intervalIntegral.integral_sub (continuousHalfScaleDerivative_intervalIntegrable a b)
    (closedPrimeMomentScaleDerivative_intervalIntegrable ha hb)

/-- The actual pure-source flux has a strict uniform size bound for either orientation. -/
theorem continuousHalfScaleDerivative_flux_abs_lt_two {a b : ℝ}
    (ha : 1 < a) (hb : 1 < b) :
    |∫ A in a..b, continuousHalfScaleDerivative A| < 2 := by
  rw [criticalContinuousMoment_flux ha hb]
  obtain ⟨haL, haU⟩ := criticalContinuousMoment_strict_bounds ha.le
  obtain ⟨hbL, hbU⟩ := criticalContinuousMoment_strict_bounds hb.le
  exact abs_lt.mpr ⟨by linarith, by linarith⟩

/-- In increasing scale order the independently specified source flux is nonpositive. -/
theorem continuousHalfScaleDerivative_flux_nonpos {a b : ℝ}
    (ha : 1 < a) (hab : a ≤ b) :
    (∫ A in a..b, continuousHalfScaleDerivative A) ≤ 0 := by
  have hn : 0 ≤ ∫ A in a..b, -continuousHalfScaleDerivative A := by
    apply intervalIntegral.integral_nonneg hab
    intro A hA
    have hp : 0 < A := (by linarith : 0 < a).trans_le (mem_Icc.mp hA).1
    exact neg_nonneg.mpr (continuousHalfScaleDerivative_lt_zero hp).le
  rw [intervalIntegral.integral_neg] at hn
  exact neg_nonneg.mp hn

/-- Source-only storage has a bounded negative flux; this does not bound the arithmetic flux. -/
theorem continuousHalfScaleDerivative_flux_bounds {a b : ℝ}
    (ha : 1 < a) (hab : a ≤ b) :
    -2 < (∫ A in a..b, continuousHalfScaleDerivative A) ∧
      (∫ A in a..b, continuousHalfScaleDerivative A) ≤ 0 := by
  exact ⟨(abs_lt.mp (continuousHalfScaleDerivative_flux_abs_lt_two ha (ha.trans_le hab))).1,
    continuousHalfScaleDerivative_flux_nonpos ha hab⟩

/-- The actual continuous half decreases only on the recorded ordinary-calculus domain. -/
theorem criticalContinuousMoment_antitoneOn : AntitoneOn criticalContinuousMoment (Ioi 1) := by
  intro a ha b hb hab
  have h := continuousHalfScaleDerivative_flux_nonpos ha hab
  rw [criticalContinuousMoment_flux ha hb] at h
  linarith

/-- The bounded increasing source storage is distinct from the full signed arithmetic work. -/
theorem negativeContinuousHalf_monotoneOn :
    MonotoneOn (fun A => -criticalContinuousMoment A) (Ioi 1) := by
  intro a ha b hb hab
  exact neg_le_neg (criticalContinuousMoment_antitoneOn ha hb hab)

/-- An open research target for the full signed flux, with fixed reference scale two. -/
def IntegratedMangoldtWorkTailLowerBound : Prop :=
  ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 2 ≤ R ∧
    ∀ A : ℝ, R ≤ A → -B ≤ ∫ s in 2..A, mangoldtWorkScaleDerivative s

/-- A supplied integrated flux witness converts to the original work target, without creating
 one. -/
theorem work_tail_of_integrated_work_tail
    (h : IntegratedMangoldtWorkTailLowerBound) : MangoldtWorkTailLowerBound := by
  rcases h with ⟨B, hB, R, hR, hflux⟩
  refine ⟨max 0 (B - criticalMangoldtWork 2), le_max_left _ _, R, by linarith, ?_⟩
  intro A hRA
  have hA : 1 < A := by linarith
  have hf := hflux A hRA
  rw [criticalMangoldtWork_flux (by norm_num : (1 : ℝ) < 2) hA] at hf
  have hm := le_max_right (0 : ℝ) (B - criticalMangoldtWork 2)
  linarith

/-- An original work witness converts to integrated flux using honest nonnegative constants. -/
theorem integrated_work_tail_of_work_tail
    (h : MangoldtWorkTailLowerBound) : IntegratedMangoldtWorkTailLowerBound := by
  rcases h with ⟨C, hC, R, hR, hwork⟩
  refine ⟨max 0 (C + criticalMangoldtWork 2), le_max_left _ _, max 2 R,
    le_max_left _ _, ?_⟩
  intro A hRA
  have h2 : 2 ≤ A := (le_max_left 2 R).trans hRA
  have hR' : R ≤ A := (le_max_right 2 R).trans hRA
  have hA : 1 < A := by linarith
  rw [criticalMangoldtWork_flux (by norm_num : (1 : ℝ) < 2) hA]
  have hw := hwork A hR'
  have hm := le_max_right (0 : ℝ) (C + criticalMangoldtWork 2)
  linarith

/-- The new integrated target is exactly equivalent to the original open work lower target. -/
theorem integrated_work_tail_iff_work_tail :
    IntegratedMangoldtWorkTailLowerBound ↔ MangoldtWorkTailLowerBound :=
  ⟨work_tail_of_integrated_work_tail, integrated_work_tail_of_work_tail⟩

end
end FormalResearch.RiemannHypothesis.SourceMangoldtWorkScale
```
