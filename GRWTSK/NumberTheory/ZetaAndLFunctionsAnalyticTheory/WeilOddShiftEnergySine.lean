/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.

Independent analytical review: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddContinuousPlancherel
import Mathlib.Tactic

/-!
# The original physical shift energy as a continuous odd sine integral

Consumer: the original \`gammaCorrectionDensity\` in
\`DirichletStageChain.PrimitiveStageLower\`, first at q = 3, j = 0.

The real whole-line test, antilinear-first \`correlation\`, genuine L2
\`energy\`, original character/parity and physical \`parityKernel\` are
unchanged. The angular Fourier variable is \`ξ = 2 * pi * u\`, because
Mathlib's inverse Fourier integral uses a 2*pi character.

The first identity expands the true translated squared norm without
depending on the currently failing three-slice/gamma-tail import closure.
The second proves integrability of the sine square as well as the cosine
product, so linearity of the integrals is legitimate. The last theorem
returns pointwise to the original, untruncated physical gamma density.

The pointwise density identity supplies the inner integral for the
full gamma interchange in WeilOddGammaSineReturn.

Lean v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Source references: WeilOddContinuousPlancherel; WeilGammaThreeBandFloor
(original physical expansion, whose separate imported closure FAILED);
Connes--Consani--Moscovici, Zeta Spectral Triples (2025), (3.19)--(3.20).
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set FourierTransform
open scoped BigOperators ComplexConjugate InnerProductSpace

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddShiftEnergySine

open SourcePrimeCorrelation OddContinuousSine DirichletStageChain OddRootProjection
open GRWTSK.Analysis.RealAnalysis.Integration.IntegralFourierInvMulEq.Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.FourierL1L2BridgeScratch

/-- The original translated whole-line energy, with no change of form,
support, conjugation or Fourier convention. -/
theorem physical_shiftEnergy_eq_two_energy_sub_two_re_correlation
    {g : ℝ → ℂ} (hg : MemLp g 2 volume) (r : ℝ) :
    energy (fun t => g (t + r) - g t) =
      2 * energy g - 2 * (correlation g r).re := by
  have hsq : Integrable (fun t : ℝ => ‖g t‖ ^ 2) volume :=
    hg.integrable_norm_pow (p := 2) (by norm_num)
  have hshift : Integrable (fun t : ℝ => ‖g (t + r)‖ ^ 2) volume :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hsq
  have hc : Integrable (fun t : ℝ => conj (g t) * g (t + r)) volume :=
    integrable_correlation_integrand hg r
  have hreal : Integrable
      (fun t : ℝ => (conj (g t) * g (t + r)).re) volume := hc.re
  have hpoint (t : ℝ) :
      ‖g (t + r) - g t‖ ^ 2 =
        ‖g (t + r)‖ ^ 2 + ‖g t‖ ^ 2 -
          2 * (conj (g t) * g (t + r)).re := by
    calc
      _ = Complex.normSq (g (t + r) - g t) :=
        (Complex.normSq_eq_norm_sq _).symm
      _ = Complex.normSq (g (t + r)) + Complex.normSq (g t) -
          2 * (g (t + r) * conj (g t)).re :=
            Complex.normSq_sub _ _
      _ = _ := by
        rw [Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq,
          mul_comm (g (t + r)) (conj (g t))]
  calc
    energy (fun t => g (t + r) - g t) =
        ∫ t : ℝ, (‖g (t + r)‖ ^ 2 + ‖g t‖ ^ 2 -
          2 * (conj (g t) * g (t + r)).re) := by
          unfold energy
          exact integral_congr_ae (Filter.Eventually.of_forall hpoint)
    _ = (∫ t : ℝ, ‖g (t + r)‖ ^ 2) +
          (∫ t : ℝ, ‖g t‖ ^ 2) -
          2 * (∫ t : ℝ, (conj (g t) * g (t + r)).re) := by
          have hi := integral_sub (hshift.add hsq) (hreal.const_mul 2)
          simpa only [Pi.add_apply, integral_add hshift hsq, integral_const_mul] using hi
    _ = 2 * energy g - 2 * (correlation g r).re := by
          have hre := integral_re hc
          simp only [RCLike.re_to_complex] at hre
          rw [integral_add_right_eq_self
            (fun t : ℝ => ‖g t‖ ^ 2) r, hre]
          unfold energy correlation
          ring

private theorem halfSineMoment_neg_local (T : ℝ) (f : ℝ → ℝ) (ξ : ℝ) :
    halfSineMoment T f (-ξ) = -halfSineMoment T f ξ := by
  simp only [halfSineMoment, neg_mul, Real.sin_neg, mul_neg, intervalIntegral.integral_neg]

/-- Reestablish the exact inverse-Fourier density in this independent source
slice; the similarly named helper in WeilOddContinuousPlancherel is private. -/
private theorem inverseFourier_norm_sq_local {T : ℝ} (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : Continuous f) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) (u : ℝ) :
    ‖𝓕⁻ (fun t => (f t : ℂ)) u‖ ^ 2 =
      4 * halfSineMoment T f (2 * Real.pi * u) ^ 2 := by
  rw [Real.fourierInv_eq', ← neg_neg (2 * Real.pi * u)]
  have hphase (t : ℝ) :
      Complex.exp ((↑(2 * Real.pi * ⟪t, u⟫_ℝ) : ℂ) * Complex.I) • (f t : ℂ) =
        (f t : ℂ) * Complex.exp (-Complex.I * ((-(2 * Real.pi * u) * t : ℝ) : ℂ)) := by
    rw [smul_eq_mul, mul_comm, Real.inner_apply]
    congr 2
    push_cast
    ring
  simp_rw [hphase, angularFourier_norm_sq_eq hT hf hodd hsupport,
    halfSineMoment_neg_local, neg_sq]

/-- An actual integrability supplier for linearity in the original
continuous Plancherel formulas; no totalized non-integrable integral. -/
theorem halfSineMoment_sq_integrable
    {T : ℝ} (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : Continuous f) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hf2 : MemLp (fun t => (f t : ℂ)) 2) :
    Integrable (fun ξ : ℝ => halfSineMoment T f ξ ^ 2) := by
  let g : ℝ → ℂ := fun t => (f t : ℂ)
  let k : ℝ → ℝ := fun ξ => halfSineMoment T f ξ ^ 2
  have hg : Continuous g := Complex.continuous_ofReal.comp hf
  have hc : HasCompactSupport g := by
    apply HasCompactSupport.of_support_subset_isCompact
      (isCompact_Icc (a := -T) (b := T))
    intro t ht
    by_contra hn
    exact ht (by simp [g, hsupport t hn])
  have hg1 : Integrable g := hg.integrable_of_hasCompactSupport hc
  have hprod :
      Integrable (fun u => conj ((𝓕⁻ g) u) * (𝓕⁻ g) u) := by
    have hi := L2.integrable_inner (𝕜 := ℂ) (𝓕⁻ (hf2.toLp g)) (𝓕⁻ (hf2.toLp g))
    apply hi.congr
    filter_upwards [fourierInv_toLp_ae g hg1 hf2] with u hu
    rw [hu, RCLike.inner_apply']
  have hkernel (u : ℝ) :
      (conj ((𝓕⁻ g) u) * (𝓕⁻ g) u).re =
        4 * k (2 * Real.pi * u) := by
    dsimp [k]
    rw [Complex.conj_mul', ← Complex.ofReal_pow, Complex.ofReal_re]
    exact inverseFourier_norm_sq_local hT hf hodd hsupport u
  have hpi : 0 < 2 * Real.pi := by positivity
  change Integrable k
  apply (integrable_comp_mul_left_iff k hpi.ne').mp
  apply ((RCLike.reCLM (K := ℂ)).integrable_comp hprod |>.const_mul (1 / 4)).congr
  exact Filter.Eventually.of_forall (fun u => by
    change 1 / 4 * (conj ((𝓕⁻ g) u) * (𝓕⁻ g) u).re =
      k (2 * Real.pi * u)
    rw [hkernel]
    ring)

/-- A bounded cosine factor preserves the integrability of a real density. -/
theorem integrable_cosine_mul {k : ℝ → ℝ} (hk : Integrable k) (r : ℝ) :
    Integrable (fun ξ : ℝ => Real.cos (r * ξ) * k ξ) := by
  have hc : Continuous (fun ξ : ℝ => Real.cos (r * ξ)) := by fun_prop
  refine hk.mono (hc.aestronglyMeasurable.mul hk.aestronglyMeasurable) ?_
  exact Filter.Eventually.of_forall (fun ξ => by
    rw [norm_mul, Real.norm_eq_abs (Real.cos (r * ξ))]
    exact mul_le_of_le_one_left (norm_nonneg _) (Real.abs_cos_le_one _))

/-- Original shift energy on the entire real odd supported L2 class,
with the true angular-frequency factor 8/pi and valid integral linearity. -/
theorem shiftEnergy_eq_halfSine_integral
    {T : ℝ} (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : Continuous f) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hf2 : MemLp (fun t => (f t : ℂ)) 2) (r : ℝ) :
    energy (fun t => (f (t + r) : ℂ) - (f t : ℂ)) =
      (8 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
        (1 - Real.cos (r * ξ)) * halfSineMoment T f ξ ^ 2 := by
  let k : ℝ → ℝ := fun ξ => halfSineMoment T f ξ ^ 2
  have hk : Integrable k :=
    halfSineMoment_sq_integrable hT hf hodd hsupport hf2
  have hcos := integrable_cosine_mul hk r
  have hE : energy (fun t => (f t : ℂ)) =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ), k ξ := by
    simpa only [k] using
      energy_eq_sine_integral hT hf hodd hsupport hf2
  have hC : (correlation (fun t => (f t : ℂ)) r).re =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
        Real.cos (r * ξ) * k ξ := by
    simpa only [k] using
      correlation_re_eq_sine_integral hT hf hodd hsupport hf2 r
  have hsub :
      (∫ ξ in Ioi (0 : ℝ), k ξ) -
        (∫ ξ in Ioi (0 : ℝ), Real.cos (r * ξ) * k ξ) =
      ∫ ξ in Ioi (0 : ℝ), (1 - Real.cos (r * ξ)) * k ξ := by
    rw [← integral_sub hk.integrableOn hcos.integrableOn]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro ξ _
    ring
  calc
    energy (fun t => (f (t + r) : ℂ) - (f t : ℂ)) =
        2 * energy (fun t => (f t : ℂ)) -
          2 * (correlation (fun t => (f t : ℂ)) r).re :=
      physical_shiftEnergy_eq_two_energy_sub_two_re_correlation hf2 r
    _ = 2 * ((4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ), k ξ) -
        2 * ((4 / Real.pi) *
          ∫ ξ in Ioi (0 : ℝ), Real.cos (r * ξ) * k ξ) := by
      rw [hE, hC]
    _ = (8 / Real.pi) *
        ((∫ ξ in Ioi (0 : ℝ), k ξ) -
          (∫ ξ in Ioi (0 : ℝ), Real.cos (r * ξ) * k ξ)) := by ring
    _ = (8 / Real.pi) *
        (∫ ξ in Ioi (0 : ℝ), (1 - Real.cos (r * ξ)) * k ξ) := by
      rw [hsub]
    _ = _ := rfl

/-- Apply the identical sine identity to the repository's ACTUAL
\`DirichletStageChain.Admissible\`, rather than a replacement test class. -/
theorem shiftEnergy_eq_halfSine_of_admissible
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (r : ℝ) :
    energy (fun t => liftReal f (t + r) - liftReal f t) =
      (8 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
        (1 - Real.cos (r * ξ)) * halfSineMoment T f ξ ^ 2 := by
  rcases hf with ⟨hT, hdiff, _, hodd, hLp, hs, _⟩
  have hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0 := fun t ht =>
    Complex.ofReal_eq_zero.mp (hs t ht)
  simpa only [liftReal] using
    shiftEnergy_eq_halfSine_integral hT.le hdiff.continuous hodd hsupport hLp r

/-- Exact pointwise return to the physical, parity-dependent source
\`gammaCorrectionDensity\`. The nonnegative two-variable Tonelli
interchange remains a separate proof obligation. -/
theorem gammaCorrectionDensity_eq_halfSine_of_admissible
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (r : ℝ) :
    gammaCorrectionDensity (gammaParity χ) (liftReal f) r =
      parityKernel (gammaParity χ) r *
        ((8 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
          (1 - Real.cos (r * ξ)) * halfSineMoment T f ξ ^ 2) := by
  unfold gammaCorrectionDensity
  rw [shiftEnergy_eq_halfSine_of_admissible χ hf r]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddShiftEnergySine
