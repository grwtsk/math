# Complete source: GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63cb2d89740191e49b21b27186ccf0778a0d99e2` · SHA-256 `69f34406cf154069b36e2b85931f8e2ad6f3696c493696c9e77ea6493b8ea0df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup
import Mathlib.Tactic

/-!
# Genuine improper weights for logarithmic profile prices

Each exact value is paired with genuine integrability. The
exponential Jacobian is retained on the complete half-lines; reflection of the
lower logarithmic interval retains its whole improper exponential moment.
-/

namespace GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights

open MeasureTheory Set

noncomputable section

private theorem sqrt_exp_half (u : ℝ) : Real.sqrt (Real.exp u) = Real.exp (u / 2) := by
  apply (Real.sqrt_eq_iff_mul_self_eq_of_pos (Real.exp_pos _)).mpr
  rw [← Real.exp_add]
  congr 1
  ring

private theorem reciprocal_jacobian (u : ℝ) :
    Real.exp u * (1 / (Real.exp u * Real.sqrt (Real.exp u))) = Real.exp (-u / 2) := by
  rw [sqrt_exp_half, show -u / 2 = -(u / 2) by ring, Real.exp_neg]
  field_simp

private theorem upper_logarithmic_jacobian (u : ℝ) :
    Real.exp u * (Real.log (Real.exp u) / (Real.exp u * Real.sqrt (Real.exp u))) =
      u * Real.exp (-u / 2) := by
  rw [Real.log_exp, sqrt_exp_half, show -u / 2 = -(u / 2) by ring, Real.exp_neg]
  field_simp

private theorem lower_logarithmic_jacobian (u : ℝ) :
    Real.exp u * ((-Real.log (Real.exp u)) / Real.sqrt (Real.exp u)) =
      (-u) * Real.exp (u / 2) := by
  rw [Real.log_exp, sqrt_exp_half]
  have split : Real.exp u = Real.exp (u / 2) * Real.exp (u / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [split]
  field_simp

private theorem first_exponential_moment :
    IntegrableOn (fun u : ℝ ↦ u * Real.exp (-u / 2)) (Ioi 0) ∧
      (∫ u in Ioi (0 : ℝ), u * Real.exp (-u / 2)) = 4 := by
  have admitted := integrableOn_rpow_mul_exp_neg_mul_rpow
    (p := 1) (s := 1) (b := 1 / 2) (by norm_num) (by norm_num) (by norm_num)
  have same : (fun u : ℝ ↦ u ^ (1 : ℝ) * Real.exp (-(1 / 2 : ℝ) * u ^ (1 : ℝ))) =
      fun u : ℝ ↦ u * Real.exp (-u / 2) := by
    funext u
    rw [Real.rpow_one, show -(1 / 2 : ℝ) * u = -u / 2 by ring]
  rw [same] at admitted
  refine ⟨admitted, ?_⟩
  have value := Real.integral_rpow_mul_exp_neg_mul_Ioi (a := 2) (r := 1 / 2)
    (by norm_num) (by norm_num)
  have gammaSame : (fun u : ℝ ↦ u ^ ((2 : ℝ) - 1) * Real.exp (-((1 / 2 : ℝ) * u))) =
      fun u : ℝ ↦ u * Real.exp (-u / 2) := by
    funext u
    norm_num only [show (2 : ℝ) - 1 = 1 by norm_num, Real.rpow_one]
    rw [show -((1 / 2 : ℝ) * u) = -u / 2 by ring]
  rw [gammaSame] at value
  norm_num [Real.rpow_two, Real.Gamma_two] at value
  exact value

/-- The full upper reciprocal weight is genuinely integrable and has exact mass two. -/
theorem reciprocal_sqrt_upper_weight :
    IntegrableOn (fun x : ℝ ↦ 1 / (x * Real.sqrt x)) (Ioi 1) ∧
      (∫ x in Ioi (1 : ℝ), 1 / (x * Real.sqrt x)) = 2 := by
  let g : ℝ → ℝ := fun x ↦ 1 / (x * Real.sqrt x)
  have pullback : (fun u : ℝ ↦ Real.exp u • g (Real.exp u)) =
      fun u : ℝ ↦ Real.exp (-u / 2) := by
    funext u
    exact reciprocal_jacobian u
  have exponent : (fun u : ℝ ↦ Real.exp (-u / 2)) =
      fun u : ℝ ↦ Real.exp ((-1 / 2 : ℝ) * u) := by
    funext u
    congr 1
    ring
  have admitted : IntegrableOn (fun u : ℝ ↦ Real.exp (-u / 2)) (Ioi 0) := by
    rw [exponent]
    exact integrableOn_exp_mul_Ioi (by norm_num) 0
  have admission := integrableOn_comp_exp_Ioi g 0
  rw [pullback, Real.exp_zero] at admission
  refine ⟨admission.mp admitted, ?_⟩
  have substitution := integral_comp_exp_Ioi g 0
  rw [pullback, Real.exp_zero] at substitution
  change (∫ x in Ioi (1 : ℝ), g x) = 2
  rw [← substitution, exponent, integral_exp_mul_Ioi (by norm_num) 0]
  norm_num

/-- The complete upper logarithmic weight is genuinely integrable and has mass four. -/
theorem logarithmic_sqrt_upper_weight :
    IntegrableOn (fun x : ℝ ↦ Real.log x / (x * Real.sqrt x)) (Ioi 1) ∧
      (∫ x in Ioi (1 : ℝ), Real.log x / (x * Real.sqrt x)) = 4 := by
  let g : ℝ → ℝ := fun x ↦ Real.log x / (x * Real.sqrt x)
  have pullback : (fun u : ℝ ↦ Real.exp u • g (Real.exp u)) =
      fun u : ℝ ↦ u * Real.exp (-u / 2) := by
    funext u
    exact upper_logarithmic_jacobian u
  have admission := integrableOn_comp_exp_Ioi g 0
  rw [pullback, Real.exp_zero] at admission
  refine ⟨admission.mp first_exponential_moment.1, ?_⟩
  have substitution := integral_comp_exp_Ioi g 0
  rw [pullback, Real.exp_zero] at substitution
  change (∫ x in Ioi (1 : ℝ), g x) = 4
  rw [← substitution]
  exact first_exponential_moment.2

/-- The omitted lower logarithmic interval has genuine integrability and exact mass four. -/
theorem logarithmic_sqrt_lower_weight :
    IntegrableOn (fun x : ℝ ↦ (-Real.log x) / Real.sqrt x) (Ioo 0 1) ∧
      (∫ x in Ioo (0 : ℝ) 1, (-Real.log x) / Real.sqrt x) = 4 := by
  let g : ℝ → ℝ := fun x ↦ (-Real.log x) / Real.sqrt x
  let h : ℝ → ℝ := fun u ↦ (-u) * Real.exp (u / 2)
  have reflection : (fun u : ℝ ↦ h (-u)) = fun u : ℝ ↦ u * Real.exp (-u / 2) := by
    funext u
    simp only [h, neg_neg]
  have reflectedAdmission := MeasurePreserving.integrableOn_comp_preimage
    (Measure.measurePreserving_neg (volume : Measure ℝ))
    (Homeomorph.neg ℝ).measurableEmbedding
    (f := h) (s := Iio 0)
  have admitted : IntegrableOn h (Iio 0) := by
    apply reflectedAdmission.mp
    simpa only [Function.comp_def, neg_preimage, neg_Iio, neg_zero, reflection]
      using first_exponential_moment.1
  have reflectedValue := integral_comp_neg_Ioi 0 h
  rw [reflection, neg_zero, integral_Iic_eq_integral_Iio] at reflectedValue
  have hValue : (∫ u in Iio (0 : ℝ), h u) = 4 :=
    reflectedValue.symm.trans first_exponential_moment.2
  have image : Real.exp '' Iio (0 : ℝ) = Ioo (0 : ℝ) 1 := by
    rw [Real.image_exp_Iio, Real.exp_zero]
  have pullback : (fun u : ℝ ↦ |Real.exp u| • g (Real.exp u)) = h := by
    funext u
    rw [abs_of_pos (Real.exp_pos _), smul_eq_mul]
    exact lower_logarithmic_jacobian u
  have admission := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s := Iio (0 : ℝ)) measurableSet_Iio
    (fun u _ ↦ (Real.hasDerivAt_exp u).hasDerivWithinAt)
    (fun u _ v _ same ↦ Real.exp_injective same) g
  rw [image, pullback] at admission
  refine ⟨admission.mpr admitted, ?_⟩
  have substitution := integral_image_eq_integral_abs_deriv_smul
    (s := Iio (0 : ℝ)) measurableSet_Iio
    (fun u _ ↦ (Real.hasDerivAt_exp u).hasDerivWithinAt)
    (fun u _ v _ same ↦ Real.exp_injective same) g
  rw [image, pullback] at substitution
  exact substitution.trans hValue

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights
```
