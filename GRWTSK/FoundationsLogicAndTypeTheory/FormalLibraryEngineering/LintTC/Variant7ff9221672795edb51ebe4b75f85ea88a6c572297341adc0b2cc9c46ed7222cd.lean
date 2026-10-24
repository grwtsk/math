-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeClass.Variant0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TypeClass.Variant0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lintTC.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint.TypeClass

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeClass.Variant0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2

open Std.Tactic.Lint

namespace A
local instance impossible {α β : Type} [Inhabited α] : Nonempty α := ⟨default⟩
#eval do guard (← impossibleInstance.test ``impossible).isSome
end A

namespace B
instance bad : Nat := 1
#eval do guard (← nonClassInstance.test ``bad).isSome
instance good : Inhabited Nat := ⟨1⟩
#eval do guard (← nonClassInstance.test ``good).isNone
end B
