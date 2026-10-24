# objectsAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:126e86b8c819cb7334482e0fce976c93d1a96ed7b80cb350499be97cbbf4a806",
  "kind": "def",
  "lexical_name": "objectsAt",
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
  "slug": "objectsat--9a38f84f0b5470b21d3d38ae",
  "source": {
    "blob": "f7ecb8bba1cfd742bb799c32ad6050542d1a0021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a38f84f0b5470b21d3d38ae07025ea31c799ca9e935182564d9de2965d014ba",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:126e86b8c819cb7334482e0fce976c93d1a96ed7b80cb350499be97cbbf4a806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def objectsAt
    {Object CoarseTube : Type*} [DecidableEq Object] [DecidableEq CoarseTube]
    (objects : Finset Object) (assignedCoarse : Object → CoarseTube)
    (coarse : CoarseTube) : Finset Object :=
  objects.filter fun object ↦ assignedCoarse object = coarse

/-- Shading union in one fiber of a coarse-tube assignment. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7ecb8bba1cfd742bb799c32ad6050542d1a0021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
