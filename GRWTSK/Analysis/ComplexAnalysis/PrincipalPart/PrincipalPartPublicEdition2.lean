module

public meta import Surface.Core.Classification
public import Surface.Core.ComplexAnalysis.LogDerivativeResidue
public import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic

/-!
# Principal parts and normalized local circle integrals

The analytic-order factorization from `LogDerivativeResidue` gives an exact
principal part for a logarithmic derivative.  On every sufficiently small
positive circle, the regular part integrates to zero and the normalized
integral of the principal part is its multiplicity.

This is a local theorem.  It does not provide finite-pole excision or a
rectangle residue theorem.
-/

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Filter Set
open scoped Topology

/-- Circle integration normalized by the positive-orientation factor
`2 * pi * I`. -/
@[expose]
def normalizedResidueCircleIntegral
    (h : ℂ → ℂ) (z : ℂ) (r : ℝ) : ℂ :=
  (2 * Real.pi * Complex.I : ℂ)⁻¹ • circleIntegral h z r

namespace AnalyticAt

/-- Every sufficiently small positive circle around a finite-order analytic
zero integrates its logarithmic derivative to its multiplicity. -/
@[surface_novel, surface_published]
theorem exists_smallCircle_normalizedIntegral_logDeriv_eq_order
    {f : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f z)
    {n : ℕ}
    (hn : analyticOrderAt f z = n) :
    ∃ R : ℝ, 0 < R ∧
      ∀ r : ℝ, 0 < r → r < R →
        normalizedResidueCircleIntegral (logDeriv f) z r = (n : ℂ) := by
  obtain ⟨g, hg, hg0, hlog⟩ :=
    logDeriv_eventuallyEq_principalPart hf hn

  have hg_ne : ∀ᶠ w in 𝓝 z, g w ≠ 0 :=
    (hg.continuousAt.ne_iff_eventually_ne continuousAt_const).mp hg0

  have hlogN :
      ∀ᶠ w in 𝓝 z, w ≠ z →
        logDeriv f w =
          (n : ℂ) / (w - z) + logDeriv g w := by
    have h :=
      (eventually_nhdsWithin_iff
        (s := ({z} : Set ℂ)ᶜ)).mp hlog
    filter_upwards [h] with w hw
    intro hwne
    exact hw (by simpa using hwne)

  have hlocal :
      ∀ᶠ w in 𝓝 z,
        AnalyticAt ℂ g w ∧
        g w ≠ 0 ∧
        (w ≠ z →
          logDeriv f w =
            (n : ℂ) / (w - z) + logDeriv g w) := by
    filter_upwards [hg.eventually_analyticAt, hg_ne, hlogN]
      with w hga hgne hlogw
    exact ⟨hga, hgne, hlogw⟩

  obtain ⟨R, hR, hlocalR⟩ :=
    Metric.eventually_nhds_iff.mp hlocal

  refine ⟨R, hR, ?_⟩
  intro r hr hrR

  have hregAt :
      ∀ w ∈ Metric.closedBall z r,
        AnalyticAt ℂ (logDeriv g) w := by
    intro w hw
    obtain ⟨hga, hgne, -⟩ :=
      hlocalR
        (lt_of_le_of_lt (Metric.mem_closedBall.mp hw) hrR)
    simpa only [logDeriv] using hga.deriv.div hga hgne

  have hregContinuous :
      ContinuousOn (logDeriv g) (Metric.closedBall z r) :=
    fun w hw ↦ (hregAt w hw).continuousAt.continuousWithinAt

  have hregDiff :
      ∀ w ∈ Metric.ball z r \ (∅ : Set ℂ),
        DifferentiableAt ℂ (logDeriv g) w := by
    intro w hw
    exact
      (hregAt w (Metric.ball_subset_closedBall hw.1)).differentiableAt

  have hregIntegral : circleIntegral (logDeriv g) z r = 0 :=
    Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
      hr.le Set.countable_empty hregContinuous hregDiff

  have hregCI : CircleIntegrable (logDeriv g) z r :=
    (hregContinuous.mono
      Metric.sphere_subset_closedBall).circleIntegrable hr.le

  have hpoleContinuous :
      ContinuousOn
        (fun w : ℂ ↦ (n : ℂ) / (w - z))
        (Metric.sphere z r) := by
    apply continuousOn_const.div
      (continuousOn_id.sub continuousOn_const)
    intro w hw
    have hdist : dist w z = r := Metric.mem_sphere.mp hw
    apply sub_ne_zero.mpr
    intro hwz
    have hweq : w = z := by simpa only [id_eq] using hwz
    have hzero : (0 : ℝ) = r := by simpa [hweq] using hdist
    exact hr.ne' hzero.symm

  have hpoleCI :
      CircleIntegrable
        (fun w : ℂ ↦ (n : ℂ) / (w - z)) z r :=
    hpoleContinuous.circleIntegrable hr.le

  have hcircleEq :
      EqOn (logDeriv f)
        (fun w : ℂ ↦
          (n : ℂ) / (w - z) + logDeriv g w)
        (Metric.sphere z r) := by
    intro w hw
    have hdist : dist w z = r := Metric.mem_sphere.mp hw
    obtain ⟨-, -, hEq⟩ :=
      hlocalR (y := w) (by simpa only [hdist] using hrR)
    apply hEq
    intro hwz
    have hzero : (0 : ℝ) = r := by simpa [hwz] using hdist
    exact hr.ne' hzero.symm

  unfold normalizedResidueCircleIntegral
  rw [circleIntegral.integral_congr hr.le hcircleEq]
  rw [circleIntegral.integral_add hpoleCI hregCI,
    hregIntegral, add_zero]

  have hpole :
      circleIntegral
          (fun w : ℂ ↦ (n : ℂ) / (w - z)) z r =
        (n : ℂ) * (2 * Real.pi * Complex.I) := by
    simp only [div_eq_mul_inv]
    rw [circleIntegral.integral_const_mul,
      circleIntegral.integral_sub_center_inv z hr.ne']

  rw [hpole]
  simp only [smul_eq_mul]
  field_simp [Real.pi_ne_zero, Complex.I_ne_zero]

end AnalyticAt

end

end Surface.Core.ComplexAnalysis
