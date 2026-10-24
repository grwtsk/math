# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularGeometricBlock

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `014527076089488ffe089e85bd1d75a59e6ffc9d` · SHA-256 `69b33370dfe3758a8e7746e780a1aeeb5d4417075d2ae19a3b881090b4865433`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDecay
import Mathlib.Algebra.Field.GeomSum
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Unit-circle phase used for the length-N geometric block. -/
def triangularGeometricRatio (t : ℝ) : ℂ :=
  Complex.exp (2 * (Real.pi : ℂ) * Complex.I * t)

/-- Length-N geometric exponential block. -/
def triangularGeometricBlock (N : ℕ) (t : ℝ) : ℂ :=
  ∑ j ∈ Finset.range N, (triangularGeometricRatio t) ^ j

/-- The geometric block is exactly the expected exponential sum. -/
theorem triangularGeometricBlock_eq_exp_sum
    (N : ℕ) (t : ℝ) :
    triangularGeometricBlock N t =
      ∑ j ∈ Finset.range N,
        Complex.exp
          (2 * (Real.pi : ℂ) * Complex.I *
            ((j : ℝ) * t)) := by
  unfold triangularGeometricBlock triangularGeometricRatio
  apply Finset.sum_congr rfl
  intro j hj
  rw [← Complex.exp_nat_mul]
  congr 1
  push_cast
  ring

/-- Exact geometric-series quotient for the length-N exponential block. -/
theorem triangularGeometricBlock_eq_geom_ratio
    {N : ℕ} {t : ℝ}
    (hphase : triangularGeometricRatio t ≠ 1) :
    triangularGeometricBlock N t =
      ((triangularGeometricRatio t) ^ N - 1) /
        (triangularGeometricRatio t - 1) := by
  unfold triangularGeometricBlock
  exact geom_sum_eq hphase N

/-- Autocorrelation identity still to be proved: the symmetric triangular
kernel is the normalized squared modulus of the geometric block. -/
def SymmetricTriangularKernelAutocorrelationClaim : Prop :=
  ∀ N : ℕ, 0 < N →
    ∀ t : ℝ,
      symmetricTriangularKernel N (t : AddCircle (1 : ℝ)) =
        ((1 : ℂ) / (N : ℝ)) *
          triangularGeometricBlock N t *
          Complex.conj (triangularGeometricBlock N t)

/-- Remaining sine conversion after the autocorrelation identity. -/
def TriangularGeometricBlockSineNormClaim : Prop :=
  ∀ N : ℕ, 0 < N →
    ∀ t : ℝ, t ≠ 0 →
      ((1 : ℂ) / (N : ℝ)) *
          triangularGeometricBlock N t *
          Complex.conj (triangularGeometricBlock N t) =
        (((Complex.sin (Real.pi * (N : ℝ) * t)) /
          (Complex.sin (Real.pi * t))) ^ 2) / (N : ℝ)

/-- The two remaining finite algebraic identities imply the previously isolated
closed form. -/
theorem autocorrelation_and_sineNorm_to_closedForm
    (hAuto : SymmetricTriangularKernelAutocorrelationClaim)
    (hSine : TriangularGeometricBlockSineNormClaim) :
    SymmetricTriangularKernelClosedFormClaim := by
  intro N hN t ht
  rw [hAuto N hN t]
  exact hSine N hN t ht

end GRWTSK.RiemannHypothesis
```
