# isLocallyBijective_iff_isIso'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3110ff5-b0a9-7f06-9a49-4f256096be13",
  "kind": "lemma",
  "lexical_name": "isLocallyBijective_iff_isIso'",
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
  "slug": "islocallybijective-iff-isiso--e2148443428a1ef94a3566cf",
  "source": {
    "blob": "86ca1c07c93e18b789d86c6f8f5e9c29c6cbd623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2148443428a1ef94a3566cf55f43630438d992c1c2e8293bc47c95983327385",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3110ff5-b0a9-7f06-9a49-4f256096be13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isLocallyBijective_iff_isIso' :
    IsLocallyInjective f ∧ IsLocallySurjective f ↔ IsIso f := by
  constructor
  · rintro ⟨h₁, _⟩
    rw [isLocallyInjective_iff_injective] at h₁
    suffices ∀ (X : Cᵒᵖ), Function.Surjective (f.hom.app X) by
      rw [← isIso_iff_of_reflects_iso _ (sheafToPresheaf _ _), NatTrans.isIso_iff_isIso_app]
      intro X
      rw [isIso_iff_bijective]
      exact ⟨h₁ X, this X⟩
    intro X s
    have H := (isSheaf_iff_isSheaf_of_type J F.obj).1 F.property _
      (Presheaf.imageSieve_mem J f.hom s)
    let t : Presieve.FamilyOfElements F.obj (Presheaf.imageSieve f.hom s).arrows :=
      fun Y g hg => Presheaf.localPreimage f.hom s g hg
    have ht : t.Compatible := by
      intro Y₁ Y₂ W g₁ g₂ f₁ f₂ hf₁ hf₂ w
      apply h₁
      have eq₁ := NatTrans.naturality_apply f.hom g₁.op (t f₁ hf₁)
      have eq₂ := NatTrans.naturality_apply f.hom g₂.op (t f₂ hf₂)
      have eq₃ := congr_arg (G.obj.map g₁.op) (Presheaf.app_localPreimage f.hom s _ hf₁)
      have eq₄ := congr_arg (G.obj.map g₂.op) (Presheaf.app_localPreimage f.hom s _ hf₂)
      refine eq₁.trans (eq₃.trans (Eq.trans ?_ (eq₄.symm.trans eq₂.symm)))
      rw [← Functor.map_comp_apply, ← Functor.map_comp_apply]
      simp only [← op_comp, w]
    refine ⟨H.amalgamate t ht, ?_⟩
    · apply (((isSheaf_iff_isSheaf_of_type J G.obj).1 G.property).isSeparated _
        (Presheaf.imageSieve_mem J f.hom s)).ext
      intro Y g hg
      rw [← NatTrans.naturality_apply, H.valid_glue ht]
      exact Presheaf.app_localPreimage f.hom s g hg
  · intro
    constructor <;> infer_instance

end

section

variable {F G : Sheaf J A} (f : F ⟶ G) [(forget A).ReflectsIsomorphisms]
  [J.HasSheafCompose (forget A)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant555688d023137fa9e1b1f83bdf408b06be4aba184ecca27245a0f3565f673972.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86ca1c07c93e18b789d86c6f8f5e9c29c6cbd623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
