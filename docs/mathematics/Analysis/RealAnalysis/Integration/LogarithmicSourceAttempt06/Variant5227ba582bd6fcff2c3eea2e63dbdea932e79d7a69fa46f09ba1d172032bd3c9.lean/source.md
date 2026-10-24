# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt06.Variant5227ba582bd6fcff2c3eea2e63dbdea932e79d7a69fa46f09ba1d172032bd3c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e46e511e789056af572345791e85b3bd4a24cbe` · SHA-256 `5227ba582bd6fcff2c3eea2e63dbdea932e79d7a69fa46f09ba1d172032bd3c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import Mathlib.Analysis.MellinTransform
import Mathlib.MeasureTheory.Function.JacobianOneDim

/-! A source-faithful logarithmic L² coordinate leaf for #257.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No Beurling closure, Müntz identity, signed arithmetic transport or RH witness is asserted. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.LogarithmicSource
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

/-- Zero outside the positive half-axis; Lebesgue dx, not dx/x, is the target measure. -/
def positiveLogLift (f : ℝ → ℝ) (x : ℝ) : ℝ :=
  if 0 < x then Real.exp (-Real.log x / 2) * f (Real.log x) else 0

theorem positiveLogLift_exp (f : ℝ → ℝ) (t : ℝ) :
    positiveLogLift f (Real.exp t) = Real.exp (-t / 2) * f t := by
  simp [positiveLogLift, Real.exp_pos, Real.log_exp]

private theorem exp_square_weight (t : ℝ) :
    Real.exp t * (Real.exp (-t / 2))^2 = 1 := by
  calc
    _ = Real.exp (t+(-t/2+-t/2)) := by rw [Real.exp_add,Real.exp_add,pow_two]
    _ = 1 := by rw [show t+(-t/2+-t/2)=0 by ring,Real.exp_zero]

theorem lift_square_jacobian (f : ℝ → ℝ) (t : ℝ) :
    Real.exp t * (positiveLogLift f (Real.exp t))^2 = (f t)^2 := by
  rw [positiveLogLift_exp, mul_pow]
  calc
    _ = (Real.exp t*(Real.exp (-t/2))^2)*(f t)^2 := by ring
    _ = _ := by rw [exp_square_weight, one_mul]

theorem lift_square_integrable_iff (f : ℝ → ℝ) :
    IntegrableOn (fun x => (positiveLogLift f x)^2) (Ioi 0) ↔
      Integrable (fun t => (f t)^2) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    (fun _ _ _ _ he => Real.exp_injective he)
    (fun x => (positiveLogLift f x)^2)
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),smul_eq_mul,
    lift_square_jacobian,integrableOn_univ] using h

theorem lift_square_integral (f : ℝ → ℝ) :
    (∫ x in Ioi 0, (positiveLogLift f x)^2) = ∫ t : ℝ, (f t)^2 := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    (fun _ _ _ _ he => Real.exp_injective he)
    (fun x => (positiveLogLift f x)^2)
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),smul_eq_mul,
    lift_square_jacobian,setIntegral_univ] using h

/-- The exact normalized polynomial source is retained before changing coordinates. -/
def actualLogSource (A : ℝ) : ℝ → ℝ :=
  positiveLogLift (normalizedTest explicitSecondDerivative A)

theorem actualLogSource_square_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => (actualLogSource A x)^2) (Ioi 0) :=
  (lift_square_integrable_iff _).2 (normalized_square_integrable A hA)

theorem actualLogSource_square_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ x in Ioi 0, (actualLogSource A x)^2) = 1 := by
  rw [actualLogSource, lift_square_integral]
  exact normalized_square_integral A hA

theorem actualLogSource_zero_outside {A x : ℝ} (hA : 0 < A)
    (hx : x ≤ Real.exp (-A) ∨ Real.exp A ≤ x) : actualLogSource A x = 0 := by
  by_cases hp : 0 < x
  · have hl : A ≤ |Real.log x| := by
      rcases hx with hx | hx
      · have he : Real.log x ≤ -A := by
          exact Real.exp_le_exp.mp (by simpa only [Real.exp_log hp] using hx)
        have hab := neg_le_abs (Real.log x)
        linarith
      · have he : A ≤ Real.log x := by
          exact Real.exp_le_exp.mp (by simpa only [Real.exp_log hp] using hx)
        exact he.trans (le_abs_self _)
    simp only [actualLogSource,positiveLogLift,if_pos hp,
      normalizedTest_zero_of_le_abs A (Real.log x) hA hl,mul_zero]
  · simp [actualLogSource,positiveLogLift,hp]

theorem actualLogSource_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (actualLogSource A) := by
  apply exists_compact_iff_hasCompactSupport.mp
  refine ⟨Icc (Real.exp (-A)) (Real.exp A),isCompact_Icc,?_⟩
  intro x hx
  apply actualLogSource_zero_outside hA
  simp only [mem_Icc,not_and_or,not_le] at hx
  rcases hx with hx | hx
  · exact Or.inl hx.le
  · exact Or.inr hx.le

private theorem lift_first_jacobian (f : ℝ → ℝ) (t : ℝ) :
    Real.exp t * positiveLogLift f (Real.exp t) = Real.exp (t/2)*f t := by
  rw [positiveLogLift_exp,←mul_assoc,←Real.exp_add]
  congr 2
  ring

theorem actualLogSource_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (actualLogSource A) (Ioi 0) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    (fun _ _ _ _ he => Real.exp_injective he)
    (actualLogSource A)
  have hp := CorrelationMoment.positive_pole_integrable A hA
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),smul_eq_mul,
    actualLogSource,lift_first_jacobian,integrableOn_univ] using h.mpr hp

/-- The actual Müntz compensator's coefficient vanishes by the original pole filter. -/
theorem actualLogSource_integral_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ x in Ioi 0, actualLogSource A x) = 0 := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    (fun _ _ _ _ he => Real.exp_injective he)
    (actualLogSource A)
  have he : (∫ x in Ioi 0, actualLogSource A x) =
      ∫ t : ℝ, Real.exp (t/2)*normalizedTest explicitSecondDerivative A t := by
    simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),smul_eq_mul,
      actualLogSource,lift_first_jacobian,setIntegral_univ] using h
  rw [he]
  exact CorrelationMoment.positive_pole_zero A hA

theorem positiveLogLift_dilation (f : ℝ → ℝ) {a x : ℝ} (ha : 0 < a) (hx : 0 < x) :
    positiveLogLift f (a*x) = Real.exp (-Real.log a/2) *
      positiveLogLift (fun t => f (t+Real.log a)) x := by
  simp only [positiveLogLift,if_pos (mul_pos ha hx),if_pos hx,Real.log_mul ha.ne' hx.ne']
  rw [show -(Real.log a+Real.log x)/2 = -Real.log a/2 + -Real.log x/2 by ring,
    Real.exp_add]
  rw [add_comm (Real.log a)]
  ring

theorem actualLogSource_real_dilation (A t : ℝ) {a : ℝ} (ha : 0 < a) :
    Real.exp (t/2)*actualLogSource A (a*Real.exp t) =
      Real.exp (-Real.log a/2)*normalizedTest explicitSecondDerivative A (t+Real.log a) := by
  rw [actualLogSource,positiveLogLift_dilation _ ha (Real.exp_pos t),positiveLogLift_exp]
  calc
    _ = (Real.exp (t/2)*Real.exp (-t/2)) *
      (Real.exp (-Real.log a/2)*normalizedTest explicitSecondDerivative A (t+Real.log a)) := by ring
    _ = _ := by rw [←Real.exp_add,show t/2+-t/2=0 by ring,Real.exp_zero,one_mul]

theorem actualLogSource_integer_dilation (A t : ℝ) {k : ℕ} (hk : 0 < k) :
    Real.exp (t/2)*actualLogSource A ((k:ℝ)*Real.exp t) =
      Real.exp (-Real.log (k:ℝ)/2)*normalizedTest explicitSecondDerivative A (t+Real.log (k:ℝ)) :=
  actualLogSource_real_dilation A t (by exact_mod_cast hk)

private theorem lift_mellin_jacobian (f : ℝ → ℝ) (s : ℂ) (t : ℝ) :
    (Real.exp t : ℂ) * ((Real.exp t : ℂ)^(s-1) *
      (positiveLogLift f (Real.exp t) : ℂ)) =
      (f t : ℂ) * Complex.exp ((s-1/2)*(t:ℂ)) := by
  rw [positiveLogLift_exp,Complex.cpow_def_of_ne_zero
    (by exact_mod_cast (Real.exp_pos t).ne'),←Complex.ofReal_log (Real.exp_pos t).le,
    Real.log_exp,Complex.ofReal_mul,Complex.ofReal_exp,Complex.ofReal_exp]
  push_cast
  calc
    _ = (f t : ℂ)*Complex.exp ((t:ℂ)+(t:ℂ)*(s-1)+(-(t:ℂ)/2)) := by
      rw [Complex.exp_add,Complex.exp_add]
      ring
    _ = _ := by congr 2;ring

theorem lift_mellin_eq_bilateral (f : ℝ → ℝ) (s : ℂ) :
    mellin (fun x => (positiveLogLift f x : ℂ)) s =
      ∫ t : ℝ, (f t : ℂ)*Complex.exp ((s-1/2)*(t:ℂ)) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    (fun _ _ _ _ he => Real.exp_injective he)
    (fun x => (x:ℂ)^(s-1)*(positiveLogLift f x : ℂ))
  simpa only [mellin,smul_eq_mul,image_univ,Real.range_exp,
    abs_of_pos (Real.exp_pos _),Complex.real_smul,lift_mellin_jacobian,
    setIntegral_univ] using h

theorem lift_mellin_integrable_iff (f : ℝ → ℝ) (s : ℂ) :
    IntegrableOn (fun x : ℝ => (x:ℂ)^(s-1)*(positiveLogLift f x : ℂ)) (Ioi 0) ↔
      Integrable (fun t => (f t : ℂ)*Complex.exp ((s-1/2)*(t:ℂ))) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    (fun _ _ _ _ he => Real.exp_injective he)
    (fun x => (x:ℂ)^(s-1)*(positiveLogLift f x : ℂ))
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),Complex.real_smul,
    lift_mellin_jacobian,integrableOn_univ] using h

theorem actualLogSource_mellin_integrable {A : ℝ} (hA : 0 < A) (s : ℂ) :
    IntegrableOn (fun x : ℝ => (x:ℂ)^(s-1)*(actualLogSource A x : ℂ)) (Ioi 0) := by
  apply (lift_mellin_integrable_iff _ s).2
  have hc := (Complex.continuous_ofReal.comp (normalizedTest_contDiff A hA).continuous).mul
    (show Continuous (fun t : ℝ => Complex.exp ((s-1/2)*(t:ℂ))) by fun_prop)
  exact hc.integrable_of_hasCompactSupport
    ((normalizedTest_hasCompactSupport A hA).comp_left (by simp)).mul_right

/-- The source's positive-sign angular Fourier convention is preserved without conjugation. -/
theorem actualLogSource_mellin_critical (A ξ : ℝ) :
    mellin (fun x => (actualLogSource A x : ℂ)) (1/2+Complex.I*(ξ:ℂ)) =
      sourceFourier (normalizedTest explicitSecondDerivative A) ξ := by
  rw [actualLogSource,lift_mellin_eq_bilateral]
  congr 1
  funext t
  congr 2
  ring

end ContinuousResearch.LogarithmicSource
```
