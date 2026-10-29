-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant68a0fb0f2a2393b303f7bc85eba80e61443f43dd32fa882e3e32b4301ac8c20f

open Lake DSL

package «fcrs» where
  version := v!"0.4.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @
  "905b95818eb32af7874a58b427f50c1711a5e96c"

@[default_target]
lean_lib FCRS
