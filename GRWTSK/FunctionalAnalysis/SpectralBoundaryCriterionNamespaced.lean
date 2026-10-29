-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PositivityRulesOutOffcriticalResonances.Variantdd761e0d60f9d7d93d907555771809ac8faae243773814eac56bf413c2331c3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd761e0d60f9d7d93d907555771809ac8faae243773814eac56bf413c2331c3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PositivityRulesOutOffcriticalResonances.Variantdd761e0d60f9d7d93d907555771809ac8faae243773814eac56bf413c2331c3e","mathematical_subject":"Foundations.Unclassified","original_sha256":"dd761e0d60f9d7d93d907555771809ac8faae243773814eac56bf413c2331c3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/SpectralBoundaryCriterion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.SpectralBoundaryCriterion

/-!
# Folder.Theorem.CanonicalPath.SpectralBoundaryCriterion

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-boundary criterion facts.
Ontology: proof.canonical_path.spectral_boundary_criterion
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PositivityRulesOutOffcriticalResonances.Variantdd761e0d60f9d7d93d907555771809ac8faae243773814eac56bf413c2331c3e

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem positivity_rules_out_offcritical_resonances
    (P : Folder.CanonicalPath.PositivitySelfAdjointnessData) :
    P.noOffCriticalResonances :=
  Folder.CanonicalPath.positivity_rules_out_offcritical_resonances P

theorem spectral_boundary_alignment_if_supplied
    (B : Folder.CanonicalPath.SpectralBoundaryCriterion) :
    B.boundaryAlignment :=
  Folder.CanonicalPath.spectral_boundary_alignment_if_supplied B

end CanonicalPath
end Theorem
end Folder
