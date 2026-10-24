-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StyleAuditEntry.Variant9d91e7a6f206c435036f8e698ba11d2f6bd985eb7041d76514452eea4af21652","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d91e7a6f206c435036f8e698ba11d2f6bd985eb7041d76514452eea4af21652","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.StyleAuditEntry.Variant9d91e7a6f206c435036f8e698ba11d2f6bd985eb7041d76514452eea4af21652","mathematical_subject":"Computation.DataStructures","original_sha256":"9d91e7a6f206c435036f8e698ba11d2f6bd985eb7041d76514452eea4af21652","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/AST/StyleAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.AST.TheoremConeStyle


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StyleAuditEntry.Variant9d91e7a6f206c435036f8e698ba11d2f6bd985eb7041d76514452eea4af21652

namespace Surface
namespace AST

/-!
# Theorem-cone style audit helpers

These helpers are intentionally string-level and non-blocking.  They support an
audit report for public theorem pages without becoming theorem authority or a
generated fixture source.
-/

/-- Phrases that should not appear in public theorem-page summaries. -/
def forbiddenGrandClaimPhrases : List String := [
  "proves BSD",
  "proves RH",
  "proves the Riemann Hypothesis",
  "proves Hilbert-Pólya",
  "proves Connes trace formula",
  "proves prismatic comparison",
  "proves Ricci surgery",
  "proves Poincare",
  "proves geometrization",
  "finite matrix proves spectral",
  "dashboard proves theorem"
]

/-- A lightweight style-audit entry for a declaration or rendered page summary. -/
structure StyleAuditEntry where
  cone : TheoremConeId
  declarationName : String
  summary : String
  isCheckedTheorem : Bool
  boundary : List String
deriving Repr

/-- Whether a summary contains one of the configured forbidden claim phrases. -/
def StyleAuditEntry.containsForbiddenGrandClaim
    (E : StyleAuditEntry) : Bool :=
  forbiddenGrandClaimPhrases.any (fun phrase => E.summary.contains phrase)

/--
Non-blocking style-audit status.

On this first pass, the audit emits a Boolean report flag rather than rejecting
normal development.
-/
def StyleAuditEntry.auditWarning
    (E : StyleAuditEntry) : Bool :=
  E.containsForbiddenGrandClaim && !E.isCheckedTheorem

end AST
end Surface
