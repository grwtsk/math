# tensorObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a22400c9b8e127c819a6bd4e2eb8426b636755e8050891947591efef7e564b55",
  "kind": "def",
  "lexical_name": "tensorObj",
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
  "slug": "tensorobj--eff8e68cc686a5131f6ff995",
  "source": {
    "blob": "c4fde65113ca128223555a0e3767da92eccbfe72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eff8e68cc686a5131f6ff9950e6a306300c63c1096c20feba09703bcae3f8e69",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a22400c9b8e127c819a6bd4e2eb8426b636755e8050891947591efef7e564b55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorObj (X Y : Center C) : Center C :=
  ⟨X.1 ⊗ Y.1,
    { β := fun U =>
        α_ _ _ _ ≪≫
          (Iso.refl X.1 ⊗ Y.2.β U) ≪≫ (α_ _ _ _).symm ≪≫ (X.2.β U ⊗ Iso.refl Y.1) ≪≫ α_ _ _ _
      monoidal := fun U U' => by
        dsimp
        simp only [comp_tensor_id, id_tensor_comp, Category.assoc, HalfBraiding.monoidal]
        -- On the RHS, we'd like to commute `((X.snd.β U).hom ⊗ 𝟙 Y.fst) ⊗ 𝟙 U'`
        -- and `𝟙 U ⊗ 𝟙 X.fst ⊗ (Y.snd.β U').hom` past each other,
        -- but there are some associators we need to get out of the way first.
        slice_rhs 6 8 => rw [pentagon]
        slice_rhs 5 6 => rw [associator_naturality]
        slice_rhs 7 8 => rw [← associator_naturality]
        slice_rhs 6 7 =>
          rw [tensor_id, tensor_id, tensor_id_comp_id_tensor, ← id_tensor_comp_tensor_id,
            ← tensor_id, ← tensor_id]
        -- Now insert associators as needed to make the four half-braidings look identical
        slice_rhs 10 10 => rw [associator_inv_conjugation]
        slice_rhs 7 7 => rw [associator_inv_conjugation]
        slice_rhs 6 6 => rw [associator_conjugation]
        slice_rhs 3 3 => rw [associator_conjugation]
        -- Finish with an application of the coherence theorem.
        coherence
      naturality := fun f => by
        dsimp
        rw [Category.assoc, Category.assoc, Category.assoc, Category.assoc,
          id_tensor_associator_naturality_assoc, ← id_tensor_comp_assoc, HalfBraiding.naturality,
          id_tensor_comp_assoc, associator_inv_naturality_assoc, ← comp_tensor_id_assoc,
          HalfBraiding.naturality, comp_tensor_id_assoc, associator_naturality, ← tensor_id] }⟩
#align category_theory.center.tensor_obj CategoryTheory.Center.tensorObj

/-- Auxiliary definition for the `MonoidalCategory` instance on `Center C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4fde65113ca128223555a0e3767da92eccbfe72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
