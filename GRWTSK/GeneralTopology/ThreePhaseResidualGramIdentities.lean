/- Copyright (c) 2026 grwtsk contributors. MIT.

Independent algebraic source candidates for the three-phase residual metric.
The direct Gram and diagonalized formulas are proved as separate identities,
with no reliance on a source-unrelated gauge-group hypothesis.

Their analytic derivations and hostile cases are independently documented at
documentation/mathematics/_support/reviews/three-phase-residual-analytic-closure.md

Status: SOURCE_CANDIDATE. Compilation, fresh kernel checking and transitive
axiom audit: NOT_RUN. No PDE, Yang--Mills or QCD theorem is asserted.
-/
import GRWTSK.GeneralTopology.ThreePhaseCoherentResidual
import Mathlib.Tactic.Ring

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.ThreePhaseResidualGramIdentities

/-- Retain all three source coordinates, including the exact third
residual coordinate -(a+b). This is a complex scalar quadratic expression;
its real nonnegative value is established by the original squared-norm source. -/
def quadratic (a b : ℂ) : ℂ :=
  star a * a + star b * b + star (a + b) * (a + b)

/-- The raw two-coordinate Gram form is G = [[2,1],[1,2]], with
the conjugate-linear-first convention inherited from Weil polarization. -/
def gram (a b : ℂ) : ℂ :=
  star a * (2 * a + b) + star b * (a + 2 * b)

/-- Route I: expand the original three source coordinates, retaining the
mixed Hermitian terms. -/
theorem quadratic_eq_gram (a b : ℂ) :
    quadratic a b = gram a b := by
  simp only [quadratic, gram, star_add]
  ring

/-- Route II: independently diagonalize the source form using symmetric and
antisymmetric residual coordinates. These are the two eigenmode channels of G. -/
theorem quadratic_diagonalized (a b : ℂ) :
    2 * quadratic a b =
      3 * (star (a + b) * (a + b)) +
        star (a - b) * (a - b) := by
  simp only [quadratic, star_add, star_sub]
  ring

/-- The diagonalized and Gram forms agree, giving a second algebraic check
that does not depend on rewriting the original source to a matrix. -/
theorem gram_diagonalized (a b : ℂ) :
    2 * gram a b =
      3 * (star (a + b) * (a + b)) +
        star (a - b) * (a - b) := by
  rw [← quadratic_eq_gram]
  exact quadratic_diagonalized a b

/-- An explicit hostile fixture: replacing the actual coupled Gram form by
the raw standard Euclidean two-coordinate form changes the observation.
The original residual source (1,1,-2) has energy 6, while (1,-1,0) has 2. -/
theorem hostile_wrong_metric :
    quadratic 1 1 = 6 ∧ quadratic 1 (-1) = 2 := by
  constructor <;> norm_num [quadratic]

end GRWTSK.Algebra.LinearAlgebra.ThreePhaseResidualGramIdentities
