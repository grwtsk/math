# EnrichedCategory.opposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ee91698b86f1393f14d16d8423da744639a174f953f1c993bc6105fecc1486f",
  "kind": "instance",
  "lexical_name": "EnrichedCategory.opposite",
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
  "slug": "enrichedcategory-opposite--772cd8ebbc03fde4658f1cd3",
  "source": {
    "blob": "9bdba58c71ba2a38ad3b6c3ca179dd95adb5a28d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:772cd8ebbc03fde4658f1cd3fde4c5a30d7d9550eb0da310261177ac3c738194",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ee91698b86f1393f14d16d8423da744639a174f953f1c993bc6105fecc1486f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance EnrichedCategory.opposite : EnrichedCategory V Cᵒᵖ where
  Hom y x := EnrichedCategory.Hom x.unop y.unop
  id x := EnrichedCategory.id x.unop
  comp z y x := (β_ _ _).hom ≫ EnrichedCategory.comp (x.unop) (y.unop) (z.unop)
  id_comp _ _ := by
    simp only [braiding_naturality_left_assoc, braiding_tensorUnit_left,
      Category.assoc, Iso.inv_hom_id_assoc]
    exact EnrichedCategory.comp_id _ _
  comp_id _ _ := by
    simp only [braiding_naturality_right_assoc, braiding_tensorUnit_right,
      Category.assoc, Iso.inv_hom_id_assoc]
    exact EnrichedCategory.id_comp _ _
  assoc _ _ _ _ := by
    simp only [braiding_naturality_left_assoc,
      MonoidalCategory.whiskerLeft_comp, Category.assoc]
    rw [← EnrichedCategory.assoc]
    simp only [braiding_tensor_left, Category.assoc, Iso.inv_hom_id_assoc,
      braiding_naturality_right_assoc, braiding_tensor_right]

end

/-- Unfold the definition of composition in the enriched opposite category. -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdba58c71ba2a38ad3b6c3ca179dd95adb5a28d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
