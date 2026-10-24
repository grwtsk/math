# Complete source: GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9343f6b16e6c0789a304307849e3b7e418b5df3` · SHA-256 `38753e3c55f0215f41ebb8a4ac5b47c724df440dc4da02ec5e2f4af86ac7609a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula
import GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Omega

set_option autoImplicit false

/-!
# Canonical tent enclosures imply actual prime witnesses

The complete source identity and the coefficient-kappa tail are supplied by
CanonicalTentExplicitFormula, not by application hypotheses. Only certified
finite-head information and a strict corrected margin remain. The correction
prefix is an UPPER approximation and its complete geometric remainder is
subtracted. No numerical zero inventory or evaluator is constructed here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open TentSource CountedTentTail LegendreLogBudget SignedTentCorrection
open CanonicalTentAbsolute CanonicalTentExplicitFormula

noncomputable section

/-- A lower bound on prime-only mass, NOT a new arithmetic or spectral source.
zeroUpper bounds the real part of the same complete finite head; correctionLower
bounds the complete signed trivial-zero correction. The scaled tail is retained. -/
def canonicalPrimeMargin (n : ℕ) (T zeroUpper correctionLower : ℝ) : ℝ :=
  squareRadius n - zeroUpper + correctionLower -
    canonicalTailBudget (squareCenter n) (squareRadius n) T - squareCorrectionBudget n

/-- Complex evaluation error implies the one-sided real enclosure needed below. -/
theorem head_re_le_of_norm_enclosure (n : ℕ) (T : ℝ) (evaluated : ℂ) (error : ℝ)
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated‖ ≤ error) :
    (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1).re ≤ evaluated.re + error := by
  have he := (Complex.abs_re_le_norm
    ((∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated)).trans heval
  have hu := (abs_le.mp he).2
  simp only [Complex.sub_re] at hu
  linarith

/-- One-sided head and correction enclosures give a lower bound for the ACTUAL mass.
No source, summability, counting, or contour hypothesis is supplied. -/
theorem mass_lower_of_real_enclosures (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 2 ≤ T)
    (zeroUpper correctionLower : ℝ)
    (hzero : (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1).re ≤ zeroUpper)
    (hcorr : correctionLower ≤ squareTrivialCorrection n) :
    squareRadius n - zeroUpper + correctionLower -
      canonicalTailBudget (squareCenter n) (squareRadius n) T ≤ squareTentMangoldt n := by
  have he := norm_square_source_sub_finite_le n hn T hT
  have hr := (Complex.abs_re_le_norm
    ((squareTentMangoldt n : ℂ) - ((squareRadius n : ℂ) -
      (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1) +
      (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)))).trans he
  have hlo := (abs_le.mp hr).1
  simp only [Complex.sub_re, Complex.add_re, Complex.ofReal_re] at hlo
  change correctionLower ≤ rationalTentCorrection (squareCenter n) (squareRadius n) at hcorr
  linarith

/-- Strict positivity survives complete proper-prime-power subtraction. -/
theorem prime_in_square_of_real_enclosures (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (zeroUpper correctionLower : ℝ)
    (hzero : (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1).re ≤ zeroUpper)
    (hcorr : correctionLower ≤ squareTrivialCorrection n)
    (hmargin : 0 < canonicalPrimeMargin n T zeroUpper correctionLower) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hl := mass_lower_of_real_enclosures n hn T hT zeroUpper correctionLower hzero hcorr
  apply prime_in_square_of_tent_mass n (by omega)
  unfold canonicalPrimeMargin at hmargin
  linarith

/-- All analytic suppliers and the signed correction floor are derived internally.
The finite evaluation and strict margin remain genuine proof obligations. -/
theorem prime_in_square_of_canonical_tent (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (evaluated : ℂ) (error : ℝ)
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated‖ ≤ error)
    (hmargin : 0 < canonicalPrimeMargin n T (evaluated.re + error) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_real_enclosures n hn T hT (evaluated.re + error) (-squareTrivialBudget n)
    (head_re_le_of_norm_enclosure n T evaluated error heval)
    (squareTrivialCorrection_bounds n hn).1 hmargin

/-- A finite exact inventory is accepted only with pointwise complete membership.
No comparison of list lengths or approximate heights can replace this premise. -/
theorem prime_in_square_of_exact_inventory (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (S : Finset ZeroPoint)
    (hS : ∀ z, z ∈ S ↔ height z ≤ T) (evaluated : ℂ) (error : ℝ)
    (heval : ‖(∑ z ∈ S, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated‖ ≤ error)
    (hmargin : 0 < canonicalPrimeMargin n T (evaluated.re + error) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hhead := heightHead_eq_of_exact_membership T S hS
  rw [hhead] at heval
  exact prime_in_square_of_canonical_tent n hn T hT evaluated error heval hmargin

/-- The finite negative correction prefix is an upper approximation. Both its
finite evaluation error and its complete omitted-cell allowance are charged. -/
theorem correction_lower_of_prefix_enclosure (n K : ℕ) (hn : 2 ≤ n)
    (correctionValue correctionError : ℝ)
    (heval : |correctionPrefix K (squareCenter n) (squareRadius n) - correctionValue| ≤
      correctionError) :
    correctionValue - correctionError - squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ K ≤
      squareTrivialCorrection n := by
  have hprefix := (square_correctionPrefix_error K n hn).2
  have hlo := (abs_le.mp heval).1
  linarith

/-- Refine the rational correction without changing the nontrivial-zero tail.
K is a correction-prefix index; T is a nontrivial-zero cutoff; n is arithmetic. -/
theorem prime_in_square_of_correction_prefix (n K : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (evaluated : ℂ) (error correctionValue correctionError : ℝ)
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated‖ ≤ error)
    (hc : |correctionPrefix K (squareCenter n) (squareRadius n) - correctionValue| ≤
      correctionError)
    (hmargin : 0 < canonicalPrimeMargin n T (evaluated.re + error)
      (correctionValue - correctionError - squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ K)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_real_enclosures n hn T hT (evaluated.re + error) _
    (head_re_le_of_norm_enclosure n T evaluated error heval)
    (correction_lower_of_prefix_enclosure n K hn correctionValue correctionError hc) hmargin

/-- Sound enclosures on an actual prime-free interval cannot pass the margin.
This is about the complete arithmetic source, not a synthetic zero model. -/
theorem prime_free_obstructs_margin (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (zeroUpper correctionLower : ℝ)
    (hzero : (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1).re ≤ zeroUpper)
    (hcorr : correctionLower ≤ squareTrivialCorrection n)
    (hfree : squareCount n = 0) : canonicalPrimeMargin n T zeroUpper correctionLower ≤ 0 := by
  have hl := mass_lower_of_real_enclosures n hn T hT zeroUpper correctionLower hzero hcorr
  have hu := (prime_free_tent_le_properMass n hfree).trans
    (properMass_le_log_budget n (by omega))
  unfold canonicalPrimeMargin
  linarith

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion
```
