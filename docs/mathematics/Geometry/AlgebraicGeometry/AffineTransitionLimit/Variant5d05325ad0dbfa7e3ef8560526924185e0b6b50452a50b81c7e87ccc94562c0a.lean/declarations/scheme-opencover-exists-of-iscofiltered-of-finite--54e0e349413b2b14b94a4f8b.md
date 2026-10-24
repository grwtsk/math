# Scheme.OpenCover.exists_of_isCofiltered_of_finite

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
      "line": 1117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4287136-edce-3fee-7f93-5b285cd29c95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41a7c221-5352-3c86-21fc-a38cb5993bfa",
  "kind": "lemma",
  "lexical_name": "Scheme.OpenCover.exists_of_isCofiltered_of_finite",
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
  "slug": "scheme-opencover-exists-of-iscofiltered-of-finite--54e0e349413b2b14b94a4f8b",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1155,
    "line": 1117,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e0e349413b2b14b94a4f8b79503fb971cd8631c4338ac8583f40ff8aa44cdf",
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

Occurrence: `result:41a7c221-5352-3c86-21fc-a38cb5993bfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1117–1155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.OpenCover.exists_of_isCofiltered_of_finite [IsCofiltered I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)] [∀ (i : I), CompactSpace (D.obj i)]
    [∀ (i : I), QuasiSeparatedSpace (D.obj i)]
    (𝒰 : OpenCover.{w} c.pt) [∀ i, IsAffine (𝒰.X i)] [Finite 𝒰.I₀] :
    ∃ (i : I) (R : 𝒰.I₀ → CommRingCat.{u}) (f : ∀ (a : 𝒰.I₀), Spec (R a) ⟶ (D.obj i))
      (_ : Presieve.ofArrows _ f ∈ zariskiPrecoverage _) (g : ∀ (j : 𝒰.I₀), 𝒰.X j ⟶ Spec (R j)),
      ∀ (j : 𝒰.I₀), IsPullback (g j) (𝒰.f j) (f j) (c.π.app i) := by
  obtain ⟨i, V, hV, hV'⟩ := Scheme.exists_isOpenCover_and_isAffine_of_finite _ _ hc _
    𝒰.isOpenCover_opensRange fun k ↦ isAffineOpen_opensRange (𝒰.f k)
  have hV'' (k) := dsimp% congr($((hV' k).right).carrier)
  refine ⟨i, fun k ↦ Γ(_, V k), fun k ↦ (hV' k).left.isoSpec.inv ≫ (V k).ι, ?_, ?_, ?_⟩
  · simp only [IsAffineOpen.isoSpec_inv_ι, ofArrows_mem_precoverage_iff,
      IsAffineOpen.range_fromSpec, SetLike.mem_coe]
    exact ⟨fun x ↦ hV.exists_mem x, inferInstance⟩
  · intro k
    exact IsOpenImmersion.lift (V k).ι (𝒰.f _ ≫ c.π.app i) (by simp [hV'', Set.range_comp]) ≫
      (hV' k).left.isoSpec.hom
  · intro k
    dsimp
    refine ⟨⟨?_⟩, ⟨PullbackCone.IsLimit.mk _ ?_ ?_ ?_ ?_⟩⟩
    · simp [← IsAffineOpen.isoSpec_inv_ι]
    · intro s
      refine IsOpenImmersion.lift (𝒰.f k) s.snd ?_
      simp only [hV'', Set.range_subset_iff, Set.mem_preimage, SetLike.mem_coe]
      intro y
      rw [← Scheme.Hom.comp_apply, ← s.condition]
      simp [← IsAffineOpen.isoSpec_inv_ι]
    · simp [← cancel_mono (hV' _).left.isoSpec.inv, ← cancel_mono (V k).ι, PullbackCone.condition]
    · simp
    · simp [← cancel_mono (𝒰.f k)]

end IsAffine

section LocallyOfFinitePresentation

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
include hc in
/-- See `Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation` for the general case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L1117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
