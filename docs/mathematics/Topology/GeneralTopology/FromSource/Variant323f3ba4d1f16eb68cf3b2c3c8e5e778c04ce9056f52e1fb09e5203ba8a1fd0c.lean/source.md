# Complete source: GRWTSK.Topology.GeneralTopology.FromSource.Variant323f3ba4d1f16eb68cf3b2c3c8e5e778c04ce9056f52e1fb09e5203ba8a1fd0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `649c3ab7a2a477a8ae38f8767d8af51f5f703018` · SHA-256 `7b9bb91dedb1b71607bf7f09b3fd26d6dd2aa1073fb4c516d3d2ff033eb841a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FromSource.Variant307a8602000c80b1f4da07b4f58c96c491f5cd1441a5ce1829e342866f16d7f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"307a8602000c80b1f4da07b4f58c96c491f5cd1441a5ce1829e342866f16d7f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FromSource.Variant307a8602000c80b1f4da07b4f58c96c491f5cd1441a5ce1829e342866f16d7f1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"307a8602000c80b1f4da07b4f58c96c491f5cd1441a5ce1829e342866f16d7f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraphTest/FromSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ImportGraph.Imports.FromSource

/-!
# Tests for Source-Based Import Analysis

Tests for `findImportsFromSource` and `findTransitiveImportsFromSource`.
-/


namespace GRWTSK.Topology.GeneralTopology.FromSource.Variant307a8602000c80b1f4da07b4f58c96c491f5cd1441a5ce1829e342866f16d7f1

open Lean System

-- Test basic import parsing
/-- info: #[`ImportGraphTest.Unused] -/
#guard_msgs in
#eval do
  let imports ← findImportsFromSource "ImportGraphTest/Used.lean"
  -- Filter to only ImportGraph modules
  return imports.filter (fun (n : Name) => n.getRoot ∈ [`ImportGraph, `ImportGraphTest])

-- Test transitive imports without filter
/-- info: #[`ImportGraphTest.Unused] -/
#guard_msgs in
#eval do
  let transitive ← findTransitiveImportsFromSource "ImportGraphTest/Used.lean"
  -- Filter to only ImportGraph modules
  let filtered := transitive.toArray.filter (fun (n : Name) => n.getRoot ∈ [`ImportGraph, `ImportGraphTest])
  return filtered.qsort Name.lt

-- Test transitive imports with ImportGraph filter
/-- info: #[] -/
#guard_msgs in
#eval do
  let transitive ← findTransitiveImportsFromSource "ImportGraphTest/Used.lean" (some `ImportGraph)
  return transitive.toArray.qsort Name.lt

-- Test on a file with transitive imports
/-- info: #[`ImportGraph.Tools.ImportDiff, `ImportGraphTest.Used] -/
#guard_msgs in
#eval do
  let imports ← findImportsFromSource "ImportGraphTest/FileWithTransitiveImports.lean"
  -- Filter to only ImportGraph modules
  return imports.filter (fun (n : Name) => n.getRoot ∈ [`ImportGraph, `ImportGraphTest])

/--
info: #[`ImportGraphTest.Unused, `ImportGraphTest.Used, `ImportGraph.Imports.ImportGraph, `ImportGraph.Tools.ImportDiff]
-/
#guard_msgs in
#eval do
  let transitive ← findTransitiveImportsFromSource "ImportGraphTest/FileWithTransitiveImports.lean"
  -- Filter to only ImportGraph modules
  let filtered := transitive.toArray.filter (fun (n : Name) => n.getRoot ∈ [`ImportGraph, `ImportGraphTest])
  return filtered.qsort Name.lt
```
