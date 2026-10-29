-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DeterminantLinePropagatesIfSupplied.Variant78c804671c36d6123c030f81202ae5668c847f365a4c4d6b1e48a82b84ba84b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78c804671c36d6123c030f81202ae5668c847f365a4c4d6b1e48a82b84ba84b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DeterminantLinePropagatesIfSupplied.Variant78c804671c36d6123c030f81202ae5668c847f365a4c4d6b1e48a82b84ba84b4","mathematical_subject":"Foundations.Unclassified","original_sha256":"78c804671c36d6123c030f81202ae5668c847f365a4c4d6b1e48a82b84ba84b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/DeterminantLinePropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.DeterminantLinePropagation

/-!
# Folder.Theorem.CanonicalPath.DeterminantLinePropagation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports determinant-line propagation facts.
Ontology: proof.canonical_path.determinant_line
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.Algebra.LinearAlgebra.DeterminantLinePropagatesIfSupplied.Variant78c804671c36d6123c030f81202ae5668c847f365a4c4d6b1e48a82b84ba84b4

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem determinant_line_propagates_if_supplied
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    (D : Folder.CanonicalPath.DeterminantLineFamily F) :
    D.propagatesOnConnectedComponent :=
  Folder.CanonicalPath.determinant_line_propagates_if_supplied D

theorem determinant_line_has_nonzero_anchor
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    (D : Folder.CanonicalPath.DeterminantLineFamily F) :
    D.nonzeroAnchor :=
  Folder.CanonicalPath.determinant_line_has_nonzero_anchor D

end CanonicalPath
end Theorem
end Folder
