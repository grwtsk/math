# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.TT01Bertrand.Variant36c40b3cfd12799eb3f2aab3fd99bf577fd60542d5766a0512c96c02fbdf3a33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `160babe5aa2d4d78c9299bd2be4c4a56af0189bf` · SHA-256 `16a46ca2f64505c7a36dfcaf3d8d0364a5b9e9894d75910b25646f0aaf92f170`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.Tt01Bertrand.Variant8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.Tt01Bertrand.Variant8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT01_Bertrand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Bertrand


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.Tt01Bertrand.Variant8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020

namespace FCRS.Transport.Theorems

/-- Full strict-endpoint Bertrand theorem for every natural `n > 1`. -/
theorem tt01_bertrand :
    ∀ n : Nat, 1 < n →
      ∃ q : Nat, Nat.Prime q ∧ n < q ∧ q < 2 * n :=
  bertrandProof

end FCRS.Transport.Theorems
```
