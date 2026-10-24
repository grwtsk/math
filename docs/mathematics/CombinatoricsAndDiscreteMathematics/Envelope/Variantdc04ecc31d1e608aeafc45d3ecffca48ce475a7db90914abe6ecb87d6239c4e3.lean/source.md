# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Envelope.Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `790a7421e0fc16ed9363e00ec1e1f11c0ef67799` · SHA-256 `8df14b74dbe63c2d5d7908a666cd7fa94885e4fb3529398020d36aa7dd52acaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CertifiedOuterDisk.Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CertifiedOuterDisk.Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Envelope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.UniqueZero

/-!
# Certified outer and minimum enclosing disks

Containment is authoritative for localization.  Minimality and its support
witness are strictly stronger, optional geometric claims.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CertifiedOuterDisk.Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e

namespace Mathematics.RHIsolation

structure CertifiedOuterDisk
    (carrier : Set ℂ) where
  center : ℂ
  radius : ℝ
  radius_nonneg : 0 ≤ radius
  contains :
    ∀ z ∈ carrier,
      dist z center ≤ radius

structure CertifiedMinimumEnclosingDisk
    (carrier : Set ℂ)
    extends CertifiedOuterDisk carrier where
  minimal :
    ∀ center' radius',
      0 ≤ radius' →
      (∀ z ∈ carrier,
        dist z center' ≤ radius') →
      radius ≤ radius'

structure DiskSupportCertificate
    (carrier : Set ℂ)
    (disk :
      CertifiedMinimumEnclosingDisk carrier) where
  support : Finset ℂ
  support_card : support.card ≤ 3
  support_in_set :
    ∀ z ∈ support, z ∈ carrier
  support_on_boundary :
    ∀ z ∈ support,
      dist z disk.center = disk.radius
  determinesDisk : Prop
  determinesDiskProof : determinesDisk

theorem outerDisk_contains_unique_zero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (unique :
      UniqueZeroCertificate authority cell)
    {carrier : Set ℂ}
    (cellInside :
      cell.interior ⊆ carrier)
    (disk : CertifiedOuterDisk carrier) :
    dist unique.zero disk.center ≤ disk.radius :=
  disk.contains unique.zero
    (cellInside unique.zero_mem)

theorem minimumDisk_support_card_le_three
    {carrier : Set ℂ}
    {disk :
      CertifiedMinimumEnclosingDisk carrier}
    (support :
      DiskSupportCertificate carrier disk) :
    support.support.card ≤ 3 :=
  support.support_card

end Mathematics.RHIsolation
```
