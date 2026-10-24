# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PolynomialMertensReduction.Variant73a561ef2c475a1c3f012ac74777af68dfd962d0ab6f16d7393d9d9f1f9015d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2085ecf8f50f2603845773db15eb37033bd348b0` · SHA-256 `73a561ef2c475a1c3f012ac74777af68dfd962d0ab6f16d7393d9d9f1f9015d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.SmallDivisorBound

/-!
# Polynomial upper bounds reduce to the signed Mertens integral

The finite small-divisor and endpoint costs are now proved for the actual
source. Thus a one-sided eventual polynomial bound on the closed prime moment
is equivalent to one on its signed Mertens integral. This theorem proves a
reduction; it supplies no bound on that remaining integral and assumes no RH.

Source and direction: grwtsk contributors, audited RH conversation Batch 25,
2026-10-08. Formal implementation: OpenAI Codex. Existing source definitions,
Möbius inversion and Abel transport are used directly under their own names.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PolynomialMertensReduction

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMobiusSplit EstimatePrimeSmoothDefect EstimateMertensAbel
open EstimateSourceMobiusKernel EstimateMobiusIntegerTransport
open SmallDivisorBound

noncomputable section

/-- The signed integral in the exact Abel identity, with the actual kernel. -/
def actualMertensIntegral (A : ℝ) : ℝ := mertensKernelIntegral A (sourceMobiusKernel A)

/-- A one-sided bound: degree, constant and threshold are existential. -/
def EventuallyPolynomialUpper (f : ℝ → ℝ) : Prop :=
  ∃ m : ℕ, ∃ D R : ℝ, 0 ≤ D ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → f A ≤ D * A ^ m

/-- The remaining signed object differs from the source by an explicit linear cost. -/
theorem source_minus_integral_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |closedPrimeMoment A - actualMertensIntegral A| ≤ 24 * A + 60 := by
  rw [closedPrimeMoment_eq_small_add_large, largeDivisorMobiusMoment_eq_mertens A hA]
  have heq : smallDivisorMobiusMoment A +
        (mertensKernelIntegral A (sourceMobiusKernel A) -
          mertens (sourceLower A) * sourceMobiusKernel A (sourceLower A)) -
        actualMertensIntegral A = smallDivisorMobiusMoment A -
          mertens (sourceLower A) * sourceMobiusKernel A (sourceLower A) := by
    unfold actualMertensIntegral
    ring
  rw [heq]
  have hsmall := smallDivisorMobiusMoment_abs_le hA
  have hend := actual_mertens_endpoint_abs_le hA
  calc
    _ ≤ |smallDivisorMobiusMoment A| +
        |mertens (sourceLower A) * sourceMobiusKernel A (sourceLower A)| := by
          simpa only [sub_eq_add_neg, abs_neg] using abs_add_le
            (smallDivisorMobiusMoment A)
            (-(mertens (sourceLower A) * sourceMobiusKernel A (sourceLower A)))
    _ ≤ 24 * A + 60 := by linarith

/-- General stability of an eventual polynomial upper bound under a linear error. -/
theorem polynomial_upper_transfer {f g : ℝ → ℝ} {C : ℝ} (hC : 0 ≤ C)
    (herr : ∀ A : ℝ, 1 ≤ A → f A ≤ g A + C * A)
    (hg : EventuallyPolynomialUpper g) : EventuallyPolynomialUpper f := by
  obtain ⟨m, D, R, hD, hR, hg⟩ := hg
  refine ⟨m + 1, D + C, R, add_nonneg hD hC, hR, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  have hpow : A ^ m ≤ A ^ (m + 1) := pow_le_pow_right₀ hA (by omega)
  have hlin : A ≤ A ^ (m + 1) := by
    simpa only [pow_one] using pow_le_pow_right₀ hA (show 1 ≤ m + 1 by omega)
  calc
    f A ≤ g A + C * A := herr A hA
    _ ≤ D * A ^ m + C * A := add_le_add (hg A hRA) le_rfl
    _ ≤ D * A ^ (m + 1) + C * A ^ (m + 1) :=
      add_le_add (mul_le_mul_of_nonneg_left hpow hD)
        (mul_le_mul_of_nonneg_left hlin hC)
    _ = (D + C) * A ^ (m + 1) := by ring

/-- Exact actual-source equivalence; neither direction assumes a missing estimate. -/
theorem source_polynomial_upper_iff_mertens :
    EventuallyPolynomialUpper closedPrimeMoment ↔
      EventuallyPolynomialUpper actualMertensIntegral := by
  have herr (A : ℝ) (hA : 1 ≤ A) :
      |closedPrimeMoment A - actualMertensIntegral A| ≤ 84 * A := by
    have h := source_minus_integral_abs_le hA
    linarith
  constructor
  · apply polynomial_upper_transfer (C := 84) (by norm_num)
    intro A hA
    have h := (abs_le.mp (herr A hA)).1
    linarith
  · apply polynomial_upper_transfer (C := 84) (by norm_num)
    intro A hA
    have h := (abs_le.mp (herr A hA)).2
    linarith

end
end GRWTSK.RiemannHypothesis.Conversation.PolynomialMertensReduction
```
