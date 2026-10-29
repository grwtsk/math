-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantf4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantf4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"f4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantf4aa25be75bdd5e1adeacb4872c0a593977bf4f4bd3ba8d26bc289f538a2f5d2

open Lake DSL

package «cord-single-entry» where
  version := v!"1.0.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib CordTheory

lean_exe cordTheoryCheck where
  root := `Main
