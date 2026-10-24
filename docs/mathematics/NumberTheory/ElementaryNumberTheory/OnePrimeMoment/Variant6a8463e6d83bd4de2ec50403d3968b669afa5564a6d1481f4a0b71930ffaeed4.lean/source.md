# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.OnePrimeMoment.Variant6a8463e6d83bd4de2ec50403d3968b669afa5564a6d1481f4a0b71930ffaeed4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1c3a7b87e5a1da793f73f6a52883ae162105152` · SHA-256 `182adcdfc57e21cc99a24080fe9c75d463606f57e56b97006c405ea404b7736e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.OnePrimeMomentSystem.Variantd5b589fdc662cbbbcc22c4e7e7d0465274044503eb03f68575f864aa88f5d31f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5b589fdc662cbbbcc22c4e7e7d0465274044503eb03f68575f864aa88f5d31f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.OnePrimeMomentSystem.Variantd5b589fdc662cbbbcc22c4e7e7d0465274044503eb03f68575f864aa88f5d31f","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"d5b589fdc662cbbbcc22c4e7e7d0465274044503eb03f68575f864aa88f5d31f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/QSeries/OnePrimeMoment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.QSeries.CoefficientRing
import Mathlib.Data.Nat.Prime.Basic

/-!
# One-prime moment data

Lambert-series and integrality claims remain theorem-bearing fields.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.OnePrimeMomentSystem.Variantd5b589fdc662cbbbcc22c4e7e7d0465274044503eb03f68575f864aa88f5d31f

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimeMomentSystem where
  prime : Nat
  prime_isPrime : Nat.Prime prime
  moment : Nat → RationalQSeries
  jacobiDiagonal : Nat → RationalQSeries
  jacobiOffDiagonal : Nat → RationalQSeries
  lambertRepresentation : Prop
  lambertRepresentationProof :
    lambertRepresentation
  integrality :
    ∀ degree,
      CoefficientDomainCertificate (moment degree)
  digest : RealizationDigest

def OnePrimeMomentSystem.q
    (system : OnePrimeMomentSystem) : ℚ :=
  1 / system.prime

theorem OnePrimeMomentSystem.q_nonnegative
    (system : OnePrimeMomentSystem) :
    0 ≤ system.q := by
  simp [OnePrimeMomentSystem.q]

end Mathematics.SemiLocalDefect.QSeries
```
