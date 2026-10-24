# FullSubcategory.lift_comp_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83bf1c11eee251c28e8f9cfac49cf67abad333ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16a33003-f695-a2be-5977-164f9abdea57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40aa2ba1-d4b0-a8a6-1dc4-6a3b2fdce9da",
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
  "slug": "fullsubcategory-lift-comp-map--ea1d225417813b77c874e14c",
  "source": {
    "blob": "83bf1c11eee251c28e8f9cfac49cf67abad333ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea1d225417813b77c874e14cd117a2240906a190b8351ecc397402bede3b7ba9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40aa2ba1-d4b0-a8a6-1dc4-6a3b2fdce9da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–183.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83bf1c11eee251c28e8f9cfac49cf67abad333ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
