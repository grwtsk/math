# Complete source: GRWTSK.Topology.GeneralTopology.FromSource.Variant307a8602000c80b1f4da07b4f58c96c491f5cd1441a5ce1829e342866f16d7f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15bc21be8eecef1aed6e244d9c8852a0e335e9f6` · SHA-256 `307a8602000c80b1f4da07b4f58c96c491f5cd1441a5ce1829e342866f16d7f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ImportGraph.Imports.FromSource

/-!
# Tests for Source-Based Import Analysis

Tests for `findImportsFromSource` and `findTransitiveImportsFromSource`.
-/

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
