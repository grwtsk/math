# biprod.mapBiprod_hom_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e859126652695252dbc9d2012e643af1f005219",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 463,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e88cde6e1c34f34710bd74d0ee334ba7e728d977ffb4e11c2d15d47edd64ef5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab8317d3-3426-e25d-44da-8e5f0c5daccb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29983866-1cda-9de2-35bf-11962c744ab0",
  "kind": "theorem",
  "lexical_name": "biprod.mapBiprod_hom_desc",
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
  "slug": "biprod-mapbiprod-hom-desc--b2c624f9b2469b49c174d73f",
  "source": {
    "blob": "8e859126652695252dbc9d2012e643af1f005219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 463,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9e88cde6e1c34f34710bd74d0ee334ba7e728d977ffb4e11c2d15d47edd64ef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2c624f9b2469b49c174d73f2d766809b6ffc4895ffb2759aae65f6e5abeb827",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9e88cde6e1c34f34710bd74d0ee334ba7e728d977ffb4e11c2d15d47edd64ef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29983866-1cda-9de2-35bf-11962c744ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biprod.mapBiprod_hom_desc (f : X ⟶ W) (g : Y ⟶ W) :
    (F.mapBiprod X Y).hom ≫ biprod.desc (F.map f) (F.map g) = F.map (biprod.desc f g) := by
  rw [← biprod.mapBiprod_inv_map_desc, Iso.hom_inv_id_assoc]
#align category_theory.limits.biprod.map_biprod_hom_desc CategoryTheory.Limits.biprod.mapBiprod_hom_desc

end BinaryBicone

end Limits

end HasZeroMorphisms

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9e88cde6e1c34f34710bd74d0ee334ba7e728d977ffb4e11c2d15d47edd64ef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9e88cde6e1c34f34710bd74d0ee334ba7e728d977ffb4e11c2d15d47edd64ef5.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e859126652695252dbc9d2012e643af1f005219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
