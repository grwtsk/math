# opensImagePreimageMap_app_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7afa24fe0a6ae7c2a7a42182bdb3b9fa30424220",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d95daed-e511-d7a1-1531-ec4285586dd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12740775-eb1b-3a1c-bc7a-6b986834ce9b",
  "kind": "theorem",
  "lexical_name": "opensImagePreimageMap_app_assoc",
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
  "slug": "opensimagepreimagemap-app-assoc--22280864b01cf2f1145b4e06",
  "source": {
    "blob": "7afa24fe0a6ae7c2a7a42182bdb3b9fa30424220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 290,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22280864b01cf2f1145b4e069d4d67565133b2cd7628e05497491b01e17c296b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12740775-eb1b-3a1c-bc7a-6b986834ce9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opensImagePreimageMap_app_assoc (i j k : D.J) (U : Opens (D.U i).carrier) {X' : C}
    (f' : _ ⟶ X') :
    D.opensImagePreimageMap i j U ≫ (D.f j k).c.app _ ≫ f' =
      ((π₁ j, i, k) ≫ D.t j i ≫ D.f i j).c.app (op U) ≫
        (π₂⁻¹ j, i, k) (unop _) ≫
          (D.V (j, k)).presheaf.map
            (eqToHom (opensImagePreimageMap_app' D i j k U).choose) ≫ f' := by
  simpa only [Category.assoc] using congr_arg (· ≫ f') (opensImagePreimageMap_app D i j k U)

/-- (Implementation) Given an open subset of one of the spaces `U ⊆ Uᵢ`, the sheaf component of
the image `ι '' U` in the glued space is the limit of this diagram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7afa24fe0a6ae7c2a7a42182bdb3b9fa30424220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
