-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Varianta48c0014ccfa16fc67ef4c6baa9a58c1f9f448dc110a1f10085768c13114d539","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a48c0014ccfa16fc67ef4c6baa9a58c1f9f448dc110a1f10085768c13114d539","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Varianta48c0014ccfa16fc67ef4c6baa9a58c1f9f448dc110a1f10085768c13114d539","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"a48c0014ccfa16fc67ef4c6baa9a58c1f9f448dc110a1f10085768c13114d539","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/01/Folder/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Varianta48c0014ccfa16fc67ef4c6baa9a58c1f9f448dc110a1f10085768c13114d539

open Lake DSL

package «folder» where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8a98ed7ef0e51263d6b2ae0d147a49e833f76d29e99b9f6ac7225da1df155958/src"
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.31.0"

@[default_target]
lean_lib Folder where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/8a98ed7ef0e51263d6b2ae0d147a49e833f76d29e99b9f6ac7225da1df155958/src/src"
