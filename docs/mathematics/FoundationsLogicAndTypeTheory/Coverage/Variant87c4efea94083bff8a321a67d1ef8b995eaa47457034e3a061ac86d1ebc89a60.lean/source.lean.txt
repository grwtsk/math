-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalDomainId.Variant0f0b20d4a72429d7f7b24f3e2dfc9be99b20c6fd5ad053771cc4d30d37516ed4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f0b20d4a72429d7f7b24f3e2dfc9be99b20c6fd5ad053771cc4d30d37516ed4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MathematicalDomainId.Variant0f0b20d4a72429d7f7b24f3e2dfc9be99b20c6fd5ad053771cc4d30d37516ed4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0f0b20d4a72429d7f7b24f3e2dfc9be99b20c6fd5ad053771cc4d30d37516ed4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Coverage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Rat.Defs
import Surface.ContinuousAssurance.WorldModel.Stability

/-!
# Versioned finite coverage

Coverage is relative to an explicit finite domain, cover, version set,
assumption context, and metric.  A percentage exists only through
`CoverageRatio`, whose denominator is proven positive.  Formal theorem,
literature, and human-review coverage remain separate quantities, and growth
in any count does not increase theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalDomainId.Variant0f0b20d4a72429d7f7b24f3e2dfc9be99b20c6fd5ad053771cc4d30d37516ed4

namespace Surface.ContinuousAssurance.WorldModel

structure MathematicalDomainId where
  value : String
  deriving DecidableEq, Repr

/-- A reviewed coverage metric and its exact denominator interpretation. -/
structure CoverageMetric where
  identity : ArtifactIdentity
  eligibleMeaning : String
  coveredMeaning : String
  version : ArtifactIdentity
  deriving DecidableEq, Repr

/-- A rational coverage value exists only with a positive denominator. -/
structure CoverageRatio where
  numerator : Nat
  denominator : Nat
  numerator_le : numerator ≤ denominator
  denominator_pos : 0 < denominator

namespace CoverageRatio

/-- Exact rational value of a denominator-certified coverage ratio. -/
def value (ratio : CoverageRatio) : ℚ :=
  (ratio.numerator : ℚ) / (ratio.denominator : ℚ)

theorem value_nonnegative (ratio : CoverageRatio) :
    0 ≤ ratio.value := by
  exact div_nonneg (by positivity) (by positivity)

theorem value_le_one (ratio : CoverageRatio) :
    ratio.value ≤ 1 := by
  rw [value, div_le_iff₀ (by exact_mod_cast ratio.denominator_pos)]
  simpa using ratio.numerator_le

/-- No denominator-certified percentage can have denominator zero. -/
theorem denominator_cannot_be_zero :
    ¬ ∃ ratio : CoverageRatio, ratio.denominator = 0 := by
  rintro ⟨ratio, zero⟩
  have positive := ratio.denominator_pos
  rw [zero] at positive
  exact Nat.lt_asymm positive positive

end CoverageRatio

/-- Scope-relative counts and metadata, prior to independent review. -/
structure MathematicalDomainCoverage where
  domainId : MathematicalDomainId
  cover : ArtifactIdentity
  versions : ArtifactIdentity
  assumptions : ArtifactIdentity
  metric : CoverageMetric
  eligibleObjects : Nat
  coveredObjects : Nat
  eligibleStatements : Nat
  coveredStatements : Nat
  kernelCheckedProofs : Nat
  importedAssumptions : List ArtifactIdentity
  translations : List ArtifactIdentity
  counterexamples : List ArtifactIdentity
  linkedLiterature : List ArtifactIdentity
  unformalizedLiterature : List ArtifactIdentity
  unsupportedConstructions : List ArtifactIdentity
  openProblems : List ArtifactIdentity
  reviewedItems : Nat
  reviewEligibleItems : Nat
  coverageVersion : ArtifactIdentity
  sourceAuthority : AuthorityClass
  resultingAuthority : AuthorityClass
  authorityPreserved : resultingAuthority = sourceAuthority

/-- Independently reviewable coverage with all three denominators explicit. -/
structure ReviewedCoverageReport where
  coverage : MathematicalDomainCoverage
  objectCoverage : CoverageRatio
  statementCoverage : CoverageRatio
  reviewCoverage : CoverageRatio
  objectCounts :
    objectCoverage.numerator = coverage.coveredObjects ∧
      objectCoverage.denominator = coverage.eligibleObjects
  statementCounts :
    statementCoverage.numerator = coverage.coveredStatements ∧
      statementCoverage.denominator = coverage.eligibleStatements
  reviewCounts :
    reviewCoverage.numerator = coverage.reviewedItems ∧
      reviewCoverage.denominator = coverage.reviewEligibleItems
  reviewer : ArtifactIdentity
  reviewEvidence : ArtifactIdentity

/-- Coverage accounting cannot promote source authority. -/
theorem coverage_growth_does_not_increase_authority
    (coverage : MathematicalDomainCoverage) :
    coverage.resultingAuthority = coverage.sourceAuthority :=
  coverage.authorityPreserved

/-- Changing the metric identity creates a distinct reviewed scope. -/
theorem metric_change_changes_coverage_scope
    (left right : MathematicalDomainCoverage)
    (changed : left.metric.version ≠ right.metric.version) :
    left.metric ≠ right.metric := by
  intro equal
  exact changed (congrArg CoverageMetric.version equal)

end Surface.ContinuousAssurance.WorldModel
