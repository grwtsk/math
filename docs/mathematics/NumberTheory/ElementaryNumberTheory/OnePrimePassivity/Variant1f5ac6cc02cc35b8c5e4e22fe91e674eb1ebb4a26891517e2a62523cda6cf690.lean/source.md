# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.OnePrimePassivity.Variant1f5ac6cc02cc35b8c5e4e22fe91e674eb1ebb4a26891517e2a62523cda6cf690

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85afaa77b1c0df542059b524b63479a0654dbfff` · SHA-256 `db951ac685b3b9c2f7e6f129a1e9c33053d4f3480b89f20ea4be0a015a8d4b2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.FixedPrimeFinitePassivity.Variant5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.FixedPrimeFinitePassivity.Variant5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/QSeries/OnePrimePassivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.QSeries.IntervalTail

/-!
# Staged one-prime passivity

Finite exact positivity, uniform-in-prime positivity, and compression
exhaustion are separate certificates.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.FixedPrimeFinitePassivity.Variant5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107

namespace Mathematics.SemiLocalDefect.QSeries

structure FixedPrimeFinitePassivity
    (system : OnePrimeMomentSystem)
    (rank : Nat) where
  compression : JacobiCompression system rank
  ldl : ExactLDLCertificate compression

structure UniformPrimeFinitePassivity
    (rank minimumPrime : Nat) where
  interval : QInterval
  intervalUpper :
    interval.upper = 1 / minimumPrime
  certificate :
    IntervalLDLCertificate rank interval

structure CompressionExhaustion where
  finiteRankNonnegative : Nat → Prop
  allFiniteRanks :
    ∀ rank,
      finiteRankNonnegative rank
  strongExhaustion : Prop
  strongExhaustionProof : strongExhaustion
  limitPassivity : Prop
  limitPassivityProof : limitPassivity

structure OnePrimeConditionalPassivity
    (prime : Nat) where
  prime_isPrime : Nat.Prime prime
  finitePassivity :
    ∀ rank,
      ∃ system : OnePrimeMomentSystem,
        system.prime = prime ∧
          Nonempty
            (FixedPrimeFinitePassivity
              system rank)
  exhaustion : CompressionExhaustion
  passiveLimit : Prop
  passiveLimitProof : passiveLimit

end Mathematics.SemiLocalDefect.QSeries
```
