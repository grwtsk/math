# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderAlgebra.Variantc21a70ba00469545e0ba19466220683fe7d9c954c64f97fd0dab9c3f6c264a31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e66a45504a430e7ac07d415fc46ab57ec43a9e2` · SHA-256 `fc4b52eb5e5c3b149773a3a5a5642e6a9102b6e7562df0906dfd95c5f380aa83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderObservable.Variantfd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CylinderObservable.Variantfd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d","mathematical_subject":"Foundations.Unclassified","original_sha256":"fd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/CylinderAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite-stage cylinder observables

Every cylinder observable names a finite representing stage.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderObservable.Variantfd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d

namespace Mathematics.StratifiedBoundary

structure CylinderObservable (Observable : Type u) where
  stage : Nat
  observable : Observable
  finiteRepresentationRef : String

structure CylinderAlgebraPresentation
    (Observable : Type u) where
  sameObservable :
    CylinderObservable Observable →
      CylinderObservable Observable →
      Prop
  equivalenceCertificateRef : String
  noCompletedRuntimeObject : Bool := true
  noCompletedRuntimeObject_exact :
    noCompletedRuntimeObject = true

end Mathematics.StratifiedBoundary
```
