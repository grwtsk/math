# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEulerPotentialPhaseNative01.Variant7995f362d71bab5fe0d736cc17fb0e6513b46e6c1710d789985ada1b0bf97bc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `217c501251484d2af5fb3866119f6e26c509a779` · SHA-256 `7995f362d71bab5fe0d736cc17fb0e6513b46e6c1710d789985ada1b0bf97bc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualEulerLogarithmicPrimitive

/-!
Literal finite Mangoldt logarithmic-potential phase tests. The real part is an
actual closed cosine inventory, not a positive real function on a vertical line.
These tests retain every prime power and do not determine the signed product
with the actual Mellin slope or supply an original residual upper bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEulerPotentialPhase
open Complex
open SourceActualEulerLogarithmicPrimitive
noncomputable section

private def a (c : ℝ) (n : ℕ) : ℝ :=
  (ArithmeticFunction.vonMangoldt n / Real.log n) * Real.exp (-c * Real.log n)

private theorem a_nonneg (c : ℝ) (n : ℕ) : 0 ≤ a c n := by
  rcases eq_or_ne n 0 with rfl | hn0
  · simp [a]
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [a]
  have hn2 : 2 ≤ n := by omega
  exact mul_nonneg (div_nonneg ArithmeticFunction.vonMangoldt_nonneg
    (Real.log_pos (by exact_mod_cast hn2)).le) (Real.exp_pos _).le

private theorem logterm_re (c t : ℝ) (n : ℕ) :
    ((((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      Complex.exp (-((c:ℂ)+(t:ℂ)*I)*(Real.log n:ℂ))).re) =
    a c n * Real.cos (t * Real.log n) := by
  simp [Complex.mul_re, Complex.mul_im, Complex.exp_re, a, Real.cos_neg]

/-- Exact real-phase readout of the full actual closed inventory. -/
theorem actualClosedPrimeLogPotential_re (A c t : ℝ) :
    (actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I)).re =
      ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        a c n * Real.cos (t * Real.log n) := by
  simp only [actualClosedPrimeLogPotential, map_sum, logterm_re]

/-- Actual centered potential has a nonpositive real part at every frequency. -/
theorem actualClosedPrimeLogPotential_centered_re_nonpos (A c t : ℝ) :
    (actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I) -
      actualClosedPrimeLogPotential A (c:ℂ)).re ≤ 0 := by
  have ht := actualClosedPrimeLogPotential_re A c t
  have hz := actualClosedPrimeLogPotential_re A c 0
  simp only [Complex.ofReal_zero, zero_mul, add_zero, zero_mul, Real.cos_zero,
    mul_one] at hz
  simp only [Complex.sub_re, ht, hz]
  exact sub_nonpos.mpr (Finset.sum_le_sum fun n _ =>
    mul_le_of_le_one_right (a_nonneg c n) (Real.cos_le_one _))

private theorem two_in_closed (A : ℝ) (hA : 1 ≤ A) :
    2 ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1) := by
  apply Finset.mem_range.mpr
  have he : (2:ℝ) ≤ Real.exp (2*A) := by
    have h := Real.add_one_le_exp (2*A)
    linarith
  have hf : 2 ≤ ⌊Real.exp (2*A)⌋₊ := (Nat.le_floor_iff (Real.exp_pos _).le).mpr he
  omega

/-- The actual prime 2 enforces a strict quantitative centered phase drop. -/
theorem actualClosedPrimeLogPotential_centered_re_prime_two
    (A c : ℝ) (hA : 1 ≤ A) :
    (actualClosedPrimeLogPotential A ((c:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I) -
      actualClosedPrimeLogPotential A (c:ℂ)).re ≤
      -2 * Real.exp (-c * Real.log 2) := by
  have hl : Real.log (2:ℝ) ≠ 0 := (Real.log_pos (by norm_num)).ne'
  have ha : a c 2 = Real.exp (-c * Real.log 2) := by
    simp [a, ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2), hl]
  have hc : Real.cos ((Real.pi/Real.log 2) * Real.log (2:ℝ)) = -1 := by
    rw [div_mul_cancel₀ _ hl, Real.cos_pi]
  have ht := actualClosedPrimeLogPotential_re A c (Real.pi/Real.log 2)
  have hz := actualClosedPrimeLogPotential_re A c 0
  simp only [Complex.ofReal_zero, zero_mul, add_zero, Real.cos_zero, mul_one] at hz
  rw [Complex.sub_re, ht, hz, ← Finset.sum_sub_distrib]
  let f : ℕ → ℝ := fun n => a c n * Real.cos ((Real.pi/Real.log 2)*Real.log n)-a c n
  have hn (n : ℕ) : f n ≤ 0 := by
    exact sub_nonpos.mpr (mul_le_of_le_one_right (a_nonneg c n) (Real.cos_le_one _))
  have he : ∑ n ∈ (Finset.range (⌊Real.exp (2*A)⌋₊+1)).erase 2, f n ≤ 0 :=
    Finset.sum_nonpos fun n _ => hn n
  have hs := Finset.sum_erase_add (Finset.range (⌊Real.exp (2*A)⌋₊+1)) f
    (two_in_closed A hA)
  change ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), f n ≤ _
  rw [← hs]
  dsimp [f] at *
  rw [ha, hc]
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualEulerPotentialPhase
```
