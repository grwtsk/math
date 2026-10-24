# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Attempt01.Variantebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d667dbdb108d94582cd08445f3ecafd38eb8b9a` · SHA-256 `ebf0bfd4edec3d0c9cf63d0dc92300aa0899110120c0c00dd2f60acd9f7a8d00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RootActualXiExponentialEnvelope
import Mathlib.NumberTheory.LSeries.SumCoeff
import Mathlib.NumberTheory.LSeries.Dirichlet

/-!
The actual closed Chebyshev sum has its genuine complex Mellin identity on
Re(s)>1. Only maintained Chebyshev and L-series inputs are used. No right
half-plane continuation, prime-number theorem callback or RH premise enters.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPsiComplexMellin
open MeasureTheory Set Filter Finset Complex Asymptotics
open scoped Topology Interval
noncomputable section

/-- The closed prime-power Chebyshev sum is tested on the whole positive tail after one. -/
def actualPsiComplexMellin (s : ℂ) : ℂ :=
  ∫ x in Ioi (1 : ℝ), (Chebyshev.psi x : ℂ) * (x : ℂ) ^ (-(s + 1))

private theorem psi_eq_closed_sum (x : ℝ) :
    Chebyshev.psi x = ∑ n ∈ Icc 1 (Nat.floor x), (ArithmeticFunction.vonMangoldt n : ℝ) := by
  unfold Chebyshev.psi
  congr 1
  ext n
  simp only [mem_Ioc, mem_Icc]
  omega

private theorem actual_vonMangoldt_prefix_bigO :
    (fun N : ℕ => ∑ n ∈ Icc 1 N, (ArithmeticFunction.vonMangoldt n : ℝ))
      =O[atTop] (fun N : ℕ => (N : ℝ) ^ (1 : ℝ)) := by
  apply IsBigO.of_bound (Real.log 4 + 4)
  filter_upwards [] with N
  have he : (∑ n ∈ Icc 1 N, (ArithmeticFunction.vonMangoldt n : ℝ)) =
      Chebyshev.psi (N : ℝ) := by rw [psi_eq_closed_sum, Nat.floor_natCast]
  rw [he, Real.norm_eq_abs, abs_of_nonneg (Chebyshev.psi_nonneg _), Real.rpow_one,
    Real.norm_eq_abs, abs_of_nonneg (Nat.cast_nonneg N)]
  exact Chebyshev.psi_le_const_mul_self (Nat.cast_nonneg N)

private theorem actual_psi_measurable : Measurable Chebyshev.psi := by
  have he : Chebyshev.psi = fun y : ℝ =>
      ∑ n ∈ Icc 0 (Nat.floor y), (ArithmeticFunction.vonMangoldt n : ℝ) := by
    funext y
    rw [Chebyshev.psi_eq_sum_Icc]
  rw [he]
  exact (measurable_of_countable (fun M : ℕ =>
    ∑ n ∈ Icc 0 M, (ArithmeticFunction.vonMangoldt n : ℝ))).comp Nat.measurable_floor

/-- Genuine complex Mellin L1 is proved on Re(s)>1 before any signed integral split. -/
theorem actualPsiComplexMellin_integrableOn {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn (fun x : ℝ => (Chebyshev.psi x : ℂ) * (x : ℂ) ^ (-(s + 1)))
      (Ioi (1 : ℝ)) := by
  have hm : AEStronglyMeasurable
      (fun x : ℝ => (Chebyshev.psi x : ℂ) * (x : ℂ) ^ (-(s + 1)))
      (volume.restrict (Ioi (1 : ℝ))) := by
    have hp : Measurable (fun x : ℝ => (Chebyshev.psi x : ℂ)) :=
      Complex.measurable_ofReal.comp actual_psi_measurable
    have hc : Measurable (fun x : ℝ => (x : ℂ) ^ (-(s + 1))) := by fun_prop
    exact (hp.mul hc).aestronglyMeasurable
  have hD : IntegrableOn (fun x : ℝ => (Real.log 4 + 4) * x ^ (-s.re)) (Ioi (1 : ℝ)) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith : -s.re < -1) (by norm_num)).const_mul _
  apply hD.mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  have hx0 : 0 < x := lt_trans (by norm_num) hx
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Chebyshev.psi_nonneg _), Complex.norm_cpow_eq_rpow_re_of_pos hx0]
  have he : x * x ^ (-(s + 1)).re = x ^ (-s.re) := by
    simp only [neg_re, add_re, one_re]
    rw [← Real.rpow_one x, ← Real.rpow_add hx0]
    congr 1
    ring
  calc
    _ ≤ ((Real.log 4 + 4) * x) * x ^ (-(s + 1)).re :=
      mul_le_mul_of_nonneg_right (Chebyshev.psi_le_const_mul_self hx0.le)
        (Real.rpow_nonneg hx0.le _)
    _ = _ := by rw [mul_assoc, he]

/-- Maintained finite-prefix Mellin summation keeps every closed prime-power coefficient. -/
theorem actualPsiComplexMellin_mul_eq_LSeries {s : ℂ} (hs : 1 < s.re) :
    s * actualPsiComplexMellin s =
      LSeries (fun n => ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) s := by
  have hh := LSeries_eq_mul_integral_of_nonneg
    (fun n => (ArithmeticFunction.vonMangoldt n : ℝ)) (by norm_num : (0 : ℝ) ≤ 1)
      hs actual_vonMangoldt_prefix_bigO (fun n => ArithmeticFunction.vonMangoldt_nonneg)
  rw [hh]
  unfold actualPsiComplexMellin
  congr 1
  apply setIntegral_congr_fun measurableSet_Ioi
  intro x _
  rw [psi_eq_closed_sum, ofReal_sum]

/-- The actual complex Chebyshev Mellin transform is the genuine zeta logarithmic derivative. -/
theorem actualPsiComplexMellin_mul_eq_neg_zeta_deriv {s : ℂ} (hs : 1 < s.re) :
    s * actualPsiComplexMellin s = -deriv riemannZeta s / riemannZeta s := by
  rw [actualPsiComplexMellin_mul_eq_LSeries hs]
  exact ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs

end
end FormalResearch.RiemannHypothesis.SourceActualPsiComplexMellin
```
