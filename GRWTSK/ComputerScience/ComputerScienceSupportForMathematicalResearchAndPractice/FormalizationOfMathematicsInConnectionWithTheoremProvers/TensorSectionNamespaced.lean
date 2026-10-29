-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorRank.Variant62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TensorRank.Variant62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c","mathematical_subject":"Foundations.Unclassified","original_sha256":"62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/TensorSection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.CrystallineTensor.TensorSection

Radiation role: research-boundary
BinaryMatrix spine: This module records tensor-valued crystal sections, not binary quantization.
Ontology: crystalline.tensor_section
Pivot role: spectral
Zero typology: none
Contract boundary: definition
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorRank.Variant62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c

namespace Folder
namespace CrystallineTensor

structure TensorRank where
  value : Nat

structure TensorSection
    {C : CrystallineSite}
    (F : Crystal C)
    (X : C.Site.Obj) where
  rank : TensorRank
  carrier : Type _
  value : carrier
  underlyingSection : F.Section X

def TensorSection.HasRank
    {C : CrystallineSite}
    {F : Crystal C}
    {X : C.Site.Obj}
    (T : TensorSection F X)
    (r : Nat) : Prop :=
  T.rank.value = r

theorem tensor_section_has_some_rank
    {C : CrystallineSite}
    {F : Crystal C}
    {X : C.Site.Obj}
    (T : TensorSection F X) :
    ∃ r : Nat, T.HasRank r :=
  ⟨T.rank.value, rfl⟩

end CrystallineTensor
end Folder
