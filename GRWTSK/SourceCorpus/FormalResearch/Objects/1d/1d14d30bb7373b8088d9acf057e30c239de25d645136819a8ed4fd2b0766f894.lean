import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathematics.MobiusOntology.PurityBridge

/-!
# Uniform square-root discrepancy norm

The certificate retains the mass, logarithmic order, exact discrepancy norm,
and one uniform bound.  It has no computational-hardness constructor.
-/

namespace Mathematics.MobiusOntology

universe u

def squareRootWeight
    (mass : ℝ) (logarithmicOrder : Nat) : ℝ :=
  Real.sqrt mass * (1 + Real.log mass) ^ logarithmicOrder

structure SquareRootNormCertificate (Scale : Type u) where
  mass : Scale → ℝ
  discrepancyNorm : Scale → ℝ
  logarithmicOrder : Nat
  constant : ℝ
  massAtLeastOne : ∀ scale, 1 ≤ mass scale
  constantNonnegative : 0 ≤ constant
  bound :
    ∀ scale,
      discrepancyNorm scale ≤
        constant * squareRootWeight
          (mass scale) logarithmicOrder

def SquareRootNormFinite
    {Scale : Type u}
    (mass discrepancyNorm : Scale → ℝ)
    (logarithmicOrder : Nat) : Prop :=
  ∃ constant ≥ 0,
    ∀ scale,
      discrepancyNorm scale ≤
        constant *
          squareRootWeight (mass scale) logarithmicOrder

theorem squareRootNorm_finite
    {Scale : Type u}
    (certificate : SquareRootNormCertificate Scale) :
    SquareRootNormFinite
      certificate.mass certificate.discrepancyNorm
      certificate.logarithmicOrder :=
  ⟨certificate.constant, certificate.constantNonnegative,
    certificate.bound⟩

structure BitfieldSquareRootBudget (Scale : Type u) where
  aggregationNorm : Scale → ℝ
  localError : Scale → ℝ
  mass : Scale → ℝ
  logarithmicOrder : Nat
  constant : ℝ
  bound :
    ∀ scale,
      aggregationNorm scale * localError scale ≤
        constant *
          squareRootWeight (mass scale) logarithmicOrder

end Mathematics.MobiusOntology
