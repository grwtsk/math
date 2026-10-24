# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeUniverse.Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b76fc28d65a422a2c7ed7484f1e31b1ce1c3fe81` · SHA-256 `163d458d4d5acd4b99d2e0b2db00fdccabc9d4015dac976ab6f7e9191dc4cdff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Place.Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Place.Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"eea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/PrimeUniverse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic

/-!
# Finite prime universes with an archimedean anchor

Executable cuts range over one finite universe.  `Place.archimedean` is not a
member that callers may omit: `AnchoredPrimeCut.contains` includes it by
definition.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Place.Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949

namespace Mathematics.SemiLocalDefect

inductive Place (Prime : Type u)
  | archimedean
  | finite (prime : Prime)
deriving DecidableEq, Repr

structure FinitePrimeUniverse
    (Prime : Type u)
    [DecidableEq Prime] where
  universeId : String
  primes : Finset Prime
  canonicalOrderRef : String

structure AnchoredPrimeCut
    (Prime : Type u)
    [DecidableEq Prime] where
  primeUniverse : FinitePrimeUniverse Prime
  cutId : String
  primes : Finset Prime
  subset_universe : primes ⊆ primeUniverse.primes

def AnchoredPrimeCut.contains
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime) :
    Place Prime → Prop
  | .archimedean => True
  | .finite prime => prime ∈ cut.primes

theorem archimedean_anchor_present
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime) :
    cut.contains (.archimedean : Place Prime) :=
  trivial

theorem finite_place_present_iff
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime) :
    cut.contains (.finite prime) ↔ prime ∈ cut.primes :=
  Iff.rfl

end Mathematics.SemiLocalDefect
```
