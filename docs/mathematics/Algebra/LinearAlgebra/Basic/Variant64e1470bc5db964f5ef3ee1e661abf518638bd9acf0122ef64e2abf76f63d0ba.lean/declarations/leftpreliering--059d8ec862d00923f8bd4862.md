# LeftPreLieRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:900bd8dfd9de211ed9ece7cb9a334f15020c8324fbc4c81c718a7d04dd0b67d2",
  "kind": "class",
  "lexical_name": "LeftPreLieRing",
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
  "slug": "leftpreliering--059d8ec862d00923f8bd4862",
  "source": {
    "blob": "f5b901f64b607e7f826ace31e4781d4c0647de17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:059d8ec862d00923f8bd486273002c63762e4a2bf98783aff8f2a0fb3a08e1bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:900bd8dfd9de211ed9ece7cb9a334f15020c8324fbc4c81c718a7d04dd0b67d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LeftPreLieRing (L : Type*) extends NonUnitalNonAssocRing L where
  assoc_symm' (x y z : L) : associator x y z = associator y x z

/-- `RightPreLieRing`s are `NonUnitalNonAssocRing`s such that the `associator` is symmetric in the
last two variables. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5b901f64b607e7f826ace31e4781d4c0647de17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
