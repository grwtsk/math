# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2Approach1.Variantc4a017b9c85036f804fe3144330c1a8f1ba08968d3ad78b1472f3d47bd9085c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4d2ac8bebac9eccbf8de526cb077e457be7681d` · SHA-256 `1864083fb1e0c58c53a6fb76e366d33c0e3f4fa7187aa5a0aadbccd4a6600b53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertificateFamily.Variant30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CertificateFamily.Variant30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2","mathematical_subject":"Foundations.Unclassified","original_sha256":"30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/30/30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2--Approach1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertificateFamily.Variant30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2

namespace RepairReview
universe u v w a b
structure CertificateFamily (State : Type u) (Index : Type v) where
  value : Index → Type w
  observe : (i : Index) → State → value i

namespace CertificateFamily
variable {State : Type u} {Index : Type v} (C : CertificateFamily.{u, v, w} State Index)
def Equivalent (x y : State) : Prop := ∀ i, C.observe i x = C.observe i y
end CertificateFamily

structure SufficientRepresentation {State : Type u} {Index : Type v}
    (C : CertificateFamily.{u, v, w} State Index) where
  carrier : Type a
  compress : State → carrier
  recover : (i : Index) → carrier → C.value i
  recover_compress : ∀ i s, recover i (compress s) = C.observe i s

namespace SufficientRepresentation
variable {State : Type u} {Index : Type v} {C : CertificateFamily.{u, v, w} State Index}
def FactorsThrough (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C) : Prop :=
  ∃ f : r.carrier → q.carrier, q.compress = f ∘ r.compress

def IsMinimal (q : SufficientRepresentation.{u, v, w, a} C) : Prop :=
  ∀ r : SufficientRepresentation.{u, v, w, b} C, q.FactorsThrough r

set_option pp.universes true in
#check IsMinimal

theorem factor_of_minimal {q : SufficientRepresentation.{u, v, w, a} C}
    (hq : IsMinimal.{u, v, w, a, b} q)
    (r : SufficientRepresentation.{u, v, w, b} C) : q.FactorsThrough r :=
  hq r
end SufficientRepresentation
end RepairReview
```
