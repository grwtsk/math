# respects_isOpenImmersion_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 528,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:151ec916-8828-4259-a7dd-a1ca677db94a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a3d1d64-8a98-349c-f808-e12a981ca6fa",
  "kind": "lemma",
  "lexical_name": "respects_isOpenImmersion_aux",
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
  "slug": "respects-isopenimmersion-aux--a7332b3c0ccfd15d2a0ec146",
  "source": {
    "blob": "e0585bd799331b3ff8dd4654fd068c8780ac86bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 528,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7332b3c0ccfd15d2a0ec146d732f59455ffd8b9db98a3afb5756bb1e6068c46",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a3d1d64-8a98-349c-f808-e12a981ca6fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma respects_isOpenImmersion_aux
    (hQ : RingHom.StableUnderCompositionWithLocalizationAwaySource Q)
    {X Y : Scheme.{u}} [IsAffine Y] {U : Y.Opens}
    (f : X ⟶ U.toScheme) (hf : P f) : P (f ≫ U.ι) := by
  wlog hYa : ∃ (a : Γ(Y, ⊤)), U = Y.basicOpen a generalizing X Y
  · obtain ⟨(Us : Set Y.Opens), hUs, heq⟩ := Opens.isBasis_iff_cover.mp (isBasis_basicOpen Y) U
    let V (s : Us) : X.Opens := f ⁻¹ᵁ U.ι ⁻¹ᵁ s
    rw [IsLocalAtSource.iff_of_iSup_eq_top (P := P) V]
    · intro s
      let f' : (V s).toScheme ⟶ U.ι ⁻¹ᵁ s := f ∣_ U.ι ⁻¹ᵁ s
      have hf' : P f' := IsLocalAtTarget.restrict hf _
      let e : (U.ι ⁻¹ᵁ s).toScheme ≅ s := IsOpenImmersion.isoOfRangeEq ((U.ι ⁻¹ᵁ s).ι ≫ U.ι) s.1.ι
        (by simpa only [Scheme.comp_coeBase, TopCat.coe_comp, Set.range_comp, Scheme.Opens.range_ι,
          Opens.map_coe, Set.image_preimage_eq_iff, heq, Opens.coe_sSup] using le_sSup s.2)
      have heq : (V s).ι ≫ f ≫ U.ι = f' ≫ e.hom ≫ s.1.ι := by
        simp only [V, IsOpenImmersion.isoOfRangeEq_hom_fac, f', e, morphismRestrict_ι_assoc]
      rw [heq, ← Category.assoc]
      refine this _ ?_ ?_
      · rwa [P.cancel_right_of_respectsIso]
      · obtain ⟨a, ha⟩ := hUs s.2
        use a, ha.symm
    · apply f.preimage_iSup_eq_top
      apply U.ι.image_injective
      simp only [U.ι.image_iSup, U.ι.image_preimage_eq_opensRange_inter, Scheme.Opens.opensRange_ι]
      conv_rhs => rw [Scheme.Hom.image_top_eq_opensRange, Scheme.Opens.opensRange_ι, heq]
      ext : 1
      have (i : Us) : U ⊓ i.1 = i.1 := by simp [heq, le_sSup i.property]
      simp [this]
  obtain ⟨a, rfl⟩ := hYa
  wlog hX : IsAffine X generalizing X Y
  · rw [IsLocalAtSource.iff_of_iSup_eq_top (P := P) _ (iSup_affineOpens_eq_top _)]
    intro V
    rw [← Category.assoc]
    exact this _ _ (IsLocalAtSource.comp hf _) V.2
  rw [HasRingHomProperty.iff_of_isAffine (P := P)] at hf ⊢
  exact hQ _ a _ hf

/-- Any property of scheme morphisms induced by a property of ring homomorphisms is stable
under composition with open immersions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0585bd799331b3ff8dd4654fd068c8780ac86bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
