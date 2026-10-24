# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9310ca4076688e5d55c6201a1b30af9335c2323c88192417f49fbead3833d4a",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--142b1dfac2f3ad311ecaabc9",
  "source": {
    "blob": "3f0a423e9fa5512eaa24af8d11d5da1f8b95d42e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant7272e0971e756c66622616baec1f6dd9d9be9d9f990d15293aa2cca0ee0c86c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:142b1dfac2f3ad311ecaabc92dc397e1c098f4e2c93b19f0f93abbaa2a268b7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant7272e0971e756c66622616baec1f6dd9d9be9d9f990d15293aa2cca0ee0c86c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9310ca4076688e5d55c6201a1b30af9335c2323c88192417f49fbead3833d4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def map (F : C ⥤ D) [PreservesWellOrderContinuousOfShape J F]
    [PreservesColimitsOfShape J F] :
    TransfiniteCompositionOfShape J (F.map f) where
  F := c.F ⋙ F
  isoBot := F.mapIso c.isoBot
  incl := Functor.whiskerRight c.incl F ≫ (Functor.constComp _ _ _).hom
  isColimit :=
    IsColimit.ofIsoColimit (isColimitOfPreserves F c.isColimit)
      (Cocone.ext (Iso.refl _))
  fac := by simp [← Functor.map_comp]

set_option backward.defeqAttrib.useBackward true in
/-- A transfinite composition of shape `J` induces a transfinite composition
of shape `Set.Iic j` for any `j : J`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant7272e0971e756c66622616baec1f6dd9d9be9d9f990d15293aa2cca0ee0c86c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant7272e0971e756c66622616baec1f6dd9d9be9d9f990d15293aa2cca0ee0c86c5.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f0a423e9fa5512eaa24af8d11d5da1f8b95d42e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
