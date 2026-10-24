# fromOfGlobalSections_preimage_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a32757c0-70c3-8c9f-09a1-d2bd36b41324",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:659c731f-932b-29da-2259-753a7f463af4",
  "kind": "lemma",
  "lexical_name": "fromOfGlobalSections_preimage_basicOpen",
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
  "slug": "fromofglobalsections-preimage-basicopen--12a8c9024344834f790009da",
  "source": {
    "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 458,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a8c9024344834f790009da2d1b4927c13026ac31adee7634546e1e22139000",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:659c731f-932b-29da-2259-753a7f463af4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fromOfGlobalSections_preimage_basicOpen {r : A} {n : ℕ} (hn : 0 < n) (hr : r ∈ 𝒜 n) :
    fromOfGlobalSections 𝒜 f hf ⁻¹ᵁ basicOpen 𝒜 r = X.basicOpen (f r) := by
  apply le_antisymm
  · intro x hx
    obtain ⟨i, x, rfl⟩ := (openCoverOfMapIrrelevantEqTop 𝒜 f hf).exists_eq x
    rw [← SetLike.mem_coe] at hx -- TODO : mem version of TopologicalSpace.Opens.map_coe
    simp only [TopologicalSpace.Opens.map_coe, Set.mem_preimage, SetLike.mem_coe,
      ← Scheme.Hom.comp_apply, fromOfGlobalSections, Scheme.Cover.ι_glueMorphisms] at hx
    simp only [openCoverOfMapIrrelevantEqTop,
      toBasicOpenOfGlobalSections, Scheme.isoOfEq_inv, Category.assoc, basicOpenIsoSpec_inv_ι] at hx
    simp only [Scheme.Hom.comp_base, Scheme.homOfLE_base, homOfLE_leOfHom, TopCat.hom_comp,
      ContinuousMap.comp_assoc, ContinuousMap.comp_apply, morphismRestrict_base,
      TopologicalSpace.Opens.carrier_eq_coe] at hx
    rw [← SetLike.mem_coe, ← Set.mem_preimage, ← TopologicalSpace.Opens.map_coe,
      Proj.awayι_preimage_basicOpen (𝒜 := 𝒜) i.2.2.2 i.2.2.1 hr hn,
      ← Set.mem_preimage, ← TopologicalSpace.Opens.map_coe, ← Function.Injective.mem_set_image
      (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, ⊤) _))).isOpenEmbedding.injective,
      ← Scheme.Hom.comp_apply, basicOpenIsoSpecAway, IsOpenImmersion.isoOfRangeEq_hom_fac] at hx
    rw [← SetLike.mem_coe, ← Scheme.toSpecΓ_preimage_basicOpen, TopologicalSpace.Opens.map_coe,
        Set.mem_preimage]
    refine Set.mem_of_subset_of_mem (Set.image_subset_iff.mpr ?_) hx
    change PrimeSpectrum.basicOpen _ ≤ PrimeSpectrum.basicOpen _
    simp only [CommRingCat.ofHom_comp, CommRingCat.hom_comp, CommRingCat.hom_ofHom,
      RingHom.coe_comp, Function.comp_apply, HomogeneousLocalization.algebraMap_apply,
      HomogeneousLocalization.Away.val_mk, Localization.mk_eq_mk', IsLocalization.map_mk', map_pow,
      PrimeSpectrum.basicOpen_le_basicOpen_iff, IsLocalization.mk'_mem_iff]
    exact Ideal.pow_mem_of_mem _ (Ideal.le_radical (Ideal.mem_span_singleton_self _)) _ i.2.2.1
  · intro x hx
    let I : (openCoverOfMapIrrelevantEqTop 𝒜 f hf).I₀ := ⟨n, r, hn, hr⟩
    obtain ⟨x, rfl⟩ : x ∈ ((openCoverOfMapIrrelevantEqTop 𝒜 f hf).f I).opensRange := by
      simpa [openCoverOfMapIrrelevantEqTop] using hx
    rw [← SetLike.mem_coe] -- TODO : mem version of TopologicalSpace.Opens.map_coe
    simp only [TopologicalSpace.Opens.map_coe, Set.mem_preimage,
      ← Scheme.Hom.comp_apply, fromOfGlobalSections]
    simp

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080e13f6216621fcf7dadf6c41c4a97d56e1b78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
