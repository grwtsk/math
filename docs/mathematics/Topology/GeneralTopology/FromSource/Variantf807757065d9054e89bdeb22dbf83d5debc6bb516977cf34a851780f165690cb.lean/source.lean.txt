-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FromSource.Variantf5fe70281b939e8af188c1ca0881071171d1211cfc97067bd8980d90f70ce37a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5fe70281b939e8af188c1ca0881071171d1211cfc97067bd8980d90f70ce37a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FromSource.Variantf5fe70281b939e8af188c1ca0881071171d1211cfc97067bd8980d90f70ce37a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f5fe70281b939e8af188c1ca0881071171d1211cfc97067bd8980d90f70ce37a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/importGraph/ImportGraphTest/FromSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ImportGraph.Imports.FromSource
import Lean.Elab.Command

/-!
# Tests for Source-Based Import Analysis

Tests for `findImportsFromSource` and `findTransitiveImportsFromSource`.
-/


namespace GRWTSK.Topology.GeneralTopology.FromSource.Variantf5fe70281b939e8af188c1ca0881071171d1211cfc97067bd8980d90f70ce37a

open Lean System ImportGraph

-- Test basic import parsing
/-- info: #[`ImportGraphTest.Unused] -/
#guard_msgs in
#eval do
  let header ← System.FilePath.parseImports' ("ImportGraphTest" / "Used.lean")
  -- Filter to only ImportGraph modules
  return header.imports.map Import.module |>.filter
    fun (n : Name) => n.getRoot ∈ [`ImportGraph, `ImportGraphTest]

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
  let header ← System.FilePath.parseImports' ("ImportGraphTest" / "FileWithTransitiveImports.lean")
  -- Filter to only ImportGraph modules
  return header.imports.map Import.module |>.filter
    fun (n : Name) => n.getRoot ∈ [`ImportGraph, `ImportGraphTest]

/--
info: #[`ImportGraphTest.Unused, `ImportGraphTest.Used, `ImportGraph.Imports.ImportGraph, `ImportGraph.Tools.ImportDiff]
-/
#guard_msgs in
#eval do
  let transitive ← findTransitiveImportsFromSource "ImportGraphTest/FileWithTransitiveImports.lean"
  -- Filter to only ImportGraph modules
  let filtered := transitive.toArray.filter (fun (n : Name) => n.getRoot ∈ [`ImportGraph, `ImportGraphTest])
  return filtered.qsort Name.lt
