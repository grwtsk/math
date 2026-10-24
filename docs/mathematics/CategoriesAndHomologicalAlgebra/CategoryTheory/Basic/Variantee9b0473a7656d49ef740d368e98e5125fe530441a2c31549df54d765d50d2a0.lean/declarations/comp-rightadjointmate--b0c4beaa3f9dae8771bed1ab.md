# comp_rightAdjointMate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff16d3c8af4b12fe5d7d5d7c9600dec0816b6b5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3143354-f9e2-92d8-838c-1360425565cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9065f8aa-1d30-1a70-0f53-281592b29e43",
  "kind": "theorem",
  "lexical_name": "comp_rightAdjointMate",
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
  "slug": "comp-rightadjointmate--b0c4beaa3f9dae8771bed1ab",
  "source": {
    "blob": "ff16d3c8af4b12fe5d7d5d7c9600dec0816b6b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0c4beaa3f9dae8771bed1ab0d3d286ad48fe1f3dd64851d5d4cd192ccf5126b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9065f8aa-1d30-1a70-0f53-281592b29e43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_rightAdjointMate {X Y Z : C} [HasRightDual X] [HasRightDual Y] [HasRightDual Z]
    {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g)ᘁ = gᘁ ≫ fᘁ := by
  rw [rightAdjointMate_comp]
  simp only [rightAdjointMate, comp_tensor_id, Iso.cancel_iso_inv_left, id_tensor_comp,
    Category.assoc]
  symm
  iterate 5
    trans
    rw [← Category.id_comp g, tensor_comp]
  rw [← Category.assoc]
  symm
  iterate 2
    trans
    rw [← Category.assoc]
  apply eq_whisker
  repeat'
    -- Porting note: why do we need to fill in the implicit `C` here, and below?
    rw [← @id_tensor_comp C]
  congr 1
  rw [← id_tensor_comp_tensor_id (λ_ (Xᘁ)).hom g, id_tensor_rightUnitor_inv, Category.assoc,
    Category.assoc, rightUnitor_inv_naturality_assoc, ← associator_naturality_assoc, tensor_id,
    tensor_id_comp_id_tensor_assoc, ← associator_naturality_assoc]
  slice_rhs 2 3 =>
    rw [← tensor_comp, tensor_id, Category.comp_id, ← Category.id_comp (η_ Y (Yᘁ)), tensor_comp]
  rw [← id_tensor_comp_tensor_id _ (η_ Y (Yᘁ)), ← tensor_id]
  repeat' rw [@Category.assoc C]
  rw [pentagon_hom_inv_assoc, ← associator_naturality_assoc, associator_inv_naturality_assoc]
  slice_rhs 5 7 => rw [← comp_tensor_id, ← comp_tensor_id, evaluation_coevaluation, comp_tensor_id]
  rw [associator_inv_naturality_assoc]
  slice_rhs 4 5 => rw [← tensor_comp, leftUnitor_naturality, tensor_comp]
  repeat' rw [@Category.assoc C]
  rw [triangle_assoc_comp_right_inv_assoc, ← leftUnitor_tensor_assoc, leftUnitor_naturality_assoc,
    unitors_equal, ← Category.assoc, ← Category.assoc]
  simp
#align category_theory.comp_right_adjoint_mate CategoryTheory.comp_rightAdjointMate

/-- The composition of left adjoint mates is the adjoint mate of the composition. -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee9b0473a7656d49ef740d368e98e5125fe530441a2c31549df54d765d50d2a0.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff16d3c8af4b12fe5d7d5d7c9600dec0816b6b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
