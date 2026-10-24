# Scheme.exists_isQuasiAffine_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e6c3b48-9a9b-138e-3f1d-16ba40926334",
  "kind": "lemma",
  "lexical_name": "Scheme.exists_isQuasiAffine_of_isLimit",
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
  "slug": "scheme-exists-isquasiaffine-of-islimit--c2ef47f2231e8cfb7846bd18",
  "source": {
    "blob": "3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1041,
    "line": 988,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2ef47f2231e8cfb7846bd18f87ade63c9821d33e532d53cd306d3fe6ae4437d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e6c3b48-9a9b-138e-3f1d-16ba40926334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 988–1041.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.exists_isQuasiAffine_of_isLimit [IsCofiltered I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)]
    [∀ (i : I), CompactSpace (D.obj i)]
    [∀ (i : I), QuasiSeparatedSpace (D.obj i)]
    [IsQuasiAffine c.pt] :
    ∃ i, IsQuasiAffine (D.obj i) := by
  classical
  have (x : c.pt) : ∃ (i : I) (f : Γ(D.obj i, ⊤)),
      IsAffineOpen (Scheme.basicOpen _ f) ∧ c.π.app i x ∈ (Scheme.basicOpen _ f) := by
    obtain ⟨i⟩ := IsCofiltered.nonempty (C := I)
    obtain ⟨_, ⟨U, hU, rfl⟩, hxU, -⟩ := (D.obj i).isBasis_affineOpens.exists_subset_of_mem_open
      (Set.mem_univ (c.π.app i x)) isOpen_univ
    obtain ⟨_, ⟨_, ⟨r, hr, rfl⟩, rfl⟩, hxr, hrU⟩ :=
      (IsQuasiAffine.isBasis_basicOpen c.pt).exists_subset_of_mem_open hxU (c.π.app i ⁻¹ᵁ U).isOpen
    obtain ⟨j, r, rfl⟩ := exists_appTop_π_eq_of_isLimit D c hc r
    obtain ⟨k, fki, fkj, -⟩ := IsCofilteredOrEmpty.cone_objs i j
    obtain ⟨l, flk, hl⟩ := exists_map_preimage_le_map_preimage D c hc (isCompact_basicOpen _
      isCompact_univ ((D.map fkj).appTop r)) (V := D.map fki ⁻¹ᵁ U) (by
        rwa [← preimage_basicOpen_top, ← Hom.comp_preimage, ← Hom.comp_preimage,
          c.w, c.w, preimage_basicOpen_top])
    refine ⟨l, (D.map (flk ≫ fkj)).appTop r, ?_, ?_⟩
    · convert!
      (hU.preimage (D.map (flk ≫ fki))).basicOpen
        ((D.obj _).presheaf.map (homOfLE le_top).op ((D.map (flk ≫ fkj)).appTop r)) using 1
      rwa [Scheme.basicOpen_res, eq_comm, inf_eq_right, Functor.map_comp,
        elementwise_of% Scheme.Hom.comp_appTop, ← Scheme.preimage_basicOpen_top, Functor.map_comp,
        Scheme.Hom.comp_preimage]
    · change x ∈ c.π.app l ⁻¹ᵁ (D.obj l).basicOpen _
      rwa [Scheme.preimage_basicOpen_top, ← elementwise_of% Scheme.Hom.comp_appTop, Cone.w]
  choose i f hf hi using this
  obtain ⟨σ, hσ⟩ := CompactSpace.elim_nhds_subcover
    (fun x ↦ (((c.π.app (i x)) ⁻¹ᵁ (D.obj (i x)).basicOpen (f x)).1))
    (fun x ↦ ((c.π.app (i x)) ⁻¹ᵁ (D.obj (i x)).basicOpen (f x)).2.mem_nhds (by exact hi x))
  choose σi hσiσ hσi using fun x ↦ Set.mem_iUnion₂.mp (hσ.ge (Set.mem_univ x))
  obtain ⟨j, fj⟩ := IsCofiltered.inf_objs_exists (σ.image i)
  replace fj := fun i h ↦ (@fj i h).some
  obtain ⟨k, fkj, hk⟩ := exists_map_eq_top D c hc
    (⨆ k, D.map (fj _ (Finset.mem_image_of_mem i (hσiσ k))) ⁻¹ᵁ (D.obj (i _)).basicOpen (f _)) (by
      refine top_le_iff.mp fun x _ ↦ TopologicalSpace.Opens.mem_iSup.mpr ⟨x, ?_⟩
      change (c.π.app j ≫ D.map _).base x ∈ (D.obj (i (σi x))).basicOpen (f (σi x))
      rw [Cone.w]
      exact hσi _)
  refine ⟨k, .of_forall_exists_mem_basicOpen _ fun x ↦ ?_⟩
  obtain ⟨y, hy⟩ := TopologicalSpace.Opens.mem_iSup.mp (hk.ge (Set.mem_univ x))
  use (D.map fkj).appTop ((D.map (fj _ (Finset.mem_image_of_mem i (hσiσ y)))).appTop (f _))
  rw [← Scheme.preimage_basicOpen_top, ← Scheme.preimage_basicOpen_top]
  exact ⟨((hf _).preimage _).preimage _, hy⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
include hc in
/-- Suppose `{ Xᵢ }` is an inverse system of qcqs schemes with affine transition maps.
If `lim Xᵢ` is affine, then some `Xᵢ` is affine. -/
@[stacks 01Z6]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean#L988).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
