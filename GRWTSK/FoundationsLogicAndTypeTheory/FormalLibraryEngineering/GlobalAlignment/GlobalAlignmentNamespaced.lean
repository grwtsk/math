-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalPathTransportInvariant.Variant79a033542435f24fa3225b9bec7b651e9f82946998aa90c788622d0aa44c8d1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79a033542435f24fa3225b9bec7b651e9f82946998aa90c788622d0aa44c8d1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CanonicalPathTransportInvariant.Variant79a033542435f24fa3225b9bec7b651e9f82946998aa90c788622d0aa44c8d1f","mathematical_subject":"Foundations.Unclassified","original_sha256":"79a033542435f24fa3225b9bec7b651e9f82946998aa90c788622d0aa44c8d1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/GlobalAlignment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.GlobalAlignment

/-!
# Folder.Theorem.CanonicalPath.GlobalAlignment

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports canonical-path global alignment facts, not BinaryMatrix zero data.
Ontology: proof.canonical_path.global_alignment
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalPathTransportInvariant.Variant79a033542435f24fa3225b9bec7b651e9f82946998aa90c788622d0aa44c8d1f

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem canonical_path_transport_invariant
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.CanonicalPath.CanonicalPathProgram M) :
    P.transportInvariant :=
  Folder.CanonicalPath.canonical_path_transport_invariant P

theorem canonical_path_global_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.CanonicalPath.CanonicalPathProgram M)
    {x : P.globalIndex.Object}
    (h : P.globalIndex.relevant x) :
    (P.globalIndex.kIndexAt x).indexClass.Nonzero :=
  Folder.CanonicalPath.canonical_path_global_index_nonzero P h

theorem canonical_path_spectral_alignment
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.CanonicalPath.CanonicalPathProgram M)
    {x : P.globalIndex.Object}
    (h : P.globalIndex.relevant x) :
    (P.bridgeAt x).target.boundaryData.aligned :=
  Folder.CanonicalPath.canonical_path_spectral_alignment P h

theorem conditional_global_spectral_alignment_from_supplied_bridge
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.CanonicalPath.CanonicalPathProgram M)
    {x : P.globalIndex.Object}
    (h : P.globalIndex.relevant x)
    (z : (P.bridgeAt x).target.Zeros) :
    Folder.Research.LFunctionZero.LiesOnCriticalLine
      ((P.bridgeAt x).target.zeroData z) :=
  Folder.CanonicalPath.conditional_global_spectral_alignment_from_supplied_bridge P h z

end CanonicalPath
end Theorem
end Folder
