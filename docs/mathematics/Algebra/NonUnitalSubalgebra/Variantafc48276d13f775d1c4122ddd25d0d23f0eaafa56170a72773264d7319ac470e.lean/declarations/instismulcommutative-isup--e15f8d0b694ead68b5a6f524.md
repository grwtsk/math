# instIsMulCommutative_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebe836ce5b8f8140bcbe84f22b876a9d4d7dc93888f14e8a9a2c739411b2811c",
  "kind": "instance",
  "lexical_name": "instIsMulCommutative_iSup",
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
  "slug": "instismulcommutative-isup--e15f8d0b694ead68b5a6f524",
  "source": {
    "blob": "648fa06e95badec71349f6e7d4d786d3e220576f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1048,
    "line": 1041,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Variantafc48276d13f775d1c4122ddd25d0d23f0eaafa56170a72773264d7319ac470e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e15f8d0b694ead68b5a6f524ac1da4f2ad80c6e081f06613a5e6b6f63377a273",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Variantafc48276d13f775d1c4122ddd25d0d23f0eaafa56170a72773264d7319ac470e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebe836ce5b8f8140bcbe84f22b876a9d4d7dc93888f14e8a9a2c739411b2811c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1041–1048.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsMulCommutative_iSup [Nonempty ι] [Preorder ι] [IsDirectedOrder ι]
    {S : ι →o NonUnitalStarSubalgebra R A} [hS : ∀ i, IsMulCommutative (S i)] :
    IsMulCommutative (⨆ i, S i : NonUnitalStarSubalgebra R A) :=
  isMulCommutative_iSup S.monotone.directed_le

/-- Define a non-unital star algebra homomorphism on a directed supremum of non-unital star
subalgebras by defining it on each non-unital star subalgebra, and proving that it agrees on the
intersection of non-unital star subalgebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Variantafc48276d13f775d1c4122ddd25d0d23f0eaafa56170a72773264d7319ac470e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Variantafc48276d13f775d1c4122ddd25d0d23f0eaafa56170a72773264d7319ac470e.lean#L1041).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648fa06e95badec71349f6e7d4d786d3e220576f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
