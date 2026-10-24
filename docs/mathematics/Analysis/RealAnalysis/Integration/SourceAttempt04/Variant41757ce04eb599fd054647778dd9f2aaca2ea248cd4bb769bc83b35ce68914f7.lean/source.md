# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt04.Variant41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca2669454943ae7ee103c3c811321581fc975546` · SHA-256 `41757ce04eb599fd054647778dd9f2aaca2ea248cd4bb769bc83b35ce68914f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
Positive-kernel budget component of #313; actual source G identity is separate.
grwtsk contributors's mathematical direction; OpenAI Codex scratch construction.
-/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ArchimedeanKernel
open MeasureTheory Set

def kernel (t : ℝ) : ℝ := Real.exp (-t / 2) / (1 - Real.exp (-2 * t))
def secondMomentIntegrand (t : ℝ) : ℝ := t ^ 2 * kernel t
def majorant (t : ℝ) : ℝ := (t ^ 2 + t / 2) * Real.exp (-t / 2)

theorem denominator_pos {t : ℝ} (ht : 0 < t) : 0 < 1 - Real.exp (-2 * t) := by
  have he : Real.exp (-2 * t) < 1 := by
    simpa using Real.exp_lt_exp.mpr (by linarith : -2 * t < 0)
  linarith

theorem kernel_nonneg {t : ℝ} (ht : 0 < t) : 0 ≤ kernel t :=
  (div_pos (Real.exp_pos _) (denominator_pos ht)).le

theorem reciprocal_denominator_bound {t : ℝ} (ht : 0 < t) :
    1 / (1 - Real.exp (-2 * t)) ≤ 1 + 1 / (2 * t) := by
  have hlin : 2 * t ≤ Real.exp (2 * t) - 1 := by
    linarith [Real.add_one_le_exp (2 * t)]
  have hepos : 0 < Real.exp (2 * t) - 1 := by linarith
  have hid : 1 / (1 - Real.exp (-2 * t)) = 1 + 1 / (Real.exp (2 * t) - 1) := by
    rw [show -2 * t = -(2 * t) by ring, Real.exp_neg]
    field_simp [hepos.ne']
    ring
  rw [hid]
  exact add_le_add le_rfl (one_div_le_one_div_of_le (by linarith : 0 < 2 * t) hlin)

theorem secondMoment_bound {t : ℝ} (ht : 0 < t) :
    0 ≤ secondMomentIntegrand t ∧ secondMomentIntegrand t ≤ majorant t := by
  refine ⟨mul_nonneg (sq_nonneg _) (kernel_nonneg ht), ?_⟩
  unfold secondMomentIntegrand kernel majorant
  have h := mul_le_mul_of_nonneg_left (reciprocal_denominator_bound ht)
    (by positivity : 0 ≤ t ^ 2 * Real.exp (-t / 2))
  have he : t ^ 2 * (Real.exp (-t / 2) / (1 - Real.exp (-2 * t))) =
      (t ^ 2 * Real.exp (-t / 2)) * (1 / (1 - Real.exp (-2 * t))) := by ring
  rw [he]
  apply h.trans_eq
  field_simp

theorem polynomial_exp_integrable (n : ℕ) :
    IntegrableOn (fun t : ℝ => t ^ n * Real.exp (-t / 2)) (Ioi 0) := by
  have h := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (n : ℝ)) (p := 1) (b := 1 / 2)
    (lt_of_lt_of_le (by norm_num : (-1 : ℝ) < 0) (Nat.cast_nonneg n))
    (by norm_num) (by norm_num)
  have he (t : ℝ) : -(1 / 2 : ℝ) * t = -t / 2 := by ring
  simpa only [Real.rpow_natCast, Real.rpow_one, he] using h

theorem polynomial_exp_integral (n : ℕ) :
    (∫ t : ℝ in Ioi 0, t ^ n * Real.exp (-t / 2)) = 2 ^ (n + 1) * (n.factorial : ℝ) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a := (n : ℝ) + 1) (r := 1 / 2) (by positivity) (by norm_num)
  have he : (n : ℝ) + 1 - 1 = n := by ring
  have hex (t : ℝ) : -((1 / 2 : ℝ) * t) = -t / 2 := by ring
  simpa only [he, Real.rpow_natCast, show (1 / (1 / 2 : ℝ)) = 2 by norm_num,
    Real.rpow_add (by norm_num : (0 : ℝ) < 2), Real.rpow_natCast, Real.rpow_one,
    Real.Gamma_nat_eq_factorial, hex, pow_succ] using h

end ContinuousResearch.ArchimedeanKernel

#print axioms ContinuousResearch.ArchimedeanKernel.denominator_pos
#print axioms ContinuousResearch.ArchimedeanKernel.kernel_nonneg
#print axioms ContinuousResearch.ArchimedeanKernel.reciprocal_denominator_bound
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_bound
#print axioms ContinuousResearch.ArchimedeanKernel.polynomial_exp_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.polynomial_exp_integral
```
