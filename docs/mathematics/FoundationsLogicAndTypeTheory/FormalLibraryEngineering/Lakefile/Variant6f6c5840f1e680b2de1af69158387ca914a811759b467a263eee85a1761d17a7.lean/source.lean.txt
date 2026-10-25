-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant5c5748ce86125d861ec549a30933a819e0be5e6e2254c0c00d7469059f5f47eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c5748ce86125d861ec549a30933a819e0be5e6e2254c0c00d7469059f5f47eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant5c5748ce86125d861ec549a30933a819e0be5e6e2254c0c00d7469059f5f47eb","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"5c5748ce86125d861ec549a30933a819e0be5e6e2254c0c00d7469059f5f47eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant5c5748ce86125d861ec549a30933a819e0be5e6e2254c0c00d7469059f5f47eb

open Lake DSL

package SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c574b965c41401ca706fb3e9d56d3851501267430e3243b474a2566f5e1b1d9e/src"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.3.0"

@[default_target]
lean_lib SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c574b965c41401ca706fb3e9d56d3851501267430e3243b474a2566f5e1b1d9e/src"

lean_exe spectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c574b965c41401ca706fb3e9d56d3851501267430e3243b474a2566f5e1b1d9e/src"
  root := `SpectralProof.Main
