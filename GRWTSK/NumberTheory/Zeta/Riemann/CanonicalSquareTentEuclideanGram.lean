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

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentEuclideanGram
