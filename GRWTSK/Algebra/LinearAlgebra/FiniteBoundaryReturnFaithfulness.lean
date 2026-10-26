/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Upstream Mathlib and existing GRWTSK results retain their original licenses. -/
import GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturnTrace

set_option autoImplicit false
noncomputable section

/-!
# Faithful finite operator observation

The complete set of source-coordinate coefficients is injective on the
selected real return operator. Complex coefficient embedding loses no
information about that *whole* operator.

This does not make the port factorization unique: different descent and
boundary-return pairs can have the same composite. Nor do traces or finite
moment projections inherit this injectivity.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn

universe u v
variable {I : Type u} {J : Type v}
variable [Fintype I] [DecidableEq I] [Fintype J] [DecidableEq J]

namespace System

/-- A complete source-bound basis-coefficient agreement recovers the exact
return linear map. This is stronger than moment or trace agreement. -/
theorem returnOperator_eq_of_coefficients_eq
    (S T : System (I → ℝ) (J → ℝ))
    (h : ∀ i j : I,
      S.returnOperator (Pi.single j (1 : ℝ)) i =
        T.returnOperator (Pi.single j (1 : ℝ)) i) :
    S.returnOperator = T.returnOperator := by
  apply LinearMap.toMatrix'.injective
  ext i j
  simpa only [LinearMap.toMatrix'_apply] using h i j

/-- The actual complexified matrix determines the entire original real
return operator: equality can be reflected by taking real parts of every
embedded coefficient. -/
theorem returnOperator_eq_of_complexReturnOperator_eq
    (S T : System (I → ℝ) (J → ℝ))
    (h : S.complexReturnOperator = T.complexReturnOperator) :
    S.returnOperator = T.returnOperator := by
  apply S.returnOperator_eq_of_coefficients_eq T
  intro i j
  have hc := congrArg (fun M : Matrix I I ℂ => M i j) h
  rw [S.complexReturnOperator_eq_source,
    T.complexReturnOperator_eq_source] at hc
  have he :
      ((S.returnOperator (Pi.single j (1 : ℝ)) i : ℝ) : ℂ) =
        ((T.returnOperator (Pi.single j (1 : ℝ)) i : ℝ) : ℂ) := by
    simpa only [LinearMap.toMatrix'_apply] using hc
  simpa using congrArg Complex.re he

/-- Exact iff: the complex matrix reflects and preserves the same selected
real return operator; it does not reconstruct the two individual ports. -/
theorem complexReturnOperator_eq_iff_returnOperator_eq
    (S T : System (I → ℝ) (J → ℝ)) :
    S.complexReturnOperator = T.complexReturnOperator ↔
      S.returnOperator = T.returnOperator := by
  constructor
  · exact S.returnOperator_eq_of_complexReturnOperator_eq T
  · intro h
    rw [S.complexReturnOperator_eq_source,
      T.complexReturnOperator_eq_source, h]

end System

end GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn
