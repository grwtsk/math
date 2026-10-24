import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Tactic

/-!
# Inheritance of an antitone log-slope under one tail integral

For a positive function `f`, this module defines its literal upper tail `F` and
proves that `F / f` is antitone and that the log-slope of `F` is antitone, given
explicit differentiability, integrability, decay, and log-slope assumptions on
`f`. Tail positivity and its derivative are proved from those source data.

The endpoint derivative is valid at every real point. Global continuity extends
integrability on `[0,∞)` to every `[t,∞)` by adding a compact interval when needed.
The exact identity `F t = F 0 - (∫ u in 0..t, f u)` then supplies an ordinary
neighborhood derivative, including at zero. Improper FTC includes the source
limit at infinity, and the `Ioi` theorem is explicitly bridged to the public
`Ici` integral statements. Compound integrands and finite interval scopes are
parenthesized throughout.

These are conditional analytic lemmas. They do not assert a sign property of
an unverified source or any higher-rank determinant.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set Filter
open scoped Topology
noncomputable section

/-- The literal, unnormalized upper tail of a real function. -/
def integralTail (f : ℝ → ℝ) (t : ℝ) : ℝ := (∫ u in Ici t, f u)

private theorem integrableOn_Ici_of_continuous
    {f : ℝ → ℝ} (hc : Continuous f) (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) :
    IntegrableOn f (Ici t) := by
  by_cases ht : 0 ≤ t
  · exact hi.mono_set (Ici_subset_Ici.mpr ht)
  · apply ((hc.continuousOn.integrableOn_Icc (a := t) (b := 0)).union hi).mono_set
    intro u hu
    by_cases hu0 : 0 ≤ u
    · exact Or.inr hu0
    · exact Or.inl ⟨hu, le_of_not_ge hu0⟩

/-- The exact all-real endpoint identity, with the finite integral scope explicit. -/
theorem integralTail_eq_sub {f : ℝ → ℝ}
    (hc : Continuous f) (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) :
    integralTail f t = integralTail f 0 - (∫ u in (0 : ℝ)..t, f u) := by
  have h := intervalIntegral.integral_Ici_sub_Ici' hi
    (integrableOn_Ici_of_continuous hc hi t)
  dsimp only [integralTail]
  linarith

/-- Continuity and actual tail integrability give an ordinary derivative even at zero. -/
theorem hasDerivAt_integralTail {f : ℝ → ℝ}
    (hc : Continuous f) (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) :
    HasDerivAt (integralTail f) (-f t) t := by
  have heq : integralTail f = fun t => integralTail f 0 - (∫ u in (0 : ℝ)..t, f u) :=
    funext (integralTail_eq_sub hc hi)
  rw [heq]
  exact (intervalIntegral.integral_hasDerivAt_right
    (hc.intervalIntegrable 0 t) (hc.stronglyMeasurableAtFilter volume _)
    hc.continuousAt).const_sub _

/-- Strict positivity uses integrability and the positive-measure interval `(t+1,t+2)`. -/
theorem integralTail_positive {f : ℝ → ℝ}
    (hi : IntegrableOn f (Ici (0 : ℝ))) (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    {t : ℝ} (ht : 0 ≤ t) : 0 < integralTail f t := by
  unfold integralTail
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_
    (hi.mono_set (Ici_subset_Ici.mpr ht))).mpr
  · have hpos : (0 : ENNReal) < volume (Ioo (t + 1) (t + 2)) := by simp
    apply hpos.trans_le (measure_mono ?_)
    intro u hu
    have hut : t ≤ u := by have := hu.1; linarith
    exact ⟨(hp u (ht.trans hut)).ne', hut⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact (hp u (ht.trans hu)).le

/-- Antitone source log-slope gives the exact oriented cross-product inequality. -/
theorem logSlope_cross_nonnegative {f : ℝ → ℝ}
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ)))
    {t u : ℝ} (ht : 0 ≤ t) (htu : t ≤ u) :
    0 ≤ deriv f t * f u - f t * deriv f u := by
  have h := (div_le_div_iff₀ (hp u (ht.trans htu)) (hp t ht)).mp
    (ha ht (ht.trans htu) htu)
  nlinarith only [h]

/-- Improper FTC includes the zero limit and explicitly converts the open half-line integral. -/
theorem integral_deriv_Ici_eq_neg {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0)) {t : ℝ} (ht : 0 ≤ t) :
    (∫ u in Ici t, deriv f u) = -f t := by
  have h := integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun u (_hu : u ∈ Ici t) => (hd u).hasDerivAt)
    (hi.mono_set (fun _ hu => ht.trans hu.le)) hz
  rw [← integral_Ici_eq_integral_Ioi] at h
  simpa using h

/-- The numerator of the tail/source ratio derivative is an exact convergent integral. -/
theorem integralTail_logSlope_identity {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0)) {t : ℝ} (ht : 0 ≤ t) :
    f t ^ 2 + integralTail f t * deriv f t =
      (∫ u in Ici t, (deriv f t * f u - f t * deriv f u)) := by
  have hf := hi.mono_set (Ici_subset_Ici.mpr ht)
  have hdf := hdi.mono_set (Ici_subset_Ici.mpr ht)
  rw [integral_sub (hf.const_mul _) (hdf.const_mul _), integral_const_mul,
    integral_const_mul, integral_deriv_Ici_eq_neg hd hdi hz ht]
  unfold integralTail
  ring

/-- The source cross-product sign makes the exact numerator integral nonnegative. -/
theorem integralTail_logSlope_nonnegative {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ)))
    {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ f t ^ 2 + integralTail f t * deriv f t := by
  rw [integralTail_logSlope_identity hd hi hdi hz ht]
  exact setIntegral_nonneg measurableSet_Ici fun u hu =>
    logSlope_cross_nonnegative hp ha ht hu

/-- The tail/source quotient derivative carries its actual source derivative and denominator. -/
theorem hasDerivAt_integralTail_ratio {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ))) {t : ℝ} (hf : f t ≠ 0) :
    HasDerivAt (fun u => integralTail f u / f u)
      (-(f t ^ 2 + integralTail f t * deriv f t) / f t ^ 2) t := by
  convert! (hasDerivAt_integralTail hd.continuous hi t).div (hd t).hasDerivAt hf using 1
  ring

/-- A positive source with antitone log-slope has an antitone first-tail/source ratio. -/
theorem integralTail_ratio_antitone {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ))) :
    AntitoneOn (fun u => integralTail f u / f u) (Ici (0 : ℝ)) := by
  have hderiv (t : ℝ) (ht : 0 ≤ t) := hasDerivAt_integralTail_ratio hd hi (hp t ht).ne'
  apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
  · intro t ht
    exact (hderiv t ht).continuousAt.continuousWithinAt
  · intro t ht
    exact (hderiv t (interior_subset ht)).differentiableAt.differentiableWithinAt
  · intro t ht
    rw [(hderiv t (interior_subset ht)).deriv]
    exact div_nonpos_of_nonpos_of_nonneg
      (neg_nonpos.mpr (integralTail_logSlope_nonnegative hd hi hdi hz hp ha (interior_subset ht)))
      (sq_nonneg _)

/-- One literal upper-tail integration preserves antitonicity of the log-slope. -/
theorem integralTail_logSlope_antitone {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ))) :
    AntitoneOn (fun u => deriv (integralTail f) u / integralTail f u) (Ici (0 : ℝ)) := by
  intro t ht u hu htu
  dsimp only
  rw [(hasDerivAt_integralTail hd.continuous hi u).deriv,
    (hasDerivAt_integralTail hd.continuous hi t).deriv]
  have h := (div_le_div_iff₀ (hp u hu) (hp t ht)).mp
    (integralTail_ratio_antitone hd hi hdi hz hp ha ht hu htu)
  apply (div_le_div_iff₀ (integralTail_positive hi hp hu)
    (integralTail_positive hi hp ht)).mpr
  nlinarith only [h]

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
