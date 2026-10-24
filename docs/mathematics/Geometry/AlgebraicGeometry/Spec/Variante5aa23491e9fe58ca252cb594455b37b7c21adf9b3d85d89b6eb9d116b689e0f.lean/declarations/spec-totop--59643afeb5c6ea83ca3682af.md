# Spec.toTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1718986f64d6098ae361d80c4af694f1eb3fa14d98a6e6cae13b398173f64fff",
  "kind": "def",
  "lexical_name": "Spec.toTop",
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
  "slug": "spec-totop--59643afeb5c6ea83ca3682af",
  "source": {
    "blob": "933c74125d834f873382a29bf9a1b52d92a781b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 87,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59643afeb5c6ea83ca3682af1dcd34294264ce0ecda2fce650e8d7bef3c94381",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1718986f64d6098ae361d80c4af694f1eb3fa14d98a6e6cae13b398173f64fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Spec.toTop : CommRingCat.{u}ᵒᵖ ⥤ TopCat where
  obj R := Spec.topObj (unop R)
  map {_ _} f := Spec.topMap f.unop

/-- The spectrum of a commutative ring, as a `SheafedSpace`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `933c74125d834f873382a29bf9a1b52d92a781b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
