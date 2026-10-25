# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant56d391abe9351e8dbfe1daf7cd4880529f1fd864938c383af463f9a7b1bdbcac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00c6cb297133ea8506e7683d2973786364a5cb5e` · SHA-256 `08f9e411514fca681f4bd5b1f1e966cc7fca9d4b5c035b80a6bb7ba7901b7172`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MoreServerArgs.Variant9d09fafbc84685c5894b7aeeb25c667a1499bc7c6915ea9089d225a756829207","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d09fafbc84685c5894b7aeeb25c667a1499bc7c6915ea9089d225a756829207","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MoreServerArgs.Variant9d09fafbc84685c5894b7aeeb25c667a1499bc7c6915ea9089d225a756829207","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"9d09fafbc84685c5894b7aeeb25c667a1499bc7c6915ea9089d225a756829207","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MoreServerArgs.Variant9d09fafbc84685c5894b7aeeb25c667a1499bc7c6915ea9089d225a756829207

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
  moreServerArgs := moreServerArgs

@[default_target]
lean_lib Mathlib where
  moreLeanArgs := moreLeanArgs
  weakLeanArgs := weakLeanArgs

@[default_target]
lean_exe runLinter where
  root := `scripts.runLinter
  supportInterpreter := true

@[default_target]
lean_exe checkYaml where
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
  moreLeanArgs := moreLeanArgs
  weakLeanArgs := weakLeanArgs
  roots := #[`Cache]

lean_exe cache where
  root := `Cache.Main

lean_lib MathlibExtras where
  roots := #[`MathlibExtras]

lean_lib Archive where
  roots := #[`Archive]

lean_lib Counterexamples where
  roots := #[`Counterexamples]

lean_lib ImportGraph where
  roots := #[`ImportGraph]

lean_exe graph where
  root := `ImportGraph.Main
  supportInterpreter := true

/-- Additional documentation in the form of modules that only contain module docstrings. -/
lean_lib docs where
  roots := #[`docs]
```
