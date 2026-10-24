# Complete source: GRWTSK.Algebra.GroupTheory.AffineTorusBundle.Variant8c86666b4e4da3637d870b0543b6c42fa4093fa0d0ef342a6edafc7ff7732b98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61bed734ec85ced07bf3577cf4bc3453ef1a4db6` · SHA-256 `a7e571b9b923b4a91a477e6c845190633a8a42c31f79aa65b7e6539ab73ccc17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.PrincipalTorusBundleRealization.Variantacf5ccc8ec94dc95d6c03d3b8747a4de033c2e01a14caa91f905dcf3f3bd7608","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acf5ccc8ec94dc95d6c03d3b8747a4de033c2e01a14caa91f905dcf3f3bd7608","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.PrincipalTorusBundleRealization.Variantacf5ccc8ec94dc95d6c03d3b8747a4de033c2e01a14caa91f905dcf3f3bd7608","mathematical_subject":"Algebra.Groups","original_sha256":"acf5ccc8ec94dc95d6c03d3b8747a4de033c2e01a14caa91f905dcf3f3bd7608","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/AffineTorusBundle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.LocalSystem

/-!
# Principal and affine torus-bundle realizations

With trivial linear monodromy, the classifying datum is an ordinary
`H²(K; ℤ^m)` class.  With prescribed `GL(m,ℤ)` monodromy it is a twisted
`H²(K; Lρ)` class for an affine torus bundle.  These scopes are not merged.
-/


namespace GRWTSK.Algebra.GroupTheory.PrincipalTorusBundleRealization.Variantacf5ccc8ec94dc95d6c03d3b8747a4de033c2e01a14caa91f905dcf3f3bd7608

namespace Mathematics.Homology

universe u v

/-- Principal torus bundle realization with certified trivial monodromy. -/
structure PrincipalTorusBundleRealization
    (H2Class : Type u) (Bundle : Type v) where
  cohomologyClass : H2Class
  bundle : Bundle
  rank : Nat
  trivialMonodromyCertificate : ObjectAddress
  realizesClass : Prop
  realizationProof : realizesClass
  realizationCertificate : ObjectAddress

/-- Affine torus bundle with one fixed integral local system and twisted class. -/
structure AffineTorusBundleRealization
    (Loop : Type u) [Group Loop]
    (rank : Nat)
    (localSystem : IntegralLocalSystem Loop rank)
    (TwistedH2Class : Type v)
    (Bundle : Type*) where
  twistedClass : TwistedH2Class
  bundle : Bundle
  fixedMonodromyDigest : Digest
  localSystem_bound :
    fixedMonodromyDigest = localSystem.monodromyDigest
  realizesClass : Prop
  realizationProof : realizesClass
  classificationHypothesesDigest : Digest
  realizationCertificate : ObjectAddress

end Mathematics.Homology
```
