# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RightBoundaryConsumer.Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d65c067392d2783c95fa1f275a1710f0d2dabad` · SHA-256 `616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import FormalResearch.RiemannHypothesis.Conversation.PolynomialRHConsumer

/-!
# The one-sided source rate reaches a full zero strip through exact symmetry

The source analytic return is originally a right-boundary statement for
nontrivial zeros. The repository's checked functional-equation reflection,
with all domain exclusions, supplies the left boundary. The analytic rate
theorem itself remains an open proposition, with eta=0 and eta-dependent
polynomial constants explicitly retained.

Source: audited RH conversation Batches 01–03. Human direction:
grwtsk contributors. Local adapters and Lean proofs: OpenAI Codex.
Existing zero symmetry and Mathlib zeta identities retain their names.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RightBoundaryConsumer

open FormalResearch.RiemannHypothesis
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePrimeSmoothDefect
open OpenArithmeticSuppliers ZeroStripConsumer PolynomialRHConsumer
noncomputable section

def RightBoundary (η : ℝ) : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s → s.re ≤ 1 / 2 + η / 2

theorem rightBoundary_iff_zeroStrip (η : ℝ) : RightBoundary η ↔ ZeroStrip η := by
  constructor
  · intro h s hs
    have hr := h s hs
    have hl := h (zeroReflect s) hs.reflect
    simp only [zeroReflect, Complex.sub_re, Complex.one_re] at hl
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  · intro h s hs
    have hr := (abs_le.mp (h s hs)).2
    linarith

/-- This preserves the source's nonnegative rates, rather than asserting a proved instance. -/
def ExactSourceRightRateReturn : Prop :=
  ∀ η : ℝ, 0 ≤ η →
    (∃ m : ℕ, ∃ D R : ℝ, 0 ≤ D ∧ 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → closedPrimeMoment A ≤ D * A ^ m * Real.exp (η * A)) →
    RightBoundary η

theorem exactRightReturn_implies_stripSupplier (h : ExactSourceRightRateReturn) :
    SourceRateStripSupplier := by
  intro η hη hbound
  exact (rightBoundary_iff_zeroStrip η).mp (h η hη.le hbound)

theorem rh_of_problemP_and_exactRightReturn (hP : ProblemP)
    (hreturn : ExactSourceRightRateReturn) : RiemannHypothesis :=
  rh_of_problemP_and_rateStrip hP (exactRightReturn_implies_stripSupplier hreturn)

theorem arbitrarily_small_right_bounds_imply_rh
    (h : ∀ η : ℝ, 0 < η → RightBoundary η) : RiemannHypothesis := by
  apply arbitrarily_small_strips_imply_rh
  intro η hη
  exact (rightBoundary_iff_zeroStrip η).mp (h η hη)

end
end GRWTSK.RiemannHypothesis.Conversation.RightBoundaryConsumer
```
