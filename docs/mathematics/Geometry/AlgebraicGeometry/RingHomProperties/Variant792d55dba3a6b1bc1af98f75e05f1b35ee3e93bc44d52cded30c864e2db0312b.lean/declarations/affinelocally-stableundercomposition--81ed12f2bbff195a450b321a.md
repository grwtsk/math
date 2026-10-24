# affineLocally_stableUnderComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7385088-8764-5bef-b3d2-87e7ec86dc46",
  "kind": "theorem",
  "lexical_name": "affineLocally_stableUnderComposition",
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
  "slug": "affinelocally-stableundercomposition--81ed12f2bbff195a450b321a",
  "source": {
    "blob": "653ea3160ced1b0792ac93326eb237d91538f8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 627,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81ed12f2bbff195a450b321a05556d3785c34496b4270bb05af701213bcd1178",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7385088-8764-5bef-b3d2-87e7ec86dc46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineLocally_stableUnderComposition : (affineLocally @P).StableUnderComposition := by
  intro X Y S f g hf hg
  let 𝒰 : ∀ i, ((S.affineCover.pullbackCover (f ≫ g)).obj i).OpenCover := by
    intro i
    refine' Scheme.OpenCover.bind _ fun i => Scheme.affineCover _
    apply Scheme.OpenCover.pushforwardIso _
      (pullbackRightPullbackFstIso g (S.affineCover.map i) f).hom
    apply Scheme.Pullback.openCoverOfRight
    exact (pullback g (S.affineCover.map i)).affineCover
  -- Porting note: used to be - rw [hP.affine_openCover_iff (f ≫ g) S.affineCover _] - but
  -- metavariables cause problems in the instance search
  apply (@affine_openCover_iff _ hP _ _ (f ≫ g) S.affineCover _ ?_ ?_).mpr
  rotate_left
  · exact 𝒰
  · intro i j; dsimp at *; infer_instance
  · rintro i ⟨j, k⟩
    dsimp at i j k
    dsimp only [Scheme.OpenCover.bind_map, Scheme.OpenCover.pushforwardIso_obj,
      Scheme.Pullback.openCoverOfRight_obj, Scheme.OpenCover.pushforwardIso_map,
      Scheme.Pullback.openCoverOfRight_map, Scheme.OpenCover.bind_obj]
    rw [Category.assoc, Category.assoc, pullbackRightPullbackFstIso_hom_snd,
      pullback.lift_snd_assoc, Category.assoc, ← Category.assoc, op_comp, Functor.map_comp]
    apply hP.StableUnderComposition
    · -- Porting note: used to be exact _|>. hg i j but that can't find an instance
      apply hP.affine_openCover_iff _ _ _|>.mp
      exact hg
    · delta affineLocally at hf
      -- Porting note: again strange behavior of TFAE
      have := (hP.isLocal_sourceAffineLocally.affine_openCover_TFAE f).out 0 3
      rw [this] at hf
      -- Porting note: needed to help Lean with this instance (same as above)
      have : IsOpenImmersion <|
          ((pullback g (S.affineCover.map i)).affineCover.map j ≫ pullback.fst) :=
        LocallyRingedSpace.IsOpenImmersion.comp _ _
      specialize hf ((pullback g (S.affineCover.map i)).affineCover.map j ≫ pullback.fst)
      -- Porting note: again strange behavior of TFAE
      have := (hP.affine_openCover_TFAE
        (pullback.snd : pullback f ((pullback g (S.affineCover.map i)).affineCover.map j ≫
        pullback.fst) ⟶ _)).out 0 3
      rw [this] at hf
      apply hf
#align ring_hom.property_is_local.affine_locally_stable_under_composition RingHom.PropertyIsLocal.affineLocally_stableUnderComposition

end RingHom.PropertyIsLocal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ea3160ced1b0792ac93326eb237d91538f8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
