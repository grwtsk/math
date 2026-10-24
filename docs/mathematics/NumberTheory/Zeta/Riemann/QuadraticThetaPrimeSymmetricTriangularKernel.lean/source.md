# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68dd26ce02e59d1948854147d6fba1e33ee1b5e8` · SHA-256 `2bb5b1374aa489ca90a4c98511adefb0373788a8eb88279200e67b6d52fe723e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHarmonicTail
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Symmetric triangular Fourier coefficient.  This is the actual coefficient
profile associated with a Fejer-type kernel: w_N(k)=1-|k|/N for |k|<N. -/
def symmetricTriangularWeight (N : ℕ) (k : ℤ) : ℝ :=
  if Int.natAbs k < N then
    ((N - Int.natAbs k : ℕ) : ℝ) / (N : ℝ)
  else
    0

theorem symmetricTriangularWeight_neg
    (N : ℕ) (k : ℤ) :
    symmetricTriangularWeight N (-k) =
      symmetricTriangularWeight N k := by
  simp [symmetricTriangularWeight]

theorem symmetricTriangularWeight_eq_zero_of_cutoff
    {N : ℕ} {k : ℤ}
    (hk : N ≤ Int.natAbs k) :
    symmetricTriangularWeight N k = 0 := by
  simp [symmetricTriangularWeight, Nat.not_lt.mpr hk]

theorem symmetricTriangularWeight_nonnegative
    (N : ℕ) (k : ℤ) :
    0 ≤ symmetricTriangularWeight N k := by
  unfold symmetricTriangularWeight
  split_ifs
  · positivity
  · exact le_rfl

theorem symmetricTriangularWeight_le_one
    {N : ℕ} (hN : 0 < N) (k : ℤ) :
    symmetricTriangularWeight N k ≤ 1 := by
  unfold symmetricTriangularWeight
  split_ifs with hk
  · have hden : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
    have hsub : N - Int.natAbs k ≤ N := Nat.sub_le _ _
    exact (div_le_one hden).2 (by exact_mod_cast hsub)
  · norm_num

/-- Explicit symmetric triangular trigonometric polynomial on the unit circle. -/
def symmetricTriangularKernel
    (N : ℕ) (t : AddCircle (1 : ℝ)) : ℂ :=
  ∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
    (symmetricTriangularWeight N k : ℂ) * fourier k t

/-- The endpoint frequencies ±N vanish, so the effective support is |k|<N. -/
theorem symmetricTriangularKernel_endpoint_weights_zero
    (N : ℕ) :
    symmetricTriangularWeight N (N : ℤ) = 0 ∧
      symmetricTriangularWeight N (-(N : ℤ)) = 0 := by
  constructor
  · apply symmetricTriangularWeight_eq_zero_of_cutoff
    simp
  · apply symmetricTriangularWeight_eq_zero_of_cutoff
    simp

/-- The one-sided natural-number profile previously introduced is exactly the
nonnegative-frequency restriction of the symmetric profile. -/
theorem symmetricTriangularWeight_nat
    (N n : ℕ) :
    symmetricTriangularWeight N (n : ℤ) =
      triangularSmoothingWeight N n := by
  unfold symmetricTriangularWeight triangularSmoothingWeight
  simp

/-- The genuine remaining kernel theorem: derive a quantitative off-boundary
pointwise estimate for the explicit symmetric polynomial.  A bound of order
1/(N*d^2) for the kernel, or equivalently O(1/(N*d)) after integrating an
interval indicator, is sufficient for the harmonic-tail route. -/
def SymmetricTriangularKernelDecayClaim : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ N : ℕ, 0 < N →
      ∀ t : ℝ, 0 < |t| → |t| ≤ (1 : ℝ) / 2 →
        ‖symmetricTriangularKernel N (t : AddCircle (1 : ℝ))‖ ≤
          C / ((N : ℝ) * t^2)

/-- Closed-form identity expected for the explicit symmetric polynomial.
This is isolated separately from the decay estimate so either route can be
formalized first. -/
def SymmetricTriangularKernelClosedFormClaim : Prop :=
  ∀ N : ℕ, 0 < N →
    ∀ t : ℝ, t ≠ 0 →
      symmetricTriangularKernel N (t : AddCircle (1 : ℝ)) =
        (((Complex.sin (Real.pi * (N : ℝ) * t)) /
          (Complex.sin (Real.pi * t))) ^ 2) / (N : ℝ)

end GRWTSK.RiemannHypothesis
```
