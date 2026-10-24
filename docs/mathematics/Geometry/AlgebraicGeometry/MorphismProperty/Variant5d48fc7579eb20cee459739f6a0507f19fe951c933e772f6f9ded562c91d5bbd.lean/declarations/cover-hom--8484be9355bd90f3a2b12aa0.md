# Cover.Hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83db4582af5e8dc6a1c04deff9275c85bac5797282efd86ecc20dbcdba99efe9",
  "kind": "structure",
  "lexical_name": "Cover.Hom",
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
  "slug": "cover-hom--8484be9355bd90f3a2b12aa0",
  "source": {
    "blob": "2bef7487fffea6a2e187bffba3447b36efc4a716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 322,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8484be9355bd90f3a2b12aa00be8baefef03fa045f6ec2485bb3d36d18a78b1f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83db4582af5e8dc6a1c04deff9275c85bac5797282efd86ecc20dbcdba99efe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Cover.Hom {X : Scheme.{u}} (𝒰 𝒱 : Cover.{v} P X) where
  /-- The map on indexing types associated to a morphism of covers. -/
  idx : 𝒰.J → 𝒱.J
  /-- The morphism between open subsets associated to a morphism of covers. -/
  app (j : 𝒰.J) : 𝒰.obj j ⟶ 𝒱.obj (idx j)
  app_prop (j : 𝒰.J) : P (app j) := by infer_instance
  w (j : 𝒰.J) : app j ≫ 𝒱.map _ = 𝒰.map _ := by aesop_cat

attribute [reassoc (attr := simp)] Cover.Hom.w

/-- The identity morphism in the category of covers of a scheme. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bef7487fffea6a2e187bffba3447b36efc4a716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
