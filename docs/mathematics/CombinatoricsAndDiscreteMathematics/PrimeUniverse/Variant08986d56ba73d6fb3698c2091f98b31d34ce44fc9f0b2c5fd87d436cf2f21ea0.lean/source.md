# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeUniverse.Variant08986d56ba73d6fb3698c2091f98b31d34ce44fc9f0b2c5fd87d436cf2f21ea0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16fba5685bb013b96e547e6cec7f81bad10039e8` · SHA-256 `5b35d9ebd13230112ea60482c155df04bc6335fe523808aac4647acdd9d214b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FinitePrimeUniverse.Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FinitePrimeUniverse.Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/PrimeUniverse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Fintype.Prod
import Mathlib.Tactic.DeriveFintype

/-!
# Finite prime universes

One graph-access invocation uses one finite prime carrier.  Cofinal growth is
represented by certified embeddings between such universes.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FinitePrimeUniverse.Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25

namespace Mathematics.SemiLocalDefect

universe uPrime

set_option linter.checkUnivs false in
structure FinitePrimeUniverse where
  Prime : Type uPrime
  primeFintype : Fintype Prime
  primeDecEq : DecidableEq Prime
  primeOrder : LinearOrder Prime
  value : Prime → Nat
  value_injective : Function.Injective value
  value_prime : ∀ prime, Nat.Prime (value prime)

attribute [instance]
  FinitePrimeUniverse.primeFintype
  FinitePrimeUniverse.primeDecEq
  FinitePrimeUniverse.primeOrder

structure PrimeUniverseEmbedding
    (source target : FinitePrimeUniverse) where
  map : source.Prime → target.Prime
  injective : Function.Injective map
  value_preserving :
    ∀ prime,
      target.value (map prime) =
        source.value prime

structure PrimeInsertionEdge
    (primeUniverse : FinitePrimeUniverse) where
  source : Finset primeUniverse.Prime
  prime : primeUniverse.Prime
  prime_not_mem : prime ∉ source
deriving DecidableEq

def PrimeInsertionEdge.target
    {primeUniverse : FinitePrimeUniverse}
    (edge : PrimeInsertionEdge primeUniverse) :
    Finset primeUniverse.Prime :=
  insert edge.prime edge.source

theorem PrimeInsertionEdge.source_ssubset_target
    {primeUniverse : FinitePrimeUniverse}
    (edge : PrimeInsertionEdge primeUniverse) :
    edge.source ⊂ edge.target := by
  exact Finset.ssubset_iff_subset_ne.mpr
    ⟨Finset.subset_insert _ _, by
      intro equality
      have :
          edge.prime ∈ edge.source := by
        rw [equality]
        exact Finset.mem_insert_self _ _
      exact edge.prime_not_mem this⟩

noncomputable instance
    (primeUniverse : FinitePrimeUniverse) :
    Finite (PrimeInsertionEdge primeUniverse) := by
  classical
  letI : Fintype primeUniverse.Prime :=
    primeUniverse.primeFintype
  letI : Fintype (Finset primeUniverse.Prime) :=
    Finset.fintype
  letI :
      Fintype
        (Finset primeUniverse.Prime ×
          primeUniverse.Prime) :=
    inferInstance
  refine Finite.of_injective
    (fun edge => (edge.source, edge.prime)) ?_
  intro left right equality
  cases left with
  | mk leftSource leftPrime leftNotMem =>
      cases right with
      | mk rightSource rightPrime rightNotMem =>
          cases equality
          rfl

noncomputable instance
    (primeUniverse : FinitePrimeUniverse) :
    Fintype (PrimeInsertionEdge primeUniverse) :=
  Fintype.ofFinite _

theorem finitePrimeUniverse_node_count
    (primeUniverse : FinitePrimeUniverse) :
    Fintype.card (Finset primeUniverse.Prime) =
      2 ^ Fintype.card primeUniverse.Prime :=
  Fintype.card_finset

structure PrimeCutCardinalityCertificate
    (primeUniverse : FinitePrimeUniverse) where
  edgeCount :
    Fintype.card (PrimeInsertionEdge primeUniverse) =
      Fintype.card primeUniverse.Prime *
        2 ^ (Fintype.card primeUniverse.Prime - 1)
  shellCount :
    ∀ depth,
      Fintype.card
        {cut : Finset primeUniverse.Prime //
          cut.card = depth} =
        Nat.choose
          (Fintype.card primeUniverse.Prime)
          depth
  descendantConeCount :
    ∀ _edge : PrimeInsertionEdge primeUniverse,
      Nat
  descendantConeCount_eq :
    ∀ edge,
      descendantConeCount edge =
        2 ^
          (Fintype.card primeUniverse.Prime -
            edge.source.card - 1)

end Mathematics.SemiLocalDefect
```
