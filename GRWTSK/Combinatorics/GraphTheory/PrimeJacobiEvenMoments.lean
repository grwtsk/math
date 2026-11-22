/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean elaboration, axiom audit and fresh replay
NOT_RUN. No zeta-zero or external RH proof source is imported.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeKnotJacobiArithmetic
import Mathlib.Tactic

/-!
# All-order even spectral moments of the actual prime Jacobi operator

The prime-only Jacobi matrix J_N is real symmetric for every finite
rank N. Define moments by m_k(f)=<f, J_N^k f>, using the standard
real dot product and genuinely ITERATED prime-weighted adjacency.

For every k≥0, the even-moment identity is exact:
  m_{2k}(f) = ∑_i (J_N^k f)_i^2 >= 0.

This yields a full finite family of positive even spectral moments
from arithmetic sources alone, without injecting zeta zeros or using
the independent Alpoge RH theorem. It is an entry point to a
source-defined root spectral measure and a potential Stieltjes moment
problem; it DOES NOT identify that measure with the zeta zero divisor.

The stronger positive-semidefinite Hankel moment matrices,
root-cyclic inverse spectral theorem, Carleman closure in ℓ² and
genuine analytic L-function source return are separate outstanding
proofs. Neither this positivity nor positive graph heat supplies
signed Weil positivity.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiEvenMoments

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic

/-- The actual iterated prime-weighted operator. -/
def iterateJacobi {N : ℕ} : ℕ → (Fin N → ℝ) → (Fin N → ℝ)
  | 0, f => f
  | k + 1, f => applyJacobi (iterateJacobi k f)

theorem iterateJacobi_zero {N : ℕ} (f : Fin N → ℝ) :
    iterateJacobi 0 f = f := rfl

theorem iterateJacobi_succ {N : ℕ} (n : ℕ) (f : Fin N → ℝ) :
    iterateJacobi (n + 1) f = applyJacobi (iterateJacobi n f) := rfl

/-- Powers of one fixed prime-only operator commute with that operator;
no analytical spectral theorem is needed. -/
theorem iterateJacobi_commutes {N : ℕ}
    (n : ℕ) (f : Fin N → ℝ) :
    iterateJacobi n (applyJacobi f) =
      applyJacobi (iterateJacobi n f) := by
  induction n with
  | zero =>
      rfl
  | succ n ih =>
      change applyJacobi (iterateJacobi n (applyJacobi f)) =
        applyJacobi (applyJacobi (iterateJacobi n f))
      exact congrArg applyJacobi ih

theorem iterateJacobi_add {N : ℕ}
    (m n : ℕ) (f : Fin N → ℝ) :
    iterateJacobi (m + n) f =
      iterateJacobi m (iterateJacobi n f) := by
  induction m with
  | zero =>
      rfl
  | succ m ih =>
      change applyJacobi (iterateJacobi (m + n) f) =
        applyJacobi (iterateJacobi m (iterateJacobi n f))
      exact congrArg applyJacobi ih

/-- Exact finite standard real dot product, not an unbounded ℓ²
operator assertion. -/
def dot {N : ℕ} (f g : Fin N → ℝ) : ℝ :=
  ∑ i : Fin N, f i * g i

theorem dot_symmetric {N : ℕ} (f g : Fin N → ℝ) :
    dot f g = dot g f := by
  unfold dot
  apply Finset.sum_congr rfl
  intro i _
  ring

/-- The self-adjoint finite matrix gives symmetry for EVERY power J^k. -/
theorem iterateJacobi_symmetric {N : ℕ} (n : ℕ)
    (f g : Fin N → ℝ) :
    dot (iterateJacobi n f) g = dot f (iterateJacobi n g) := by
  induction n generalizing f g with
  | zero =>
      rfl
  | succ n ih =>
      calc
        dot (iterateJacobi (n + 1) f) g =
            dot (iterateJacobi n f) (applyJacobi g) := by
          simpa only [iterateJacobi_succ, dot] using
            (jacobi_action_symmetric (iterateJacobi n f) g)
        _ = dot f (iterateJacobi n (applyJacobi g)) :=
          ih f (applyJacobi g)
        _ = dot f (iterateJacobi (n + 1) g) := by
          rw [iterateJacobi_commutes]
          rfl

/-- The actual prime-only spectral moment of a finite signal. -/
def moment {N : ℕ} (f : Fin N → ℝ) (n : ℕ) : ℝ :=
  dot f (iterateJacobi n f)

/-- Every even moment is EXACTLY a sum of squares of arithmetic-path
amplitudes, not an arbitrary positive surrogate. -/
theorem evenMoment_eq_sum_sq {N : ℕ}
    (f : Fin N → ℝ) (n : ℕ) :
    moment f (2 * n) =
      ∑ i : Fin N, (iterateJacobi n f i) ^ 2 := by
  unfold moment
  have htimes : 2 * n = n + n := by omega
  calc
    dot f (iterateJacobi (2 * n) f) =
        dot f (iterateJacobi (n + n) f) := by rw [htimes]
    _ = dot f (iterateJacobi n (iterateJacobi n f)) := by
      rw [iterateJacobi_add]
    _ = dot (iterateJacobi n f) (iterateJacobi n f) :=
      (iterateJacobi_symmetric n f (iterateJacobi n f)).symm
    _ = ∑ i : Fin N, (iterateJacobi n f i) ^ 2 := by
      unfold dot
      apply Finset.sum_congr rfl
      intro i _
      ring

/-- This is a source-independent, unbounded-in-moment-order family of
finite mathematical positivity theorems, not an RH result. -/
theorem evenMoment_nonnegative {N : ℕ}
    (f : Fin N → ℝ) (n : ℕ) :
    0 ≤ moment f (2 * n) := by
  rw [evenMoment_eq_sum_sq]
  exact Finset.sum_nonneg
    (fun i _ => sq_nonneg (iterateJacobi n f i))

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiEvenMoments
