# Complete source: GRWTSK.NumberTheory.LSeries.ClosedMoebiusPolynomial

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c3a3052330aeaac88775840489ff6922f8c2958` · SHA-256 `35bfb6f3a659be31d38029467c74cac57925d1fffccde82d9e64fd8b5aef944c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.LSeries.TruncatedMoebiusSeries
import Mathlib.Analysis.SpecialFunctions.ExpDeriv

/-!
# Entire Dirichlet polynomials of closed Mobius cutoffs

Human mathematical direction: grwtsk contributors.
Formal recovery: OpenAI Codex. 
The positive closed cutoff is retained, including cutoff zero.
These regularity reductions supply no arithmetic growth witness.
-/
namespace GRWTSK.NumberTheory.LSeries
open GRWTSK.NumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius

/-- The actual closed-cutoff series is a finite sum at every complex argument. -/
theorem closed_moebius_series_finite (U : ℕ) (s : ℂ) :
    closedMoebiusSeries U s =
      ∑ n ∈ Finset.Icc 1 U, (μ n : ℂ) / (n : ℂ) ^ s := by
  have hsupport : ∀ n ∉ Finset.Icc 1 U,
      LSeries.term (closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) s n = 0 := by
    intro n hn
    by_cases h0 : n = 0
    · subst n
      exact LSeries.term_zero _ _
    · have hnU : ¬n ≤ U := by
        intro h
        exact hn (Finset.mem_Icc.mpr ⟨Nat.one_le_iff_ne_zero.mpr h0, h⟩)
      rw [LSeries.term_of_ne_zero h0]
      change (if n ≤ U then (μ n : ℂ) else 0) / (n : ℂ) ^ s = 0
      simp [hnU]
  unfold closedMoebiusSeries LSeries
  rw [tsum_eq_sum hsupport]
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hn1, hnU⟩ := Finset.mem_Icc.mp hn
  rw [LSeries.term_of_ne_zero (Nat.ne_zero_of_lt hn1)]
  change (if n ≤ U then (μ n : ℂ) else 0) / (n : ℂ) ^ s = _
  simp [hnU]

/-- Exponential form with the complex logarithm of each positive integer base. -/
theorem closed_moebius_series_exp (U : ℕ) (s : ℂ) :
    closedMoebiusSeries U s =
      ∑ n ∈ Finset.Icc 1 U, (μ n : ℂ) * Complex.exp (-(Complex.log (n : ℂ) * s)) := by
  rw [closed_moebius_series_finite]
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : (n : ℂ) ≠ 0 := by
    exact_mod_cast Nat.ne_zero_of_lt (Finset.mem_Icc.mp hn).1
  rw [Complex.cpow_def_of_ne_zero hn0, div_eq_mul_inv, Complex.exp_neg]

/-- The same source function is entire; there is no half-plane restriction. -/
theorem closed_moebius_series_analyticAt (U : ℕ) (s : ℂ) :
    AnalyticAt ℂ (closedMoebiusSeries U) s := by
  have heq : closedMoebiusSeries U = fun z : ℂ =>
      ∑ n ∈ Finset.Icc 1 U, (μ n : ℂ) * Complex.exp (-(Complex.log (n : ℂ) * z)) :=
    funext (closed_moebius_series_exp U)
  rw [heq]
  apply Finset.analyticAt_fun_sum
  intro n hn
  fun_prop

/-- The empty positive prefix stays zero even at exceptional complex arguments. -/
theorem closed_moebius_series_zero (s : ℂ) : closedMoebiusSeries 0 s = 0 := by
  rw [closed_moebius_series_finite]
  simp

/-- The included upper atom at cutoff one supplies the constant polynomial one. -/
theorem closed_moebius_series_one (s : ℂ) : closedMoebiusSeries 1 s = 1 := by
  rw [closed_moebius_series_finite]
  simp

end GRWTSK.NumberTheory.LSeries
```
