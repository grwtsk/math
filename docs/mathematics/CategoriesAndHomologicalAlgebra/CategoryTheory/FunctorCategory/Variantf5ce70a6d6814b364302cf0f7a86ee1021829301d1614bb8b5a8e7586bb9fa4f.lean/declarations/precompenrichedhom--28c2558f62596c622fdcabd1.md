# precompEnrichedHom'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07ff19026b8011b3efd503e2a2c5a05749119271328281a8be8bd3bed1d592a6",
  "kind": "abbrev",
  "lexical_name": "precompEnrichedHom'",
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
  "slug": "precompenrichedhom--28c2558f62596c622fdcabd1",
  "source": {
    "blob": "964746b1888763c4112af60a841300762aca73ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 247,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28c2558f62596c622fdcabd1ed4b37df8de687512cb4e5013031f98b757f56bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07ff19026b8011b3efd503e2a2c5a05749119271328281a8be8bd3bed1d592a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev precompEnrichedHom' {F₁' F₂' : K ⥤ C}
    [HasEnrichedHom V F₁' F₂'] (e₁ : G ⋙ F₁ ≅ F₁') (e₂ : G ⋙ F₂ ≅ F₂') :
    enrichedHom V F₁ F₂ ⟶ enrichedHom V F₁' F₂' :=
  end_.lift (fun x ↦ enrichedHomπ V F₁ F₂ (G.obj x) ≫
    (eHomWhiskerRight _ (e₁.inv.app x) _ ≫ eHomWhiskerLeft _ _ (e₂.hom.app x)))
    (fun i j f ↦ by
      dsimp
      rw [assoc, assoc, assoc, assoc, ← eHomWhiskerLeft_comp,
        ← eHom_whisker_exchange, ← e₂.hom.naturality f,
        eHomWhiskerLeft_comp_assoc]
      dsimp
      rw [enrichedHom_condition_assoc, eHom_whisker_exchange,
        eHom_whisker_exchange, ← eHomWhiskerRight_comp_assoc,
        ← eHomWhiskerRight_comp_assoc, NatTrans.naturality]
      dsimp )

/-- If `F₁` and `F₂` are functors `J ⥤ C`, and `G : K ⥤ J`,
then this is the induced morphism
`enrichedHom V F₁ F₂ ⟶ enrichedHom V (G ⋙ F₁) (G ⋙ F₂)` in `V`
when `C` is a category enriched in `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `964746b1888763c4112af60a841300762aca73ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
