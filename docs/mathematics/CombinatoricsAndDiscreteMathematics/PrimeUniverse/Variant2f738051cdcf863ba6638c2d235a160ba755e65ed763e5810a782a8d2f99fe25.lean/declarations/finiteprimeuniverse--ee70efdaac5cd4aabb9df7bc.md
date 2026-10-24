# FinitePrimeUniverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd8602a9780dfa9d0372d5b6e2d3e17700b22a0a02737b87cf2e203cc1550f29",
  "kind": "structure",
  "lexical_name": "FinitePrimeUniverse",
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
  "slug": "finiteprimeuniverse--ee70efdaac5cd4aabb9df7bc",
  "source": {
    "blob": "ccf1c6a8cd8746d934bcb23180b0c6b5cd7a6f55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee70efdaac5cd4aabb9df7bc816879b9d846c72ed6350cc2cd48bff807f8fb47",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd8602a9780dfa9d0372d5b6e2d3e17700b22a0a02737b87cf2e203cc1550f29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variant2f738051cdcf863ba6638c2d235a160ba755e65ed763e5810a782a8d2f99fe25.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf1c6a8cd8746d934bcb23180b0c6b5cd7a6f55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
