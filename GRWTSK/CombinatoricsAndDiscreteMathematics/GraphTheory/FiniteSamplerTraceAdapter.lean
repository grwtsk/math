/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Imported Mathlib and GRWTSK source retain their original authorship and licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler
import GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

set_option autoImplicit false
noncomputable section

/-!
# Source-faithful finite Gibbs-to-trace adapter

This adapter uses the *actual normalized* finite Gibbs transition kernel as
the entries of a complex weighted-walk matrix. Taking identity descent and
this kernel as the return supplies a concrete finite algebraic example for
the return-matrix interface. It does not construct the independent geometric
boundary identification required by a real contact-complex simulation.

A stochastic matrix is not automatically self-adjoint, positive Hermitian,
or identified with a zeta spectral operator.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

open GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

universe u
variable {V : Type u} [Fintype V] [DecidableEq V]

namespace Sampler

/-- The matrix entries come from the sampler's actual normalized row, not
from candidate edges or unnormalized weights. -/
def complexTransitionMatrix (S : Sampler V) : Matrix V V ℂ :=
  fun i j => (S.probability i j : ℂ)

theorem complexTransitionMatrix_apply (S : Sampler V) (i j : V) :
    S.complexTransitionMatrix i j = (S.probability i j : ℂ) := rfl

theorem complexTransitionMatrix_forbidden
    (S : Sampler V) (i j : V) (h : S.allowed i j = false) :
    S.complexTransitionMatrix i j = 0 := by
  simp [complexTransitionMatrix, S.probability_zero_of_forbidden i j h]

/-- In a one-step finite weighted walk, the computed edge weight is precisely
the probability returned by the original admissible sampler. -/
theorem oneStep_walkWeight_eq_probability
    (S : Sampler V) (i j : V) :
    walkWeight S.complexTransitionMatrix 1 i j = (S.probability i j : ℂ) := by
  calc
    walkWeight S.complexTransitionMatrix 1 i j =
        (S.complexTransitionMatrix ^ 1) i j :=
          walkWeight_eq_pow S.complexTransitionMatrix 1 i j
    _ = (S.probability i j : ℂ) := by
      simp [complexTransitionMatrix]

/-- An explicit finite algebraic return fixture: identity descent followed
by the normalized complex transfer matrix. This is not a geometric closure. -/
def asReturnMatrix (S : Sampler V) : ReturnMatrix V where
  descent := 1
  boundaryReturn := S.complexTransitionMatrix

theorem asReturnMatrix_operator (S : Sampler V) :
    S.asReturnMatrix.operator = S.complexTransitionMatrix := by
  simp [asReturnMatrix, ReturnMatrix.operator]

/-- The selected sampler and return matrix have identical finite closed-walk
moments because their actual operators are definitionally linked. -/
theorem sampler_closedWalkMoment_eq_return_trace (S : Sampler V) (n : ℕ) :
    closedWalkMoment S.complexTransitionMatrix n =
      Matrix.trace (S.asReturnMatrix.operator ^ n) := by
  rw [S.asReturnMatrix_operator]
  exact closedWalkMoment_eq_trace S.complexTransitionMatrix n

end Sampler

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler
