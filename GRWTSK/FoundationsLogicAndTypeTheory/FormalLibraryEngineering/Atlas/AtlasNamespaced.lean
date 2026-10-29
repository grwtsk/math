-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InterfaceSupport.Variant0a47fbe6b31b703362345a71e381aa2085468a48a3332f136c8b1e158c84c06e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a47fbe6b31b703362345a71e381aa2085468a48a3332f136c8b1e158c84c06e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.InterfaceSupport.Variant0a47fbe6b31b703362345a71e381aa2085468a48a3332f136c8b1e158c84c06e","mathematical_subject":"Foundations.Unclassified","original_sha256":"0a47fbe6b31b703362345a71e381aa2085468a48a3332f136c8b1e158c84c06e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Atlas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Scope

/-!
# Total capability atlas

The indexed function makes omission impossible: every interface is represented
either by a supported capability or by an explicit unsupported record.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InterfaceSupport.Variant0a47fbe6b31b703362345a71e381aa2085468a48a3332f136c8b1e158c84c06e

namespace Mathematics.Capability

universe u

inductive InterfaceSupport
  | supported (capability : OperationalCapability)
  | unsupported (reason : String)

structure TotalCapabilityAtlas (Interface : Type u) where
  webrefDigest : Digest
  webIdlDigest : Digest
  webrefDigest_valid : webrefDigest.Valid
  webIdlDigest_valid : webIdlDigest.Valid
  classify : Interface → InterfaceSupport

theorem TotalCapabilityAtlas.every_interface_modeled
    {Interface : Type u}
    (atlas : TotalCapabilityAtlas Interface)
    (interface : Interface) :
    ∃ support, atlas.classify interface = support :=
  ⟨atlas.classify interface, rfl⟩

end Mathematics.Capability
