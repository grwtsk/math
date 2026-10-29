-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantfe5babe7d3e5211ba5d7fcc49aefee96f4ab91bb687418e03488183a8a058d5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe5babe7d3e5211ba5d7fcc49aefee96f4ab91bb687418e03488183a8a058d5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantfe5babe7d3e5211ba5d7fcc49aefee96f4ab91bb687418e03488183a8a058d5d","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"fe5babe7d3e5211ba5d7fcc49aefee96f4ab91bb687418e03488183a8a058d5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantfe5babe7d3e5211ba5d7fcc49aefee96f4ab91bb687418e03488183a8a058d5d

open Lake DSL

set_option autoImplicit false

package «finite-witness-residue» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

@[default_target]
lean_lib Think where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/a94ce7c66063deb0cc6d98a0a248c5e787f9336973280de2d038c65b75034e5e"
