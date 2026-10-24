# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortSourceConvolution.Variant8880ad865f80daceda5c7bbc000521159965a974ee246eb36a529de429aaebce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b04bddb8c9bd1fc95190f61622be979c3493250e` · SHA-256 `8880ad865f80daceda5c7bbc000521159965a974ee246eb36a529de429aaebce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan

/-!
# Pruning the direct short source does not prune its convolution correction

Batch 16 B16-L05 keeps the complete short-source sector. This exact example
uses the actual centered Mangoldt function, the actual Mobius cutoff U=1,
and V=2. The direct short coefficient vanishes beyond 2, but its convolution
correction is log(2)-1 at every positive multiple of 2. A finite weight at 4,
strictly beyond the short support, sees the correction and not the direct
term. The same weight is the integer restriction of the literal continuous
compact hat max(0,1-|x-4|), supported in [3,5]. No arbitrary coefficient is
substituted for the arithmetic source.

Human support-fidelity direction: grwtsk contributors. Local actual arithmetic
counterexample and Lean implementation: OpenAI Codex. Mathlib Mobius,
von Mangoldt and Dirichlet convolution retain upstream names and origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ShortSourceConvolution

open CenteredVaughan
open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta BigOperators
noncomputable section

theorem first_mobius_cutoff_is_unit : lowPart 1 (μ : ArithmeticFunction ℝ) = 1 := by
  ext n
  by_cases hn : n ≤ 1
  · have hcases : n = 0 ∨ n = 1 := by omega
    rcases hcases with rfl | rfl
    · simp [lowPart]
    · simp [lowPart, ArithmeticFunction.intCoe_apply]
  · have hn1 : n ≠ 1 := by omega
    simp [lowPart, hn, ArithmeticFunction.one_apply_ne hn1]

theorem exact_short_source (n : ℕ) :
    lowPart 2 centeredMangoldt n = if n = 2 then Real.log 2 - 1 else 0 := by
  by_cases hn : n ≤ 2
  · have hcases : n = 0 ∨ n = 1 ∨ n = 2 := by omega
    rcases hcases with rfl | rfl | rfl
    · simp [lowPart]
    · simp [lowPart, centeredMangoldt_one]
    · rw [show lowPart 2 centeredMangoldt 2 = centeredMangoldt 2 by simp [lowPart],
        centeredMangoldt_apply (by omega),
        ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2)]
      simp
  · have hn2 : n ≠ 2 := by omega
    simp [lowPart, hn, hn2]

def shortCorrection : ArithmeticFunction ℝ :=
  (lowPart 1 μ * lowPart 2 centeredMangoldt) * ζ

theorem exact_short_correction (n : ℕ) :
    shortCorrection n = if 2 ∈ n.divisors then Real.log 2 - 1 else 0 := by
  rw [shortCorrection, first_mobius_cutoff_is_unit, one_mul,
    ArithmeticFunction.coe_mul_zeta_apply]
  simp only [exact_short_source]
  simp

theorem short_correction_negative_on_positive_even {n : ℕ} (hn : n ≠ 0) (heven : 2 ∣ n) :
    shortCorrection n < 0 := by
  rw [exact_short_correction, if_pos (Nat.mem_divisors.mpr ⟨heven, hn⟩)]
  have h := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    (by norm_num : (2 : ℝ) ≠ 1)
  linarith

theorem direct_pruned_correction_retained :
    lowPart 2 centeredMangoldt 4 = 0 ∧ shortCorrection 4 ≠ 0 := by
  constructor
  · simp [exact_short_source]
  · exact (short_correction_negative_on_positive_even (by norm_num) (by norm_num)).ne

def fourthWeight (n : ℕ) : ℝ := if n = 4 then 1 else 0

theorem finite_weight_is_beyond_short_support : ∀ n : ℕ, n ≤ 2 → fourthWeight n = 0 := by
  intro n hn
  simp [fourthWeight, show n ≠ 4 by omega]

theorem finite_weight_sees_only_correction :
    (∑ n ∈ Finset.range 5, fourthWeight n * lowPart 2 centeredMangoldt n) = 0 ∧
      (∑ n ∈ Finset.range 5, fourthWeight n * shortCorrection n) = Real.log 2 - 1 := by
  constructor
  · simp [fourthWeight, exact_short_source]
  · norm_num [Finset.sum_range_succ, fourthWeight, exact_short_correction]

def fourthHat (x : ℝ) : ℝ := max 0 (1 - |x - 4|)

theorem fourth_hat_continuous : Continuous fourthHat := by
  unfold fourthHat
  fun_prop

theorem fourth_hat_zero_outside {x : ℝ} (hx : x ≤ 3 ∨ 5 ≤ x) : fourthHat x = 0 := by
  unfold fourthHat
  rcases hx with hx | hx
  · rw [abs_of_nonpos (by linarith : x - 4 ≤ 0)]
    exact max_eq_left (by linarith)
  · rw [abs_of_nonneg (by linarith : 0 ≤ x - 4)]
    exact max_eq_left (by linarith)

theorem fourth_hat_integer_values (n : ℕ) : fourthHat n = fourthWeight n := by
  by_cases hn : n = 4
  · subst n
    norm_num [fourthHat, fourthWeight]
  · have hcases : n ≤ 3 ∨ 5 ≤ n := by omega
    have hx : (n : ℝ) ≤ 3 ∨ 5 ≤ (n : ℝ) := by
      rcases hcases with h | h
      · left; exact_mod_cast h
      · right; exact_mod_cast h
    rw [fourth_hat_zero_outside hx]
    simp [fourthWeight, hn]

/-- A literal continuous compact hat sees the retained actual arithmetic port. -/
theorem continuous_compact_hat_retains_correction :
    (∑ n ∈ Finset.range 5, fourthHat n * lowPart 2 centeredMangoldt n) = 0 ∧
      (∑ n ∈ Finset.range 5, fourthHat n * shortCorrection n) = Real.log 2 - 1 := by
  simpa only [fourth_hat_integer_values] using finite_weight_sees_only_correction

end
end GRWTSK.RiemannHypothesis.Conversation.ShortSourceConvolution
```
