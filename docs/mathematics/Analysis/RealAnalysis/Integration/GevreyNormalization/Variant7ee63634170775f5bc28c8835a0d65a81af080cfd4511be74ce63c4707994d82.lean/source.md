# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.GevreyNormalization.Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e501350caf156b468233ad7ec8bed00798e7f437` · SHA-256 `7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.GevreyProfile
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-!
# Normalization of a separate compactly supported C² profile

These results construct analytic infrastructure for a replacement profile without changing the
polynomial source family. The assumptions are ordinary C² regularity and compact support;
integrability, the integration-by-parts identity and the normalization formula are conclusions.
No Gevrey derivative-growth estimate, signed arithmetic estimate or comparison theorem is asserted.
-/

namespace FormalResearch.RiemannHypothesis.GevreyNormalization

open MeasureTheory Function Filter
open scoped Topology

/-- The prescribed L²-normalized dilation, for a separately supplied real profile. -/
noncomputable def scaledProfile (h : ℝ → ℝ) (A x : ℝ) : ℝ :=
  h (x / A) / Real.sqrt A

/-- The prescribed differential operator applied to the dilated profile. -/
noncomputable def dilationOperator (h : ℝ → ℝ) (A x : ℝ) : ℝ :=
  deriv (deriv (scaledProfile h A)) x - scaledProfile h A x / 4

/-- The squared norm that belongs to this profile, rather than the polynomial source. -/
noncomputable def normalization (h : ℝ → ℝ) (A : ℝ) : ℝ :=
  ∫ x : ℝ, (dilationOperator h A x) ^ 2

private theorem integrable_square {h : ℝ → ℝ} (hc : Continuous h)
    (hs : HasCompactSupport h) : Integrable (fun x ↦ (h x) ^ 2) := by
  apply (hc.pow 2).integrable_of_hasCompactSupport
  convert hs.mul_right (f' := h) using 1 <;> first | rfl | (funext x; exact pow_two (h x))

private theorem continuous_second {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h) :
    Continuous (deriv (deriv h)) := by
  have hc' : ContDiff ℝ 1 (deriv h) := hc.deriv'
  exact hc'.continuous_deriv_one

/-- Compact support and C² regularity imply the mixed integration-by-parts identity. -/
theorem integral_second_mul_profile {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) :
    (∫ x : ℝ, deriv (deriv h) x * h x) = -∫ x : ℝ, (deriv h x) ^ 2 := by
  have hc' : Continuous (deriv h) := hc.continuous_deriv (by norm_num)
  have hc'' : Continuous (deriv (deriv h)) := continuous_second hc
  have hprod : Integrable (h * deriv (deriv h)) :=
    (hc.continuous.mul hc'').integrable_of_hasCompactSupport (hs.mul_right)
  have hsquare : Integrable (deriv h * deriv h) :=
    (hc'.mul hc').integrable_of_hasCompactSupport (hs.deriv.mul_right)
  have hmixed : Integrable (h * deriv h) :=
    (hc.continuous.mul hc').integrable_of_hasCompactSupport (hs.mul_right)
  have hi := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := h) (u' := deriv h) (v := deriv h) (v' := deriv (deriv h))
    (fun x _ ↦ (hc.differentiable (by norm_num) x).hasDerivAt)
    (fun x _ ↦ (hc.differentiable_deriv_two x).hasDerivAt)
    hprod hsquare hmixed
  simpa only [pow_two, mul_comm] using hi

/-- The first derivative retains the actual scale factor. -/
theorem deriv_scaledProfile {h : ℝ → ℝ} (hc : Differentiable ℝ h)
    (A x : ℝ) :
    deriv (scaledProfile h A) x = deriv h (x / A) / (A * Real.sqrt A) := by
  have hd := ((hc (x / A)).hasDerivAt.comp x ((hasDerivAt_id x).div_const A)).div_const
    (Real.sqrt A)
  change HasDerivAt (scaledProfile h A)
    (deriv h (x / A) * (1 / A) / Real.sqrt A) x at hd
  rw [hd.deriv]
  ring

/-- The second derivative retains both inverse scale factors. -/
theorem second_scaledProfile {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (A x : ℝ) :
    deriv (deriv (scaledProfile h A)) x =
      deriv (deriv h) (x / A) / (A ^ 2 * Real.sqrt A) := by
  have heq : deriv (scaledProfile h A) =
      fun y ↦ deriv h (y / A) / (A * Real.sqrt A) := by
    funext y
    exact deriv_scaledProfile (hc.differentiable (by norm_num)) A y
  rw [heq]
  have hd := ((hc.differentiable_deriv_two (x / A)).hasDerivAt.comp x
    ((hasDerivAt_id x).div_const A)).div_const (A * Real.sqrt A)
  change HasDerivAt (fun y ↦ deriv h (y / A) / (A * Real.sqrt A))
    (deriv (deriv h) (x / A) * (1 / A) / (A * Real.sqrt A)) x at hd
  rw [hd.deriv]
  ring

/-- Explicit operator formula for every positive scale. -/
theorem dilationOperator_eq {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h) (A x : ℝ) :
    dilationOperator h A x =
      (deriv (deriv h) (x / A) / A ^ 2 - h (x / A) / 4) / Real.sqrt A := by
  rw [dilationOperator, second_scaledProfile hc, scaledProfile]
  ring


/-- The real-power form of the dilation uses exactly the source's amplitude A^(-1/2). -/
theorem scaledProfile_eq_rpow (h : ℝ → ℝ) {A : ℝ} (hA : 0 < A) (x : ℝ) :
    scaledProfile h A x = A ^ (-(1 / 2 : ℝ)) * h (x / A) := by
  rw [scaledProfile, Real.rpow_neg hA.le, ← Real.sqrt_eq_rpow]
  ring

/-- The first derivative has amplitude A^(-3/2), rather than the profile's A^(-1/2). -/
theorem deriv_scaledProfile_eq_rpow {h : ℝ → ℝ} (hc : Differentiable ℝ h)
    {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (scaledProfile h A) x = A ^ (-(3 / 2 : ℝ)) * deriv h (x / A) := by
  have hr : A ^ (3 / 2 : ℝ) = A * Real.sqrt A := by
    rw [show (3 / 2 : ℝ) = 1 + 1 / 2 by norm_num, Real.rpow_add hA,
      Real.rpow_one, ← Real.sqrt_eq_rpow]
  rw [deriv_scaledProfile hc, Real.rpow_neg hA.le, hr]
  ring

/-- The second derivative has amplitude A^(-5/2). -/
theorem second_scaledProfile_eq_rpow {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (deriv (scaledProfile h A)) x =
      A ^ (-(5 / 2 : ℝ)) * deriv (deriv h) (x / A) := by
  have hr : A ^ (5 / 2 : ℝ) = A ^ 2 * Real.sqrt A := by
    rw [show (5 / 2 : ℝ) = 2 + 1 / 2 by norm_num, Real.rpow_add hA,
      Real.rpow_two, ← Real.sqrt_eq_rpow]
  rw [second_scaledProfile hc, Real.rpow_neg hA.le, hr]
  ring

/-- The two terms of the differential operator have genuinely different amplitudes. -/
theorem dilationOperator_eq_rpow {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    {A : ℝ} (hA : 0 < A) (x : ℝ) :
    dilationOperator h A x =
      A ^ (-(5 / 2 : ℝ)) * deriv (deriv h) (x / A) -
      (1 / 4) * A ^ (-(1 / 2 : ℝ)) * h (x / A) := by
  rw [dilationOperator, second_scaledProfile_eq_rpow hc hA,
    scaledProfile_eq_rpow h hA]
  ring

/-- The three unsmoothed square energies are finite from the structural hypotheses. -/
theorem profile_square_integrable {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) :
    Integrable (fun x ↦ (h x) ^ 2) ∧
    Integrable (fun x ↦ (deriv h x) ^ 2) ∧
    Integrable (fun x ↦ (deriv (deriv h) x) ^ 2) :=
  ⟨integrable_square hc.continuous hs,
    integrable_square (hc.continuous_deriv (by norm_num)) hs.deriv,
    integrable_square (continuous_second hc) hs.deriv.deriv⟩

private theorem base_square_integrable {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) (A : ℝ) :
    Integrable (fun x ↦ (deriv (deriv h) x / A ^ 2 - h x / 4) ^ 2) := by
  obtain ⟨h0, _, h2⟩ := profile_square_integrable hc hs
  have hm : Integrable (fun x ↦ deriv (deriv h) x * h x) :=
    ((continuous_second hc).mul hc.continuous).integrable_of_hasCompactSupport
      (hs.deriv.deriv.mul_right)
  convert ((h2.div_const (A ^ 4)).sub (hm.div_const (2 * A ^ 2))).add
    (h0.div_const 16) using 1 <;> first | rfl |
    (funext x; simp only [Pi.add_apply, Pi.sub_apply]; ring)

/-- The squared differential operator is genuinely integrable at every positive scale. -/
theorem dilationOperator_square_integrable {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ (dilationOperator h A x) ^ 2) := by
  have hi := (base_square_integrable hc hs A).comp_mul_right' (inv_ne_zero hA.ne')
  have hi' : Integrable (fun x ↦
      (deriv (deriv h) (x / A) / A ^ 2 - h (x / A) / 4) ^ 2 / A) := by
    simpa only [div_eq_mul_inv] using hi.div_const A
  convert hi' using 1
  ext x
  rw [dilationOperator_eq hc, div_pow, Real.sq_sqrt hA.le]

/-- The operator itself is integrable, again as a conclusion of compact support and C². -/
theorem dilationOperator_integrable {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    Integrable (dilationOperator h A) := by
  have hi : Integrable (fun x ↦ deriv (deriv h) x / A ^ 2 - h x / 4) :=
    (((continuous_second hc).integrable_of_hasCompactSupport hs.deriv.deriv).div_const
      (A ^ 2)).sub ((hc.continuous.integrable_of_hasCompactSupport hs).div_const 4)
  have hi' := (hi.comp_mul_right' (inv_ne_zero hA.ne')).div_const (Real.sqrt A)
  convert hi' using 1
  ext x
  rw [dilationOperator_eq hc]
  rfl

/-- The exact mixed-term expansion before integration by parts changes its sign. -/
theorem normalization_expanded {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    normalization h A =
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) -
      (2 * A ^ 2)⁻¹ * (∫ x : ℝ, deriv (deriv h) x * h x) +
      (1 / 16) * (∫ x : ℝ, (h x) ^ 2) := by
  obtain ⟨h0, _, h2⟩ := profile_square_integrable hc hs
  have hm : Integrable (fun x ↦ deriv (deriv h) x * h x) :=
    ((continuous_second hc).mul hc.continuous).integrable_of_hasCompactSupport
      (hs.deriv.deriv.mul_right)
  have hscale : normalization h A =
      ∫ x : ℝ, (deriv (deriv h) x / A ^ 2 - h x / 4) ^ 2 := by
    unfold normalization
    simp_rw [dilationOperator_eq hc, div_pow, Real.sq_sqrt hA.le]
    rw [integral_div, Measure.integral_comp_div
      (fun y : ℝ ↦ (deriv (deriv h) y / A ^ 2 - h y / 4) ^ 2) A]
    simp [abs_of_pos hA, smul_eq_mul, hA.ne']
  rw [hscale]
  have hexpand : (fun x : ℝ ↦ (deriv (deriv h) x / A ^ 2 - h x / 4) ^ 2) =
      fun x ↦ (deriv (deriv h) x) ^ 2 / A ^ 4 -
        (deriv (deriv h) x * h x) / (2 * A ^ 2) + (h x) ^ 2 / 16 := by
    funext x
    ring
  rw [hexpand]
  rw [integral_add
    (f := fun x : ℝ ↦ (deriv (deriv h) x) ^ 2 / A ^ 4 -
      (deriv (deriv h) x * h x) / (2 * A ^ 2))
    (g := fun x : ℝ ↦ (h x) ^ 2 / 16)
    ((h2.div_const _).sub (hm.div_const _)) (h0.div_const _)]
  rw [integral_sub (f := fun x : ℝ ↦ (deriv (deriv h) x) ^ 2 / A ^ 4)
    (g := fun x : ℝ ↦ (deriv (deriv h) x * h x) / (2 * A ^ 2))
    (h2.div_const _) (hm.div_const _)]
  simp_rw [integral_div]
  ring

/-- Exact normalization of the separate family, with no assumed integration-by-parts premise. -/
theorem normalization_eq {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    normalization h A =
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) +
      (2 * A ^ 2)⁻¹ * (∫ x : ℝ, (deriv h x) ^ 2) +
      (1 / 16) * (∫ x : ℝ, (h x) ^ 2) := by
  rw [normalization_expanded hc hs hA, integral_second_mul_profile hc hs]
  ring

/-- At large positive scales the normalization tends to the profile's non-derivative energy. -/
theorem tendsto_normalization {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) :
    Tendsto (normalization h) atTop (𝓝 ((1 / 16) * (∫ x : ℝ, (h x) ^ 2))) := by
  have h4 : Tendsto (fun A : ℝ ↦ (A ^ 4)⁻¹) atTop (𝓝 0) :=
    (tendsto_pow_atTop (α := ℝ) (by decide : 4 ≠ 0)).inv_tendsto_atTop
  have h2 : Tendsto (fun A : ℝ ↦ (A ^ 2)⁻¹) atTop (𝓝 0) :=
    (tendsto_pow_atTop (α := ℝ) (by decide : 2 ≠ 0)).inv_tendsto_atTop
  have ht := ((h4.mul_const (∫ x : ℝ, (deriv (deriv h) x) ^ 2)).add
    ((h2.const_mul (1 / 2 : ℝ)).mul_const (∫ x : ℝ, (deriv h x) ^ 2))).add_const
    ((1 / 16) * (∫ x : ℝ, (h x) ^ 2))
  have ht' : Tendsto (fun A : ℝ ↦
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) +
      ((1 / 2) * (A ^ 2)⁻¹) * (∫ x : ℝ, (deriv h x) ^ 2) +
      (1 / 16) * (∫ x : ℝ, (h x) ^ 2)) atTop
      (𝓝 ((1 / 16) * (∫ x : ℝ, (h x) ^ 2))) := by
    simpa only [zero_mul, mul_zero, zero_add] using ht
  refine ht'.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  rw [normalization_eq hc hs hA]
  ring

/-- The normalization has a lower bound independent of the positive scale. -/
theorem normalization_uniform_lower_bound {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    (1 / 16) * (∫ x : ℝ, (h x) ^ 2) ≤ normalization h A := by
  rw [normalization_eq hc hs hA]
  have h0 : 0 ≤ (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) :=
    mul_nonneg (by positivity) (integral_nonneg (fun _ ↦ sq_nonneg _))
  have h1 : 0 ≤ (2 * A ^ 2)⁻¹ * (∫ x : ℝ, (deriv h x) ^ 2) :=
    mul_nonneg (by positivity) (integral_nonneg (fun _ ↦ sq_nonneg _))
  linarith

/-- Every nonzero C² compactly supported profile has positive normalization at every scale. -/
theorem normalization_pos {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) (hn : ∃ x, h x ≠ 0) {A : ℝ} (hA : 0 < A) :
    0 < normalization h A := by
  obtain ⟨x, hx⟩ := hn
  have hsupport : HasCompactSupport (fun y ↦ (h y) ^ 2) := by
    convert hs.mul_right (f' := h) using 1 <;> first | rfl | (funext y; exact pow_two (h y))
  have hpos : 0 < ∫ y : ℝ, (h y) ^ 2 :=
    (hc.continuous.pow 2).integral_pos_of_hasCompactSupport_nonneg_nonzero
      hsupport (fun y ↦ sq_nonneg (h y)) (pow_ne_zero 2 hx)
  have hlower := normalization_uniform_lower_bound hc hs hA
  linarith


/-- The nonzero profile supplies one strictly positive bound for all positive real scales. -/
theorem normalization_uniform_positive_lower_bound {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) (hn : ∃ x, h x ≠ 0) :
    ∃ z : ℝ, 0 < z ∧ ∀ A : ℝ, 0 < A → z ≤ normalization h A := by
  obtain ⟨x, hx⟩ := hn
  have hsupport : HasCompactSupport (fun y ↦ (h y) ^ 2) := by
    convert hs.mul_right (f' := h) using 1 <;> first | rfl | (funext y; exact pow_two (h y))
  have hpos : 0 < ∫ y : ℝ, (h y) ^ 2 :=
    (hc.continuous.pow 2).integral_pos_of_hasCompactSupport_nonneg_nonzero
      hsupport (fun y ↦ sq_nonneg (h y)) (pow_ne_zero 2 hx)
  refine ⟨(1 / 16) * (∫ y : ℝ, (h y) ^ 2), by positivity, ?_⟩
  exact fun _ hA ↦ normalization_uniform_lower_bound hc hs hA

/-- The separate family's unit-normalized differential operator. -/
noncomputable def normalizedOperator (h : ℝ → ℝ) (A x : ℝ) : ℝ :=
  dilationOperator h A x / Real.sqrt (normalization h A)

/-- Normalization gives an actual unit squared norm for every positive real scale. -/
theorem normalizedOperator_square_integral {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) (hn : ∃ x, h x ≠ 0) {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, (normalizedOperator h A x) ^ 2) = 1 := by
  have hz := normalization_pos hc hs hn hA
  simp_rw [normalizedOperator, div_pow, Real.sq_sqrt hz.le]
  rw [integral_div]
  exact div_self hz.ne'

/-- The unit-normalized operator and its square are integrable. -/
theorem normalizedOperator_integrable {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    Integrable (normalizedOperator h A) ∧
      Integrable (fun x ↦ (normalizedOperator h A x) ^ 2) := by
  refine ⟨(dilationOperator_integrable hc hs hA).div_const _, ?_⟩
  simp_rw [normalizedOperator, div_pow]
  exact (dilationOperator_square_integrable hc hs hA).div_const _

/-- Exact normalization for the concrete corrected s = 3/2, λ = 1 profile. -/
theorem profile_normalization {A : ℝ} (hA : 0 < A) :
    normalization GevreyProfile.profile A =
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv GevreyProfile.profile) x) ^ 2) +
      (2 * A ^ 2)⁻¹ * (∫ x : ℝ, (deriv GevreyProfile.profile x) ^ 2) +
      (1 / 16) * (∫ x : ℝ, (GevreyProfile.profile x) ^ 2) :=
  normalization_eq GevreyProfile.profile_contDiff GevreyProfile.profile_hasCompactSupport hA

/-- The concrete corrected profile has the displayed scale-independent lower bound. -/
theorem profile_normalization_lower_bound {A : ℝ} (hA : 0 < A) :
    (1 / 16) * (∫ x : ℝ, (GevreyProfile.profile x) ^ 2) ≤
      normalization GevreyProfile.profile A :=
  normalization_uniform_lower_bound GevreyProfile.profile_contDiff
    GevreyProfile.profile_hasCompactSupport hA

/-- The concrete corrected profile's normalization is positive at every positive scale. -/
theorem profile_normalization_pos {A : ℝ} (hA : 0 < A) :
    0 < normalization GevreyProfile.profile A :=
  normalization_pos GevreyProfile.profile_contDiff GevreyProfile.profile_hasCompactSupport
    GevreyProfile.profile_nonzero hA

/-- One strictly positive constant works for all positive scales of the concrete profile. -/
theorem profile_normalization_uniform_positive_lower_bound :
    ∃ z : ℝ, 0 < z ∧ ∀ A : ℝ, 0 < A → z ≤ normalization GevreyProfile.profile A :=
  normalization_uniform_positive_lower_bound GevreyProfile.profile_contDiff
    GevreyProfile.profile_hasCompactSupport GevreyProfile.profile_nonzero

/-- The concrete corrected profile's normalized differential operator has unit squared norm. -/
theorem profile_normalizedOperator_square_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, (normalizedOperator GevreyProfile.profile A x) ^ 2) = 1 :=
  normalizedOperator_square_integral GevreyProfile.profile_contDiff
    GevreyProfile.profile_hasCompactSupport GevreyProfile.profile_nonzero hA

/-- The exact mixed-term normalization for the concrete corrected profile. -/
theorem profile_normalization_expanded {A : ℝ} (hA : 0 < A) :
    normalization GevreyProfile.profile A =
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv GevreyProfile.profile) x) ^ 2) -
      (2 * A ^ 2)⁻¹ * (∫ x : ℝ,
        deriv (deriv GevreyProfile.profile) x * GevreyProfile.profile x) +
      (1 / 16) * (∫ x : ℝ, (GevreyProfile.profile x) ^ 2) :=
  normalization_expanded GevreyProfile.profile_contDiff
    GevreyProfile.profile_hasCompactSupport hA

/-- The corrected concrete profile's exact normalization has the stated large-scale limit. -/
theorem tendsto_profile_normalization :
    Tendsto (normalization GevreyProfile.profile) atTop
      (𝓝 ((1 / 16) * (∫ x : ℝ, (GevreyProfile.profile x) ^ 2))) :=
  tendsto_normalization GevreyProfile.profile_contDiff GevreyProfile.profile_hasCompactSupport

end FormalResearch.RiemannHypothesis.GevreyNormalization
```
