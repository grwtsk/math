# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularAutocorrelationDiagonals

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d234d0a253d99288b054d298556b65f702a19ba9` · SHA-256 `65dc9b0ac7bc392367fe37f9f4d66bf1509084e06e6a0133ad6f3e4b47e8d883`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularGeometricBlock
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Unit-modulus exponential phase used on one autocorrelation diagonal. -/
def triangularPhase (t : ℝ) (n : ℕ) : ℂ :=
  Complex.exp
    (2 * (Real.pi : ℂ) * Complex.I * ((n : ℝ) * t))

/-- The phase increment along a fixed offset diagonal is independent of the
base index. -/
theorem triangularPhase_mul_conj_eq_offset
    (t : ℝ) (b d : ℕ) :
    triangularPhase t (b + d) *
        Complex.conj (triangularPhase t b) =
      triangularPhase t d := by
  unfold triangularPhase
  simp only [map_exp, map_mul, Complex.conj_ofReal, Complex.conj_I,
    mul_neg]
  rw [← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- Positive offset diagonal in the geometric-block autocorrelation. -/
def triangularPositiveDiagonal
    (N d : ℕ) (t : ℝ) : ℂ :=
  ∑ b ∈ Finset.range (N - d),
    triangularPhase t (b + d) *
      Complex.conj (triangularPhase t b)

/-- Every positive diagonal collapses to its multiplicity times one phase. -/
theorem triangularPositiveDiagonal_eq
    {N d : ℕ} (hd : d ≤ N)
    (t : ℝ) :
    triangularPositiveDiagonal N d t =
      ((N - d : ℕ) : ℂ) * triangularPhase t d := by
  unfold triangularPositiveDiagonal
  simp_rw [triangularPhase_mul_conj_eq_offset]
  simp

/-- Negative offset diagonal is the conjugate of the corresponding positive
offset diagonal. -/
def triangularNegativeDiagonal
    (N d : ℕ) (t : ℝ) : ℂ :=
  ∑ b ∈ Finset.range (N - d),
    triangularPhase t b *
      Complex.conj (triangularPhase t (b + d))

theorem triangularNegativeDiagonal_eq
    {N d : ℕ} (hd : d ≤ N)
    (t : ℝ) :
    triangularNegativeDiagonal N d t =
      ((N - d : ℕ) : ℂ) *
        Complex.conj (triangularPhase t d) := by
  unfold triangularNegativeDiagonal
  have hterm :
      ∀ b : ℕ,
        triangularPhase t b *
            Complex.conj (triangularPhase t (b + d)) =
          Complex.conj (triangularPhase t d) := by
    intro b
    have h :=
      congrArg Complex.conj
        (triangularPhase_mul_conj_eq_offset t b d)
    simpa [map_mul, mul_comm] using h
  simp_rw [hterm]
  simp

/-- Exact multiplicity coefficient carried by offset d. -/
def triangularOffsetMultiplicity (N d : ℕ) : ℝ :=
  (N - d : ℕ)

theorem triangularOffsetMultiplicity_eq_weight
    {N d : ℕ} (hN : 0 < N) (hd : d < N) :
    triangularOffsetMultiplicity N d / (N : ℝ) =
      triangularSmoothingWeight N d := by
  simp [triangularOffsetMultiplicity, triangularSmoothingWeight, hd]

/-- The remaining autocorrelation theorem is now only the partition of the
double sum into its zero, positive, and negative offset diagonals. -/
def GeometricBlockDiagonalPartitionClaim : Prop :=
  ∀ N : ℕ, 0 < N →
    ∀ t : ℝ,
      ((1 : ℂ) / (N : ℝ)) *
          triangularGeometricBlock N t *
          Complex.conj (triangularGeometricBlock N t) =
        symmetricTriangularKernel N (t : AddCircle (1 : ℝ))

/-- The diagonal partition discharges the previously isolated autocorrelation
claim. -/
theorem diagonalPartition_to_autocorrelation
    (hdiag : GeometricBlockDiagonalPartitionClaim) :
    SymmetricTriangularKernelAutocorrelationClaim := by
  intro N hN t
  symm
  exact hdiag N hN t

end GRWTSK.RiemannHypothesis
```
