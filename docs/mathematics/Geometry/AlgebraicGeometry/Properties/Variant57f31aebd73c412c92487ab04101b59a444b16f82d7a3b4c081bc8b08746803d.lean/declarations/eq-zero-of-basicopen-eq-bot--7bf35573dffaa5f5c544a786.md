# eq_zero_of_basicOpen_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a77b0f6-a75b-c884-4fef-290e39d8ee94",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_basicOpen_eq_bot",
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
  "slug": "eq-zero-of-basicopen-eq-bot--7bf35573dffaa5f5c544a786",
  "source": {
    "blob": "dc765e828347772ace4c80a4b9424c2bb04b9a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 164,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bf35573dffaa5f5c544a786c7c6f31c8a42ea7c7acffa05b0773a3597f56ba5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a77b0f6-a75b-c884-4fef-290e39d8ee94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_basicOpen_eq_bot {X : Scheme} [hX : IsReduced X] {U : Opens X.carrier}
    (s : X.presheaf.obj (op U)) (hs : X.basicOpen s = ⊥) : s = 0 := by
  apply TopCat.Presheaf.section_ext X.sheaf U
  conv => intro x; rw [RingHom.map_zero]
  refine' (@reduce_to_affine_global (fun X U =>
     ∀ [IsReduced X] (s : X.presheaf.obj (op U)),
       X.basicOpen s = ⊥ → ∀ x, (X.sheaf.presheaf.germ x) s = 0) _ _ _) X U s hs
  · intro X U hx hX s hs x
    obtain ⟨V, hx, i, H⟩ := hx x
    specialize H (X.presheaf.map i.op s)
    erw [Scheme.basicOpen_res] at H
    rw [hs] at H
    specialize H inf_bot_eq ⟨x, hx⟩
    erw [TopCat.Presheaf.germ_res_apply] at H
    exact H
  · rintro X Y f hf
    have e : f.val.base ⁻¹' Set.range ↑f.val.base = Set.univ := by
      rw [← Set.image_univ, Set.preimage_image_eq _ hf.base_open.inj]
    refine' ⟨_, _, e, rfl, _⟩
    rintro H hX s hs ⟨_, x, rfl⟩
    haveI := isReducedOfOpenImmersion f
    specialize H (f.1.c.app _ s) _ ⟨x, by rw [Opens.mem_mk, e]; trivial⟩
    · rw [← Scheme.preimage_basicOpen, hs]; ext1; simp [Opens.map]
    · erw [← PresheafedSpace.stalkMap_germ_apply f.1 ⟨_, _⟩ ⟨x, _⟩] at H
      apply_fun inv <| PresheafedSpace.stalkMap f.val x at H
      erw [CategoryTheory.IsIso.hom_inv_id_apply, map_zero] at H
      exact H
  · intro R hX s hs x
    erw [basicOpen_eq_of_affine', PrimeSpectrum.basicOpen_eq_bot_iff] at hs
    replace hs := hs.map (SpecΓIdentity.app R).inv
    -- what the hell?!
    replace hs := @IsNilpotent.eq_zero _ _ _ _ (show _ from ?_) hs
    rw [Iso.hom_inv_id_apply] at hs
    rw [hs, map_zero]
    exact @IsReduced.component_reduced _ hX ⊤
#align algebraic_geometry.eq_zero_of_basic_open_eq_bot AlgebraicGeometry.eq_zero_of_basicOpen_eq_bot

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc765e828347772ace4c80a4b9424c2bb04b9a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
