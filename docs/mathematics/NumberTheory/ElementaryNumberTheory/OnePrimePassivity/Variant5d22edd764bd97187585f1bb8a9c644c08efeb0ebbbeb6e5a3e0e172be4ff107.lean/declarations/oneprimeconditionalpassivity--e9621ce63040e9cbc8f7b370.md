# OnePrimeConditionalPassivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ef21067d4211d7a70d9e0073ce053a0b1d5661c3ed58f0402175b6e01e605f0",
  "kind": "structure",
  "lexical_name": "OnePrimeConditionalPassivity",
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
  "slug": "oneprimeconditionalpassivity--e9621ce63040e9cbc8f7b370",
  "source": {
    "blob": "46f50854db354848e5c7a91d077814fe0308d5e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/OnePrimePassivity/Variant5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9621ce63040e9cbc8f7b37033a973ad885901bf85529250eeb291aeefb4015f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/OnePrimePassivity/Variant5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ef21067d4211d7a70d9e0073ce053a0b1d5661c3ed58f0402175b6e01e605f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/OnePrimePassivity/Variant5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/OnePrimePassivity/Variant5d22edd764bd97187585f1bb8a9c644c08efeb0ebbbeb6e5a3e0e172be4ff107.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46f50854db354848e5c7a91d077814fe0308d5e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
