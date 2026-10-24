# tensoringRightMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1395f63932757dea56e87738ad14b5751ecf7a1ba591635874c75372297e6619",
  "kind": "def",
  "lexical_name": "tensoringRightMonoidal",
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
  "slug": "tensoringrightmonoidal--1c0b2c41ced33da6e8107458",
  "source": {
    "blob": "63e5f8dd4a67265c30e73371fea9bfdc49f90f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant05f91638808970ab67bfc8288fde575e00d235ec6842899459529634eb1bb9af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c0b2c41ced33da6e810745871404897b7f17e6b2902eb21af24b26de02d8222",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant05f91638808970ab67bfc8288fde575e00d235ec6842899459529634eb1bb9af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1395f63932757dea56e87738ad14b5751ecf7a1ba591635874c75372297e6619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensoringRightMonoidal [MonoidalCategory.{v} C] : MonoidalFunctor C (C ⥤ C) :=
  { tensoringRight C with
    ε := (rightUnitorNatIso C).inv
    μ := fun X Y => { app := fun Z => (α_ Z X Y).hom }
    μ_natural := fun f g => by
      ext Z
      dsimp
      simp only [← id_tensor_comp_tensor_id g f, id_tensor_comp, ← tensor_id, Category.assoc,
        associator_naturality, associator_naturality_assoc]
    associativity := fun X Y Z => by
      ext W
      simp [pentagon]
    μ_isIso := fun X Y =>
      -- We could avoid needing to do this explicitly by
      -- constructing a partially applied analogue of `associatorNatIso`.
      ⟨⟨{ app := fun Z => (α_ Z X Y).inv
          naturality := fun Z Z' f => by
            dsimp
            rw [← associator_inv_naturality]
            simp },
          by aesop_cat⟩⟩ }
#align category_theory.tensoring_right_monoidal CategoryTheory.tensoringRightMonoidal

variable {C}

variable {M : Type*} [Category M] [MonoidalCategory M] (F : MonoidalFunctor M (C ⥤ C))

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant05f91638808970ab67bfc8288fde575e00d235ec6842899459529634eb1bb9af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant05f91638808970ab67bfc8288fde575e00d235ec6842899459529634eb1bb9af.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63e5f8dd4a67265c30e73371fea9bfdc49f90f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
