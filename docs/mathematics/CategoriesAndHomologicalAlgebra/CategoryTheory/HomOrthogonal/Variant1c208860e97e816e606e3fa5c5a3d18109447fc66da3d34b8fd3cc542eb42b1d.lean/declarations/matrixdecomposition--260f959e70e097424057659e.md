# matrixDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64810290da493773bafeecf72d4d54645f34d7b1e4675375eb8d65279d2e026e",
  "kind": "def",
  "lexical_name": "matrixDecomposition",
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
  "slug": "matrixdecomposition--260f959e70e097424057659e",
  "source": {
    "blob": "63441d9970a99daffa029210f92e13fb376123f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:260f959e70e097424057659e633f3db56900aa428c5506688f3e51c8ebfb0fcd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64810290da493773bafeecf72d4d54645f34d7b1e4675375eb8d65279d2e026e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def matrixDecomposition (o : HomOrthogonal s) {α β : Type} [Fintype α] [Fintype β]
    {f : α → ι} {g : β → ι} :
    ((⨁ fun a => s (f a)) ⟶ ⨁ fun b => s (g b)) ≃
      ∀ i : ι, Matrix (g ⁻¹' {i}) (f ⁻¹' {i}) (End (s i)) where
  toFun z i j k :=
    eqToHom
        (by
          rcases k with ⟨k, ⟨⟩⟩
          simp) ≫
      biproduct.components z k j ≫
        eqToHom
          (by
            rcases j with ⟨j, ⟨⟩⟩
            simp)
  invFun z :=
    biproduct.matrix fun j k =>
      if h : f j = g k then z (f j) ⟨k, by simp [h]⟩ ⟨j, by simp⟩ ≫ eqToHom (by simp [h]) else 0
  left_inv z := by
    ext j k
    simp only [biproduct.matrix_π, biproduct.ι_desc]
    split_ifs with h
    · simp
      rfl
    · symm
      apply o.eq_zero h
  right_inv z := by
    ext i ⟨j, w⟩ ⟨k, ⟨⟩⟩
    simp only [eqToHom_refl, biproduct.matrix_components, Category.id_comp]
    split_ifs with h
    · simp
    · exfalso
      exact h w.symm
#align category_theory.hom_orthogonal.matrix_decomposition CategoryTheory.HomOrthogonal.matrixDecomposition

end

section

variable [Preadditive C] [HasFiniteBiproducts C]

/-- `HomOrthogonal.matrixDecomposition` as an additive equivalence. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63441d9970a99daffa029210f92e13fb376123f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
