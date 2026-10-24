# Complete source: GRWTSK.Topology.GeneralTopology.LimitClosure.Variantd69b768c59ccdc2a1bbe454f40ebe6da086d23ef69a5abd4169ed958bb068deb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb39e149a3b09a2ea101b4c533607a8917387a62` · SHA-256 `21443b13e65d6d4145f1e45e5c8f105184bf3c632155366c8d7b549f249df5a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformCofinalScaleCertificate.Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.UniformCofinalScaleCertificate.Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/SquareRoot/LimitClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import Mathematics.StratifiedBoundary.SquareRoot.OrdinalFamily

/-!
# Normalized weak-star limit closure

Uniform finite-cut square-root estimates bound the normalized functionals.
They do not assert convergence of the unnormalized discrepancies.  A fixed or
compatibly transported test space and a weak-star compactness certificate
produce the bounded limit functional.
-/


namespace GRWTSK.Topology.GeneralTopology.UniformCofinalScaleCertificate.Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584

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
```
