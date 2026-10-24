# complete_distinguished_triangle_morphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ee4c786-9c43-06bc-1bd0-06dbeaa56d0c",
  "kind": "lemma",
  "lexical_name": "complete_distinguished_triangle_morphism",
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
  "slug": "complete-distinguished-triangle-morphism--f2f5ce07bb3c345f3bae3433",
  "source": {
    "blob": "b4fa7490470e73ae631fc62deb33058c8b258742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f5ce07bb3c345f3bae343370d81fc2c00e3db021d7d4b0c14cde72579369e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ee4c786-9c43-06bc-1bd0-06dbeaa56d0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma complete_distinguished_triangle_morphism (T₁ T₂ : Triangle D)
    (hT₁ : T₁ ∈ L.essImageDistTriang) (hT₂ : T₂ ∈ L.essImageDistTriang)
    (a : T₁.obj₁ ⟶ T₂.obj₁) (b : T₁.obj₂ ⟶ T₂.obj₂) (fac : T₁.mor₁ ≫ b = a ≫ T₂.mor₁) :
    ∃ c, T₁.mor₂ ≫ c = b ≫ T₂.mor₂ ∧ T₁.mor₃ ≫ a⟦1⟧' = c ≫ T₂.mor₃ := by
  refine L.complete_distinguished_essImageDistTriang_morphism ?_ T₁ T₂ hT₁ hT₂ a b fac
  clear a b fac hT₁ hT₂ T₁ T₂
  intro T₁ T₂ hT₁ hT₂ a b fac
  obtain ⟨α, hα⟩ := exists_leftFraction L W a
  obtain ⟨β, hβ⟩ := (MorphismProperty.RightFraction.mk α.s α.hs T₂.mor₁).exists_leftFraction
  obtain ⟨γ, hγ⟩ := exists_leftFraction L W (b ≫ L.map β.s)
  have := inverts L W β.s β.hs
  have := inverts L W γ.s γ.hs
  dsimp at hβ
  obtain ⟨Z₂, σ, hσ, fac⟩ := (MorphismProperty.map_eq_iff_postcomp L W
    (α.f ≫ β.f ≫ γ.s) (T₁.mor₁ ≫ γ.f)).1 (by
      rw [← cancel_mono (L.map β.s), assoc, assoc, hγ, ← cancel_mono (L.map γ.s),
        assoc, assoc, assoc, hα, MorphismProperty.LeftFraction.map_comp_map_s,
        ← Functor.map_comp] at fac
      rw [fac, ← Functor.map_comp_assoc, hβ, Functor.map_comp, Functor.map_comp,
        Functor.map_comp, assoc, MorphismProperty.LeftFraction.map_comp_map_s_assoc])
  simp only [assoc] at fac
  obtain ⟨Y₃, g, h, hT₃⟩ := Pretriangulated.distinguished_cocone_triangle (β.f ≫ γ.s ≫ σ)
  let T₃ := Triangle.mk (β.f ≫ γ.s ≫ σ) g h
  change T₃ ∈ distTriang C at hT₃
  have hβγσ : W (β.s ≫ γ.s ≫ σ) := W.comp_mem _ _ β.hs (W.comp_mem _ _ γ.hs hσ)
  obtain ⟨ψ₃, hψ₃, hψ₁, hψ₂⟩ := MorphismProperty.compatible_with_triangulation
    T₂ T₃ hT₂ hT₃ α.s (β.s ≫ γ.s ≫ σ) α.hs hβγσ (by dsimp [T₃]; rw [reassoc_of% hβ])
  let ψ : T₂ ⟶ T₃ := Triangle.homMk _ _ α.s (β.s ≫ γ.s ≫ σ) ψ₃
    (by dsimp [T₃]; rw [reassoc_of% hβ]) hψ₁ hψ₂
  have : IsIso (L.mapTriangle.map ψ) := Triangle.isIso_of_isIsos _
    (inverts L W α.s α.hs) (inverts L W _ hβγσ) (inverts L W ψ₃ hψ₃)
  refine ⟨L.mapTriangle.map (completeDistinguishedTriangleMorphism T₁ T₃ hT₁ hT₃ α.f
      (γ.f ≫ σ) fac.symm) ≫ inv (L.mapTriangle.map ψ), ?_, ?_⟩
  · rw [← cancel_mono (L.mapTriangle.map ψ).hom₁, ← comp_hom₁, assoc, IsIso.inv_hom_id, comp_id]
    dsimp [ψ]
    rw [hα, MorphismProperty.LeftFraction.map_comp_map_s]
  · rw [← cancel_mono (L.mapTriangle.map ψ).hom₂, ← comp_hom₂, assoc, IsIso.inv_hom_id, comp_id]
    dsimp [ψ]
    simp only [Functor.map_comp, reassoc_of% hγ,
      MorphismProperty.LeftFraction.map_comp_map_s_assoc]

variable [HasZeroObject D] [Preadditive D] [∀ (n : ℤ), (shiftFunctor D n).Additive] [L.Additive]

/-- The pretriangulated structure on the localized category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4fa7490470e73ae631fc62deb33058c8b258742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
