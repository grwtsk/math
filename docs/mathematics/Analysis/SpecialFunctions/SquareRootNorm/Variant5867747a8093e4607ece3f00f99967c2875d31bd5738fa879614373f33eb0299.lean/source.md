# Complete source: GRWTSK.Analysis.SpecialFunctions.SquareRootNorm.Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3780f1d2ccfc9c51bb6d2c45871105008054806f` · SHA-256 `7b2e61b2638baf2a94adfad5524fbdf3162c14fdde024e7ed08a87f661c56056`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.SquareRootNormCertificate.Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.SquareRootNormCertificate.Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/SquareRootNorm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathematics.MobiusOntology.PurityBridge

/-!
# Uniform square-root discrepancy norm

The certificate retains the mass, logarithmic order, exact discrepancy norm,
and one uniform bound.  It has no computational-hardness constructor.
-/


namespace GRWTSK.Analysis.SpecialFunctions.SquareRootNormCertificate.Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894

namespace Mathematics.MobiusOntology

universe u

def squareRootWeight
    (mass : ℝ) (logarithmicOrder : Nat) : ℝ :=
  Real.sqrt mass * (1 + Real.log mass) ^ logarithmicOrder

structure SquareRootNormCertificate (Scale : Type u) where
  mass : Scale → ℝ
  discrepancyNorm : Scale → ℝ
  logarithmicOrder : Nat
  constant : ℝ
  massAtLeastOne : ∀ scale, 1 ≤ mass scale
  constantNonnegative : 0 ≤ constant
  bound :
    ∀ scale,
      discrepancyNorm scale ≤
        constant * squareRootWeight
          (mass scale) logarithmicOrder

def SquareRootNormFinite
    {Scale : Type u}
    (mass discrepancyNorm : Scale → ℝ)
    (logarithmicOrder : Nat) : Prop :=
  ∃ constant ≥ 0,
    ∀ scale,
      discrepancyNorm scale ≤
        constant *
          squareRootWeight (mass scale) logarithmicOrder

theorem squareRootNorm_finite
    {Scale : Type u}
    (certificate : SquareRootNormCertificate Scale) :
    SquareRootNormFinite
      certificate.mass certificate.discrepancyNorm
      certificate.logarithmicOrder :=
  ⟨certificate.constant, certificate.constantNonnegative,
    certificate.bound⟩

structure BitfieldSquareRootBudget (Scale : Type u) where
  aggregationNorm : Scale → ℝ
  localError : Scale → ℝ
  mass : Scale → ℝ
  logarithmicOrder : Nat
  constant : ℝ
  bound :
    ∀ scale,
      aggregationNorm scale * localError scale ≤
        constant *
          squareRootWeight (mass scale) logarithmicOrder

end Mathematics.MobiusOntology
```
