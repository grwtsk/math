/-
Source: OpenAI math repository (project authors: OpenAI), Apache-2.0.
Exact upstream commit: 1581d4cbdd69a0faf34b2089614fe2a814316a6a.
Path: lean/OAI/NumberTheory/DirichletL/ContinuationInversion.lean.
Raw SHA-256: 166139695fcd8753df43d21f7e0b3a5a0ffc774bd75d0535fb4d0b33757170d8.
The first two declarations preserve the upstream statements and proof bodies.
The log-profile change of variables also appears in Mathlib Mellin inversion:
Copyright (c) 2024 Lawrence Wu, Apache-2.0.
The imported Fourier Gaussian formula is due to Sébastien Gouëzel (Mathlib,
Copyright (c) 2022, Apache-2.0); Mellin transforms retain David Loeffler's credit.
Gaussian consumer: mathematical direction grwtsk contributors;
formal implementation assistance OpenAI Codex. Released under Apache-2.0.
-/
import Mathlib.Analysis.MellinInversion

namespace GRWTSK.Analysis.MellinTransform.ReverseInversion
noncomputable section
open MeasureTheory Set Filter Asymptotics
open scoped Topology FourierTransform

theorem integrable_logProfile {f : ℝ → ℂ} {σ : ℝ}
    (hf : MellinConvergent f (σ : ℂ)) :
    Integrable (fun u : ℝ => Real.exp (-σ * u) • f (Real.exp (-u))) := by
  have hder : ∀ x ∈ (univ : Set ℝ),
      HasDerivWithinAt (Real.exp ∘ Neg.neg) (-Real.exp (-x)) univ x :=
    fun x _ => mul_neg_one (Real.exp (-x)) ▸
      ((Real.hasDerivAt_exp (-x)).comp x (hasDerivAt_neg x)).hasDerivWithinAt
  have himage : Real.exp ∘ Neg.neg '' (univ : Set ℝ) = Ioi 0 := by
    rw [Set.image_comp, Set.image_univ_of_surjective neg_surjective,
      Set.image_univ, Real.range_exp]
  have hinj : univ.InjOn (Real.exp ∘ Neg.neg) :=
    Real.exp_injective.injOn.comp neg_injective.injOn (univ.mapsTo_univ _)
  rw [MellinConvergent, ← himage,
    integrableOn_image_iff_integrableOn_abs_deriv_smul MeasurableSet.univ hder hinj] at hf
  have heq (u : ℝ) :
      |-(Real.exp (-u))| • ((Real.exp (-u) : ℂ) ^ ((σ : ℂ) - 1) • f (Real.exp (-u))) =
        Real.exp (-σ * u) • f (Real.exp (-u)) := by
    rw [abs_neg, abs_of_pos (Real.exp_pos _)]
    change (Real.exp (-u) : ℂ) *
      ((Real.exp (-u) : ℂ) ^ ((σ : ℂ) - 1) * f (Real.exp (-u))) =
        (Real.exp (-σ * u) : ℂ) * f (Real.exp (-u))
    rw [← mul_assoc]
    congr 1
    rw [show (σ : ℂ) - 1 = ((σ - 1 : ℝ) : ℂ) by push_cast; rfl,
      ← Complex.ofReal_cpow (Real.exp_pos (-u)).le]
    norm_cast
    rw [Real.rpow_def_of_pos (Real.exp_pos (-u)), Real.log_exp, ← Real.exp_add]
    congr 1
    ring
  simpa only [Function.comp_apply, integrableOn_univ, heq] using hf

theorem mellin_mellinInv_eq (σ : ℝ) (F : ℂ → ℂ) (f : ℝ → ℂ)
    (hf : MellinConvergent f (σ : ℂ))
    (hF : Integrable (fun y : ℝ => F ((σ : ℂ) + 2 * Real.pi * y * Complex.I)))
    (hcont : Continuous (fun y : ℝ => F ((σ : ℂ) + 2 * Real.pi * y * Complex.I)))
    (hrep : ∀ x : ℝ, 0 < x → f x = mellinInv σ F x) (y : ℝ) :
    mellin f ((σ : ℂ) + 2 * Real.pi * y * Complex.I) =
      F ((σ : ℂ) + 2 * Real.pi * y * Complex.I) := by
  let A : ℝ → ℂ := fun y => F ((σ : ℂ) + 2 * Real.pi * y * Complex.I)
  let g : ℝ → ℂ := fun u => Real.exp (-σ * u) • f (Real.exp (-u))
  have hg : Integrable g := integrable_logProfile hf
  have hginv : g = 𝓕⁻ A := by
    funext u
    dsimp [g]
    rw [hrep _ (Real.exp_pos _), mellinInv_eq_fourierInv _ _ (Real.exp_pos _)]
    simp only [Real.log_exp, neg_neg]
    change (Real.exp (-σ * u) : ℂ) *
      ((Real.exp (-u) : ℂ) ^ (-(σ : ℂ)) * 𝓕⁻ A u) = 𝓕⁻ A u
    rw [← mul_assoc, ← Complex.ofReal_neg,
      ← Complex.ofReal_cpow (Real.exp_pos (-u)).le]
    have hc : Real.exp (-σ * u) * Real.exp (-u) ^ (-σ) = 1 := by
      rw [Real.rpow_def_of_pos (Real.exp_pos (-u)), Real.log_exp, ← Real.exp_add]
      rw [show -σ * u + -u * -σ = 0 by ring, Real.exp_zero]
    rw [← Complex.ofReal_mul, hc, Complex.ofReal_one, one_mul]
  have hfourier : Integrable (𝓕 A) := by
    have hn := hg.comp_neg
    rw [hginv] at hn
    simpa only [Real.fourierInv_eq_fourier_neg, neg_neg] using hn
  rw [mellin_eq_fourier]
  have hre : ((σ : ℂ) + 2 * Real.pi * y * Complex.I).re = σ := by simp
  have him : ((σ : ℂ) + 2 * Real.pi * y * Complex.I).im / (2 * Real.pi) = y := by
    simp
  rw [hre, him]
  change 𝓕 g y = A y
  rw [hginv]
  exact hF.fourier_fourierInv_eq hfourier hcont.continuousAt

/-- A nonzero logarithmic Gaussian on the positive half-line. -/
def logarithmicGaussian (x : ℝ) : ℂ :=
  Complex.exp (-(Real.pi : ℂ) * (Real.log x : ℂ) ^ 2)

/-- A complex expression whose restriction to the zero vertical line is Gaussian. -/
def gaussianMellin (s : ℂ) : ℂ :=
  Complex.exp (s ^ 2 / (4 * (Real.pi : ℂ)))

lemma gaussianMellin_on_line (y : ℝ) :
    gaussianMellin (2 * Real.pi * y * Complex.I) =
      Complex.exp (-(Real.pi : ℂ) * (y : ℂ) ^ 2) := by
  unfold gaussianMellin
  congr 1
  field_simp
  ring_nf
  simp [Complex.I_sq]

lemma logarithmicGaussian_profile (u : ℝ) :
    logarithmicGaussian (Real.exp (-u)) =
      Complex.exp (-(Real.pi : ℂ) * (u : ℂ) ^ 2) := by
  simp [logarithmicGaussian, Real.log_exp]

lemma logarithmicGaussian_convergent : MellinConvergent logarithmicGaussian 0 := by
  have hder : ∀ x ∈ (univ : Set ℝ),
      HasDerivWithinAt (Real.exp ∘ Neg.neg) (-Real.exp (-x)) univ x :=
    fun x _ => mul_neg_one (Real.exp (-x)) ▸
      ((Real.hasDerivAt_exp (-x)).comp x (hasDerivAt_neg x)).hasDerivWithinAt
  have himage : Real.exp ∘ Neg.neg '' (univ : Set ℝ) = Ioi 0 := by
    rw [Set.image_comp, Set.image_univ_of_surjective neg_surjective,
      Set.image_univ, Real.range_exp]
  have hinj : univ.InjOn (Real.exp ∘ Neg.neg) :=
    Real.exp_injective.injOn.comp neg_injective.injOn (univ.mapsTo_univ _)
  rw [MellinConvergent, ← himage,
    integrableOn_image_iff_integrableOn_abs_deriv_smul MeasurableSet.univ hder hinj]
  have heq (u : ℝ) :
      |-(Real.exp (-u))| • ((Real.exp (-u) : ℂ) ^ ((0 : ℂ) - 1) •
        logarithmicGaussian (Real.exp (-u))) =
      Complex.exp (-(Real.pi : ℂ) * (u : ℂ) ^ 2) := by
    rw [abs_neg, abs_of_pos (Real.exp_pos _), zero_sub, Complex.cpow_neg_one]
    change (Real.exp (-u) : ℂ) * ((Real.exp (-u) : ℂ)⁻¹ * _) = _
    rw [← mul_assoc, mul_inv_cancel₀ (Complex.ofReal_ne_zero.mpr (Real.exp_ne_zero _)),
      one_mul, logarithmicGaussian_profile]
  simpa only [Function.comp_apply, integrableOn_univ, heq] using
    (integrable_cexp_neg_mul_sq (b := (Real.pi : ℂ)) (by simpa using Real.pi_pos))

lemma gaussianMellin_line_integrable :
    Integrable (fun y : ℝ => gaussianMellin (2 * Real.pi * y * Complex.I)) := by
  simp_rw [gaussianMellin_on_line]
  exact integrable_cexp_neg_mul_sq (by simpa using Real.pi_pos)

lemma gaussianMellin_line_continuous :
    Continuous (fun y : ℝ => gaussianMellin (2 * Real.pi * y * Complex.I)) := by
  unfold gaussianMellin
  fun_prop

lemma logarithmicGaussian_inverse (x : ℝ) (hx : 0 < x) :
    logarithmicGaussian x = mellinInv 0 gaussianMellin x := by
  rw [mellinInv_eq_fourierInv _ _ hx]
  simp only [neg_zero, Complex.cpow_zero, one_smul, Complex.ofReal_zero, zero_add]
  simp_rw [gaussianMellin_on_line]
  rw [Real.fourierInv_eq_fourier_neg]
  have hg := congrFun (fourier_gaussian_pi (b := (1 : ℂ)) (by norm_num))
    (Real.log x)
  simpa [logarithmicGaussian] using hg.symm

/-- Reverse inversion is used with every input proved for a nonzero Gaussian. -/
theorem logarithmicGaussian_mellin (y : ℝ) :
    mellin logarithmicGaussian (2 * Real.pi * y * Complex.I) =
      gaussianMellin (2 * Real.pi * y * Complex.I) := by
  have h := mellin_mellinInv_eq 0 gaussianMellin logarithmicGaussian
    logarithmicGaussian_convergent (by simpa using gaussianMellin_line_integrable)
    (by simpa using gaussianMellin_line_continuous) logarithmicGaussian_inverse y
  simpa using h

lemma logarithmicGaussian_one : logarithmicGaussian 1 = 1 := by
  simp [logarithmicGaussian]

end
end GRWTSK.Analysis.MellinTransform.ReverseInversion
