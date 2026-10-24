# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab0b6d128604780f158a3093dce6d67085d46c55` · SHA-256 `27aa626507363e435f46a9466b4f707cde0e249e0974bda18a7b97a15c2eaf4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import Mathlib.Analysis.SpecialFunctions.Pow.Complex
import Mathlib.Tactic

/-! # Pointwise finite zero heads with source and error separation

For a positive real argument the power convention is exp(rho * log x).
The finite height head uses the canonical actual zeros and their analytic
multiplicities. No projection to the critical line is performed.

These finite identities are not an unsmoothed explicit formula. A bound on
the omitted zero contribution is an explicit premise of the error-transfer
theorem. Identifying that contribution with psiHalf minus all pole, gamma,
trivial-zero and constant terms requires a separate analytic theorem.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem canonicalZero_denominator_ne_zero (z : ZeroPoint) : z.1 ≠ 0 := z.2.ne_zero

/-- Positive-real-base logarithm convention. Intended pointwise domain:
x>1 and rho nonzero; the definition itself uses total field operations. -/
def pointwiseZeroTerm (x : ℝ) (ρ : ℂ) : ℂ :=
  Complex.exp (ρ * (Real.log x : ℂ)) / ρ

theorem pointwiseZeroTerm_eq_cpow {x : ℝ} (hx : 0 < x) (ρ : ℂ) :
    pointwiseZeroTerm x ρ = (x : ℂ) ^ ρ / ρ := by
  rw [pointwiseZeroTerm, Complex.cpow_def_of_ne_zero
    (Complex.ofReal_ne_zero.mpr hx.ne'), ← Complex.ofReal_log hx.le, mul_comm ρ]

theorem pointwiseZeroTerm_conj (x : ℝ) (ρ : ℂ) :
    pointwiseZeroTerm x (conj ρ) = conj (pointwiseZeroTerm x ρ) := by
  simp [pointwiseZeroTerm, ← Complex.exp_conj, map_mul]

theorem pointwiseZeroTerm_pair (x : ℝ) (ρ : ℂ) :
    pointwiseZeroTerm x ρ + pointwiseZeroTerm x (conj ρ) =
      ((2 * (pointwiseZeroTerm x ρ).re : ℝ) : ℂ) := by
  rw [pointwiseZeroTerm_conj]
  apply Complex.ext <;> simp [two_mul]

/-- The magnitude keeps the actual horizontal coordinate, with no RH
or critical-line hypothesis silently inserted. -/
theorem norm_pointwiseZeroTerm (x : ℝ) (ρ : ℂ) :
    ‖pointwiseZeroTerm x ρ‖ = Real.exp (ρ.re * Real.log x) / ‖ρ‖ := by
  simp [pointwiseZeroTerm, Complex.norm_exp, Complex.mul_re]

def finiteHeightZeroHead (x T : ℝ) : ℂ :=
  -(∑ z ∈ heightHead T, (multiplicity z : ℂ) * pointwiseZeroTerm x z.1)

/-- Evaluations refer to precisely the same canonical height head.
This does not certify an external list or an arbitrary-list cutoff. -/
def evaluatedFiniteHeightZeroHead (T : ℝ) (evaluation : ZeroPoint → ℂ) : ℂ :=
  -(∑ z ∈ heightHead T, (multiplicity z : ℂ) * evaluation z)

theorem finiteHeightZeroHead_evaluation_error (x T : ℝ)
    (evaluation : ZeroPoint → ℂ) :
    ‖finiteHeightZeroHead x T - evaluatedFiniteHeightZeroHead T evaluation‖ ≤
      ∑ z ∈ heightHead T,
        (multiplicity z : ℝ) * ‖pointwiseZeroTerm x z.1 - evaluation z‖ := by
  have heq : finiteHeightZeroHead x T - evaluatedFiniteHeightZeroHead T evaluation =
      -(∑ z ∈ heightHead T,
        (multiplicity z : ℂ) * (pointwiseZeroTerm x z.1 - evaluation z)) := by
    simp only [finiteHeightZeroHead, evaluatedFiniteHeightZeroHead, mul_sub,
      Finset.sum_sub_distrib]
    ring
  rw [heq, norm_neg]
  calc
    _ ≤ ∑ z ∈ heightHead T,
        ‖(multiplicity z : ℂ) * (pointwiseZeroTerm x z.1 - evaluation z)‖ :=
      norm_sum_le _ _
    _ = _ := by simp only [norm_mul, Complex.norm_natCast]

theorem finiteHeightZeroHead_enclosure_error (x T : ℝ)
    (evaluation : ZeroPoint → ℂ) (ε : ZeroPoint → ℝ)
    (hε : ∀ z ∈ heightHead T, ‖pointwiseZeroTerm x z.1 - evaluation z‖ ≤ ε z) :
    ‖finiteHeightZeroHead x T - evaluatedFiniteHeightZeroHead T evaluation‖ ≤
      ∑ z ∈ heightHead T, (multiplicity z : ℝ) * ε z := by
  apply (finiteHeightZeroHead_evaluation_error x T evaluation).trans
  apply Finset.sum_le_sum
  intro z hz
  exact mul_le_mul_of_nonneg_left (hε z hz) (Nat.cast_nonneg _)

/-- Conditional transfer only: the omitted-height estimate is supplied
separately and is never inferred from the finite list or its enclosures. -/
theorem completeZeroContribution_evaluation_error (x T : ℝ)
    (completeZeroContribution : ℂ) (evaluation : ZeroPoint → ℂ)
    (ε : ZeroPoint → ℝ) (tail : ℝ)
    (htail : ‖completeZeroContribution - finiteHeightZeroHead x T‖ ≤ tail)
    (hε : ∀ z ∈ heightHead T, ‖pointwiseZeroTerm x z.1 - evaluation z‖ ≤ ε z) :
    ‖completeZeroContribution - evaluatedFiniteHeightZeroHead T evaluation‖ ≤
      tail + ∑ z ∈ heightHead T, (multiplicity z : ℝ) * ε z := by
  have htriangle :
      ‖completeZeroContribution - evaluatedFiniteHeightZeroHead T evaluation‖ ≤
        ‖completeZeroContribution - finiteHeightZeroHead x T‖ +
        ‖finiteHeightZeroHead x T - evaluatedFiniteHeightZeroHead T evaluation‖ := by
    simpa only [dist_eq_norm] using dist_triangle completeZeroContribution
      (finiteHeightZeroHead x T) (evaluatedFiniteHeightZeroHead T evaluation)
  exact htriangle.trans
    (add_le_add htail (finiteHeightZeroHead_enclosure_error x T evaluation ε hε))

end GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead
```
