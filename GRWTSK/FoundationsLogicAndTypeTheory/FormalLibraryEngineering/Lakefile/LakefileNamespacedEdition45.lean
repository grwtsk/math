-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantc59fac08d71da0459583f55e56e3bf4f3889b2cfe52a0ad944ff8138d383f784","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c59fac08d71da0459583f55e56e3bf4f3889b2cfe52a0ad944ff8138d383f784","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantc59fac08d71da0459583f55e56e3bf4f3889b2cfe52a0ad944ff8138d383f784","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"c59fac08d71da0459583f55e56e3bf4f3889b2cfe52a0ad944ff8138d383f784","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe-prebuilt/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantc59fac08d71da0459583f55e56e3bf4f3889b2cfe52a0ad944ff8138d383f784

open Lake DSL

package SpectralProof where
  srcDir := "."

@[default_target]
lean_lib SpectralProof

lean_exe spectralProof where
  root := `SpectralProof.Main
