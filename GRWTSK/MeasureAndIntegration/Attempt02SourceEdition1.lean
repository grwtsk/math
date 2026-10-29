import SourceBoundaryCubic
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Analysis.Analytic.Order

/-! Actual finite boundary transform: entire parameter dependence and exact order three.
Direction: grwtsk contributors. Focused scratch proofs: OpenAI Codex.
No arithmetic budget, RH input, higher spatial regularity or analytic witness is assumed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourceBoundaryOrder
open MeasureTheory Set Complex Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCausalEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open ContinuousResearch.SourceBoundaryTransform ContinuousResearch.SourceBoundaryCubic
open scoped Topology

/-- Literal Laplace transform of a real compact source, not an assumed entire function. -/
def compactLaplace (f : ℝ → ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, (f x : ℂ) * Complex.exp (z * (x : ℂ))

def primitiveTransform (A : ℝ) (z : ℂ) : ℂ := compactLaplace (scaledBump A) z

def normalizedPrimitiveTransform (A : ℝ) (z : ℂ) : ℂ :=
  compactLaplace (normalizedPrimitiveBump A) z

theorem compactLaplace_integrable (f : ℝ → ℝ) (hf : Continuous f)
    (hs : HasCompactSupport f) (z : ℂ) :
    Integrable (fun x : ℝ => (f x : ℂ) * Complex.exp (z * (x : ℂ))) := by
  have hc : Continuous (fun x : ℝ => (f x : ℂ) * Complex.exp (z * (x : ℂ))) := by fun_prop
  exact hc.integrable_of_hasCompactSupport
    ((hs.comp_left (show Complex.ofReal (0 : ℝ) = 0 by simp)).mul_right)

theorem complex_weighted_derivative (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (z : ℂ) :
    compactLaplace (deriv f) z = -z * compactLaplace f z := by
  have he : Continuous (fun x : ℝ => Complex.exp (z*(x : ℂ))) := by fun_prop
  have hv : Continuous (fun x : ℝ => (f x : ℂ)) := by fun_prop
  have hvd : Continuous (fun x : ℝ => ((deriv f x : ℝ) : ℂ)) := by fun_prop
  have hi0 := compactLaplace_integrable f hf.continuous hs z
  have hi1 := compactLaplace_integrable (deriv f) hf.continuous_deriv_one hs.deriv z
  have hi0' : Integrable (fun x : ℝ => Complex.exp (z*(x : ℂ))*(f x : ℂ)) :=
    hi0.congr (Eventually.of_forall (fun x => mul_comm _ _))
  have hi1' : Integrable (fun x : ℝ => Complex.exp (z*(x : ℂ))*((deriv f x : ℝ) : ℂ)) :=
    hi1.congr (Eventually.of_forall (fun x => mul_comm _ _))
  have him : Integrable (fun x : ℝ => z*Complex.exp (z*(x : ℂ))*(f x : ℂ)) := by
    simpa only [mul_assoc] using hi0'.const_mul z
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x : ℝ => Complex.exp (z*(x : ℂ)))
    (u' := fun x => z*Complex.exp (z*(x : ℂ)))
    (v := fun x : ℝ => (f x : ℂ)) (v' := fun x => ((deriv f x : ℝ) : ℂ))
    (fun x _ => by
      have hh := (((hasDerivAt_id (x : ℂ)).const_mul z).comp_ofReal).cexp
      simpa only [id_eq,mul_one,mul_comm] using hh)
    (fun x _ => (hf.differentiable (by norm_num) x).hasDerivAt.ofReal_comp)
    hi1' him hi0'
  simp only [mul_assoc] at h
  rw [integral_const_mul] at h
  unfold compactLaplace
  simp_rw [mul_comm (Complex.exp _) (_ : ℂ)] at h
  exact h

theorem actual_complex_pole_filter {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    normalizedTransform A z = (z^2-1/4)*normalizedPrimitiveTransform A z := by
  have hp : 0 < A := by linarith
  let b := normalizedPrimitiveBump A
  have hb : ContDiff ℝ 2 b := normalizedPrimitiveBump_contDiff hp
  have hs : HasCompactSupport b := normalizedPrimitiveBump_hasCompactSupport hp
  have h0 := complex_weighted_derivative b (hb.of_le (by norm_num)) hs z
  have h1 := complex_weighted_derivative (deriv b) hb.deriv' hs.deriv z
  rw [h0] at h1
  have hi0 := compactLaplace_integrable b hb.continuous hs z
  have hi2 := compactLaplace_integrable (deriv (deriv b)) hb.deriv'.continuous_deriv_one
    hs.deriv.deriv z
  unfold normalizedTransform normalizedPrimitiveTransform
  have he (x : ℝ) : (normalizedTest explicitSecondDerivative A x : ℂ)*Complex.exp (z*(x : ℂ)) =
      ((deriv (deriv b) x : ℝ) : ℂ)*Complex.exp (z*(x : ℂ)) -
        ((b x : ℂ)*Complex.exp (z*(x : ℂ)))/4 := by
    rw [← normalizedPrimitiveBump_second_sub_quarter hp x]
    dsimp [b]
    push_cast
    ring
  simp_rw [he]
  rw [integral_sub hi2 (hi0.div_const 4),integral_div]
  change compactLaplace (deriv (deriv b)) z - compactLaplace b z/4 = _
  rw [h1]
  change _ = (z^2-1/4)*compactLaplace b z
  ring

theorem primitive_transform_normalization (A : ℝ) (z : ℂ) :
    normalizedPrimitiveTransform A z = primitiveTransform A z /
      (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold normalizedPrimitiveTransform primitiveTransform compactLaplace normalizedPrimitiveBump
  rw [← integral_div]
  apply integral_congr_ae
  filter_upwards [] with x
  push_cast
  ring

theorem boundary_transform_factored {A : ℝ} (hA : 1 ≤ A) (lambda : ℂ) :
    boundaryTransform A lambda =
      -lambda^3*(lambda+1)^2*(A : ℂ)^9*Complex.exp (-(2*lambda+1)*(A : ℂ))*
        normalizedPrimitiveTransform A (lambda+1/2)^2 := by
  rw [boundary_transform_exact hA,actual_complex_pole_filter hA]
  ring

theorem boundary_transform_factored_unnormalized {A : ℝ} (hA : 1 ≤ A) (lambda : ℂ) :
    boundaryTransform A lambda =
      -lambda^3*(lambda+1)^2*(A : ℂ)^9*Complex.exp (-(2*lambda+1)*(A : ℂ))*
        primitiveTransform A (lambda+1/2)^2/(sourceNormalization A : ℂ) := by
  rw [boundary_transform_factored hA,primitive_transform_normalization]
  have hz : (Real.sqrt (sourceNormalization A) : ℂ)^2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt (source_normalization_pos A hA).le
  rw [div_pow,hz]
  ring

end ContinuousResearch.SourceBoundaryOrder
end
