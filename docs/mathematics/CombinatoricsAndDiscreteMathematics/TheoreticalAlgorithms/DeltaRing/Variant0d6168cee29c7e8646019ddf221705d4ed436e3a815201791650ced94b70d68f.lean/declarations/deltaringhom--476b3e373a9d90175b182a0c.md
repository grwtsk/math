# DeltaRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0085660a4698d2b49e1ef147ac393b85fb417fdf695e1c4961f1fd3780c5efc",
  "kind": "structure",
  "lexical_name": "DeltaRingHom",
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
  "slug": "deltaringhom--476b3e373a9d90175b182a0c",
  "source": {
    "blob": "ab320fc595ef35220691f687f38b1525ec7c4a1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:476b3e373a9d90175b182a0c1cd1aee8f8f94488bac4c6529b2d6e0bbea38fb6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0085660a4698d2b49e1ef147ac393b85fb417fdf695e1c4961f1fd3780c5efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeltaRingHom
    {p : Nat}
    (A B : DeltaRing p) where
  map : A.ops.carrier → B.ops.carrier
  preserves_zero : map A.ops.zero = B.ops.zero
  preserves_one : map A.ops.one = B.ops.one
  preserves_add :
    ∀ x y, map (A.ops.add x y) = B.ops.add (map x) (map y)
  preserves_mul :
    ∀ x y, map (A.ops.mul x y) = B.ops.mul (map x) (map y)
  preserves_delta :
    ∀ x, map (A.delta x) = B.delta (map x)
  preserves_phi :
    ∀ x, map (A.phi x) = B.phi (map x)
  homBoundary : List String

/-- A tiny terminal δ-ring used by examples and tests. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab320fc595ef35220691f687f38b1525ec7c4a1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
