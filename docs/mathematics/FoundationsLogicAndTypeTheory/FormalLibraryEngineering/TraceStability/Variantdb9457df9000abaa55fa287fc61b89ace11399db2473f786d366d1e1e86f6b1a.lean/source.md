# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceStability.Variantdb9457df9000abaa55fa287fc61b89ace11399db2473f786d366d1e1e86f6b1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c008280df5ad1a934610f4a235fa240fe3ee3fd7` · SHA-256 `1298ec9cc7c4fdc48af9bd712e045a20b08a6e10260cc3f404fc32be970c68f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectiveBoundaryStatus.Variant126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectiveBoundaryStatus.Variant126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261","mathematical_subject":"Foundations.Unclassified","original_sha256":"126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/TraceStability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Trace.TraceExtension
import Mathematics.StratifiedBoundary.Boundary.Perturbation

/-!
# Trace stability classification
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectiveBoundaryStatus.Variant126e498e3833f56ab208c22438859fa4524bba3722e13f048a30a449962b7261

namespace Mathematics.StratifiedBoundary

inductive ProjectiveBoundaryStatus where
  | exact
  | asymptotic
  | residual (bound : Nat)
  | unbounded
  | unknown
deriving DecidableEq, Repr

structure VisibleTraceResidual where
  connectorDefect : Nat
  observableMismatch : Nat
  classification : ProjectiveBoundaryStatus
  residualVisible : Bool := true
  residualVisible_exact : residualVisible = true

end Mathematics.StratifiedBoundary
```
