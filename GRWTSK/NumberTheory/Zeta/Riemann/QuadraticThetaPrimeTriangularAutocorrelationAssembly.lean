/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularOrderRegionReindexing
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Repository Fourier convention agrees with the positive triangular phase. -/
theorem triangularPhase_eq_fourier
    (t : ℝ) (d : ℕ) :
    triangularPhase t d =
      fourier (d : ℤ) (t : AddCircle (1 : ℝ)) := by
  unfold triangularPhase
  rw [fourier_coe_apply]
  push_cast
  ring_nf

/-- Negative-frequency Fourier mode is the conjugate triangular phase. -/
theorem conj_triangularPhase_eq_fourier_neg
    (t : ℝ) (d : ℕ) :
    Complex.conj (triangularPhase t d) =
      fourier (-(d : ℤ)) (t : AddCircle (1 : ℝ)) := by
  rw [triangularPhase_eq_fourier]
  symm
  exact fourier_neg

/-- Every zero-offset pair contributes one. -/
theorem triangularPairTerm_diag
    (t : ℝ) (b : ℕ) :
    triangularPairTerm t (b,b) = 1 := by
  unfold triangularPairTerm triangularPhase
  rw [Complex.mul_conj]
  simp [Complex.normSq_exp]

/-- The zero-offset region contributes exactly N. -/
theorem triangularZeroOffsetRegion_sum
    (N : ℕ) (t : ℝ) :
    (∑ p ∈ triangularZeroOffsetPairs N,
        triangularPairTerm t p) = (N : ℂ) := by
  have hzero :
      triangularZeroOffsetPairs N =
        (Finset.range N).image (fun b => (b,b)) := by
    ext p
    simp [triangularZeroOffsetPairs, triangularAutocorrelationPairs]
  rw [hzero, Finset.sum_image]
  · simp [triangularPairTerm_diag]
  · intro a ha b hb hab
    exact congrArg Prod.fst hab

/-- Explicit positive/negative frequency assembly obtained from the
autocorrelation diagonals before rewriting the single integer interval sum. -/
def triangularAssembledFrequencySum
    (N : ℕ) (t : ℝ) : ℂ :=
  1 +
    ∑ d ∈ Finset.Ico 1 N,
      ((N - d : ℕ) : ℂ) / (N : ℂ) *
        fourier (d : ℤ) (t : AddCircle (1 : ℝ)) +
    ∑ d ∈ Finset.Ico 1 N,
      ((N - d : ℕ) : ℂ) / (N : ℂ) *
        fourier (-(d : ℤ)) (t : AddCircle (1 : ℝ))

theorem triangularPositiveDiagonal_sum_explicit
    (N : ℕ) (t : ℝ) :
    (∑ d ∈ Finset.Ico 1 N,
        triangularPositiveDiagonal N d t) =
      ∑ d ∈ Finset.Ico 1 N,
        ((N - d : ℕ) : ℂ) * triangularPhase t d := by
  apply Finset.sum_congr rfl
  intro d hd
  exact triangularPositiveDiagonal_eq
    (Nat.le_of_lt (Finset.mem_Ico.mp hd).2) t

theorem triangularNegativeDiagonal_sum_explicit
    (N : ℕ) (t : ℝ) :
    (∑ d ∈ Finset.Ico 1 N,
        triangularNegativeDiagonal N d t) =
      ∑ d ∈ Finset.Ico 1 N,
        ((N - d : ℕ) : ℂ) *
          Complex.conj (triangularPhase t d) := by
  apply Finset.sum_congr rfl
  intro d hd
  exact triangularNegativeDiagonal_eq
    (Nat.le_of_lt (Finset.mem_Ico.mp hd).2) t

/-- The normalized geometric-block autocorrelation is exactly the assembled
zero/positive/negative frequency expression. -/
theorem normalizedGeometricAutocorrelation_eq_assembled
    {N : ℕ} (hN : 0 < N)
    (t : ℝ) :
    ((1 : ℂ) / (N : ℝ)) *
        triangularGeometricBlock N t *
        Complex.conj (triangularGeometricBlock N t) =
      triangularAssembledFrequencySum N t := by
  have hpart :=
    triangularGeometricBlock_mul_conj_partition N t
  rw [triangularZeroOffsetRegion_sum,
    triangularPositiveRegion_sum_eq_diagonals,
    triangularNegativeRegion_sum_eq_diagonals] at hpart
  rw [triangularPositiveDiagonal_sum_explicit,
    triangularNegativeDiagonal_sum_explicit] at hpart
  unfold triangularAssembledFrequencySum
  rw [hpart]
  simp_rw [triangularPhase_eq_fourier,
    conj_triangularPhase_eq_fourier_neg]
  have hN0 : (N : ℂ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hN)
  field_simp [hN0]
  ring

/-- Final purely finite kernel rewrite still open: the assembled positive and
negative natural-frequency sums equal the symmetric integer-frequency kernel. -/
def TriangularAssembledFrequencyKernelClaim : Prop :=
  ∀ N : ℕ, 0 < N →
    ∀ t : ℝ,
      triangularAssembledFrequencySum N t =
        symmetricTriangularKernel N (t : AddCircle (1 : ℝ))

/-- Once the final integer-frequency rewrite is proved, the autocorrelation
identity is discharged. -/
theorem assembledKernel_to_autocorrelation
    (hkernel : TriangularAssembledFrequencyKernelClaim) :
    SymmetricTriangularKernelAutocorrelationClaim := by
  intro N hN t
  symm
  rw [← hkernel N hN t]
  exact normalizedGeometricAutocorrelation_eq_assembled hN t

end GRWTSK.RiemannHypothesis
