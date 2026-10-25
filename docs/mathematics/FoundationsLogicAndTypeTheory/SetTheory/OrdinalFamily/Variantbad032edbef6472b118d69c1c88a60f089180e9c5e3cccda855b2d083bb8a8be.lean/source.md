# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalFamily.Variantbad032edbef6472b118d69c1c88a60f089180e9c5e3cccda855b2d083bb8a8be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b8e865eaa8700b6b5a3cf69605ce4a3911f6147` · SHA-256 `342c62cd3368840a3ec70d956f977b544c849316b920600c04836d864ca7f48a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalFamilySquareRootCertificate.Variant62222d8ec83cf7f81e50163ef468f81f4d7ade57cec70bd0819161c7b8944258","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62222d8ec83cf7f81e50163ef468f81f4d7ade57cec70bd0819161c7b8944258","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.OrdinalFamilySquareRootCertificate.Variant62222d8ec83cf7f81e50163ef468f81f4d7ade57cec70bd0819161c7b8944258","mathematical_subject":"Logic.SetTheory","original_sha256":"62222d8ec83cf7f81e50163ef468f81f4d7ade57cec70bd0819161c7b8944258","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/SquareRoot/OrdinalFamily.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.SquareRoot.FiniteStratum

/-!
# Uniform ordinal-family square-root bound

The result is conditional on a common scale and explicit finite-stratum
certificates.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalFamilySquareRootCertificate.Variant62222d8ec83cf7f81e50163ef468f81f4d7ade57cec70bd0819161c7b8944258

namespace Mathematics.StratifiedBoundary

structure OrdinalFamilySquareRootCertificate where
  finiteCertificate : Nat → FiniteStratumSquareRootCertificate
  uniformScale : Nat
  scaleDominates :
    ∀ stage,
      (finiteCertificate stage).squareRootScale *
          (finiteCertificate stage).spectralMultiplicityScale ≤
        uniformScale

theorem ordinal_family_square_root_bound
    (certificate : OrdinalFamilySquareRootCertificate)
    (stage : Nat) :
    (certificate.finiteCertificate stage).unnormalizedDiscrepancy ≤
      certificate.uniformScale :=
  Nat.le_trans
    (certificate.finiteCertificate stage).bound
    (certificate.scaleDominates stage)

end Mathematics.StratifiedBoundary
```
