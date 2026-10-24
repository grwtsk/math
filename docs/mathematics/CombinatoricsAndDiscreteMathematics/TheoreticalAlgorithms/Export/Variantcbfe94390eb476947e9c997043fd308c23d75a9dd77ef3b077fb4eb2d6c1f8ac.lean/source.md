# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Export.Variantcbfe94390eb476947e9c997043fd308c23d75a9dd77ef3b077fb4eb2d6c1f8ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09c6643b526f85b96c50f503e51f5159b4d058ac` · SHA-256 `a1b6dd0da5e1f52c12515e3c44bde099edaa1f9d1958f670aa3f82d74e04914d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Quote.Variant31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Quote.Variant31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d","mathematical_subject":"Computation.DataStructures","original_sha256":"31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/composite/CompositeElements/Export.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CompositeElements.Invariants

/-! # Deterministic formal manifest. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Quote.Variant31354a8802f4fbf5a32beb9bea0038d78faf2124c97cd5538a6b40c91bb0d20d

namespace URSM.Composite

private def quote (value : String) : String :=
  "\"" ++ value ++ "\""

private def stringArray (values : List String) : String :=
  "[" ++ String.intercalate "," (values.map quote) ++ "]"

private def edgeJson (edge : Nat × Nat) : String :=
  "[" ++ toString edge.1 ++ "," ++ toString edge.2 ++ "]"

private def edgeArray (edges : List (Nat × Nat)) : String :=
  "[" ++ String.intercalate "," (edges.map edgeJson) ++ "]"

private def projectJson (project : ProjectDescriptor) : String :=
  "{" ++
    "\"compiledRoot\":" ++ quote project.compiledRoot ++ "," ++
    "\"packageName\":" ++ quote project.packageName ++ "," ++
    "\"projectId\":" ++ quote project.projectId ++ "," ++
    "\"publicRoot\":" ++ quote project.publicRoot ++ "," ++
    "\"root\":" ++ quote project.root ++ "," ++
    "\"sourcePaths\":" ++ stringArray project.sourcePaths ++
  "}"

def formalManifestJson : String :=
  "{" ++
    "\"conflicts\":" ++ edgeArray conflictEdges ++ "," ++
    "\"conflictValidity\":" ++ edgeArray conflictValidityEdges ++ "," ++
    "\"exactBridges\":" ++ edgeArray exactBridgeEdges ++ "," ++
    "\"formalCertificateRoot\":" ++
      quote phaseOneStaticComposite.formalCertificateRoot ++ "," ++
    "\"imports\":" ++ edgeArray importEdges ++ "," ++
    "\"logicalSide\":" ++ toString projectCount ++ "," ++
    "\"projects\":[" ++
      String.intercalate "," (projectDescriptors.map projectJson) ++ "]," ++
    "\"propertyNaturality\":" ++
      edgeArray propertyNaturalityEdges ++ "," ++
    "\"schema\":\"mathematics.lean-composite-formal/1\"," ++
    "\"transports\":" ++ edgeArray transportEdges ++
  "}"

theorem emitted_project_count_is_kernel_checked :
    projectDescriptors.length = projectCount :=
  projectDescriptors_length

theorem emitted_static_invariants_are_kernel_checked :
    PackageImportAcyclic :=
  phaseOneStaticComposite_valid.1

end URSM.Composite
```
