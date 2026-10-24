-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantcde1b964a835c22f7411ee6cb0fcb9d509e7982e6abf2b2121c5c45ec670ec8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cde1b964a835c22f7411ee6cb0fcb9d509e7982e6abf2b2121c5c45ec670ec8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantcde1b964a835c22f7411ee6cb0fcb9d509e7982e6abf2b2121c5c45ec670ec8c","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"cde1b964a835c22f7411ee6cb0fcb9d509e7982e6abf2b2121c5c45ec670ec8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantcde1b964a835c22f7411ee6cb0fcb9d509e7982e6abf2b2121c5c45ec670ec8c

open Lake DSL

package «fcrs» where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/b3ddd611d465662ed40e5893fa44096f41f3d606cf3d0b93394866da90e1726b/src"
  version := v!"0.4.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @
  "905b95818eb32af7874a58b427f50c1711a5e96c"

@[default_target]
lean_lib FCRS where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/b3ddd611d465662ed40e5893fa44096f41f3d606cf3d0b93394866da90e1726b/src"
