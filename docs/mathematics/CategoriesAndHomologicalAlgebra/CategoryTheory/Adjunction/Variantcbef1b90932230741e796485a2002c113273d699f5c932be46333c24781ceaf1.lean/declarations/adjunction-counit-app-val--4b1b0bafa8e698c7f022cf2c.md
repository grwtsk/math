# adjunction_counit_app_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6144c7e-3f60-953c-f895-73863356dce9",
  "kind": "lemma",
  "lexical_name": "adjunction_counit_app_val",
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
  "slug": "adjunction-counit-app-val--4b1b0bafa8e698c7f022cf2c",
  "source": {
    "blob": "9b7836c8b18128a557d7775e1e37db7075ac93dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b1b0bafa8e698c7f022cf2c342c5b114a5068ea048cf17a1a75d367dd96284c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6144c7e-3f60-953c-f895-73863356dce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adjunction_counit_app_val [HasWeakSheafify J D] [HasSheafCompose J F] (adj : G ⊣ F)
    (Y : Sheaf J D) : ((adjunction J adj).counit.app Y).val =
      sheafifyLift J (((adj.whiskerRight Cᵒᵖ).counit.app Y.val)) Y.cond := by
  change ((𝟭 (Sheaf _ _)).map ((adjunction J adj).counit.app Y)).val = _
  simp only [Functor.comp_obj, sheafToPresheaf_obj, sheafCompose_obj_val, whiskeringRight_obj_obj,
    adjunction, Adjunction.map_restrictFullyFaithful_counit_app, Iso.refl_inv, NatTrans.id_app,
    Functor.comp_map, whiskeringRight_obj_map, Adjunction.comp_counit_app,
    instCategorySheaf_comp_val, instCategorySheaf_id_val, sheafificationAdjunction_counit_app_val,
    sheafifyMap_sheafifyLift, Functor.id_obj, whiskerRight_id', Category.comp_id, Category.id_comp]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b7836c8b18128a557d7775e1e37db7075ac93dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
