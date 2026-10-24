# isQuotientMap_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7419d6db5c35f1a6e1b750bb5671d6ce359e263a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf38af1b-8f86-c58c-6167-b8fcbeea9a7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e76b5a2-44d7-afae-ab0c-7615e94832b4",
  "kind": "lemma",
  "lexical_name": "isQuotientMap_of_surjective",
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
  "slug": "isquotientmap-of-surjective--ce104d7c7e1c879cc81a6237",
  "source": {
    "blob": "7419d6db5c35f1a6e1b750bb5671d6ce359e263a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 89,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce104d7c7e1c879cc81a6237cb490898d259b32f9109908eb7d58b312ffacaf4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e76b5a2-44d7-afae-ab0c-7615e94832b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isQuotientMap_of_surjective {X Y : Scheme.{u}} (f : X ⟶ Y) [Flat f] [QuasiCompact f]
    [Surjective f] : Topology.IsQuotientMap f.base := by
  rw [Topology.isQuotientMap_iff]
  refine ⟨f.surjective, fun s ↦ ⟨fun hs ↦ hs.preimage f.continuous, fun hs ↦ ?_⟩⟩
  wlog hY : ∃ R, Y = Spec R
  · let 𝒰 := Y.affineCover
    rw [𝒰.isOpenCover_opensRange.isOpen_iff_inter]
    intro i
    rw [Scheme.Hom.coe_opensRange, ← Set.image_preimage_eq_inter_range]
    apply (𝒰.map i).isOpenEmbedding.isOpenMap
    refine this (f := pullback.fst (𝒰.map i) f) _ ?_ ⟨_, rfl⟩
    rw [← Set.preimage_comp, ← TopCat.coe_comp, ← Scheme.comp_base, pullback.condition,
      Scheme.comp_base, TopCat.coe_comp, Set.preimage_comp]
    exact hs.preimage (Scheme.Hom.continuous _)
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · have _ : CompactSpace X := QuasiCompact.compactSpace_of_compactSpace f
    let 𝒰 := X.affineCover.finiteSubcover
    let p : ∐ (fun i : 𝒰.J ↦ 𝒰.obj i) ⟶ X := Sigma.desc (fun i ↦ 𝒰.map i)
    have _ (i : 𝒰.J) : IsAffine (𝒰.obj i) := inferInstanceAs <| IsAffine (X.affineCover.obj _)
    refine this (f := (∐ (fun i : 𝒰.J ↦ 𝒰.obj i)).isoSpec.inv ≫ p ≫ f) _ _ ?_ ⟨_, rfl⟩
    rw [← Category.assoc, Scheme.comp_base, TopCat.coe_comp, Set.preimage_comp]
    exact hs.preimage (_ ≫ p).continuous
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  refine ((PrimeSpectrum.isQuotientMap_of_generalizingMap ?_ ?_).isOpen_preimage).mp hs
  · exact (surjective_iff (Spec.map φ)).mp inferInstance
  · apply RingHom.Flat.generalizingMap_comap
    rwa [← HasRingHomProperty.Spec_iff (P := @Flat)]

end Flat

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant13770c3e362f9a23d49152c8e739615028f03e21bb7f35a62ac858d691c12d58.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7419d6db5c35f1a6e1b750bb5671d6ce359e263a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
