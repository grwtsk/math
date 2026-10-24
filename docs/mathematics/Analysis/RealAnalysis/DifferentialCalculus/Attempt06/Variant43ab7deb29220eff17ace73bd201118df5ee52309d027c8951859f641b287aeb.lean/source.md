# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt06.Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50cd2b1217c7038c8a7b53b0a277aeb1723da792` · SHA-256 `a630cae051e3f1fe3c7e5953beff2b3cb9ea2371d247ce38c9b78719c123b7df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompactLaplace.Variant82080b1a2f21fe00ae8fa42bc88cc268687ef41907d975a7cf7364fa8b0a7e2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82080b1a2f21fe00ae8fa42bc88cc268687ef41907d975a7cf7364fa8b0a7e2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CompactLaplace.Variant82080b1a2f21fe00ae8fa42bc88cc268687ef41907d975a7cf7364fa8b0a7e2e","mathematical_subject":"Analysis.Calculus","original_sha256":"82080b1a2f21fe00ae8fa42bc88cc268687ef41907d975a7cf7364fa8b0a7e2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass12/boundary_order/attempt06.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceBoundaryCubic
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Analysis.Analytic.Order

/-! Actual finite boundary transform: entire parameter dependence and exact order three.
Direction: grwtsk contributors. Focused scratch proofs: OpenAI Codex.
No arithmetic budget, RH input, higher spatial regularity or analytic witness is assumed. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompactLaplace.Variant82080b1a2f21fe00ae8fa42bc88cc268687ef41907d975a7cf7364fa8b0a7e2e

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourceBoundaryOrder
open MeasureTheory Set Complex Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCausalEnergy
open FormalResearch.RiemannHypothesis.GevreyPolynomial
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
  simpa only [neg_mul] using h

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

theorem compactLaplace_hasDerivAt (f : ℝ → ℝ) (hf : Continuous f)
    (hs : HasCompactSupport f) (z0 : ℂ) :
    HasDerivAt (compactLaplace f)
      (∫ x : ℝ, (f x : ℂ) * (Complex.exp (z0*(x : ℂ))*(x : ℂ))) z0 := by
  let F : ℂ → ℝ → ℂ := fun z x => (f x : ℂ)*Complex.exp (z*(x : ℂ))
  let F' : ℂ → ℝ → ℂ := fun z x => (f x : ℂ)*(Complex.exp (z*(x : ℂ))*(x : ℂ))
  let bound : ℝ → ℝ := fun x => ‖f x‖ * |x| * Real.exp ((‖z0‖+1) * |x|)
  have hF : ∀ z, Continuous (F z) := by intro z; dsimp [F]; fun_prop
  have hF' : Continuous (F' z0) := by dsimp [F']; fun_prop
  have hb : Continuous bound := by dsimp [bound]; fun_prop
  have hbs : HasCompactSupport bound :=
    (hs.norm.mul_right).mul_right
  have hi := hb.integrable_of_hasCompactSupport (μ := volume) hbs
  have hbound : ∀ᵐ x : ℝ ∂volume, ∀ z ∈ Metric.ball z0 1, ‖F' z x‖ ≤ bound x := by
    apply Eventually.of_forall
    intro x z hz
    have hnorm : ‖z‖ ≤ ‖z0‖+1 := by
      have hd : ‖z-z0‖ ≤ 1 := by simpa only [dist_eq_norm] using (Metric.mem_ball.mp hz).le
      calc
        ‖z‖ = ‖(z-z0)+z0‖ := by congr 1; ring
        _ ≤ ‖z-z0‖+‖z0‖ := norm_add_le _ _
        _ ≤ ‖z0‖+1 := by linarith
    have hex : ‖Complex.exp (z*(x : ℂ))‖ ≤ Real.exp ((‖z0‖+1) * |x|) := by
      refine (Complex.norm_exp_le_exp_norm _).trans (Real.exp_le_exp.mpr ?_)
      rw [norm_mul,Complex.norm_real,Real.norm_eq_abs]
      exact mul_le_mul_of_nonneg_right hnorm (abs_nonneg x)
    dsimp [F',bound]
    rw [norm_mul,norm_mul,Complex.norm_real,Complex.norm_real,Real.norm_eq_abs]
    calc
      ‖f x‖*(‖Complex.exp (z*(x : ℂ))‖ * |x|) ≤
          ‖f x‖*(Real.exp ((‖z0‖+1) * |x|) * |x|) :=
        mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hex (abs_nonneg x)) (norm_nonneg _)
      _ = _ := by rw [Real.norm_eq_abs]; ring
  have hdiff : ∀ᵐ x : ℝ ∂volume, ∀ z ∈ Metric.ball z0 1, HasDerivAt (F · x) (F' z x) z := by
    apply Eventually.of_forall
    intro x z _
    simpa only [F,F',id_eq,mul_one,one_mul] using
      (((hasDerivAt_id z).mul_const (x : ℂ)).cexp).const_mul (f x : ℂ)
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (Metric.ball_mem_nhds z0 (by norm_num : (0 : ℝ)<1))
    (Eventually.of_forall fun z => (hF z).aestronglyMeasurable)
    (compactLaplace_integrable f hf hs z0) hF'.aestronglyMeasurable
    hbound hi hdiff
  exact h.2

theorem compactLaplace_differentiable (f : ℝ → ℝ) (hf : Continuous f)
    (hs : HasCompactSupport f) : Differentiable ℂ (compactLaplace f) :=
  fun z => (compactLaplace_hasDerivAt f hf hs z).differentiableAt

theorem normalized_primitive_differentiable {A : ℝ} (hA : 1 ≤ A) :
    Differentiable ℂ (normalizedPrimitiveTransform A) :=
  compactLaplace_differentiable _ (normalizedPrimitiveBump_contDiff (by linarith : 0<A)).continuous
    (normalizedPrimitiveBump_hasCompactSupport (by linarith : 0<A))

theorem primitive_differentiable {A : ℝ} (hA : 1 ≤ A) :
    Differentiable ℂ (primitiveTransform A) := by
  have hp : 0 < A := by linarith
  have hs : HasCompactSupport (scaledBump A) := by
    rw [scaledBump_eq_indicator A hp]
    exact HasCompactSupport.intro isCompact_Icc (fun x hx => indicator_of_notMem hx _)
  exact compactLaplace_differentiable _ (scaledBump_contDiff hp).continuous hs

theorem boundary_differentiable {A : ℝ} (hA : 1 ≤ A) :
    Differentiable ℂ (boundaryTransform A) := by
  have he : boundaryTransform A = fun lambda =>
      -lambda^3*(lambda+1)^2*(A : ℂ)^9*Complex.exp (-(2*lambda+1)*(A : ℂ))*
        normalizedPrimitiveTransform A (lambda+1/2)^2 := funext (boundary_transform_factored hA)
  rw [he]
  have hd := normalized_primitive_differentiable hA
  fun_prop

theorem normalized_primitive_half (A : ℝ) :
    normalizedPrimitiveTransform A (1/2) = (primitivePoleMoment A : ℂ) := by
  unfold normalizedPrimitiveTransform compactLaplace primitivePoleMoment
  rw [← integral_complex_ofReal]
  apply integral_congr_ae
  filter_upwards [] with x
  have he : Complex.exp ((1/2 : ℂ)*(x : ℂ)) = (Real.exp (x/2) : ℂ) := by
    have hh : (1/2 : ℂ)*(x : ℂ) = ((x/2 : ℝ) : ℂ) := by push_cast; ring
    rw [hh, ← Complex.ofReal_exp]
  rw [he]
  push_cast
  ring

theorem normalized_primitive_half_ne_zero {A : ℝ} (hA : 1 ≤ A) :
    normalizedPrimitiveTransform A (1/2) ≠ 0 := by
  rw [normalized_primitive_half A]
  exact Complex.ofReal_ne_zero.mpr (primitive_pole_moment_pos hA).ne'

end ContinuousResearch.SourceBoundaryOrder
end
```
