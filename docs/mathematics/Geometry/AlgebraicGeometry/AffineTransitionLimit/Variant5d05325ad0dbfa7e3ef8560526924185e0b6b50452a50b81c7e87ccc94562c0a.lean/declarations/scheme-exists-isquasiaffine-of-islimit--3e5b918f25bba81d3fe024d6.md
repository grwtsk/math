# Scheme.exists_isQuasiAffine_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 980,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d952f4db-0df9-34c9-bcf8-9f44acad8d9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b54649d-198b-0b3e-93f1-5590d05e0aef",
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
  "slug": "scheme-exists-isquasiaffine-of-islimit--3e5b918f25bba81d3fe024d6",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1033,
    "line": 980,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e5b918f25bba81d3fe024d663139ff101075d8258f0bf16dcbdd62baa4299f5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b54649d-198b-0b3e-93f1-5590d05e0aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 980–1033.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L980).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
