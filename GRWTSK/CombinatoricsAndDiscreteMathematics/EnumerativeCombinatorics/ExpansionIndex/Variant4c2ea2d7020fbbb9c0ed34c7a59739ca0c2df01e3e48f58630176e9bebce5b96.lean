-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ExpandAtInternal.Variant32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.ExpandAtInternal.Variant32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Catalan/ExpansionIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Catalan.ExpansionIndex

/-!
# Folder.Theorem.Catalan.ExpansionIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.expansion_index
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ExpandAtInternal.Variant32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c

namespace Folder
namespace Catalan

theorem expandAt_internal
    {T : CTree}
    {a : Address}
    {U : CTree}
    (h : T.expandAt? a = some U) :
    U.internal = T.internal + 1 :=
  CTree.expandAt?_internal h

theorem expandAt_leaves
    {T : CTree}
    {a : Address}
    {U : CTree}
    (h : T.expandAt? a = some U) :
    U.leaves = T.leaves + 1 :=
  CTree.expandAt?_leaves h

end Catalan
end Folder
