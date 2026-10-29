-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant554ddacbbdd2014d3529a225039d7b1ddb753fd2762c0fbf13f4683040c95fe8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"554ddacbbdd2014d3529a225039d7b1ddb753fd2762c0fbf13f4683040c95fe8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant554ddacbbdd2014d3529a225039d7b1ddb753fd2762c0fbf13f4683040c95fe8","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"554ddacbbdd2014d3529a225039d7b1ddb753fd2762c0fbf13f4683040c95fe8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant554ddacbbdd2014d3529a225039d7b1ddb753fd2762c0fbf13f4683040c95fe8

open Lake DSL

package std where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/f969844b2f450ae2ee6376c54743e830bb2d6f996169728ed69c3e071dee1b97/src"
  moreLeanArgs := moreServerArgs.push "-DwarningAsError=true"
  moreServerArgs := moreServerArgs
where
  moreServerArgs := Id.run do
    let mut moreServerArgs := #["-Dlinter.missingDocs=true"]
    if get_config? disable_new_compiler |>.isSome then
      moreServerArgs := moreServerArgs.push "-Dcompiler.enableNew=false"
    moreServerArgs

@[default_target]
lean_lib Std where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/f969844b2f450ae2ee6376c54743e830bb2d6f996169728ed69c3e071dee1b97/src"

@[default_target]
lean_exe runLinter where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/f969844b2f450ae2ee6376c54743e830bb2d6f996169728ed69c3e071dee1b97/src/scripts"
  supportInterpreter := true

meta if get_config? doc = some "on" then
require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"
