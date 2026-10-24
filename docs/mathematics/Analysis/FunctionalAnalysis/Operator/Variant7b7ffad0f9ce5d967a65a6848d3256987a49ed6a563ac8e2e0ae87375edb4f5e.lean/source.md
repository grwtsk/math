# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Operator.Variant7b7ffad0f9ce5d967a65a6848d3256987a49ed6a563ac8e2e0ae87375edb4f5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c93e68989aefad6b3c3443a1551f123a09f118c1` · SHA-256 `2ed23e433c9d3d36d8f17d7ec8bc4c8ea0184eb228ba150fcf6e8f80f379ceb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.HilbertLinearOperator.Variantcb82e584489c69f693edbcb1807b35ada08ced7e1eb6773c9e7bdf9d3c1f8f5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb82e584489c69f693edbcb1807b35ada08ced7e1eb6773c9e7bdf9d3c1f8f5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.HilbertLinearOperator.Variantcb82e584489c69f693edbcb1807b35ada08ced7e1eb6773c9e7bdf9d3c1f8f5b","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"cb82e584489c69f693edbcb1807b35ada08ced7e1eb6773c9e7bdf9d3c1f8f5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Hilbert/Operator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Hilbert.Basic


namespace GRWTSK.Analysis.FunctionalAnalysis.HilbertLinearOperator.Variantcb82e584489c69f693edbcb1807b35ada08ced7e1eb6773c9e7bdf9d3c1f8f5b

namespace Surface

universe u v

/-!
What is formalized:
Dense-domain linear operator interfaces between Hilbert spaces.

What is certificate-gated:
Linearity, domain preservation, and any analytic domain facts are explicit
certificate fields.

What is not claimed:
No operator is self-adjoint, closed, trace-class, or spectrally complete without
the corresponding certificate supplied in later modules.

Primary mathematical source:
Internal Surface Hilbert operator interface.
-/

structure Hilbert.LinearOperator
    (H K : Hilbert.Space.{u, v}) where
  domain : Hilbert.DenseDomain H
  map : H.carrier → K.carrier
  mapsDomain : Prop
  mapsDomainCertified : mapsDomain
  linear : Prop
  linearCertified : linear
  boundary : List String

def Hilbert.identityOperator
    (H : Hilbert.Space.{u, v}) :
    Hilbert.LinearOperator H H where
  domain := Hilbert.fullDomain H
  map := fun x => x
  mapsDomain := True
  mapsDomainCertified := trivial
  linear := True
  linearCertified := trivial
  boundary := [
    "Identity operator interface example.",
    "This example does not supply spectral theorem data."
  ]

theorem Hilbert.linearOperator_is_linear
    {H K : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H K) :
    T.linear :=
  T.linearCertified

end Surface
```
