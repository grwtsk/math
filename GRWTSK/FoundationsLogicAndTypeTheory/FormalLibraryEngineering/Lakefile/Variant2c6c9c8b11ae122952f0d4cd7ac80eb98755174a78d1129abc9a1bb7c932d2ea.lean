-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variante64b7b9f6d9cd6e1566aae628e2b7e7341b6510c7083108171703c9d29708c9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e64b7b9f6d9cd6e1566aae628e2b7e7341b6510c7083108171703c9d29708c9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variante64b7b9f6d9cd6e1566aae628e2b7e7341b6510c7083108171703c9d29708c9f","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"e64b7b9f6d9cd6e1566aae628e2b7e7341b6510c7083108171703c9d29708c9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/checkdecls/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variante64b7b9f6d9cd6e1566aae628e2b7e7341b6510c7083108171703c9d29708c9f

open Lake DSL

package «checkdecls» {
  -- add package configuration options here
}

@[default_target]
lean_exe «checkdecls» {
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/cf51f918b89b321b61ba95cd694cf54ad2f0298cdf8515e5218c5687a58994d4/src"
  root := `Main
  supportInterpreter := true
  weakLinkArgs := #["-lLake"]
}
