# FreeGroupoid.homRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d3b08eb0e4c992c68442f1d5b5c6d564bbee7fffa85e6943cfe2146e975fbf3",
  "kind": "inductive",
  "lexical_name": "FreeGroupoid.homRel",
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
  "slug": "freegroupoid-homrel--7a51b8b3102b418da8fd3bd3",
  "source": {
    "blob": "fd88840fa8bfd1a36d16b553ce4cc934613d46c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoidOfCategory/Variant513281e1e84e364912cced03d9c80422dc70ff52daef854c12dd3f6989ae5541.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a51b8b3102b418da8fd3bd32f32e7152eeca2262a7dd4df394c18b30fcf0af9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoidOfCategory/Variant513281e1e84e364912cced03d9c80422dc70ff52daef854c12dd3f6989ae5541.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d3b08eb0e4c992c68442f1d5b5c6d564bbee7fffa85e6943cfe2146e975fbf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive FreeGroupoid.homRel : HomRel (Quiver.FreeGroupoid C) where
| map_id (X : C) : homRel ((FreeGroupoid.of C).map (𝟙 X)) (𝟙 ((FreeGroupoid.of C).obj X))
| map_comp {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) : homRel ((FreeGroupoid.of C).map (f ≫ g))
  ((FreeGroupoid.of C).map f ≫ (FreeGroupoid.of C).map g)

/-- The underlying type of the free groupoid on a category,
defined by quotienting the free groupoid on the underlying quiver of `C`
by the relation that promotes the prefunctor `C ⥤q FreeGroupoid C` into a functor
`C ⥤ Quotient (FreeGroupoid.homRel C)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoidOfCategory/Variant513281e1e84e364912cced03d9c80422dc70ff52daef854c12dd3f6989ae5541.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoidOfCategory/Variant513281e1e84e364912cced03d9c80422dc70ff52daef854c12dd3f6989ae5541.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd88840fa8bfd1a36d16b553ce4cc934613d46c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
