# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularPropagationCorrection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98b5d5d9c14150defcd177c8e273947749ef41d9` · SHA-256 `8709dddf1f3714bd86741c6d68b12ebbbaf7734032b55d9561eb1a539028b16e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularSampledKernel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The previous sampled-kernel propagation claim is vacuous: zero can always
be chosen as the unnamed tail error, independently of the arithmetic prefix. -/
theorem primePrefixSampledKernelTailPropagationClaim_trivial :
    PrimePrefixSampledKernelTailPropagationClaim := by
  intro X N m hX hN hm0 hm1
  refine ⟨0, ?_⟩
  rw [abs_zero]
  have hlog :
      0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (by omega : 1 ≤ 4 * X)
  have hsum :
      0 ≤ ∑ d ∈ Finset.Icc 1 (X / 2),
        sampledTriangularKernel X N d := by
    exact Finset.sum_nonneg fun d hd =>
      sampledTriangularKernel_nonnegative X N d
  positivity

/-- Exact sharp prime-prefix discrepancy appearing in the three-quarter target. -/
def sharpPrimePrefixDiscrepancy
    (X m : ℕ) : ℝ :=
  primeIntervalLogMass (2 * X) m -
    ((m : ℝ) - ((2 * X : ℕ) : ℝ))

/-- A fixed smoothing operator supplies one approximating discrepancy value for
each scale X, cutoff N, and prefix endpoint m. -/
structure PrimePrefixSmoothingOperator where
  value : ℕ → ℕ → ℕ → ℝ

/-- Actual approximation error of a fixed smoothing operator. -/
def PrimePrefixSmoothingOperator.error
    (op : PrimePrefixSmoothingOperator)
    (X N m : ℕ) : ℝ :=
  sharpPrimePrefixDiscrepancy X m - op.value X N m

/-- Nonvacuous sampled-kernel propagation statement for a fixed smoothing
operator. -/
def PrimePrefixSampledKernelTailPropagationFor
    (op : PrimePrefixSmoothingOperator) : Prop :=
  ∀ X N m : ℕ,
    0 < X → 0 < N →
    2 * X ≤ m → m ≤ 4 * X →
      |op.error X N m| ≤
        Real.log ((4 * X : ℕ) : ℝ) *
          ∑ d ∈ Finset.Icc 1 (X / 2),
            sampledTriangularKernel X N d

/-- Source-faithfulness interface for the still-missing canonical smoothing
operator.  The representation theorem must tie op.value to an explicit
Fejer-smoothed prefix construction. -/
def CanonicalPrimePrefixFejerRepresentation
    (op : PrimePrefixSmoothingOperator) : Prop :=
  ∀ X N m : ℕ,
    0 < X → 0 < N →
    2 * X ≤ m → m ≤ 4 * X →
      ∃ weights : ℕ → ℝ,
        op.value X N m =
          ∑ p ∈ Finset.Ioc (2 * X) m with p.Prime,
            weights p * Real.log p

/-- Corrected acceptance packet: a fixed operator must first be represented by
a source-faithful Fejer smoothing construction, and only then may the sampled
kernel tail bound be used for its actual approximation error. -/
structure PrimePrefixFejerPropagationAccepted
    (op : PrimePrefixSmoothingOperator) where
  representation : CanonicalPrimePrefixFejerRepresentation op
  tailComparison : PrimePrefixSampledKernelTailPropagationFor op

end GRWTSK.RiemannHypothesis
```
