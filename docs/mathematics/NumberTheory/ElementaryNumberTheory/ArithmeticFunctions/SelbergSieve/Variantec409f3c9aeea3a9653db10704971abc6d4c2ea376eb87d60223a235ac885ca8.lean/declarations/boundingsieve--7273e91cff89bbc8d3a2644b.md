# BoundingSieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb3af0eb7c282ee69174d4bff28beaa9b209b66f21cf6e33d389f37ca5415057",
  "kind": "structure",
  "lexical_name": "BoundingSieve",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "boundingsieve--7273e91cff89bbc8d3a2644b",
  "source": {
    "blob": "29f3dc9e9e53e9e429df6c862714cf8327a2b554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 53,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7273e91cff89bbc8d3a2644bf48e3c5e3d05a0d27f879a7c083c8214eea14310",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb3af0eb7c282ee69174d4bff28beaa9b209b66f21cf6e33d389f37ca5415057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BoundingSieve where
  /-- The set of natural numbers that is to be sifted. The fundamental lemma yields an upper bound
  on the size of this set after the multiples of small primes have been removed. -/
  support : Finset ℕ
  /-- The finite set of prime numbers whose multiples are to be sifted from `support`. We work with
  their product because it lets us treat `nu` as a multiplicative arithmetic function. It also
  plays well with Moebius inversion. -/
  prodPrimes : ℕ
  prodPrimes_squarefree : Squarefree prodPrimes
  /-- A sequence representing how much each element of `support` should be weighted. -/
  weights : ℕ → ℝ
  weights_nonneg : ∀ n : ℕ, 0 ≤ weights n
  /-- An approximation to `∑ i in support, weights i`, i.e. the size of the unsifted set. A bad
  approximation will yield a weak statement in the final theorem. -/
  totalMass : ℝ
  /-- `nu d` is an approximation to the proportion of elements of `support` that are a multiple of
  `d` -/
  nu : ArithmeticFunction ℝ
  nu_mult : nu.IsMultiplicative
  nu_pos_of_prime : ∀ p : ℕ, p.Prime → p ∣ prodPrimes → 0 < nu p
  nu_lt_one_of_prime : ∀ p : ℕ, p.Prime → p ∣ prodPrimes → nu p < 1

/-- The Selberg upper bound sieve in particular introduces a parameter called the `level` which
  gives the user control over the size of the error term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f3dc9e9e53e9e429df6c862714cf8327a2b554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
