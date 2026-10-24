# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PolynomialComposition.Variantcf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a7f31e36d7d82f01d4e0d94e52072631aa74142` · SHA-256 `cf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PolynomialRHConsumer

/-!
# Complete scalar outputs consume polynomial root bounds

Batch 24's two-root criterion requires estimates on complete scalar outputs,
not on centered factors. The finite algebraic decoder and signed residual
must first be identified with the actual closed source. This module proves
the next polynomial and conditional RH consumers with those premises visible.

Human framework: grwtsk contributors. Local consumer and Lean implementation:
OpenAI Codex. No trace estimate or candidate family is constructed here.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PolynomialComposition

open PolynomialMertensReduction OpenArithmeticSuppliers PolynomialRHConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePrimeSmoothDefect
noncomputable section

theorem polynomial_upper_add {f g : ℝ → ℝ}
    (hf : EventuallyPolynomialUpper f) (hg : EventuallyPolynomialUpper g) :
    EventuallyPolynomialUpper (fun A => f A + g A) := by
  obtain ⟨m, D, R, hD, hR, hf⟩ := hf
  obtain ⟨n, E, T, hE, hT, hg⟩ := hg
  refine ⟨m + n, D + E, max R T, add_nonneg hD hE, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA := (le_max_left R T).trans hA
  have hTA := (le_max_right R T).trans hA
  have hA1 := hR.trans hRA
  have hm : A ^ m ≤ A ^ (m + n) := pow_le_pow_right₀ hA1 (by omega)
  have hn : A ^ n ≤ A ^ (m + n) := pow_le_pow_right₀ hA1 (by omega)
  calc
    _ ≤ D * A ^ m + E * A ^ n := add_le_add (hf A hRA) (hg A hTA)
    _ ≤ D * A ^ (m + n) + E * A ^ (m + n) :=
      add_le_add (mul_le_mul_of_nonneg_left hm hD) (mul_le_mul_of_nonneg_left hn hE)
    _ = _ := by ring

theorem problemP_of_complete_scalar_decomposition {fixed trace residual : ℝ → ℝ}
    (hdecode : ∀ A : ℝ, 1 ≤ A → closedPrimeMoment A = fixed A + trace A + residual A)
    (hfixed : EventuallyPolynomialUpper fixed) (htrace : EventuallyPolynomialUpper trace)
    (hresidual : EventuallyPolynomialUpper residual) : ProblemP := by
  have h := polynomial_upper_add (polynomial_upper_add hfixed htrace) hresidual
  obtain ⟨m, D, R, hD, hR, h⟩ := h
  refine ⟨m, D, R, hD, hR, ?_⟩
  intro A hA
  rw [hdecode A (hR.trans hA)]
  exact h A hA

theorem problemP_of_zero_complete_trace {fixed trace residual : ℝ → ℝ}
    (hdecode : ∀ A : ℝ, 1 ≤ A → closedPrimeMoment A = fixed A + trace A + residual A)
    (hfixed : EventuallyPolynomialUpper fixed) (htrace : ∀ A : ℝ, 1 ≤ A → trace A = 0)
    (hresidual : EventuallyPolynomialUpper residual) : ProblemP := by
  have ht : EventuallyPolynomialUpper trace := by
    refine ⟨0, 0, 1, le_rfl, le_rfl, ?_⟩
    intro A hA
    rw [htrace A hA]
    simp
  exact problemP_of_complete_scalar_decomposition hdecode hfixed ht hresidual

/-- The missing arithmetic bounds and analytic strip return remain explicit. -/
theorem rh_of_complete_scalar_decomposition {fixed trace residual : ℝ → ℝ}
    (hdecode : ∀ A : ℝ, 1 ≤ A → closedPrimeMoment A = fixed A + trace A + residual A)
    (hfixed : EventuallyPolynomialUpper fixed) (htrace : EventuallyPolynomialUpper trace)
    (hresidual : EventuallyPolynomialUpper residual) (hstrip : SourceRateStripSupplier) :
    RiemannHypothesis :=
  rh_of_problemP_and_rateStrip
    (problemP_of_complete_scalar_decomposition hdecode hfixed htrace hresidual) hstrip

end
end GRWTSK.RiemannHypothesis.Conversation.PolynomialComposition
```
