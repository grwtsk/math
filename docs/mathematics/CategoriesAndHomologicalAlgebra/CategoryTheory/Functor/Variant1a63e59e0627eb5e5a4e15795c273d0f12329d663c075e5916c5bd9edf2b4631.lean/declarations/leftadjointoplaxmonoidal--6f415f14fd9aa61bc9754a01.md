# leftAdjointOplaxMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d14a192dac728a3629636d7ccb83d5e1939c026386cdab569e3f76a0c967ee8e",
  "kind": "def",
  "lexical_name": "leftAdjointOplaxMonoidal",
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
  "slug": "leftadjointoplaxmonoidal--6f415f14fd9aa61bc9754a01",
  "source": {
    "blob": "795cfcd62b99acf8328fe29e452bfb809f75b774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1099,
    "line": 1055,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f415f14fd9aa61bc9754a01f530d031f3a0277aecc993dc360b6960c26673d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d14a192dac728a3629636d7ccb83d5e1939c026386cdab569e3f76a0c967ee8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1055–1099.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftAdjointOplaxMonoidal : F.OplaxMonoidal where
  η := (adj.homEquiv _ _).symm (ε G)
  δ X Y := (adj.homEquiv _ _).symm ((adj.unit.app X ⊗ₘ adj.unit.app Y) ≫ μ G _ _)
  δ_natural_left _ _ := by
    rw [← Adjunction.homEquiv_naturality_right_symm,
      ← Adjunction.homEquiv_naturality_left_symm, assoc, ← μ_natural_left]
    simp [← tensorHom_id]
  δ_natural_right _ _ := by
    rw [← Adjunction.homEquiv_naturality_right_symm,
      ← Adjunction.homEquiv_naturality_left_symm, assoc, ← μ_natural_right]
    simp [← id_tensorHom]
  oplax_associativity X Y Z := (adj.homEquiv _ _).injective (by
    rw [← Adjunction.homEquiv_naturality_right_symm,
      ← Adjunction.homEquiv_naturality_right_symm,
      ← Adjunction.homEquiv_naturality_left_symm,
      Equiv.apply_symm_apply, Equiv.apply_symm_apply, assoc, assoc]
    conv_lhs =>
      rw [homEquiv_counit, map_comp_assoc, map_comp,
        ← μ_natural_left_assoc, map_comp, map_comp, tensorHom_def'_assoc]
      dsimp
      rw [← comp_whiskerRight_assoc]
    conv_rhs =>
      rw [← μ_natural_right, homEquiv_counit, map_comp_assoc,
        map_comp, tensorHom_def_assoc, ← associator_naturality_left_assoc]
      dsimp
      rw [← MonoidalCategory.whiskerLeft_comp_assoc, map_comp,
        unit_naturality_assoc, MonoidalCategory.whiskerLeft_comp,
        unit_naturality_assoc, right_triangle_components, comp_id, assoc,
        tensorHom_def, MonoidalCategory.whiskerLeft_comp_assoc,
        ← associator_naturality_middle_assoc, ← associator_naturality_right_assoc,
        ← associativity G, ← comp_whiskerRight_assoc, ← tensorHom_def,
        ← whisker_exchange_assoc, ← comp_whiskerRight_assoc]
    simp)
  oplax_left_unitality _ := (adj.homEquiv _ _).injective (by
    rw [Adjunction.homEquiv_naturality_left, Adjunction.homEquiv_naturality_right,
      Equiv.apply_symm_apply, assoc, ← μ_natural_left, ← tensorHom_id,
      tensorHom_comp_tensorHom_assoc]
    simp [tensorHom_def', homEquiv_unit, homEquiv_counit])
  oplax_right_unitality _ := (adj.homEquiv _ _).injective (by
    rw [Adjunction.homEquiv_naturality_left, Adjunction.homEquiv_naturality_right,
      Equiv.apply_symm_apply, assoc, ← μ_natural_right, ← id_tensorHom,
      tensorHom_comp_tensorHom_assoc]
    simp [tensorHom_def, homEquiv_unit, homEquiv_counit])

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean#L1055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795cfcd62b99acf8328fe29e452bfb809f75b774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
