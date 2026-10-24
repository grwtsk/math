# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceBoundaryCubic.Variant27843f5bdf303900dffc48d2b2392d0594d4a877e197def0cb3362dc9418e6ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d040c6cb101c1a266e29996d739a3fed2242fc9a` · SHA-256 `27843f5bdf303900dffc48d2b2392d0594d4a877e197def0cb3362dc9418e6ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceBoundaryTransform
import FormalResearch.RiemannHypothesis.SourceCausalEnergy

/-!
The exact finite cubic moment for grwtsk contributors's actual source.
OpenAI Codex construction. Weakest sufficient global regularity is C2 of the
normalized primitive bump and C1 of the source; no C4 bump assertion is made.
-/

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourceBoundaryCubic

open MeasureTheory Set
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceCausalEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment
open ContinuousResearch.SourceFirstPoleMoment
open ContinuousResearch.ActualMomentDictionary

/-- A normalized primitive pole moment, distinct from the unnormalized bump moment. -/
def primitivePoleMoment (A : ℝ) : ℝ :=
  ∫ x : ℝ, Real.exp (x/2)*normalizedPrimitiveBump A x

/-- The literal unnormalized primitive moment in issue324. -/
def unnormalizedPrimitivePoleMoment (A : ℝ) : ℝ :=
  ∫ x : ℝ, Real.exp (x/2)*scaledBump A x

theorem weighted_derivative (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (σ : ℝ) :
    (∫ x : ℝ, Real.exp (σ*x)*deriv f x) =
      -σ*(∫ x : ℝ, Real.exp (σ*x)*f x) := by
  have hi0 := ((show Continuous (fun x : ℝ => Real.exp (σ*x)) by fun_prop).mul
    hf.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hi1 := ((show Continuous (fun x : ℝ => Real.exp (σ*x)) by fun_prop).mul
    hf.continuous_deriv_one).integrable_of_hasCompactSupport (μ := volume) hs.deriv.mul_left
  have him : Integrable (fun x : ℝ => (σ*Real.exp (σ*x))*f x) := by
    simpa only [Pi.mul_apply,mul_assoc] using hi0.const_mul σ
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x : ℝ => Real.exp (σ*x)) (u' := fun x => σ*Real.exp (σ*x))
    (v := f) (v' := deriv f)
    (fun x _ => by simpa only [id_eq,mul_one,mul_comm] using
      ((hasDerivAt_id x).const_mul σ).exp)
    (fun x _ => (hf.differentiable (by norm_num) x).hasDerivAt) hi1 him hi0
  simp only [mul_assoc] at h
  rw [integral_const_mul] at h
  simpa only [neg_mul] using h

theorem first_weighted_derivative (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (σ : ℝ) :
    (∫ x : ℝ, x*Real.exp (σ*x)*deriv f x) =
      -(∫ x : ℝ, Real.exp (σ*x)*f x)-
        σ*(∫ x : ℝ, x*Real.exp (σ*x)*f x) := by
  have he : Continuous (fun x : ℝ => Real.exp (σ*x)) := by fun_prop
  have hi0 := (he.mul hf.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hix := ((continuous_id.mul he).mul hf.continuous).integrable_of_hasCompactSupport (μ := volume)
    hs.mul_left
  have hid := ((continuous_id.mul he).mul hf.continuous_deriv_one).integrable_of_hasCompactSupport (μ := volume) hs.deriv.mul_left
  have hm : Integrable (fun x : ℝ => (Real.exp (σ*x)+σ*(x*Real.exp (σ*x)))*f x) := by
    have hh := hi0.add (hix.const_mul σ)
    exact hh.congr (by
      filter_upwards [] with x
      dsimp
      ring)
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x : ℝ => x*Real.exp (σ*x))
    (u' := fun x => Real.exp (σ*x)+σ*(x*Real.exp (σ*x)))
    (v := f) (v' := deriv f)
    (fun x _ => (((hasDerivAt_id x).mul
      (((hasDerivAt_id x).const_mul σ).exp))).congr_deriv (by dsimp; ring))
    (fun x _ => (hf.differentiable (by norm_num) x).hasDerivAt) hid hm hix
  have heq (x : ℝ) : (Real.exp (σ*x)+σ*(x*Real.exp (σ*x)))*f x =
      Real.exp (σ*x)*f x+σ*(x*Real.exp (σ*x)*f x) := by ring
  simp only [heq] at h
  have ha := integral_add hi0 (hix.const_mul σ)
  simp only [Pi.mul_apply,id_eq] at ha
  rw [ha,integral_const_mul] at h
  simpa only [neg_add_rev,sub_eq_add_neg,neg_mul,add_comm] using h

theorem actual_first_source_pole_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ x : ℝ, x*Real.exp (x/2)*normalizedTest explicitSecondDerivative A x) =
      primitivePoleMoment A := by
  have hp : 0 < A := by linarith
  let b := normalizedPrimitiveBump A
  have hb : ContDiff ℝ 2 b := normalizedPrimitiveBump_contDiff hp
  have hs : HasCompactSupport b := normalizedPrimitiveBump_hasCompactSupport hp
  have hbd : ContDiff ℝ 1 (deriv b) := hb.deriv'
  have hbs : ContDiff ℝ 1 b := hb.of_le (by norm_num)
  have h0 := weighted_derivative b hbs hs (1/2)
  have h1 := first_weighted_derivative b hbs hs (1/2)
  have h2 := first_weighted_derivative (deriv b) hbd hs.deriv (1/2)
  rw [h0,h1] at h2
  have hi0 : Integrable (fun x : ℝ => x*Real.exp (x/2)*b x) := by
    exact ((show Continuous (fun x : ℝ => x*Real.exp (x/2)) by fun_prop).mul
      hbs.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hi2 : Integrable (fun x : ℝ => x*Real.exp (x/2)*deriv (deriv b) x) := by
    exact ((show Continuous (fun x : ℝ => x*Real.exp (x/2)) by fun_prop).mul
      hbd.continuous_deriv_one).integrable_of_hasCompactSupport (μ := volume) hs.deriv.deriv.mul_left
  have he (x : ℝ) : x*Real.exp (x/2)*normalizedTest explicitSecondDerivative A x =
      x*Real.exp (x/2)*deriv (deriv b) x-(x*Real.exp (x/2)*b x)/4 := by
    rw [← normalizedPrimitiveBump_second_sub_quarter hp x]
    dsimp [b]
    ring
  simp_rw [he]
  rw [integral_sub hi2 (hi0.div_const 4),integral_div]
  have hscale (x : ℝ) : (1/2 : ℝ)*x=x/2 := by ring
  simp only [hscale] at h2
  unfold primitivePoleMoment
  change _ = ∫ x : ℝ, Real.exp (x/2)*b x
  rw [h2]
  ring

theorem second_convolution_moment (f g : ℝ → ℝ)
    (hf : Continuous f) (hg : Continuous g)
    (hsf : HasCompactSupport f) (hsg : HasCompactSupport g) :
    (∫ t : ℝ, t^2*(f ⋆ g) t) =
      (∫ x : ℝ, x^2*f x)*(∫ x : ℝ, g x)+
      2*(∫ x : ℝ, x*f x)*(∫ x : ℝ, x*g x)+
      (∫ x : ℝ, f x)*(∫ x : ℝ, x^2*g x) := by
  let f1 : ℝ → ℝ := fun x => x*f x
  let f2 : ℝ → ℝ := fun x => x^2*f x
  let g1 : ℝ → ℝ := fun x => x*g x
  let g2 : ℝ → ℝ := fun x => x^2*g x
  have hif := hf.integrable_of_hasCompactSupport (μ := volume) hsf
  have hig := hg.integrable_of_hasCompactSupport (μ := volume) hsg
  have hif1 : Integrable f1 := (continuous_id.mul hf).integrable_of_hasCompactSupport (μ := volume) hsf.mul_left
  have hig1 : Integrable g1 := (continuous_id.mul hg).integrable_of_hasCompactSupport (μ := volume) hsg.mul_left
  have hif2 : Integrable f2 := ((continuous_id.pow 2).mul hf).integrable_of_hasCompactSupport (μ := volume) hsf.mul_left
  have hig2 : Integrable g2 := ((continuous_id.pow 2).mul hg).integrable_of_hasCompactSupport (μ := volume) hsg.mul_left
  have he (t : ℝ) : t^2*(f ⋆ g) t = (f2 ⋆ g) t+2*(f1 ⋆ g1) t+(f ⋆ g2) t := by
    have hi1 : Integrable (fun x : ℝ => f2 x*g (t-x)) :=
      (((continuous_id.pow 2).mul hf).mul (hg.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport (μ := volume) hsf.mul_left.mul_right
    have hi2 : Integrable (fun x : ℝ => f1 x*g1 (t-x)) :=
      ((continuous_id.mul hf).mul ((continuous_const.sub continuous_id).mul
        (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport (μ := volume) hsf.mul_left.mul_right
    have hi3 : Integrable (fun x : ℝ => f x*g2 (t-x)) :=
      (hf.mul (((continuous_const.sub continuous_id).pow 2).mul
        (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport (μ := volume) hsf.mul_right
    simp only [convolution_lsmul,smul_eq_mul]
    have ha := integral_add hi1 (hi2.const_mul 2)
    have hb := integral_add (hi1.add (hi2.const_mul 2)) hi3
    simp only [Pi.add_apply] at ha hb
    rw [← integral_const_mul,← integral_const_mul,← ha,← hb]
    apply integral_congr_ae
    filter_upwards [] with x
    dsimp [f1,f2,g1,g2]
    ring
  have hi1 := hif2.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig
  have hi2 := hif1.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig1
  have hi3 := hif.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig2
  simp_rw [he]
  have ha := integral_add (hi1.add (hi2.const_mul 2)) hi3
  have hb := integral_add hi1 (hi2.const_mul 2)
  simp only [Pi.add_apply] at ha hb
  rw [ha,hb,integral_const_mul,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif2 hig,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif1 hig1,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif hig2]
  change (∫ x : ℝ, x^2*f x)*(∫ x : ℝ,g x)+
    2*((∫ x : ℝ,x*f x)*(∫ x : ℝ,x*g x))+
    (∫ x : ℝ,f x)*(∫ x : ℝ,x^2*g x) = _
  ring

theorem actual_second_correlation_pole_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ t : ℝ, t^2*criticalPrimeTest A t) = 2*primitivePoleMoment A^2 := by
  have hp : 0 < A := by linarith
  let q := normalizedTest explicitSecondDerivative A
  let F : ℝ → ℝ := fun x => Real.exp ((1/2 : ℝ)*x)*q x
  let G : ℝ → ℝ := fun x => Real.exp ((1/2 : ℝ)*x)*q (-x)
  have hq : Continuous q := (normalizedTest_contDiff A hp).continuous
  have hqs : HasCompactSupport q := normalizedTest_hasCompactSupport A hp
  have hF : Continuous F := by fun_prop
  have hG : Continuous G := by fun_prop
  have hFs : HasCompactSupport F := hqs.mul_left
  have hGs : HasCompactSupport G := (hqs.comp_homeomorph (Homeomorph.neg ℝ)).mul_left
  have hFzero : (∫ x : ℝ, F x)=0 := weighted_normalizedTest_integral_zero A (1/2) hA (by norm_num)
  have hGeq : G=F := by
    funext x
    dsimp [F,G,q]
    rw [actual_normalized_even A hA]
  have hfirst : (∫ x : ℝ, x*F x) = primitivePoleMoment A := by
    simpa only [F,q,show ∀ x : ℝ, (1/2 : ℝ)*x=x/2 by intro x; ring,mul_assoc]
      using actual_first_source_pole_moment hA
  have h := second_convolution_moment F G hF hG hFs hGs
  rw [hGeq,hFzero,hfirst,mul_zero,zero_mul,zero_add,add_zero] at h
  have he (t : ℝ) : t^2*criticalPrimeTest A t=t^2*(F ⋆ G) t := by
    have hw := weighted_correlation_eq_convolution q (1/2) t
    change Real.exp ((1/2 : ℝ)*t)*sourceCorrelation explicitSecondDerivative A t=(F ⋆ G) t at hw
    rw [← hw]
    unfold criticalPrimeTest
    congr 2
    congr 1
    ring
  rw [hGeq] at he
  calc
    _ = ∫ t : ℝ, t^2*(F ⋆ F) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      exact he t
    _ = _ := by rw [h]; ring

theorem reflected_cubic_derivative_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ t : ℝ, (2*A-t)^3*deriv (criticalPrimeTest A) t) =
      6*primitivePoleMoment A^2 := by
  have hg := criticalPrimeTest_contDiff A (show 0 < A by linarith)
  have hs : HasCompactSupport (criticalPrimeTest A) :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).mul_left
  have hi0 := hg.continuous.integrable_of_hasCompactSupport (μ := volume) hs
  have hi1 := (continuous_id.mul hg.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hi2 := ((continuous_id.pow 2).mul hg.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hip := ((show Continuous (fun t : ℝ => (2*A-t)^3) by fun_prop).mul hg.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hid := ((show Continuous (fun t : ℝ => (2*A-t)^3) by fun_prop).mul hg.continuous_deriv_one).integrable_of_hasCompactSupport (μ := volume) hs.deriv.mul_left
  have him := ((show Continuous (fun t : ℝ => -3*(2*A-t)^2) by fun_prop).mul hg.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun t : ℝ => (2*A-t)^3) (u' := fun t : ℝ => -3*(2*A-t)^2)
    (v := criticalPrimeTest A) (v' := deriv (criticalPrimeTest A))
    (fun t _ => by
      have hh := ((hasDerivAt_const t (2*A)).sub (hasDerivAt_id t)).pow 3
      exact hh.congr_deriv (by dsimp; norm_num))
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt) hid him hip
  have he (t : ℝ) : -3*(2*A-t)^2*criticalPrimeTest A t =
      (-12*A^2)*criticalPrimeTest A t+(12*A)*(t*criticalPrimeTest A t)-
        3*(t^2*criticalPrimeTest A t) := by ring
  have hzero : (∫ t : ℝ, criticalPrimeTest A t)=0 := by
    simpa only [criticalPrimeTest,show ∀ t : ℝ, (1/2 : ℝ)*t=t/2 by intro t; ring]
      using full_correlation_moment_zero A hA
  have hone : (∫ t : ℝ, t*criticalPrimeTest A t)=0 := by
    simpa only [criticalPrimeTest,mul_assoc] using actual_first_pole_moment_zero hA
  simp only [he] at h
  have ha := integral_sub ((hi0.const_mul (-12*A^2)).add (hi1.const_mul (12*A))) (hi2.const_mul 3)
  have hb := integral_add (hi0.const_mul (-12*A^2)) (hi1.const_mul (12*A))
  simp only [Pi.add_apply,Pi.mul_apply,Pi.pow_apply,id_eq] at ha hb
  rw [ha,hb,integral_const_mul,
    integral_const_mul,integral_const_mul,hzero,hone,actual_second_correlation_pole_moment hA] at h
  exact h.trans (by ring)

theorem boundary_cubic_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ y in 0..4*A, y^3*boundaryWorkKernel A y) =
      6*A^9*Real.exp (-A)*primitivePoleMoment A^2 := by
  let f := criticalPrimeTest A
  have hsup : Function.support f ⊆ Icc (-(2*A)) (2*A) := by
    intro t ht
    have hc : sourceCorrelation explicitSecondDerivative A t ≠ 0 := by
      intro hn
      exact ht (by simp [f,criticalPrimeTest,hn])
    have ht' : |t| < 2*A := by
      by_contra hn
      exact hc (sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith) (le_of_not_gt hn))
    exact ⟨by linarith [neg_abs_le t],(le_abs_self t).trans ht'.le⟩
  have hts : tsupport f ⊆ Icc (-(2*A)) (2*A) := closure_minimal hsup isClosed_Icc
  have hdout (t : ℝ) (ht : t ∉ Icc (-(2*A)) (2*A)) : deriv f t=0 := by
    by_contra hn
    exact ht (hts (support_deriv_subset hn))
  have hfull : (∫ t : ℝ, (2*A-t)^3*deriv f t) =
      ∫ t in -(2*A)..2*A, (2*A-t)^3*deriv f t := by
    calc
      _ = ∫ t : ℝ, (Icc (-(2*A)) (2*A)).indicator (fun t => (2*A-t)^3*deriv f t) t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2*A)) (2*A)
        · rw [indicator_of_mem ht]
        · rw [indicator_of_notMem ht,hdout t ht,mul_zero]
      _ = _ := zeroExtension_integral _ _ _ (by linarith)
  have href := intervalIntegral.integral_comp_sub_left
    (fun t : ℝ => (2*A-t)^3*deriv f t) (a := 0) (b := 4*A) (2*A)
  have he (y : ℝ) : y^3*boundaryWorkKernel A y =
      (A^9*Real.exp (-A))*((2*A-(2*A-y))^3*deriv f (2*A-y)) := by
    dsimp [boundaryWorkKernel,f]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul]
  have hr : (∫ y in 0..4*A, (2*A-(2*A-y))^3*deriv f (2*A-y)) =
      ∫ t in -(2*A)..2*A, (2*A-t)^3*deriv f t := by
    simpa only [show 2*A-4*A=-(2*A) by ring,sub_zero] using href
  rw [hr,← hfull,reflected_cubic_derivative_integral hA]
  ring

theorem primitive_pole_normalization (A : ℝ) :
    primitivePoleMoment A = unnormalizedPrimitivePoleMoment A /
      Real.sqrt (sourceNormalization A) := by
  unfold primitivePoleMoment unnormalizedPrimitivePoleMoment normalizedPrimitiveBump
  simp_rw [← mul_div_assoc]
  rw [integral_div]

theorem boundary_cubic_moment_unnormalized {A : ℝ} (hA : 1 ≤ A) :
    (∫ y in 0..4*A, y^3*boundaryWorkKernel A y) =
      6*A^9*Real.exp (-A)*unnormalizedPrimitivePoleMoment A^2/sourceNormalization A := by
  have hZ : 0 ≤ sourceNormalization A := by unfold sourceNormalization; positivity
  rw [boundary_cubic_moment hA,primitive_pole_normalization,div_pow,Real.sq_sqrt hZ]
  ring

theorem primitive_pole_moment_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < primitivePoleMoment A := by
  have hp : 0 < A := by linarith
  have hc := (normalizedPrimitiveBump_contDiff hp).continuous
  have hs := normalizedPrimitiveBump_hasCompactSupport hp
  have hf : Continuous (fun x : ℝ => Real.exp (x/2)*normalizedPrimitiveBump A x) := by fun_prop
  have hn (x : ℝ) : 0 ≤ Real.exp (x/2)*normalizedPrimitiveBump A x := by
    apply mul_nonneg (Real.exp_pos _).le
    rw [normalizedPrimitiveBump,scaledBump_eq_indicator A hp]
    by_cases hx : x ∈ Icc (-A) A
    · rw [indicator_of_mem hx]
      unfold bumpInterior
      positivity
    · rw [indicator_of_notMem hx]
      simp
  have hzero : Real.exp ((0 : ℝ)/2)*normalizedPrimitiveBump A 0 ≠ 0 := by
    rw [normalizedPrimitiveBump_eq_interior hp (by constructor <;> linarith)]
    unfold bumpInterior
    have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
    apply ne_of_gt
    simp only [zero_div,Real.exp_zero,one_mul]
    positivity
  exact hf.integral_pos_of_hasCompactSupport_nonneg_nonzero hs.mul_left hn hzero

theorem boundary_cubic_moment_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < ∫ y in 0..4*A, y^3*boundaryWorkKernel A y := by
  rw [boundary_cubic_moment hA]
  exact mul_pos (mul_pos (mul_pos (by norm_num) (pow_pos (by linarith : 0 < A) _))
    (Real.exp_pos _)) (sq_pos_of_pos (primitive_pole_moment_pos hA))


#check primitivePoleMoment
#print axioms primitivePoleMoment
#print primitivePoleMoment

#check unnormalizedPrimitivePoleMoment
#print axioms unnormalizedPrimitivePoleMoment
#print unnormalizedPrimitivePoleMoment

#check weighted_derivative
#print axioms weighted_derivative
#print weighted_derivative

#check first_weighted_derivative
#print axioms first_weighted_derivative
#print first_weighted_derivative

#check actual_first_source_pole_moment
#print axioms actual_first_source_pole_moment
#print actual_first_source_pole_moment

#check second_convolution_moment
#print axioms second_convolution_moment
#print second_convolution_moment

#check actual_second_correlation_pole_moment
#print axioms actual_second_correlation_pole_moment
#print actual_second_correlation_pole_moment

#check reflected_cubic_derivative_integral
#print axioms reflected_cubic_derivative_integral
#print reflected_cubic_derivative_integral

#check boundary_cubic_moment
#print axioms boundary_cubic_moment
#print boundary_cubic_moment

#check primitive_pole_normalization
#print axioms primitive_pole_normalization
#print primitive_pole_normalization

#check boundary_cubic_moment_unnormalized
#print axioms boundary_cubic_moment_unnormalized
#print boundary_cubic_moment_unnormalized

#check primitive_pole_moment_pos
#print axioms primitive_pole_moment_pos
#print primitive_pole_moment_pos

#check boundary_cubic_moment_pos
#print axioms boundary_cubic_moment_pos
#print boundary_cubic_moment_pos

end ContinuousResearch.SourceBoundaryCubic
```
