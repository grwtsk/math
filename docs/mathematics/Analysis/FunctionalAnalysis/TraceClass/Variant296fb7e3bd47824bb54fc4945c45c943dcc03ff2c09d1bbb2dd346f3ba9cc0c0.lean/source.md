# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TraceClass.Variant296fb7e3bd47824bb54fc4945c45c943dcc03ff2c09d1bbb2dd346f3ba9cc0c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `debf0a0a2882325802dca68e17c8a1b232d44747` · SHA-256 `4aced093f4964b827f1e84bb3f4bfb3f49d7fe1a70cb08bfa79484a912e829af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.HilbertTraceClassCertificate.Variantc9d240c855411c6a00079cf552f92d77ee71a296058a569faa2146f3f8711ad7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9d240c855411c6a00079cf552f92d77ee71a296058a569faa2146f3f8711ad7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.HilbertTraceClassCertificate.Variantc9d240c855411c6a00079cf552f92d77ee71a296058a569faa2146f3f8711ad7","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"c9d240c855411c6a00079cf552f92d77ee71a296058a569faa2146f3f8711ad7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Hilbert/TraceClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Hilbert.SelfAdjoint


namespace GRWTSK.Analysis.FunctionalAnalysis.HilbertTraceClassCertificate.Variantc9d240c855411c6a00079cf552f92d77ee71a296058a569faa2146f3f8711ad7

namespace Surface

universe u v

/-!
What is formalized:
Trace-class and trace-evaluation certificate interfaces for Hilbert operators.

What is certificate-gated:
Trace-class membership and trace existence are explicit proposition fields.

What is not claimed:
No Connes trace formula or Hilbert--Pólya theorem follows from this interface.

Primary mathematical source:
Internal Surface Hilbert trace-boundary discipline.
-/

structure Hilbert.TraceClassCertificate
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  traceClass : Prop
  traceClassCertified : traceClass
  traceValueLabel : String
  boundary : List String

theorem Hilbert.traceClass_operator_is_traceClass
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    (C : Hilbert.TraceClassCertificate T) :
    C.traceClass :=
  C.traceClassCertified

end Surface
```
