# faceCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ab47e4711bca30742675129e2d0100238237e6ee6ed71a5fa95baa404ec2e5c",
  "kind": "def",
  "lexical_name": "faceCheck",
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
  "slug": "facecheck--dbcf136657b7172c6bb039d9",
  "source": {
    "blob": "066b97fe86c200cf05e3cb3c7ee07a749a80d490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant67b49c07dbf4e0af834d43a12d7d64463fc38386a7eeb4537d3941d5acd7a46c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbcf136657b7172c6bb039d98345e931d6c6fe548115082969de35c4093dbd96",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant67b49c07dbf4e0af834d43a12d7d64463fc38386a7eeb4537d3941d5acd7a46c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ab47e4711bca30742675129e2d0100238237e6ee6ed71a5fa95baa404ec2e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def faceCheck
    {k : Nat}
    (degreeBound : k + 1 ≤ emission.profile.maximumEmittedDegree)
    (parent : decomposition.Cell (k + 1))
    (faceIndex : Fin (k + 1))
    (orientation : CubicalFaceOrientation) : CubicalFaceCheck :=
  (emission.faceCheckRequest degreeBound parent faceIndex orientation).check

/-- Every declared emitted parent face has an explicit computed check. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant67b49c07dbf4e0af834d43a12d7d64463fc38386a7eeb4537d3941d5acd7a46c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant67b49c07dbf4e0af834d43a12d7d64463fc38386a7eeb4537d3941d5acd7a46c.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `066b97fe86c200cf05e3cb3c7ee07a749a80d490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
