-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremConeId.Variant0635f0add72934748c663d4d5cd69fe75308de072f3bc98adf466af1279b0b95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0635f0add72934748c663d4d5cd69fe75308de072f3bc98adf466af1279b0b95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TheoremConeId.Variant0635f0add72934748c663d4d5cd69fe75308de072f3bc98adf466af1279b0b95","mathematical_subject":"Computation.DataStructures","original_sha256":"0635f0add72934748c663d4d5cd69fe75308de072f3bc98adf466af1279b0b95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/AST/TheoremConeStyle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremConeId.Variant0635f0add72934748c663d4d5cd69fe75308de072f3bc98adf466af1279b0b95

namespace Surface
namespace AST

/-!
# Theorem-cone style metadata

This module records Annals-style presentation metadata for theorem pages.  It is
not theorem authority, is not an AST export fixture, and is not a major theorem
gate.
-/

/-- Public theorem-cone identifiers used by style and page audits. -/
inductive TheoremConeId where
  | bsd
  | rhHilbertTrace
  | prismaticComparison
  | kakeyaOrientedFlatness
  | analyticPDE
  | ricciFlow
  | finiteOSHomology
  | finiteHilbertSpectralConvergence
  | booleanFiniteInfrastructure
  | sharedInfrastructure
deriving DecidableEq, Repr

/-- Metadata for an Annals-style theorem page. -/
structure AnnalsTheoremPage where
  cone : TheoremConeId
  publicName : String
  statementName : String
  minimalImports : List String
  hardInputs : List String
  certificateInputs : List String
  forbiddenImports : List String
  notClaimed : List String
  assumptionBudget : List String
  proofBoundary : String
deriving Repr

/-- A theorem page has an exact named statement. -/
def AnnalsTheoremPage.hasExactStatement
    (P : AnnalsTheoremPage) : Prop :=
  P.statementName ≠ ""

/-- A theorem page has an explicit non-claim boundary. -/
def AnnalsTheoremPage.hasNonclaimBoundary
    (P : AnnalsTheoremPage) : Prop :=
  P.notClaimed ≠ []

/-- Referee-style theorem pages expose the exact statement and non-claim boundary. -/
theorem AnnalsTheoremPage.refereeStyle_of_fields
    (P : AnnalsTheoremPage)
    (hStmt : P.hasExactStatement)
    (hBoundary : P.hasNonclaimBoundary) :
    P.hasExactStatement ∧ P.hasNonclaimBoundary := by
  exact ⟨hStmt, hBoundary⟩

end AST
end Surface
