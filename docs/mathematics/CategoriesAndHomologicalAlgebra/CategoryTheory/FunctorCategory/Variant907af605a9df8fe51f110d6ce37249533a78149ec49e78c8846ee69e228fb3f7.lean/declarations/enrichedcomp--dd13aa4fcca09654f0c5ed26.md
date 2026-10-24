# enrichedComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:925375112228204f3bffa482cf112dd3f5159f643169c8aab5fcb231b653a6cc",
  "kind": "def",
  "lexical_name": "enrichedComp",
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
  "slug": "enrichedcomp--dd13aa4fcca09654f0c5ed26",
  "source": {
    "blob": "165ac5846ec0e13586049ccc1cf6c19f81d3e17c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd13aa4fcca09654f0c5ed261036937ae1fe1cdc3e012942bfbd6b4e03b68658",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:925375112228204f3bffa482cf112dd3f5159f643169c8aab5fcb231b653a6cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def enrichedComp : enrichedHom V F₁ F₂ ⊗ enrichedHom V F₂ F₃ ⟶ enrichedHom V F₁ F₃ :=
  end_.lift (fun j ↦ (end_.π _ j ⊗ end_.π _ j) ≫ eComp V _ _ _) (fun i j f ↦ by
    dsimp
    trans (end_.π (diagram V F₁ F₂) i ⊗ end_.π (diagram V F₂ F₃) j) ≫
      (ρ_ _).inv ▷ _ ≫ (_ ◁ (eHomEquiv V (F₂.map f))) ▷ _ ≫ eComp V _ (F₂.obj i) _ ▷ _ ≫
        eComp V _ (F₂.obj j) _
    · have := end_.condition (diagram V F₂ F₃) f
      dsimp [eHomWhiskerLeft, eHomWhiskerRight] at this ⊢
      conv_lhs => rw [assoc, tensorHom_def_assoc]
      conv_rhs =>
        rw [tensorHom_def_assoc, whisker_assoc_assoc, e_assoc,
          triangle_assoc_comp_right_inv_assoc, ← MonoidalCategory.whiskerLeft_comp_assoc,
          ← MonoidalCategory.whiskerLeft_comp_assoc, ← MonoidalCategory.whiskerLeft_comp_assoc,
          assoc, assoc, ← this, MonoidalCategory.whiskerLeft_comp_assoc,
          MonoidalCategory.whiskerLeft_comp_assoc, MonoidalCategory.whiskerLeft_comp_assoc,
          ← e_assoc, whiskerLeft_rightUnitor_inv_assoc, associator_inv_naturality_right_assoc,
          Iso.hom_inv_id_assoc, whisker_exchange_assoc, MonoidalCategory.whiskerRight_id_assoc,
          Iso.inv_hom_id_assoc]
    · have := end_.condition (diagram V F₁ F₂) f
      dsimp [eHomWhiskerLeft, eHomWhiskerRight] at this ⊢
      conv_lhs =>
        rw [tensorHom_def'_assoc, ← comp_whiskerRight_assoc,
          ← comp_whiskerRight_assoc, ← comp_whiskerRight_assoc,
          assoc, assoc, this, comp_whiskerRight_assoc, comp_whiskerRight_assoc,
          comp_whiskerRight_assoc, leftUnitor_inv_whiskerRight_assoc,
          ← associator_inv_naturality_left_assoc, ← e_assoc',
          Iso.inv_hom_id_assoc, ← whisker_exchange_assoc, id_whiskerLeft_assoc,
          Iso.inv_hom_id_assoc]
      conv_rhs => rw [assoc, tensorHom_def'_assoc])

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant907af605a9df8fe51f110d6ce37249533a78149ec49e78c8846ee69e228fb3f7.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `165ac5846ec0e13586049ccc1cf6c19f81d3e17c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
