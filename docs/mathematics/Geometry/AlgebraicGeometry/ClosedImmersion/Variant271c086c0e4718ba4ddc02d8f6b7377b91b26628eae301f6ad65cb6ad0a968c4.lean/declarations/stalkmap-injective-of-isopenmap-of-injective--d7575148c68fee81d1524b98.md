# stalkMap_injective_of_isOpenMap_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b88620f29bbb2310122e10a2b056d6f162db23d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a2f1567-c28b-9897-88c7-34a4dd70238e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:197ce0c8-4cde-959c-797d-33245cde558f",
  "kind": "lemma",
  "lexical_name": "stalkMap_injective_of_isOpenMap_of_injective",
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
  "slug": "stalkmap-injective-of-isopenmap-of-injective--d7575148c68fee81d1524b98",
  "source": {
    "blob": "2b88620f29bbb2310122e10a2b056d6f162db23d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 244,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7575148c68fee81d1524b98ed1e082b987289dd9e67038c20995a045d5a66d1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:197ce0c8-4cde-959c-797d-33245cde558f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stalkMap_injective_of_isOpenMap_of_injective [CompactSpace X]
    (hfopen : IsOpenMap f.base) (hfinj₁ : Function.Injective f.base)
    (hfinj₂ : Function.Injective (f.appTop)) (x : X) :
    Function.Injective (f.stalkMap x) := by
  let φ : Γ(Y, ⊤) ⟶ Γ(X, ⊤) := f.appTop
  let 𝒰 : X.OpenCover := X.affineCover.finiteSubcover
  have (i : 𝒰.J) : IsAffine (𝒰.obj i) := Scheme.isAffine_affineCover X _
  let res (i : 𝒰.J) : Γ(X, ⊤) ⟶ Γ(𝒰.obj i, ⊤) := (𝒰.map i).appTop
  refine stalkMap_injective_of_isAffine _ _ (fun (g : Γ(Y, ⊤)) h ↦ ?_)
  rw [TopCat.Presheaf.Γgerm, Scheme.stalkMap_germ_apply] at h
  obtain ⟨U, w, (hx : x ∈ U), hg⟩ :=
    X.toRingedSpace.exists_res_eq_zero_of_germ_eq_zero ⊤ (φ g) ⟨x, trivial⟩ h
  obtain ⟨_, ⟨s, rfl⟩, hyv, bsle⟩ := Opens.isBasis_iff_nbhd.mp (isBasis_basicOpen Y)
    (show f.base x ∈ ⟨f.base '' U.carrier, hfopen U.carrier U.is_open'⟩ from ⟨x, by simpa⟩)
  let W (i : 𝒰.J) : TopologicalSpace.Opens (𝒰.obj i) := (𝒰.obj i).basicOpen ((res i) (φ s))
  have hwle (i : 𝒰.J) : W i ≤ (𝒰.map i)⁻¹ᵁ U := by
    show (𝒰.obj i).basicOpen ((𝒰.map i ≫ f).appTop s) ≤ _
    rw [← Scheme.preimage_basicOpen_top, Scheme.comp_coeBase, Opens.map_comp_obj]
    refine Scheme.Hom.preimage_le_preimage_of_le _
      (le_trans (f.preimage_le_preimage_of_le bsle) (le_of_eq ?_))
    simp [Set.preimage_image_eq _ hfinj₁]
  have h0 (i : 𝒰.J) : (𝒰.map i).appLE _ (W i) (by simp) (φ g) = 0 := by
    rw [← Scheme.Hom.appLE_map _ _ (homOfLE <| hwle i).op, ← Scheme.Hom.map_appLE _ le_rfl w.op]
    simp only [CommRingCat.comp_apply]
    rw [hg]
    simp only [map_zero]
  have h1 (i : 𝒰.J) : ∃ n, (res i) (φ (s ^ n * g)) = 0 := by
    obtain ⟨n, hn⟩ := exists_of_res_zero_of_qcqs_of_top (s := ((res i) (φ s))) (h0 i)
    exact ⟨n, by rwa [map_mul, map_mul, map_pow, map_pow]⟩
  have h2 : ∃ n, ∀ i, (res i) (φ (s ^ n * g)) = 0 := by
    choose fn hfn using h1
    refine ⟨Finset.sup Finset.univ fn, fun i ↦ ?_⟩
    rw [map_mul, map_pow, map_mul, map_pow]
    simp only [map_mul, map_pow, map_mul, map_pow] at hfn
    apply pow_mul_eq_zero_of_le (Finset.le_sup (Finset.mem_univ i)) (hfn i)
  obtain ⟨n, hn⟩ := h2
  apply germ_eq_zero_of_pow_mul_eq_zero (U := ⊤) ⟨f.base x, trivial⟩ hyv
  rw [RingHom.injective_iff_ker_eq_bot, RingHom.ker_eq_bot_iff_eq_zero] at hfinj₂
  exact hfinj₂ _ (Scheme.zero_of_zero_cover _ _ hn)

namespace IsClosedImmersion

/-- If `f` is a closed immersion with affine target such that the induced map on global
sections is injective, `f` is an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b88620f29bbb2310122e10a2b056d6f162db23d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
