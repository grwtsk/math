# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant22c7903bf5ad75dfa591f79284ee1bf430eeb4dabc44b48cd4a74909714a9096

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e513c364884d73425fd481b54f3d095b712982e9` · SHA-256 `e18995edd9fd4a65c15999f14100efd5b033d25eb912e02b92dc32836180dbcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MoreServerArgs.Variant0803d0bf077f43badec5110752e0dbc731968560c6e7a7ece18f3a6fcb789f1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0803d0bf077f43badec5110752e0dbc731968560c6e7a7ece18f3a6fcb789f1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MoreServerArgs.Variant0803d0bf077f43badec5110752e0dbc731968560c6e7a7ece18f3a6fcb789f1a","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"0803d0bf077f43badec5110752e0dbc731968560c6e7a7ece18f3a6fcb789f1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MoreServerArgs.Variant0803d0bf077f43badec5110752e0dbc731968560c6e7a7ece18f3a6fcb789f1a

open Lake DSL

def moreServerArgs := #[
  "-Dpp.unicode.fun=true", -- pretty-prints `fun a ↦ b`
  "-DautoImplicit=false",
  "-DrelaxedAutoImplicit=false"
]

-- These settings only apply during `lake build`, but not in VSCode editor.
def moreLeanArgs := moreServerArgs

-- These are additional settings which do not affect the lake hash,
-- so they can be enabled in CI and disabled locally or vice versa.
-- Warning: Do not put any options here that actually change the olean files,
-- or inconsistent behavior may result
def weakLeanArgs :=
  if get_config? CI |>.isSome then
    #["-DwarningAsError=true"]
  else
    #[]

package mathlib where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  moreServerArgs := moreServerArgs

@[default_target]
lean_lib Mathlib where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  moreLeanArgs := moreLeanArgs
  weakLeanArgs := weakLeanArgs

@[default_target]
lean_exe runLinter where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  root := `scripts.runLinter
  supportInterpreter := true

@[default_target]
lean_exe checkYaml where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  root := `scripts.checkYaml
  supportInterpreter := true

meta if get_config? doc = some "on" then -- do not download and build doc-gen4 by default
require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"

require std from git "https://github.com/leanprover/std4" @ "main"
require Qq from git "https://github.com/gebner/quote4" @ "master"
require aesop from git "https://github.com/JLimperg/aesop" @ "master"
require Cli from git "https://github.com/mhuisi/lean4-cli.git" @ "nightly"
require proofwidgets from git "https://github.com/EdAyers/ProofWidgets4" @ "v0.0.13"

lean_lib Cache where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  moreLeanArgs := moreLeanArgs
  weakLeanArgs := weakLeanArgs
  roots := #[`Cache]

lean_exe cache where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  root := `Cache.Main

lean_lib MathlibExtras where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`MathlibExtras]

lean_lib Archive where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`Archive]

lean_lib Counterexamples where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`Counterexamples]

lean_lib ImportGraph where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`ImportGraph]

lean_exe graph where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  root := `ImportGraph.Main
  supportInterpreter := true

/-- Additional documentation in the form of modules that only contain module docstrings. -/
lean_lib docs where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`docs]
```
