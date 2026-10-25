# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Incremental.Variantab8cc60c613b958e9f37bc0ce85e5b8981566069476b636bfe9650027c4a48a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f092107e3b821028f9f610c7d5ca4aed2aeb7e88` · SHA-256 `ab8cc60c613b958e9f37bc0ce85e5b8981566069476b636bfe9650027c4a48a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.Core
import Surface.Incremental.Hash
import Surface.Incremental.ModuleKey
import Surface.Incremental.ImportGraph
import Surface.Incremental.ReverseImportGraph
import Surface.Incremental.DependencyClosure
import Surface.Incremental.AffectedOrder
import Surface.Incremental.Artifact
import Surface.Incremental.Request
import Surface.Incremental.ReducerSeed
import Surface.Incremental.RegenerationPlan
import Surface.Incremental.SiteArtifacts
import Surface.Incremental.Preservation
import Surface.Incremental.Report
import Surface.Incremental.Json
import Surface.Incremental.RustProtocol
import Surface.Incremental.Main

/-!
# Surface incremental generation

What is formalized:
Request-time reducer seeds, reverse-import closures, deterministic affected
orders, artifact plans, preservation reports, site-fragment updates, JSON/report
schemas, and Rust transport boundaries.

What is certificate-gated:
External filesystem watching, hashing, Lean invocation, and artifact emission by
runners outside the Lean kernel.

What is not claimed:
Rust transport is not theorem authority, and unchanged artifacts are not claimed
mathematically independent beyond the certified closure and hash reports.

Primary mathematical source:
Internal Surface deterministic request-time generation discipline.
-/
```
