/-
Logarithmic Gaussian Mellin transform via complete complex Gaussian integration.

Mathlib Gaussian integral/Fourier source:
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Authors: Sébastien Gouëzel
Mathlib Mellin inversion/change-of-variables source:
Copyright (c) 2024 Lawrence Wu. All rights reserved.
Authors: Lawrence Wu
Mathlib Mellin transform source:
Copyright (c) 2023 David Loeffler. All rights reserved.
Authors: David Loeffler
Released under Apache 2.0 license as described in Mathlib's LICENSE.
The adapted change-of-variables proof fragments and imported Gaussian APIs
retain these upstream notices and credit.

Imported ReverseInversion retains OpenAI project authorship, the exact upstream
commit/source binding, and the Apache-2.0 license. No upstream source closure
or arithmetic Dirichlet-series supplier is newly claimed here.
Mathematical direction: grwtsk contributors.
Formal implementation assistance: OpenAI Codex.
New composition and consumers released under Apache-2.0.
-/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.ReverseInversion

namespace GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.LogarithmicGaussian
noncomputable section
open MeasureTheory Set Filter
open scoped Topology

def logarithmicGaussianWith (b : ℂ) (x : ℝ) : ℂ :=
  Complex.exp (-b * (Real.log x : ℂ) ^ 2)

def gaussianMellinWith (b s : ℂ) : ℂ :=
  ((Real.pi : ℂ) / b) ^ (1 / 2 : ℂ) * Complex.exp (s ^ 2 / (4 * b))

private lemma exponential_mellin_kernel (u : ℝ) (s z : ℂ) :
    Real.exp (-u) • (Real.exp (-u) : ℂ) ^ (s - 1) • z =
      Complex.exp (-s * (u : ℂ)) • z := by
  change (Real.exp (-u) : ℂ) * ((Real.exp (-u) : ℂ) ^ (s - 1) * z) =
    Complex.exp (-s * (u : ℂ)) * z
  rw [← mul_assoc]
  congr 1
  conv_lhs => lhs; rw [← Complex.cpow_one (Real.exp (-u) : ℂ)]
  rw [← Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr (Real.exp_ne_zero _)),
    Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr (Real.exp_ne_zero _)),
    ← Complex.ofReal_log (Real.exp_pos (-u)).le, Real.log_exp]
  congr 1
  push_cast
  ring

private lemma logarithmicGaussian_kernel (b s : ℂ) (u : ℝ) :
    |-(Real.exp (-u))| • ((Real.exp (-u) : ℂ) ^ (s - 1) •
      logarithmicGaussianWith b (Real.exp (-u))) =
      Complex.exp (-b * (u : ℂ) ^ 2 + (-s) * (u : ℂ) + 0) := by
  rw [abs_neg, abs_of_pos (Real.exp_pos _), exponential_mellin_kernel]
  simp only [logarithmicGaussianWith, Real.log_exp, Complex.ofReal_neg, neg_sq,
    smul_eq_mul, ← Complex.exp_add]
  congr 1
  ring

private lemma exponential_neg_image : Real.exp ∘ Neg.neg '' (univ : Set ℝ) = Ioi 0 := by
  rw [Set.image_comp, Set.image_univ_of_surjective neg_surjective,
    Set.image_univ, Real.range_exp]

private lemma exponential_neg_deriv : ∀ x ∈ (univ : Set ℝ),
    HasDerivWithinAt (Real.exp ∘ Neg.neg) (-Real.exp (-x)) univ x :=
  fun x _ => mul_neg_one (Real.exp (-x)) ▸
    ((Real.hasDerivAt_exp (-x)).comp x (hasDerivAt_neg x)).hasDerivWithinAt

private lemma exponential_neg_inj : univ.InjOn (Real.exp ∘ Neg.neg) :=
  Real.exp_injective.injOn.comp neg_injective.injOn (univ.mapsTo_univ _)

/-- Every Mellin coordinate converges when the actual quadratic width decays. -/
theorem logarithmicGaussianWith_convergent {b : ℂ} (hb : 0 < b.re) (s : ℂ) :
    MellinConvergent (logarithmicGaussianWith b) s := by
  rw [MellinConvergent, ← exponential_neg_image,
    integrableOn_image_iff_integrableOn_abs_deriv_smul MeasurableSet.univ
      exponential_neg_deriv exponential_neg_inj]
  simpa only [Function.comp_apply, integrableOn_univ, logarithmicGaussian_kernel] using
    integrable_cexp_quadratic hb (-s) 0

/-- Exact all-complex Mellin integral of the positive-half-line logarithmic Gaussian. -/
theorem logarithmicGaussianWith_mellin {b : ℂ} (hb : 0 < b.re) (s : ℂ) :
    mellin (logarithmicGaussianWith b) s = gaussianMellinWith b s := by
  rw [mellin, ← exponential_neg_image,
    integral_image_eq_integral_abs_deriv_smul MeasurableSet.univ
      exponential_neg_deriv exponential_neg_inj]
  simp_rw [Function.comp_apply, logarithmicGaussian_kernel]
  have hn : (-b).re < 0 := by simpa using hb
  simpa [gaussianMellinWith, mul_neg, div_neg] using integral_cexp_quadratic hn (-s) 0

/-- The previously accepted nonzero Gaussian now has a proved transform at every coordinate. -/
theorem logarithmicGaussian_mellin_all (s : ℂ) :
    mellin ReverseInversion.logarithmicGaussian s = ReverseInversion.gaussianMellin s := by
  change mellin (logarithmicGaussianWith (Real.pi : ℂ)) s = ReverseInversion.gaussianMellin s
  rw [logarithmicGaussianWith_mellin (by simpa using Real.pi_pos)]
  simp [gaussianMellinWith, ReverseInversion.gaussianMellin, Real.pi_ne_zero]

theorem logarithmicGaussian_convergent_all (s : ℂ) :
    MellinConvergent ReverseInversion.logarithmicGaussian s :=
  logarithmicGaussianWith_convergent (b := (Real.pi : ℂ)) (by simpa using Real.pi_pos) s

/-- A concrete unconditional consumer of the all-complex transform identity. -/
theorem logarithmicGaussian_mellin_ne_zero (s : ℂ) :
    mellin ReverseInversion.logarithmicGaussian s ≠ 0 := by
  rw [logarithmicGaussian_mellin_all]
  exact Complex.exp_ne_zero _

end
end GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.LogarithmicGaussian
