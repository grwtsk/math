# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f764844f2b7c07ff1fee5de42f56201f6267389d93e648d4f8c30190dd4b4d99",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8af4bc9025dc5dbba3311020",
  "source": {
    "blob": "95bf36525c56d82731fd31a6c64d4acc5d28b001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8af4bc9025dc5dbba3311020b90166ec0fcdd261ce1e2812605036392bc0127a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f764844f2b7c07ff1fee5de42f56201f6267389d93e648d4f8c30190dd4b4d99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : EnrichedCategory W (TransportEnrichment F C) where
  Hom := fun X Y : C => F.obj (X ⟶[V] Y)
  id := fun X : C => ε F ≫ F.map (eId V X)
  comp := fun X Y Z : C => μ F _ _ ≫ F.map (eComp V X Y Z)
  id_comp X Y := by
    simp only [comp_whiskerRight, Category.assoc, Functor.LaxMonoidal.μ_natural_left_assoc,
      Functor.LaxMonoidal.left_unitality_inv_assoc]
    simp_rw [← F.map_comp]
    convert F.map_id _
    simp
  comp_id X Y := by
    simp only [MonoidalCategory.whiskerLeft_comp, Category.assoc,
      Functor.LaxMonoidal.μ_natural_right_assoc,
      Functor.LaxMonoidal.right_unitality_inv_assoc]
    simp_rw [← F.map_comp]
    convert F.map_id _
    simp
  assoc P Q R S := by
    rw [comp_whiskerRight, Category.assoc, μ_natural_left_assoc,
      ← associativity_inv_assoc, ← F.map_comp, ← F.map_comp, e_assoc,
      F.map_comp, MonoidalCategory.whiskerLeft_comp, Category.assoc,
      Functor.LaxMonoidal.μ_natural_right_assoc]

end

/-- Construct an honest category from a `Type v`-enriched category.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95bf36525c56d82731fd31a6c64d4acc5d28b001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
