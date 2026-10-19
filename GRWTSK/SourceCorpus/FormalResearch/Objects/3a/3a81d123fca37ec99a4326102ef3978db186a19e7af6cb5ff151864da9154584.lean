import Mathlib
import Mathematics.StratifiedBoundary.SquareRoot.OrdinalFamily

/-!
# Normalized weak-star limit closure

Uniform finite-cut square-root estimates bound the normalized functionals.
They do not assert convergence of the unnormalized discrepancies.  A fixed or
compatibly transported test space and a weak-star compactness certificate
produce the bounded limit functional.
-/

namespace Mathematics.StratifiedBoundary.SquareRoot

open Filter
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure UniformCofinalScaleCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (family :
      OrdinalFamilySquareRootCertificate system) where
  massCofinal :
    Tendsto family.mass atTop atTop
  normalization : Nat → ℝ
  normalization_eq :
    ∀ stage,
      normalization stage =
        Mathematics.MobiusOntology.squareRootWeight
          (family.mass stage)
          family.logarithmicOrder
  normalizationPositive :
    ∀ stage,
      0 < normalization stage
  uniformAlongRegisteredCofinalSequence : Prop
  uniformityProof :
    uniformAlongRegisteredCofinalSequence

structure NormalizedLimitCompatibilityCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (family :
      OrdinalFamilySquareRootCertificate system) where
  cofinalScale :
    UniformCofinalScaleCertificate family
  testNorm : TestFunction → ℝ
  testNormNonnegative :
    ∀ test,
      0 ≤ testNorm test
  stageFunctional :
    Nat → TestFunction → ℂ
  stageFunctionalIsNormalizedDiscrepancy :
    Prop
  normalizationProof :
    stageFunctionalIsNormalizedDiscrepancy
  stageBound :
    ∀ stage test,
      Complex.abs (stageFunctional stage test) ≤
        family.uniformConstant * testNorm test
  testSpaceCompatibleAcrossStages : Prop
  testCompatibilityProof :
    testSpaceCompatibleAcrossStages
  normalizedFamilyWeakStarCompact : Prop
  compactnessProof :
    normalizedFamilyWeakStarCompact
  limitFunctional :
    TestFunction → ℂ
  weakStarConverges :
    ∀ test,
      Tendsto
        (fun stage =>
          stageFunctional stage test)
        atTop
        (𝓝 (limitFunctional test))
  limitBound :
    ∀ test,
      Complex.abs (limitFunctional test) ≤
        family.uniformConstant * testNorm test
  unnormalizedLimitClaimed : Bool := false
  unnormalizedLimitNotClaimed :
    unnormalizedLimitClaimed = false := by
      rfl

abbrev LimitNormCompatibilityCertificate :=
  NormalizedLimitCompatibilityCertificate

def NormalizedLimitBounded
    {TestFunction : Type uTest}
    (testNorm : TestFunction → ℝ)
    (functional : TestFunction → ℂ) : Prop :=
  ∃ constant : ℝ,
    0 ≤ constant ∧
      ∀ test,
        Complex.abs (functional test) ≤
          constant * testNorm test

theorem normalized_limit_square_root_bound
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {family :
      OrdinalFamilySquareRootCertificate system}
    (certificate :
      NormalizedLimitCompatibilityCertificate family) :
    NormalizedLimitBounded
      certificate.testNorm
      certificate.limitFunctional :=
  ⟨family.uniformConstant,
    family.uniformConstantNonnegative,
    certificate.limitBound⟩

theorem normalized_limit_inherits_uniform_constant
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {family :
      OrdinalFamilySquareRootCertificate system}
    (certificate :
      NormalizedLimitCompatibilityCertificate family)
    (test : TestFunction) :
    Complex.abs (certificate.limitFunctional test) ≤
      family.uniformConstant *
        certificate.testNorm test :=
  certificate.limitBound test

end Mathematics.StratifiedBoundary.SquareRoot
