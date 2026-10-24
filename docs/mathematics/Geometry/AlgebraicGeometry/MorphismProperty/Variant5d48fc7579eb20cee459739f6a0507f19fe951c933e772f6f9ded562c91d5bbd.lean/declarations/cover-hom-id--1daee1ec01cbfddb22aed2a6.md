# Cover.Hom.id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f532f7bd6af9909b30985179c13838cc4dfcf33683294b39ef949f4c2e8e2a6",
  "kind": "def",
  "lexical_name": "Cover.Hom.id",
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
  "slug": "cover-hom-id--1daee1ec01cbfddb22aed2a6",
  "source": {
    "blob": "2bef7487fffea6a2e187bffba3447b36efc4a716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 333,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1daee1ec01cbfddb22aed2a63c04ff2626d142688f4e2de74e629e688341de57",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f532f7bd6af9909b30985179c13838cc4dfcf33683294b39ef949f4c2e8e2a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cover.Hom.id [P.ContainsIdentities] {X : Scheme.{u}} (𝒰 : Cover.{v} P X) : 𝒰.Hom 𝒰 where
  idx j := j
  app _ := 𝟙 _
  app_prop _ := P.id_mem _

/-- The composition of two morphisms in the category of covers of a scheme. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bef7487fffea6a2e187bffba3447b36efc4a716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
