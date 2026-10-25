/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream mathematics retains its authorship and licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteGramOperator
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Canonical finite square-tent Gram as a bounded Euclidean operator

The previous source constructs the exact arithmetic Gram on complex
coefficient vectors. The pinned Mathlib matrix-to-continuous-operator
isomorphism provides an honest bounded operator on the finite complex
Euclidean Hilbert space, with entries tied to the actual arithmetic
square-tent diagonal.

This finite-dimensional realization does not establish a uniform
operator norm in M, a compatible infinite-volume limit, a classical
Guinand--Weil test-space representation, a Connes operator, or RH.
Source-level proof candidate; no Lean compilation, kernel replay or
transitive axiom audit is claimed.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentEuclideanGram

open Matrix
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteGramOperator

/-- The actual source Gram matrix on the canonical square-tent coordinates. -/
def canonicalEuclideanGramMatrix (M : ℕ) :
    Matrix (Fin (M + 1)) (Fin (M + 1)) ℂ :=
  Matrix.diagonal (fun i => (arithmeticCrossCoefficient i i : ℂ))

/-- The concrete bounded complex-linear operator on the canonical
finite-dimensional Euclidean Hilbert space; no new spectral hypothesis. -/
def canonicalEuclideanGramOperator (M : ℕ) :
    EuclideanSpace ℂ (Fin (M + 1)) →L[ℂ]
      EuclideanSpace ℂ (Fin (M + 1)) :=
  Matrix.toEuclideanCLM (canonicalEuclideanGramMatrix M)

/-- At the exact source coordinates the bounded operator acts by the
same arithmetic weights as the existing finite linear endomorphism. -/
theorem canonicalEuclideanGramOperator_toLp (M : ℕ)
    (u : Combination M) :
    canonicalEuclideanGramOperator M (WithLp.toLp 2 u) =
      WithLp.toLp 2 (canonicalGramOperator M u) := by
  change
    Matrix.toEuclideanCLM (canonicalEuclideanGramMatrix M)
        (WithLp.toLp 2 u) =
      WithLp.toLp 2 (canonicalGramOperator M u)
  rw [Matrix.toEuclideanCLM_toLp]
  apply PiLp.ext
  intro i
  simp [canonicalEuclideanGramMatrix, Matrix.mulVec,
    Matrix.diagonal, canonicalGramOperator_apply]

/-- The canonical bounded realization vanishes on a coordinate vector
exactly when the original arithmetic linear endomorphism does.
This is an exact finite transport, not a full-test density claim. -/
theorem canonicalEuclideanGramOperator_eq_zero_iff (M : ℕ)
    (u : Combination M) :
    canonicalEuclideanGramOperator M (WithLp.toLp 2 u) = 0 ↔
      canonicalGramOperator M u = 0 := by
  rw [canonicalEuclideanGramOperator_toLp]
  exact (WithLp.toLp_eq_zero 2).trans (Iff.rfl)


/-! ## Exact Hilbert pairing and operator-norm boundary

The inner-product identification uses the actual finite Euclidean Hilbert
space rather than a stand-in algebraic pairing. The operator norm is
the maximum modulus of the genuine arithmetic diagonal coefficients
at each finite stage. Consequently uniform operator norm control is
equivalent to a uniform bound on these coefficients. Neither the bound
nor an infinite-dimensional operator is claimed without the arithmetic
supplier.
-/

/-- The real Hilbert model reproduces the FULL original polarized
arithmetic source form, not just diagonal nonnegativity. -/
theorem canonicalEuclideanGram_inner_eq_source (M : ℕ)
    (u v : Combination M) :
    inner ℂ (WithLp.toLp 2 u)
        (canonicalEuclideanGramOperator M (WithLp.toLp 2 v)) =
      sourcePolarizedForm u v := by
  rw [canonicalEuclideanGramOperator_toLp]
  calc
    _ = coordinatePairing u (canonicalGramOperator M v) := by
      simp [coordinatePairing, PiLp.inner_apply, RCLike.inner_apply,
        mul_comm]
    _ = sourcePolarizedForm u v :=
      coordinatePairing_operator_eq_source u v

/-- The actual bounded operator is nonnegative on the ENTIRE finite
Euclidean Hilbert space. This is the source arithmetic Gram positivity
transported through the concrete L² coordinate equivalence. -/
theorem canonicalEuclideanGramOperator_nonnegative (M : ℕ)
    (u : EuclideanSpace ℂ (Fin (M + 1))) :
    0 ≤ (inner ℂ u (canonicalEuclideanGramOperator M u)).re := by
  have hu : u = WithLp.toLp 2 (WithLp.ofLp u) :=
    (WithLp.toLp_ofLp u).symm
  rw [hu, canonicalEuclideanGram_inner_eq_source]
  exact sourcePolarizedForm_self_re_nonnegative _

/-- Exact finite-stage operator norm. The right side is the true
coordinate supremum of the source-derived arithmetic masses. -/
open scoped Matrix.Norms.L2Operator in
theorem canonicalEuclideanGramOperator_norm_eq (M : ℕ) :
    ‖canonicalEuclideanGramOperator M‖ =
      ‖(fun i : Fin (M + 1) =>
        (arithmeticCrossCoefficient i i : ℂ))‖ := by
  change ‖Matrix.toEuclideanCLM
      (Matrix.diagonal (fun i : Fin (M + 1) =>
        (arithmeticCrossCoefficient i i : ℂ)))‖ =
      ‖(fun i : Fin (M + 1) =>
        (arithmeticCrossCoefficient i i : ℂ))‖
  rw [Matrix.l2_opNorm_toEuclideanCLM, Matrix.l2_opNorm_diagonal]

/-- A uniform bound on the growing finite Hilbert operators is EXACTLY
a uniform modulus bound on all the actual finite-stage arithmetic
coefficients. This theorem provides neither bound. -/
theorem uniform_operator_norm_bound_iff_arithmetic_bound
    (C : ℝ) (hC : 0 ≤ C) :
    (∀ M : ℕ, ‖canonicalEuclideanGramOperator M‖ ≤ C) ↔
      ∀ M : ℕ, ∀ i : Fin (M + 1),
        ‖(arithmeticCrossCoefficient i i : ℂ)‖ ≤ C := by
  constructor
  · intro h M i
    have hM := h M
    rw [canonicalEuclideanGramOperator_norm_eq] at hM
    exact (pi_norm_le_iff_of_nonneg hC).mp hM i
  · intro h M
    rw [canonicalEuclideanGramOperator_norm_eq]
    exact (pi_norm_le_iff_of_nonneg hC).mpr (h M)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentEuclideanGram
