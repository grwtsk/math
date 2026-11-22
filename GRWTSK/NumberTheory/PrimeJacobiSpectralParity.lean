/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: local Lean, transitive axioms and fresh
independent kernel replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiParitySquare
import GRWTSK.NumberTheory.PrimeJacobiSpectralEnclosure

/-!
# Source-prime spectral mirror and arithmetic continuant parity

The offdiagonal weights are the ACTUAL nth prime, not a spectral
fit to known zeta zeros. The two-sheet source involution changes
lambda to -lambda because the original zero-diagonal prime graph
is genuinely bipartite.

This mirrors the HEIGHT-sign symmetry of completed zeta zeros under
functional equation and complex conjugation, which Alpoge's proof
uses to transport one-sided nonvanishing. We do NOT use his RH theorem
or assert any spectral map from zeta to this Jacobi operator.

The exact prime continuant has parity P_n(-t)=(-1)^n P_n(t).
Odd truncations have an unavoidable zero, so the raw sequence of
ALL finite characteristic polynomials cannot literally be the
zero set of the completed zeta function without a source-justified
normalization/removal of spurious modes. These are actual algebraic
constraints on future analytic trace/determinant constructions.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.PrimeJacobiSpectralParity

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiParitySquare
open GRWTSK.NumberTheory.PrimeJacobiSpectralEnclosure

/-- Every prime offdiagonal grows at least linearly with the
arithmetic ordinal; this is a genuine arithmetic-source theorem. -/
theorem bond_lower (n : ℕ) :
    ((n + 2 : ℕ) : ℝ) ≤ bond n := by
  change ((n + 2 : ℕ) : ℝ) ≤ (Nat.nth Nat.Prime n : ℝ)
  exact_mod_cast Nat.add_two_le_nth_prime n

/-- In particular no UNIFORMLY BOUNDED infinite adjacency operator
can extend every finite prime section with the original weights.
An unbounded self-adjoint domain must be treated explicitly. -/
theorem bond_unbounded (B : ℝ) :
    ∃ n : ℕ, B < bond n := by
  obtain ⟨n, hn⟩ := exists_nat_gt B
  refine ⟨n, ?_⟩
  have hm : (n : ℝ) ≤ ((n + 2 : ℕ) : ℝ) := by
    exact_mod_cast (show n ≤ n + 2 by omega)
  exact (hn.trans_le hm).trans_le (bond_lower n)

/-- Mirror every genuine finite prime-only Jacobi eigenvalue.
The eigenvector is transformed by an invertible parity involution;
no external zero data or RH premise is present. -/
theorem jacobiEigenvalue_neg {N : ℕ} {λ : ℝ}
    (h : JacobiEigenvalue N λ) :
    JacobiEigenvalue N (-λ) := by
  rcases h with ⟨f, ⟨i, hfi⟩, hf⟩
  refine ⟨twist f, ⟨i, twist_nonzero_at f i hfi⟩, ?_⟩
  exact jacobi_mirrored_eigenpair f λ hf

/-- The finite spectral point set is symmetric about zero in
EVERY dimension, including singular/zero-mode odd sections. -/
theorem jacobiEigenvalue_neg_iff (N : ℕ) (λ : ℝ) :
    JacobiEigenvalue N λ ↔ JacobiEigenvalue N (-λ) := by
  constructor
  · exact jacobiEigenvalue_neg
  · intro h
    simpa only [neg_neg] using
      (jacobiEigenvalue_neg (N := N) (λ := -λ) h)

/-- Exact parity identity for the authentic three-term arithmetic
continuant. Proof is two-step induction on rank, with offdiagonal
weight squares unchanged by the scalar spectral reflection. -/
theorem continuant_neg_parity (height : ℝ) :
    ∀ n : ℕ, continuant (-height) n =
      (-1 : ℝ) ^ n * continuant height n := by
  intro n
  induction n using Nat.twoStepInduction with
  | zero =>
      simp [continuant]
  | one =>
      simp [continuant]
  | more k ih0 ih1 =>
      change (-height) * continuant (-height) (k + 1) -
        (bond k) ^ 2 * continuant (-height) k =
        (-1 : ℝ) ^ (k + 2) *
          (height * continuant height (k + 1) -
            (bond k) ^ 2 * continuant height k)
      rw [ih0, ih1]
      rw [show ((-1 : ℝ) ^ (k + 2)) = (-1 : ℝ) ^ k from by
        rw [pow_add]
        norm_num]
      rw [pow_succ]
      ring

theorem continuant_even (height : ℝ) (k : ℕ) :
    continuant (-height) (2 * k) = continuant height (2 * k) := by
  have h := continuant_neg_parity height (2 * k)
  have he : (-1 : ℝ) ^ (2 * k) = 1 := by
    rw [pow_mul]
    norm_num
  rw [he, one_mul] at h
  exact h

theorem continuant_odd (height : ℝ) (k : ℕ) :
    continuant (-height) (2 * k + 1) =
      -continuant height (2 * k + 1) := by
  have h := continuant_neg_parity height (2 * k + 1)
  have he : (-1 : ℝ) ^ (2 * k + 1) = -1 := by
    rw [pow_add, pow_mul]
    norm_num
  rw [he] at h
  simpa only [neg_one_mul] using h

/-- The continuant at zero vanishes in EVERY odd rank, by the
original arithmetic recurrence, independent of the RH statement. -/
theorem odd_rank_continuant_zero (k : ℕ) :
    continuant 0 (2 * k + 1) = 0 :=
  continuant_odd_zero k

/-- At even rank the recurrence cannot have the same spurious
zero mode: all genuine prime bonds are strictly positive. -/
theorem even_rank_continuant_nonzero (k : ℕ) :
    continuant 0 (2 * k) ≠ 0 :=
  continuant_even_ne_zero k

/-- First nontrivial prime-only continuants: 2²=4, and
2²+3²=13. These are arithmetic identities, not zeta ordinates. -/
theorem continuant_two_exact (height : ℝ) :
    continuant height 2 = height ^ 2 - 4 := by
  norm_num [continuant, bond, primeAt]
  ring

theorem continuant_three_exact (height : ℝ) :
    continuant height 3 = height * (height ^ 2 - 13) := by
  norm_num [continuant, bond, primeAt]
  ring

end GRWTSK.NumberTheory.PrimeJacobiSpectralParity
