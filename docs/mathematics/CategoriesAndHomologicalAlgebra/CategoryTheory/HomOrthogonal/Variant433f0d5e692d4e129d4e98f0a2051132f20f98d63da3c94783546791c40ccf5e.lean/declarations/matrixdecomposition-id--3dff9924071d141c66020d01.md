# matrixDecomposition_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a042e3f6-7541-5d8a-b1ce-db95f7737ff4",
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
  "slug": "matrixdecomposition-id--3dff9924071d141c66020d01",
  "source": {
    "blob": "8a03c124e9de069138dadd56ba60934a904edfe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dff9924071d141c66020d0148bec193e5e9b1df7bac88ae0ede41b8275798b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a042e3f6-7541-5d8a-b1ce-db95f7737ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a03c124e9de069138dadd56ba60934a904edfe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
