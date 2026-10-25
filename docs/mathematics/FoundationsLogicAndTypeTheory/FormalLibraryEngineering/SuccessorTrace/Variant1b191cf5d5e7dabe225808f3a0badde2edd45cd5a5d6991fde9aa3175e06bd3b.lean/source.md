# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorTrace.Variant1b191cf5d5e7dabe225808f3a0badde2edd45cd5a5d6991fde9aa3175e06bd3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0d8d30a71888c00697cea13c976cceff1366da5` · SHA-256 `2dd317727782adff8c6a64c3d73457b0e14545b427697f8d1ba4cf67a49babe0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorTraceCompatibility.Variant2063ddd834d1d934ebe263144b2b6d2b1f69ba25d317459e7ca9d43adcaa9f5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2063ddd834d1d934ebe263144b2b6d2b1f69ba25d317459e7ca9d43adcaa9f5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SuccessorTraceCompatibility.Variant2063ddd834d1d934ebe263144b2b6d2b1f69ba25d317459e7ca9d43adcaa9f5b","mathematical_subject":"Foundations.Unclassified","original_sha256":"2063ddd834d1d934ebe263144b2b6d2b1f69ba25d317459e7ca9d43adcaa9f5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/SuccessorTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Trace.ReducedTrace

/-!
# Successor trace pullback

Invariant-law projectivity alone is insufficient; this object also carries
the compatible observable-sector evidence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorTraceCompatibility.Variant2063ddd834d1d934ebe263144b2b6d2b1f69ba25d317459e7ca9d43adcaa9f5b

namespace Mathematics.StratifiedBoundary

structure SuccessorTraceCompatibility
    (PredecessorObservable SuccessorObservable Value : Type u) where
  pullback : PredecessorObservable → SuccessorObservable
  predecessorTrace : PredecessorObservable → Value
  successorTrace : SuccessorObservable → Value
  matrixCompatibilityRef : String
  groupCompatibilityRef : String
  identityCoefficientCompatibilityRef : String
  normalizationCompatibilityRef : String
  compatible :
    ∀ observable,
      successorTrace (pullback observable) =
        predecessorTrace observable

theorem successor_trace_compatible
    {PredecessorObservable SuccessorObservable Value : Type u}
    (certificate :
      SuccessorTraceCompatibility
        PredecessorObservable SuccessorObservable Value)
    (observable : PredecessorObservable) :
    certificate.successorTrace
        (certificate.pullback observable) =
      certificate.predecessorTrace observable :=
  certificate.compatible observable

end Mathematics.StratifiedBoundary
```
