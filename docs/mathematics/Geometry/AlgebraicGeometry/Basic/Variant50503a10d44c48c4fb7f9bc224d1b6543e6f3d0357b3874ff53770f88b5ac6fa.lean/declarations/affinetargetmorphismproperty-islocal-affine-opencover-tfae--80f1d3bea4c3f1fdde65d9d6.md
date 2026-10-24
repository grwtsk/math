# AffineTargetMorphismProperty.IsLocal.affine_openCover_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98e53f5b-2a20-7d6a-d5ce-258d97850d13",
  "kind": "theorem",
  "lexical_name": "AffineTargetMorphismProperty.IsLocal.affine_openCover_TFAE",
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
  "slug": "affinetargetmorphismproperty-islocal-affine-opencover-tfae--80f1d3bea4c3f1fdde65d9d6",
  "source": {
    "blob": "e46573ee1ece9b543a3af061d0730edcca8f6617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 241,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80f1d3bea4c3f1fdde65d9d6562327f0d3b6c398204f618a7fd13e6671680d75",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98e53f5b-2a20-7d6a-d5ce-258d97850d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineTargetMorphismProperty.IsLocal.affine_openCover_TFAE
    {P : AffineTargetMorphismProperty} (hP : P.IsLocal) {X Y : Scheme.{u}} (f : X ⟶ Y) :
    TFAE
      [targetAffineLocally P f,
        ∃ (𝒰 : Scheme.OpenCover.{u} Y) (_ : ∀ i, IsAffine (𝒰.obj i)),
          ∀ i : 𝒰.J, P (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i),
        ∀ (𝒰 : Scheme.OpenCover.{u} Y) [∀ i, IsAffine (𝒰.obj i)] (i : 𝒰.J),
          P (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i),
        ∀ {U : Scheme} (g : U ⟶ Y) [IsAffine U] [IsOpenImmersion g],
          P (pullback.snd : pullback f g ⟶ U),
        ∃ (ι : Type u) (U : ι → Opens Y.carrier) (_ : iSup U = ⊤) (hU' : ∀ i, IsAffineOpen (U i)),
          ∀ i, @P _ _ (f ∣_ U i) (hU' i)] := by
  tfae_have 1 → 4
  · intro H U g h₁ h₂
    -- Porting note : I need to add `i1` manually, so to save some typing, named this variable
    set U' : Opens _ := ⟨_, h₂.base_open.open_range⟩
    replace H := H ⟨U', rangeIsAffineOpenOfOpenImmersion g⟩
    haveI i1 : IsAffine (Y.restrict U'.openEmbedding) := rangeIsAffineOpenOfOpenImmersion g
    rw [← P.toProperty_apply] at H ⊢
    rwa [← hP.1.arrow_mk_iso_iff (morphismRestrictOpensRange f _)]
  tfae_have 4 → 3
  · intro H 𝒰 h𝒰 i
    apply H
  tfae_have 3 → 2
  · exact fun H => ⟨Y.affineCover, inferInstance, H Y.affineCover⟩
  tfae_have 2 → 1
  · rintro ⟨𝒰, h𝒰, H⟩; exact targetAffineLocallyOfOpenCover hP f 𝒰 H
  tfae_have 5 → 2
  · rintro ⟨ι, U, hU, hU', H⟩
    refine' ⟨Y.openCoverOfSuprEqTop U hU, hU', _⟩
    intro i
    specialize H i
    -- Porting note : added these two instances manually
    haveI i2 : IsAffine (Scheme.OpenCover.obj (Scheme.openCoverOfSuprEqTop Y U hU) i) := hU' i
    haveI i3 : IsAffine (Y.restrict (U i).openEmbedding) := hU' i
    rw [← P.toProperty_apply, ← hP.1.arrow_mk_iso_iff (morphismRestrictOpensRange f _)]
    rw [← P.toProperty_apply] at H
    convert H
    all_goals ext1; exact Subtype.range_coe
  tfae_have 1 → 5
  · intro H
    refine ⟨Y.carrier, fun x => (Scheme.Hom.opensRange <| Y.affineCover.map x),
      ?_, fun i => rangeIsAffineOpenOfOpenImmersion _, ?_⟩
    · rw [eq_top_iff]; intro x _; erw [Opens.mem_iSup]; exact ⟨x, Y.affineCover.Covers x⟩
    · intro i; exact H ⟨_, rangeIsAffineOpenOfOpenImmersion _⟩
  tfae_finish
#align algebraic_geometry.affine_target_morphism_property.is_local.affine_open_cover_tfae AlgebraicGeometry.AffineTargetMorphismProperty.IsLocal.affine_openCover_TFAE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46573ee1ece9b543a3af061d0730edcca8f6617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
