# BSDTorsionClosedLoopBitMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ca8f79255b4d35948214ef38223459e4070a25e4eba69d02c222ef5eed4cc04",
  "kind": "structure",
  "lexical_name": "BSDTorsionClosedLoopBitMatrix",
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
  "slug": "bsdtorsionclosedloopbitmatrix--9674d42deff851f99012fbbb",
  "source": {
    "blob": "430021b2b5e5b5537129ec95438080178114db53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant0bb06a8acaf1e32bb92ee347e28a0ee1f9b338ca77e4f1cf33293f427b6189a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9674d42deff851f99012fbbbeff01288028c84b63e570db763dceb6a8ff56f6d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant0bb06a8acaf1e32bb92ee347e28a0ee1f9b338ca77e4f1cf33293f427b6189a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ca8f79255b4d35948214ef38223459e4070a25e4eba69d02c222ef5eed4cc04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BSDTorsionClosedLoopBitMatrix
    (Curve : Type u) (Point : Type v) (n N : Nat) where
  bitmatrix : BSDAlgorithmBitMatrixCarrier Curve n
  torsionLoop : CurveTorsionClosedLoopCarrier Curve Point N
  torsionRowActive : bitmatrix.rowBit BSDWitnessRow.torsionSubgroup = true

/-- The BSD torsion row is active when the torsion closed-loop carrier is attached. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant0bb06a8acaf1e32bb92ee347e28a0ee1f9b338ca77e4f1cf33293f427b6189a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant0bb06a8acaf1e32bb92ee347e28a0ee1f9b338ca77e4f1cf33293f427b6189a1.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `430021b2b5e5b5537129ec95438080178114db53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
