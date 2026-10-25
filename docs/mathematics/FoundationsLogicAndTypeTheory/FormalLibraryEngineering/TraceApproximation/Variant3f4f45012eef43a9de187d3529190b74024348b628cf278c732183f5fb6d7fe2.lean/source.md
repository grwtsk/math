# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceApproximation.Variant3f4f45012eef43a9de187d3529190b74024348b628cf278c732183f5fb6d7fe2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `257210e1353aa9c840a66b1ea5cc804636b4eb8f` · SHA-256 `70940baa348e9ce031366c3df75ccb3a613f695e2678da8b0ee48b6413c09603`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LowDiscrepancyTraceErrorBound.Variantba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LowDiscrepancyTraceErrorBound.Variantba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a","mathematical_subject":"Foundations.Unclassified","original_sha256":"ba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Sampling/TraceApproximation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Sampling.LowDiscrepancy

/-!
# Conditional invariant-trace approximation bound
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LowDiscrepancyTraceErrorBound.Variantba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a

namespace Mathematics.GraphAccess

theorem low_discrepancy_trace_error_bound
    {State Observable : Type u}
    (certificate : LowDiscrepancyCertificate State Observable) :
    certificate.errorMagnitude ≤ certificate.errorBound :=
  certificate.errorWithinBound

theorem sampled_trace_is_not_reclassified_as_canonical
    {State Observable : Type u}
    (certificate : LowDiscrepancyCertificate State Observable)
    (distinct :
      certificate.estimatedTrace ≠
        certificate.invariantLaw.canonicalTrace certificate.observable) :
    certificate.estimatedTrace ≠
      certificate.invariantLaw.canonicalTrace certificate.observable :=
  distinct

end Mathematics.GraphAccess
```
