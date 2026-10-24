# isLocallyBijective_iff_isIso'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6f4c06f-55bb-be76-cb60-9e35ad3c4085",
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
  "slug": "islocallybijective-iff-isiso--8b5f052e44069ef2d05c7037",
  "source": {
    "blob": "8fa44d9742d98e4cd13f521241001aa6b50ec98a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b5f052e44069ef2d05c703723378cbbf319c2500703b5338d3bf1f4cf72639f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6f4c06f-55bb-be76-cb60-9e35ad3c4085`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isLocallyBijective_iff_isIso' :
    IsLocallyInjective f ∧ IsLocallySurjective f ↔ IsIso f := by
  constructor
  · rintro ⟨h₁, _⟩
    rw [isLocallyInjective_iff_injective] at h₁
    suffices ∀ (X : Cᵒᵖ), Function.Surjective (f.val.app X) by
      rw [← isIso_iff_of_reflects_iso _ (sheafToPresheaf _ _), NatTrans.isIso_iff_isIso_app]
      intro X
      rw [isIso_iff_bijective]
      exact ⟨h₁ X, this X⟩
    intro X s
    have H := (isSheaf_iff_isSheaf_of_type J F.val).1 F.cond _ (Presheaf.imageSieve_mem J f.val s)
    let t : Presieve.FamilyOfElements F.val (Presheaf.imageSieve f.val s).arrows :=
      fun Y g hg => Presheaf.localPreimage f.val s g hg
    have ht : t.Compatible := by
      intro Y₁ Y₂ W g₁ g₂ f₁ f₂ hf₁ hf₂ w
      apply h₁
      have eq₁ := FunctorToTypes.naturality _ _ f.val g₁.op (t f₁ hf₁)
      have eq₂ := FunctorToTypes.naturality _ _ f.val g₂.op (t f₂ hf₂)
      have eq₃ := congr_arg (G.val.map g₁.op) (Presheaf.app_localPreimage f.val s _ hf₁)
      have eq₄ := congr_arg (G.val.map g₂.op) (Presheaf.app_localPreimage f.val s _ hf₂)
      refine eq₁.trans (eq₃.trans (Eq.trans ?_ (eq₄.symm.trans eq₂.symm)))
      erw [← FunctorToTypes.map_comp_apply, ← FunctorToTypes.map_comp_apply]
      simp only [← op_comp, w]
    refine ⟨H.amalgamate t ht, ?_⟩
    · apply (Presieve.isSeparated_of_isSheaf _ _
        ((isSheaf_iff_isSheaf_of_type J G.val).1 G.cond) _
        (Presheaf.imageSieve_mem J f.val s)).ext
      intro Y g hg
      rw [← FunctorToTypes.naturality, H.valid_glue ht]
      exact Presheaf.app_localPreimage f.val s g hg
  · intro
    constructor <;> infer_instance

end

section

variable {F G : Sheaf J A} (f : F ⟶ G) [(forget A).ReflectsIsomorphisms]
  [J.HasSheafCompose (forget A)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant4df47cf10909333a15154521a8def035dd90b6d4322fee61cecf650818e0975b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fa44d9742d98e4cd13f521241001aa6b50ec98a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
