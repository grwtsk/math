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
