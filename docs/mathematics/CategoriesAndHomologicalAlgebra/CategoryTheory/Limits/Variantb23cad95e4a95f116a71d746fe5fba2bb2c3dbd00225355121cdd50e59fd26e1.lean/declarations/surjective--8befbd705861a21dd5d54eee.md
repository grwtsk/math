# surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6bae0766b4de6f194f1a43789929cfed51ead3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16c3e878-ac8b-730e-720a-610d68c39f3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af0702c6-ff94-0a55-b409-b03b9f782b04",
  "kind": "lemma",
  "lexical_name": "surjective",
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
  "slug": "surjective--8befbd705861a21dd5d54eee",
  "source": {
    "blob": "a6bae0766b4de6f194f1a43789929cfed51ead3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8befbd705861a21dd5d54eee1799b8ee88bcdf9657861a3fba01310840dbdad3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af0702c6-ff94-0a55-b409-b03b9f782b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective (x : c.pt.obj cX.pt) :
    ∃ (j : J) (x' : c.pt.obj (X.obj j)), x = (c.pt.mapCocone cX).ι.app j x' := by
  have := isFiltered_of_isCardinalDirected J κ
  obtain ⟨y, hy⟩ := (Types.isLimitEquivSections (hc cX.pt)).symm.surjective x
  obtain ⟨j₀, z, hz⟩ : ∃ (j₀ : J) (z : (k : K) → (F.obj k).obj (X.obj j₀)),
      ∀ (k : K), y.1 k = (F.obj k).map (cX.ι.app j₀) (z k) := by
    have H (k : K) := Types.jointly_surjective_of_isColimit (hF k) (y.1 k)
    let j (k : K) : J := (H k).choose
    let z (k : K) : (F.obj k).obj (X.obj (j k)) := (H k).choose_spec.choose
    have hz (k : K) : (F.obj k).map (cX.ι.app (j k)) (z k) = y.1 k :=
      (H k).choose_spec.choose_spec
    exact ⟨IsCardinalFiltered.max j (hasCardinalLT_of_hasCardinalLT_arrow hK),
      fun k ↦ (F.obj k).map (X.map (IsCardinalFiltered.toMax j _ k)) (z k),
        fun k ↦ by rw [← hz, ← FunctorToTypes.map_comp_apply, cX.w]⟩
  obtain ⟨j₁, α, hα⟩ : ∃ (j₁ : J) (α : j₀ ⟶ j₁), ∀ ⦃k k' : K⦄ (φ : k ⟶ k'),
      (F.obj k').map (X.map α) ((F.map φ).app _ (z k)) =
        (F.obj k').map (X.map α) (z k') := by
    have H {k k' : K} (φ : k ⟶ k') :=
      (Types.FilteredColimit.isColimit_eq_iff' (ht := hF k')
        (x := (F.map φ).app _ (z k)) (y := z k')).1 (by
          dsimp
          simpa only [← FunctorToTypes.naturality, ← hz] using y.2 φ)
    let j {k k' : K} (φ : k ⟶ k') : J := (H φ).choose
    let g {k k' : K} (φ : k ⟶ k') : j₀ ⟶ j φ := (H φ).choose_spec.choose
    have hg {k k' : K} (φ : k ⟶ k') :
        (F.obj k').map (X.map (g φ)) ((F.map φ).app _ (z k)) =
          (F.obj k').map (X.map (g φ)) (z k') := (H φ).choose_spec.choose_spec
    obtain ⟨j₁, α, β, hα⟩ : ∃ (j₁ : J) (α : j₀ ⟶ j₁)
        (β : ∀ ⦃k k' : K⦄ (φ : k ⟶ k'), j φ ⟶ j₁),
        ∀ ⦃k k' : K⦄ (φ : k ⟶ k'), α = g φ ≫ β φ := by
      let j'' (f : Arrow K) : J := j f.hom
      let ψ (f : Arrow K) : j₀ ⟶ IsCardinalFiltered.max j'' hK :=
        g f.hom ≫ IsCardinalFiltered.toMax j'' hK f
      refine ⟨IsCardinalFiltered.coeq ψ hK, IsCardinalFiltered.toCoeq ψ hK,
        fun k k' φ ↦ IsCardinalFiltered.toMax j'' hK φ ≫ IsCardinalFiltered.coeqHom ψ hK,
        fun k k' φ ↦ ?_⟩
      simpa [ψ] using (IsCardinalFiltered.coeq_condition ψ hK (Arrow.mk φ)).symm
    exact ⟨j₁, α, fun k k' φ ↦ by simp [hα φ, hg]⟩
  let s : (F ⋙ (evaluation C (Type w')).obj (X.obj j₁)).sections :=
    { val k := (F.obj k).map (X.map α) (z k)
      property {k k'} φ := by
        dsimp
        rw [FunctorToTypes.naturality, ← hα φ] }
  refine ⟨j₁, (Types.isLimitEquivSections (hc (X.obj j₁))).symm s, ?_⟩
  apply (Types.isLimitEquivSections (hc cX.pt)).injective
  rw [← hy, Equiv.apply_symm_apply]
  ext k
  have h₁ := Types.isLimitEquivSections_apply (hc cX.pt) k
    (c.pt.map (cX.ι.app j₁) ((Types.isLimitEquivSections (hc (X.obj j₁))).symm s))
  have h₂ := Types.isLimitEquivSections_symm_apply (hc (X.obj j₁)) s k
  dsimp at h₁ h₂ ⊢
  rw [h₁, hz, FunctorToTypes.naturality, h₂, ← FunctorToTypes.map_comp_apply, cX.w]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bae0766b4de6f194f1a43789929cfed51ead3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
