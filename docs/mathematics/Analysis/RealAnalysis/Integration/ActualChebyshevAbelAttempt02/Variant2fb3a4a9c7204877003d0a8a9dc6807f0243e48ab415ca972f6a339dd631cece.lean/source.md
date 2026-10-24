# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevAbelAttempt02.Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cdd2464acaa259838d0cebe59d4edf6a87d5d63` · SHA-256 `2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MediumPNTMoment
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.MeasureTheory.Function.JacobianOneDim

/-! Genuine closed finite Chebyshev-to-weighted-Mangoldt source identity.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
No centering, unweighted centered remainder integrability, numerical Ramaré instance
or arithmetic signed witness is assumed. -/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped Topology Interval
namespace ContinuousResearch.ActualChebyshevAbel
open ContinuousResearch.MediumPNTLogError ContinuousResearch.MediumPNTMoment
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens

private theorem inverse_hasDerivAt {b x : ℝ} (hx : x ∈ Icc (1:ℝ) b) :
    HasDerivAt (fun u : ℝ => u⁻¹) (-(x^2)⁻¹) x := by
  have hx0 : x ≠ 0 := by linarith [hx.1]
  simpa only [Pi.inv_apply,id_eq,neg_div,one_div] using (hasDerivAt_id x).inv hx0

private theorem inverse_derivative_integrable (b : ℝ) :
    IntegrableOn (deriv (fun u : ℝ => u⁻¹)) (Icc (1:ℝ) b) := by
  have hc : ContinuousOn (fun u : ℝ => -(u^2)⁻¹) (Icc (1:ℝ) b) := by
    apply ContinuousOn.neg
    apply ContinuousOn.inv₀ (continuousOn_id.pow 2)
    intro x hx
    exact pow_ne_zero 2 (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1))
  apply hc.integrableOn_Icc.congr_fun
  · intro x hx
    exact (inverse_hasDerivAt hx).deriv.symm
  · exact measurableSet_Icc

/-- Actual weighted inventory, including all closed upper atoms; zero and unit terms vanish literally. -/
theorem weightedMangoldt_sum_Icc (b : ℝ) :
    (∑ n ∈ Finset.Icc 0 ⌊b⌋₊, (n:ℝ)⁻¹ * ArithmeticFunction.vonMangoldt n) =
      weightedMangoldt ⌊b⌋₊ := by
  rw [← Finset.add_sum_Ioc_eq_sum_Icc (Nat.zero_le _)]
  simp only [Nat.cast_zero,inv_zero,zero_mul,zero_add,weightedMangoldt,div_eq_mul_inv,mul_comm]

/-- Genuine Abel identity at an arbitrary real positive cutoff, without omitting touching atoms. -/
theorem weightedMangoldt_eq_psi_add_integral {b : ℝ} (_hb : 1 ≤ b) :
    weightedMangoldt ⌊b⌋₊ = Chebyshev.psi b / b +
      ∫ x in Ioc (1:ℝ) b, Chebyshev.psi x / x^2 := by
  have ha := sum_mul_eq_sub_integral_mul₀ (c:=ArithmeticFunction.vonMangoldt)
    (f:=fun u : ℝ => u⁻¹) (by simp) b
    (fun x hx => (inverse_hasDerivAt hx).differentiableAt)
    (inverse_derivative_integrable b)
  rw [weightedMangoldt_sum_Icc, ← Chebyshev.psi_eq_sum_Icc] at ha
  have hi : (∫ x in Ioc (1:ℝ) b, deriv (fun u : ℝ => u⁻¹) x *
      ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) =
      -(∫ x in Ioc (1:ℝ) b, Chebyshev.psi x / x^2) := by
    rw [←integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [(inverse_hasDerivAt ⟨hx.1.le,hx.2⟩).deriv,←Chebyshev.psi_eq_sum_Icc]
    ring
  rw [hi] at ha
  simpa only [sub_neg_eq_add,div_eq_mul_inv,mul_comm] using ha

/-- The actual exp Jacobian on the finite positive interval retains both physical endpoints. -/
theorem psi_integral_log_dictionary (t : ℝ) :
    (∫ x in Ioc (1:ℝ) (Real.exp t), Chebyshev.psi x / x^2) =
      ∫ u in Ioc (0:ℝ) t, (1+psiRelativeError u) := by
  have hj := integral_image_eq_integral_abs_deriv_smul
    (s:=Ioc (0:ℝ) t) measurableSet_Ioc
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn (fun x : ℝ => Chebyshev.psi x / x^2)
  have he : (fun u : ℝ => |Real.exp u| • (Chebyshev.psi (Real.exp u)/(Real.exp u)^2)) =
      fun u : ℝ => 1+psiRelativeError u := by
    funext u
    rw [abs_of_pos (Real.exp_pos u),smul_eq_mul]
    unfold psiRelativeError
    rw [Real.exp_neg]
    field_simp
    ring
  simpa only [Real.image_exp_Ioc,Real.exp_zero,he] using hj

/-- Exact finite source dictionary for every real nonnegative height. -/
theorem mangoldtLogPrefix_eq_psiRelativeError_integral {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogPrefix t = 1+psiRelativeError t +
      ∫ u in Ioc (0:ℝ) t, (1+psiRelativeError u) := by
  rw [mangoldtLogPrefix, weightedMangoldt_eq_psi_add_integral
    (show 1 ≤ Real.exp t by simpa using Real.exp_le_exp.mpr ht),
    psi_integral_log_dictionary]
  unfold psiRelativeError
  rw [Real.exp_neg]
  ring

/-- Literal finite centering dictionary; the infinite centering equality remains a separate obligation. -/
theorem mangoldtLogError_centered_eq_psiRelativeError {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogError t+Real.eulerMascheroniConstant =
      psiRelativeError t+(∫ u in Ioc (0:ℝ) t, psiRelativeError u)+1+
        Real.eulerMascheroniConstant := by
  have hi : IntegrableOn psiRelativeError (Ioc (0:ℝ) t) :=
    psiRelativeError_integrable.mono_set (fun _ h => h.1)
  have hc : (∫ u in Ioc (0:ℝ) t, (1:ℝ)) = t := by
    rw [← intervalIntegral.integral_of_le ht,intervalIntegral.integral_const]
    simp
  have hconst : IntegrableOn (fun _ : ℝ => (1:ℝ)) (Ioc (0:ℝ) t) :=
    integrableOn_const (C:=1) measure_Ioc_lt_top.ne
  rw [mangoldtLogError,mangoldtLogPrefix_eq_psiRelativeError_integral ht,
    integral_add hconst hi,hc]
  ring

/-- Equivalent actual-source finite interval form; no improper centering premise is introduced. -/
theorem mangoldtLogError_centered_eq_interval {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogError t+Real.eulerMascheroniConstant =
      psiRelativeError t+(∫ u in (0:ℝ)..t, psiRelativeError u)+1+
        Real.eulerMascheroniConstant := by
  rw [intervalIntegral.integral_of_le ht]
  exact mangoldtLogError_centered_eq_psiRelativeError ht

end ContinuousResearch.ActualChebyshevAbel
set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_sum_Icc
#print axioms ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_sum_Icc
#print ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_sum_Icc
#check ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_eq_psi_add_integral
#print axioms ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_eq_psi_add_integral
#print ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_eq_psi_add_integral
#check ContinuousResearch.ActualChebyshevAbel.psi_integral_log_dictionary
#print axioms ContinuousResearch.ActualChebyshevAbel.psi_integral_log_dictionary
#print ContinuousResearch.ActualChebyshevAbel.psi_integral_log_dictionary
#check ContinuousResearch.ActualChebyshevAbel.mangoldtLogPrefix_eq_psiRelativeError_integral
#print axioms ContinuousResearch.ActualChebyshevAbel.mangoldtLogPrefix_eq_psiRelativeError_integral
#print ContinuousResearch.ActualChebyshevAbel.mangoldtLogPrefix_eq_psiRelativeError_integral
#check ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_psiRelativeError
#print axioms ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_psiRelativeError
#print ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_psiRelativeError
#check ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_interval
#print axioms ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_interval
#print ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_interval
```
