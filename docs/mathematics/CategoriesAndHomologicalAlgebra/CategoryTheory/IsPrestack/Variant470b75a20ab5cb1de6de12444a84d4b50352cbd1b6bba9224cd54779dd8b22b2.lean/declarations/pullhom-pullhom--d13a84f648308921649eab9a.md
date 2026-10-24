# pullHom_pullHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4bcb815a22397defc42c31c4f408d400f2dc614",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/470b75a20ab5cb1de6de12444a84d4b50352cbd1b6bba9224cd54779dd8b22b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62a39b70-bde3-dd0a-8912-017eee23a900",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e690ebd8-dd2c-9d07-fb0c-397d7c91d193",
  "kind": "lemma",
  "lexical_name": "pullHom_pullHom",
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
  "slug": "pullhom-pullhom--d13a84f648308921649eab9a",
  "source": {
    "blob": "c4bcb815a22397defc42c31c4f408d400f2dc614",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsPrestack/Variant470b75a20ab5cb1de6de12444a84d4b50352cbd1b6bba9224cd54779dd8b22b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d13a84f648308921649eab9ae8359fc4eb9bb96ce098dd32b1a7e23640c250cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsPrestack/Variant470b75a20ab5cb1de6de12444a84d4b50352cbd1b6bba9224cd54779dd8b22b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e690ebd8-dd2c-9d07-fb0c-397d7c91d193`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullHom_pullHom
    ⦃X₁ X₂ : C⦄ ⦃M₁ : F.obj (.mk (op X₁))⦄ ⦃M₂ : F.obj (.mk (op X₂))⦄
    ⦃Y : C⦄ ⦃f₁ : Y ⟶ X₁⦄ ⦃f₂ : Y ⟶ X₂⦄
    (φ : (F.map f₁.op.toLoc).toFunctor.obj M₁ ⟶ (F.map f₂.op.toLoc).toFunctor.obj M₂) ⦃Y' : C⦄
    (g : Y' ⟶ Y) (gf₁ : Y' ⟶ X₁) (gf₂ : Y' ⟶ X₂) ⦃Y'' : C⦄ (g' : Y'' ⟶ Y') (g'f₁ : Y'' ⟶ X₁)
    (g'f₂ : Y'' ⟶ X₂) (hgf₁ : g ≫ f₁ = gf₁ := by cat_disch) (hgf₂ : g ≫ f₂ = gf₂ := by cat_disch)
    (hg'f₁ : g' ≫ gf₁ = g'f₁ := by cat_disch) (hg'f₂ : g' ≫ gf₂ = g'f₂ := by cat_disch) :
    pullHom (pullHom φ g gf₁ gf₂ hgf₁ hgf₂) g' g'f₁ g'f₂ hg'f₁ hg'f₂ =
      pullHom φ (g' ≫ g) g'f₁ g'f₂ := by
  dsimp [pullHom]
  rw [Functor.map_comp_assoc, Functor.map_comp_assoc,
    F.mapComp'_inv_whiskerRight_mapComp'₀₂₃_inv_app _ _ _ _ _ _ _ rfl (by aesop),
    F.mapComp'₀₂₃_hom_comp_mapComp'_hom_whiskerRight_app_assoc _ _ _ _ _ _ _ rfl (by aesop)]
  simp [mapComp'_inv_naturality_assoc, ← reassoc_of% Cat.Hom₂.comp_app]

end LocallyDiscreteOpToCat

open LocallyDiscreteOpToCat

section

variable (F) {S : C} (M N : F.obj (.mk (op S)))

/-- If `F` is a pseudofunctor from `Cᵒᵖ` to `Cat`, and `M` and `N` are objects in
`F.obj (.mk (op S))`, this is the presheaf of morphisms from `M` to `N`: it sends
an object `T : Over S` corresponding to a morphism `p : X ⟶ S` to the type
of morphisms $p^* M ⟶ p^* N$. -/
@[simps, implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsPrestack/Variant470b75a20ab5cb1de6de12444a84d4b50352cbd1b6bba9224cd54779dd8b22b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsPrestack/Variant470b75a20ab5cb1de6de12444a84d4b50352cbd1b6bba9224cd54779dd8b22b2.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4bcb815a22397defc42c31c4f408d400f2dc614` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
