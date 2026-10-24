# Hom.support_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fce5dd422aa2b418b7a04d1ca6a8d56487a994d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 723,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cf71f8a-0168-48fe-613f-a8a073fdc98e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18a364e0-ad27-8ae2-1c6d-36b47a4c4ada",
  "kind": "lemma",
  "lexical_name": "Hom.support_ker",
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
  "slug": "hom-support-ker--a0e2e183392694981c3efc16",
  "source": {
    "blob": "fce5dd422aa2b418b7a04d1ca6a8d56487a994d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 764,
    "line": 723,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0e2e183392694981c3efc163d6230200822645e1f2da37ad8d003ef4249a446",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18a364e0-ad27-8ae2-1c6d-36b47a4c4ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hom.support_ker (f : X.Hom Y) [QuasiCompact f] :
    f.ker.support = closure (Set.range f.base) := by
  apply subset_antisymm
  · wlog hY : ∃ S, Y = Spec S
    · intro x hx
      let 𝒰 := Y.affineCover
      obtain ⟨i, x, rfl⟩ := 𝒰.exists_eq x
      have inst : QuasiCompact (𝒰.pullbackHom f i) :=
        MorphismProperty.pullback_snd _ _ inferInstance
      have := this (𝒰.pullbackHom f i) ⟨_, rfl⟩
        ((coe_support_inter _ ⟨⊤, isAffineOpen_top _⟩).ge ⟨?_, Set.mem_univ x⟩).1
      · have := image_closure_subset_closure_image (f := (𝒰.map i).base)
          (𝒰.map i).base.1.2 (Set.mem_image_of_mem _ this)
        rw [← Set.range_comp, ← TopCat.coe_comp, ← Scheme.comp_base, 𝒰.pullbackHom_map] at this
        exact closure_mono (Set.range_comp_subset_range _ _) this
      · rw [← (𝒰.map i).isOpenEmbedding.injective.mem_set_image, Scheme.image_zeroLocus,
          ker_ideal_of_isPullback_of_isOpenImmersion f (𝒰.pullbackHom f i)
            ((𝒰.pullbackCover f).map i) (𝒰.map i) (IsPullback.of_hasPullback _ _).flip,
          Ideal.coe_comap, Set.image_preimage_eq]
        · exact ⟨((coe_support_inter _ _).le ⟨hx, by simp⟩).1, ⟨_, rfl⟩⟩
        · exact (ConcreteCategory.bijective_of_isIso ((𝒰.map i).appIso ⊤).inv).2
    obtain ⟨S, rfl⟩ := hY
    wlog hX : ∃ R, X = Spec R generalizing X S
    · intro x hx
      have inst : CompactSpace X := HasAffineProperty.iff_of_isAffine.mp ‹QuasiCompact f›
      let 𝒰 := X.affineCover.finiteSubcover
      obtain ⟨_, ⟨i, rfl⟩, hx⟩ := (f.iUnion_support_ker_openCover_map_comp 𝒰).ge hx
      have inst : QuasiCompact (𝒰.map i ≫ f) := HasAffineProperty.iff_of_isAffine.mpr
        (by show CompactSpace (Spec _); infer_instance)
      exact closure_mono (Set.range_comp_subset_range _ _) (this S (𝒰.map i ≫ f) ⟨_, rfl⟩ hx)
    obtain ⟨R, rfl⟩ := hX
    obtain ⟨φ, rfl⟩ := Spec.map_surjective f
    rw [ker_of_isAffine, coe_support_ofIdealTop, Spec_zeroLocus, ← Ideal.coe_comap,
      RingHom.comap_ker, ← PrimeSpectrum.closure_range_comap, ← CommRingCat.hom_comp,
      ← Scheme.ΓSpecIso_inv_naturality]
    simp only [CommRingCat.hom_comp, PrimeSpectrum.comap_comp, ContinuousMap.coe_comp]
    exact closure_mono (Set.range_comp_subset_range _ (Spec.map φ).base)
  · rw [(support _).isClosed.closure_subset_iff]
    exact f.range_subset_ker_support

/-- The functor taking a morphism into `Y` to its kernel as an ideal sheaf on `Y`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce5dd422aa2b418b7a04d1ca6a8d56487a994d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
