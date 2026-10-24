# affineLocally_of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32d1753f-0584-3733-c47c-4cdbf4c677b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f91662c9-9922-c70a-74f4-a8aa8057c2c8",
  "kind": "theorem",
  "lexical_name": "affineLocally_of_comp",
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
  "slug": "affinelocally-of-comp--0750d07f6697cfb2d0cea58c",
  "source": {
    "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 580,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0750d07f6697cfb2d0cea58ce58d62ac0d8c4014c950aa61aa649ab0ad3187df",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f91662c9-9922-c70a-74f4-a8aa8057c2c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineLocally_of_comp
    (H : ∀ {R S T : Type u} [CommRing R] [CommRing S] [CommRing T],
      ∀ (f : R →+* S) (g : S →+* T), P (g.comp f) → P g)
    {X Y Z : Scheme} {f : X ⟶ Y} {g : Y ⟶ Z} (h : affineLocally (@P) (f ≫ g)) :
    affineLocally (@P) f := by
  let 𝒰 : ∀ i, ((Z.affineCover.pullbackCover (f ≫ g)).obj i).OpenCover := by
    intro i
    refine' Scheme.OpenCover.bind _ fun i => Scheme.affineCover _
    apply Scheme.OpenCover.pushforwardIso _
      (pullbackRightPullbackFstIso g (Z.affineCover.map i) f).hom
    apply Scheme.Pullback.openCoverOfRight
    exact (pullback g (Z.affineCover.map i)).affineCover
  have h𝒰 : ∀ i j, IsAffine ((𝒰 i).obj j) := by dsimp; infer_instance
  let 𝒰' := (Z.affineCover.pullbackCover g).bind fun i => Scheme.affineCover _
  have h𝒰' : ∀ i, IsAffine (𝒰'.obj i) := by dsimp; infer_instance
  rw [hP.affine_openCover_iff f 𝒰' fun i => Scheme.affineCover _]
  rw [hP.affine_openCover_iff (f ≫ g) Z.affineCover 𝒰] at h
  rintro ⟨i, j⟩ k
  dsimp at i j k
  specialize h i ⟨j, k⟩
  dsimp only [Scheme.OpenCover.bind_map, Scheme.OpenCover.pushforwardIso_obj,
    Scheme.Pullback.openCoverOfRight_obj, Scheme.OpenCover.pushforwardIso_map,
    Scheme.Pullback.openCoverOfRight_map, Scheme.OpenCover.bind_obj,
    Scheme.OpenCover.pullbackCover_obj, Scheme.OpenCover.pullbackCover_map] at h ⊢
  rw [Category.assoc, Category.assoc, pullbackRightPullbackFstIso_hom_snd,
    pullback.lift_snd_assoc, Category.assoc, ← Category.assoc, op_comp, Functor.map_comp] at h
  -- Porting note: this previously ended with `exact H _ _ h` but that runs away
  -- explicitly specifying `f'` and `g'` in the `comp` and then using a `convert` (?)
  -- lets us get something
  let f' := Scheme.Γ.map (Scheme.OpenCover.map
      (Scheme.affineCover (pullback g (Scheme.OpenCover.map (Scheme.affineCover Z) i))) j ≫
        pullback.snd).op
  let g' := Scheme.Γ.map (Scheme.OpenCover.map (Scheme.affineCover (pullback f
      (Scheme.OpenCover.map (Scheme.affineCover (pullback g (Scheme.OpenCover.map
        (Scheme.affineCover Z) i))) j ≫ pullback.fst))) k ≫ pullback.snd).op
  convert H f' g' ?_
  exact h
#align ring_hom.property_is_local.affine_locally_of_comp RingHom.PropertyIsLocal.affineLocally_of_comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
