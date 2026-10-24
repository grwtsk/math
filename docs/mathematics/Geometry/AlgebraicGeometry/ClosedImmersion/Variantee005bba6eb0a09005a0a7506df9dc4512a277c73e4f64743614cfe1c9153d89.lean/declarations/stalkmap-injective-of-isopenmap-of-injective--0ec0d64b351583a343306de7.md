# stalkMap_injective_of_isOpenMap_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20cf2925-49f0-57aa-ad96-8034acd2b873",
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
  "slug": "stalkmap-injective-of-isopenmap-of-injective--0ec0d64b351583a343306de7",
  "source": {
    "blob": "5f72643b97e88cc91d65f71d49f4a10b71c21bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 267,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ec0d64b351583a343306de712bdf482ea9322bcc915e096425ff63fccf530f3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20cf2925-49f0-57aa-ad96-8034acd2b873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stalkMap_injective_of_isOpenMap_of_injective [CompactSpace X]
    (hfopen : IsOpenMap f) (hfinj₁ : Function.Injective f)
    (hfinj₂ : Function.Injective f.appTop) (x : X) :
    Function.Injective (f.stalkMap x) := by
  let φ : Γ(Y, ⊤) ⟶ Γ(X, ⊤) := f.appTop
  let 𝒰 : X.OpenCover := X.affineCover.finiteSubcover
  let res (i : 𝒰.I₀) : Γ(X, ⊤) ⟶ Γ(𝒰.X i, ⊤) := (𝒰.f i).appTop
  refine stalkMap_injective_of_isAffine _ _ (fun (g : Γ(Y, ⊤)) h ↦ ?_)
  rw [TopCat.Presheaf.Γgerm, Scheme.Hom.germ_stalkMap_apply] at h
  obtain ⟨U, w, (hx : x ∈ U), hg⟩ :=
    X.toRingedSpace.exists_res_eq_zero_of_germ_eq_zero ⊤ (φ g) ⟨x, trivial⟩ h
  obtain ⟨_, ⟨s, rfl⟩, hyv, bsle⟩ := Opens.isBasis_iff_nbhd.mp (isBasis_basicOpen Y)
    (show f x ∈ ⟨f '' U.carrier, hfopen U.carrier U.is_open'⟩ from ⟨x, by simpa⟩)
  let W (i : 𝒰.I₀) : TopologicalSpace.Opens (𝒰.X i) := (𝒰.X i).basicOpen ((res i) (φ s))
  have hwle (i : 𝒰.I₀) : W i ≤ (𝒰.f i) ⁻¹ᵁ U := by
    change (𝒰.X i).basicOpen ((𝒰.f i ≫ f).appTop s) ≤ _
    rw [← Scheme.preimage_basicOpen_top, Scheme.Hom.comp_base, Opens.map_comp_obj]
    refine Scheme.Hom.preimage_mono _
      (le_trans (f.preimage_mono bsle) (le_of_eq ?_))
    simp [Set.preimage_image_eq _ hfinj₁]
  have h0 (i : 𝒰.I₀) : (𝒰.f i).appLE _ (W i) (by simp) (φ g) = 0 := by
    rw [← Scheme.Hom.appLE_map _ ((Opens.map _).map w).le (homOfLE <| hwle i).op,
      ← Scheme.Hom.map_appLE _ le_rfl w.op]
    simp only [CommRingCat.comp_apply]
    rw [hg]
    simp only [map_zero]
  have h1 (i : 𝒰.I₀) : ∃ n, (res i) (φ (s ^ n * g)) = 0 := by
    obtain ⟨n, hn⟩ := exists_of_res_zero_of_qcqs_of_top (s := ((res i) (φ s))) (h0 i)
    exact ⟨n, by rwa [map_mul, map_mul, map_pow, map_pow]⟩
  have h2 : ∃ n, ∀ i, (res i) (φ (s ^ n * g)) = 0 := by
    choose fn hfn using h1
    refine ⟨Finset.sup Finset.univ fn, fun i ↦ ?_⟩
    rw [map_mul, map_pow, map_mul, map_pow]
    simp only [map_mul, map_pow, map_mul, map_pow] at hfn
    apply pow_mul_eq_zero_of_le (Finset.le_sup (Finset.mem_univ i)) (hfn i)
  obtain ⟨n, hn⟩ := h2
  apply germ_eq_zero_of_pow_mul_eq_zero (U := ⊤) ⟨f x, trivial⟩ hyv
  rw [RingHom.injective_iff_ker_eq_bot, RingHom.ker_eq_bot_iff_eq_zero] at hfinj₂
  exact hfinj₂ _ (Scheme.zero_of_zero_cover _ _ hn)

namespace IsClosedImmersion

set_option backward.isDefEq.respectTransparency.types false in
/-- If `f` is a closed immersion with affine target such that the induced map on global
sections is injective, `f` is an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f72643b97e88cc91d65f71d49f4a10b71c21bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
