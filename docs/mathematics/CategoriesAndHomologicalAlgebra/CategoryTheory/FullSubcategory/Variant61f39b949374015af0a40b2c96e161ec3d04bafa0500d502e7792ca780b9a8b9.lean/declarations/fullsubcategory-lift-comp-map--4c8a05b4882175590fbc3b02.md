# FullSubcategory.lift_comp_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d9475d7-6cc2-bf54-c223-552661084e75",
  "kind": "theorem",
  "lexical_name": "FullSubcategory.lift_comp_map",
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
  "slug": "fullsubcategory-lift-comp-map--4c8a05b4882175590fbc3b02",
  "source": {
    "blob": "d36af75d564861521686c574aac707d1d90503ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant61f39b949374015af0a40b2c96e161ec3d04bafa0500d502e7792ca780b9a8b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c8a05b4882175590fbc3b026d5ba7cccf494167172ebf06b28262a52c7f5074",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant61f39b949374015af0a40b2c96e161ec3d04bafa0500d502e7792ca780b9a8b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d9475d7-6cc2-bf54-c223-552661084e75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FullSubcategory.lift_comp_map (h : P ≤ Q) :
    P.lift F hF ⋙ ιOfLE h =
      Q.lift F (fun X ↦  h _ (hF X)) :=
  rfl

end lift

end ObjectProperty

@[deprecated (since := "2025-03-04")] alias FullSubcategory := ObjectProperty.FullSubcategory
@[deprecated (since := "2025-03-04")] alias fullSubcategoryInclusion := ObjectProperty.ι
@[deprecated (since := "2025-03-04")] alias fullSubcategoryInclusion.obj := ObjectProperty.ι_obj
@[deprecated (since := "2025-03-04")] alias fullSubcategoryInclusion.map := ObjectProperty.ι_map
@[deprecated (since := "2025-03-04")] alias fullyFaithfulFullSubcategoryInclusion :=
  ObjectProperty.fullyFaithfulι
@[deprecated (since := "2025-03-04")] alias FullSubcategory.map := ObjectProperty.ιOfLE
@[deprecated (since := "2025-03-04")] alias FullSubcategory.lift := ObjectProperty.lift
@[deprecated (since := "2025-03-04")] alias FullSubcategory.lift_comp_inclusion :=
  ObjectProperty.liftCompιIso
@[deprecated (since := "2025-03-04")] alias fullSubcategoryInclusion_obj_lift_obj :=
  ObjectProperty.ι_obj_lift_obj
@[deprecated (since := "2025-03-04")] alias fullSubcategoryInclusion_map_lift_map :=
  ObjectProperty.ι_obj_lift_map

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant61f39b949374015af0a40b2c96e161ec3d04bafa0500d502e7792ca780b9a8b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant61f39b949374015af0a40b2c96e161ec3d04bafa0500d502e7792ca780b9a8b9.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36af75d564861521686c574aac707d1d90503ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
