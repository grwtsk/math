# tensorHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:699f62856c190b098dcc3c245c8d49638522035eda46bec60ee602f673da61cc",
  "kind": "def",
  "lexical_name": "tensorHom",
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
  "slug": "tensorhom--d190ddd408eacb22f5515f31",
  "source": {
    "blob": "c4fde65113ca128223555a0e3767da92eccbfe72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d190ddd408eacb22f5515f312b87f23b7972279818958d9af808651815a31a8b",
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

Occurrence: `declaration:699f62856c190b098dcc3c245c8d49638522035eda46bec60ee602f673da61cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorHom {X₁ Y₁ X₂ Y₂ : Center C} (f : X₁ ⟶ Y₁) (g : X₂ ⟶ Y₂) :
    tensorObj X₁ X₂ ⟶ tensorObj Y₁ Y₂ where
  f := f.f ⊗ g.f
  comm U := by
    dsimp
    rw [Category.assoc, Category.assoc, Category.assoc, Category.assoc, associator_naturality_assoc,
      ← tensor_id_comp_id_tensor, Category.assoc, ← id_tensor_comp_assoc, g.comm,
      id_tensor_comp_assoc, tensor_id_comp_id_tensor_assoc, ← id_tensor_comp_tensor_id,
      Category.assoc, associator_inv_naturality_assoc, id_tensor_associator_inv_naturality_assoc,
      tensor_id, id_tensor_comp_tensor_id_assoc, ← tensor_id_comp_id_tensor g.f, Category.assoc,
      ← comp_tensor_id_assoc, f.comm, comp_tensor_id_assoc, id_tensor_associator_naturality,
      associator_naturality_assoc, ← id_tensor_comp, tensor_id_comp_id_tensor]
#align category_theory.center.tensor_hom CategoryTheory.Center.tensorHom

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4fde65113ca128223555a0e3767da92eccbfe72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
