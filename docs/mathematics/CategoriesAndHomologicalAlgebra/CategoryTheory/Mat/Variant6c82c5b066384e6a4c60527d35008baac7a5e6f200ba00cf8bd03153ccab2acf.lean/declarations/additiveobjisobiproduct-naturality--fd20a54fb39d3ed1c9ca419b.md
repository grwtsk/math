# additiveObjIsoBiproduct_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6272da13cb771916f50c170a425cc2617eab1321",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a5d09d7-547a-c2b0-4fdf-f6ece7254e4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b9cef03-b4dc-2428-224d-08c24e7b26f6",
  "kind": "theorem",
  "lexical_name": "additiveObjIsoBiproduct_naturality",
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
  "slug": "additiveobjisobiproduct-naturality--fd20a54fb39d3ed1c9ca419b",
  "source": {
    "blob": "6272da13cb771916f50c170a425cc2617eab1321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 373,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd20a54fb39d3ed1c9ca419b82d6288ab387c6273c8c3f14dc9cfab832972f4d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b9cef03-b4dc-2428-224d-08c24e7b26f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem additiveObjIsoBiproduct_naturality (F : Mat_ C ⥤ D) [Functor.Additive F] {M N : Mat_ C}
    (f : M ⟶ N) :
    F.map f ≫ (additiveObjIsoBiproduct F N).hom =
      (additiveObjIsoBiproduct F M).hom ≫
        biproduct.matrix fun i j => F.map ((embedding C).map (f i j)) := by
  classical
  ext i : 1
  simp only [Category.assoc, additiveObjIsoBiproduct_hom_π, isoBiproductEmbedding_hom,
    embedding_obj_ι, embedding_obj_X, biproduct.lift_π, biproduct.matrix_π,
    ← cancel_epi (additiveObjIsoBiproduct F M).inv, Iso.inv_hom_id_assoc]
  ext j : 1
  simp only [ι_additiveObjIsoBiproduct_inv_assoc, isoBiproductEmbedding_inv,
    biproduct.ι_desc, ← F.map_comp]
  congr 1
  funext ⟨⟩ ⟨⟩
  simp [comp_apply, dite_comp, comp_dite]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6272da13cb771916f50c170a425cc2617eab1321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
