/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDomain
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Pair square indexing the geometric-block autocorrelation. -/
def triangularAutocorrelationPairs (N : ℕ) : Finset (ℕ × ℕ) :=
  Finset.range N ×ˢ Finset.range N

def triangularZeroOffsetPairs (N : ℕ) : Finset (ℕ × ℕ) :=
  (triangularAutocorrelationPairs N).filter (fun p => p.1 = p.2)

def triangularPositiveOffsetPairs (N : ℕ) : Finset (ℕ × ℕ) :=
  (triangularAutocorrelationPairs N).filter (fun p => p.2 < p.1)

def triangularNegativeOffsetPairs (N : ℕ) : Finset (ℕ × ℕ) :=
  (triangularAutocorrelationPairs N).filter (fun p => p.1 < p.2)

/-- The three order regions cover the full pair square. -/
theorem triangular_pair_partition
    (N : ℕ) :
    triangularZeroOffsetPairs N ∪
        triangularPositiveOffsetPairs N ∪
        triangularNegativeOffsetPairs N =
      triangularAutocorrelationPairs N := by
  ext p
  simp [triangularZeroOffsetPairs, triangularPositiveOffsetPairs,
    triangularNegativeOffsetPairs, triangularAutocorrelationPairs]
  omega

theorem triangular_zero_disjoint_positive
    (N : ℕ) :
    Disjoint
      (triangularZeroOffsetPairs N)
      (triangularPositiveOffsetPairs N) := by
  rw [Finset.disjoint_left]
  intro p hp0 hp1
  simp [triangularZeroOffsetPairs] at hp0
  simp [triangularPositiveOffsetPairs] at hp1
  omega

theorem triangular_zero_union_positive_disjoint_negative
    (N : ℕ) :
    Disjoint
      (triangularZeroOffsetPairs N ∪
        triangularPositiveOffsetPairs N)
      (triangularNegativeOffsetPairs N) := by
  rw [Finset.disjoint_left]
  intro p hp01 hpneg
  simp [triangularZeroOffsetPairs,
    triangularPositiveOffsetPairs,
    triangularNegativeOffsetPairs] at hp01 hpneg
  rcases hp01.2 with hzero | hpos
  · omega
  · omega

/-- Any pair-sum over the autocorrelation square decomposes into zero,
positive, and negative offset regions. -/
theorem triangular_pair_sum_partition
    {R : Type*} [AddCommMonoid R]
    (N : ℕ) (f : ℕ × ℕ → R) :
    (∑ p ∈ triangularAutocorrelationPairs N, f p) =
      (∑ p ∈ triangularZeroOffsetPairs N, f p) +
      (∑ p ∈ triangularPositiveOffsetPairs N, f p) +
      (∑ p ∈ triangularNegativeOffsetPairs N, f p) := by
  rw [← triangular_pair_partition N]
  rw [Finset.sum_union
      (triangular_zero_union_positive_disjoint_negative N)]
  rw [Finset.sum_union (triangular_zero_disjoint_positive N)]

/-- Pairwise autocorrelation phase term. -/
def triangularPairTerm (t : ℝ) (p : ℕ × ℕ) : ℂ :=
  triangularPhase t p.1 * Complex.conj (triangularPhase t p.2)

/-- The geometric-block product is exactly the sum over the finite pair
square. -/
theorem triangularGeometricBlock_mul_conj_eq_pairSum
    (N : ℕ) (t : ℝ) :
    triangularGeometricBlock N t *
        Complex.conj (triangularGeometricBlock N t) =
      ∑ p ∈ triangularAutocorrelationPairs N,
        triangularPairTerm t p := by
  rw [triangularGeometricBlock_eq_exp_sum]
  simp_rw [← triangularPhase]
  rw [map_sum]
  rw [Finset.sum_mul_sum]
  rw [← Finset.sum_product']
  rfl

/-- The autocorrelation product is now split into its three order regions. -/
theorem triangularGeometricBlock_mul_conj_partition
    (N : ℕ) (t : ℝ) :
    triangularGeometricBlock N t *
        Complex.conj (triangularGeometricBlock N t) =
      (∑ p ∈ triangularZeroOffsetPairs N,
        triangularPairTerm t p) +
      (∑ p ∈ triangularPositiveOffsetPairs N,
        triangularPairTerm t p) +
      (∑ p ∈ triangularNegativeOffsetPairs N,
        triangularPairTerm t p) := by
  rw [triangularGeometricBlock_mul_conj_eq_pairSum]
  exact triangular_pair_sum_partition N (triangularPairTerm t)

/-- Remaining purely finite reindexing theorem: identify the positive and
negative order-region sums with the previously proved offset diagonals. -/
def TriangularOrderRegionsToDiagonalsClaim : Prop :=
  ∀ N : ℕ, 0 < N →
    ∀ t : ℝ,
      (∑ p ∈ triangularPositiveOffsetPairs N,
          triangularPairTerm t p) =
        ∑ d ∈ Finset.Ico 1 N,
          triangularPositiveDiagonal N d t
      ∧
      (∑ p ∈ triangularNegativeOffsetPairs N,
          triangularPairTerm t p) =
        ∑ d ∈ Finset.Ico 1 N,
          triangularNegativeDiagonal N d t

end GRWTSK.RiemannHypothesis
