-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantd77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variantd77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"d77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/checkdecls/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variantd77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837

open Lake DSL

package «checkdecls» {
  -- add package configuration options here
}

@[default_target]
lean_exe «checkdecls» {
  root := `Main
  supportInterpreter := true
  weakLinkArgs := #["-lLake"]
}
