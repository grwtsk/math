# matrixDecomposition_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63441d9970a99daffa029210f92e13fb376123f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05e7db7a-7e0a-8dc7-ee09-95c95a00a38d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b189967-3e75-6ced-e24f-635d41365b76",
  "kind": "theorem",
  "lexical_name": "matrixDecomposition_id",
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
  "slug": "matrixdecomposition-id--82b7de823c59c021ab12d489",
  "source": {
    "blob": "63441d9970a99daffa029210f92e13fb376123f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82b7de823c59c021ab12d4896b602244787da938d43669818498b3b78628485d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b189967-3e75-6ced-e24f-635d41365b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrixDecomposition_id (o : HomOrthogonal s) {α : Type} [Fintype α] {f : α → ι} (i : ι) :
    o.matrixDecomposition (𝟙 (⨁ fun a => s (f a))) i = 1 := by
  ext ⟨b, ⟨⟩⟩ ⟨a, j_property⟩
  simp only [Set.mem_preimage, Set.mem_singleton_iff] at j_property
  simp only [Category.comp_id, Category.id_comp, Category.assoc, End.one_def, eqToHom_refl,
    Matrix.one_apply, HomOrthogonal.matrixDecomposition_apply, biproduct.components]
  split_ifs with h
  · cases h
    simp
  · simp at h
    -- porting note: used to be `convert comp_zero`, but that does not work anymore
    have : biproduct.ι (fun a ↦ s (f a)) a ≫ biproduct.π (fun b ↦ s (f b)) b = 0 := by
      simpa using biproduct.ι_π_ne _ (Ne.symm h)
    rw [this, comp_zero]
#align category_theory.hom_orthogonal.matrix_decomposition_id CategoryTheory.HomOrthogonal.matrixDecomposition_id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63441d9970a99daffa029210f92e13fb376123f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
