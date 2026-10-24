# tfae_universallyInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d2ffaed1bed9d743401777f0d7bad153c2fbc72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b7a5c18-612c-e427-6a00-7a11af5c97c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eef63220-a714-fc5c-bf90-c35844d5b22f",
  "kind": "theorem",
  "lexical_name": "tfae_universallyInjective",
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
  "slug": "tfae-universallyinjective--a140ef58cc70204ef3de5a43",
  "source": {
    "blob": "7d2ffaed1bed9d743401777f0d7bad153c2fbc72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 107,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a140ef58cc70204ef3de5a43c537d5bf7f23c4c0bb77bc24455b3d26f2a24d85",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef63220-a714-fc5c-bf90-c35844d5b22f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tfae_universallyInjective :
    List.TFAE [
      UniversallyInjective f,
      ∀ (K : Type u) [Field K], Function.Injective (fun g : Spec (.of K) ⟶ X ↦ g ≫ f),
      Function.Injective f ∧ ∀ x, (f.residueFieldMap x).hom.IsPurelyInseparable,
      Surjective (pullback.diagonal f) ] := by
  tfae_have 1 ↔ 4 := UniversallyInjective.iff_diagonal f
  tfae_have 3 → 2 := by
    intro ⟨h_inj, hf⟩ K _ g₁ g₂ hg
    obtain ⟨e, h⟩ := Scheme.SpecToEquivOfField_eq_iff.mp congr((Y.SpecToEquivOfField K) $(hg))
    apply (X.SpecToEquivOfField K).injective
    dsimp at e h
    simp only [Scheme.descResidueField_stalkClosedPointTo_comp] at e h
    rw [← f.residueFieldMap_congr'_assoc (h_inj e), CommRingCat.hom_ext_iff] at h
    rw [Scheme.SpecToEquivOfField_eq_iff]
    let x := g₁ (IsLocalRing.closedPoint K)
    have hfx := hf x
    algebraize [(f.residueFieldMap (g₁ (IsLocalRing.closedPoint K))).hom]
    refine ⟨h_inj e, CommRingCat.hom_ext ?_⟩
    exact IsPurelyInseparable.injective_comp_algebraMap
      (Y.residueField (f x)) (X.residueField x) _ h
  tfae_have 2 → 4 := fun h ↦ by
    rw [surjective_iff]
    intro z
    let φ := (pullback f f).fromSpecResidueField z
    have hφ₁ : φ ≫ pullback.fst f f = φ ≫ pullback.snd f f :=
      h ((pullback f f).residueField z) (by simp [pullback.condition])
    have hφ₂ : φ = (φ ≫ pullback.fst f f) ≫ pullback.diagonal f := by cat_disch
    refine ⟨(φ ≫ pullback.fst f f) (IsLocalRing.closedPoint _), ?_⟩
    rw [← Scheme.Hom.comp_apply, ← hφ₂, Scheme.fromSpecResidueField_apply]
  tfae_have 4 → 3 := fun hf ↦ by
    have := tfae_1_iff_4.mpr hf
    refine ⟨f.injective, ?_⟩
    rw [surjective_iff] at hf
    intro x
    algebraize [(f.residueFieldMap x).hom]
    rw [RingHom.IsPurelyInseparable, isPurelyInseparable_iff_subsingleton_emb, subsingleton_iff]
    intro σ₁ σ₂
    apply AlgHom.coe_ringHom_injective
    let g₁ := (X.SpecToEquivOfField _).symm ⟨_, CommRingCat.ofHom σ₁.toRingHom⟩
    let g₂ := (X.SpecToEquivOfField _).symm ⟨_, CommRingCat.ofHom σ₂.toRingHom⟩
    suffices X.SpecToEquivOfField _ g₁ = X.SpecToEquivOfField _ g₂ by
      rw [Equiv.apply_symm_apply, Equiv.apply_symm_apply] at this
      exact congr($(this).2.hom)
    let q := pullback.lift (f := f) (g := f) g₁ g₂ <| by
      simp only [g₁, g₂, Scheme.SpecToEquivOfField_symm_apply, AlgHom.toRingHom_eq_coe,
        Category.assoc, ← f.SpecMap_residueFieldMap_fromSpecResidueField x, ← Spec.map_comp_assoc]
      congr 2
      ext a
      simp only [CommRingCat.hom_comp, RingHom.comp_apply]
      exact (AlgHom.commutes σ₁ a).trans (AlgHom.commutes σ₂ a).symm
    have q_fst : q ≫ pullback.fst f f = g₁ := pullback.lift_fst _ _ _
    have q_snd : q ≫ pullback.snd f f = g₂ := pullback.lift_snd _ _ _
    rw [Scheme.SpecToEquivOfField_eq_iff, ← q_fst, ← q_snd]
    obtain ⟨u, hu⟩ := hf (q (IsLocalRing.closedPoint _))
    have hux : u = x := by
      have := congr(pullback.fst f f $(hu))
      rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply] at this
      simpa [Scheme.SpecToEquivOfField_symm_apply, q_fst, g₁] using this
    refine ⟨by simp [g₁, g₂, q_fst, q_snd], ?_⟩
    dsimp
    simp only [Scheme.descResidueField_stalkClosedPointTo_comp, ← Category.assoc]
    congr 1
    rw [← cancel_mono (Scheme.residueFieldCongr (hux ▸ hu).symm).hom]
    have : Mono (Scheme.Hom.residueFieldMap (pullback.diagonal f) x) :=
      ConcreteCategory.mono_of_injective _ (RingHom.injective _)
    simp [← cancel_mono ((pullback.diagonal f).residueFieldMap x), ← Scheme.residueFieldMap_comp,
      (pullback.fst f f).residueFieldMap_congr', (pullback.snd f f).residueFieldMap_congr'_assoc,
      Scheme.Hom.residueFieldMap_congr (pullback.diagonal_snd f),
      Scheme.Hom.residueFieldMap_congr (pullback.diagonal_fst f)]
  tfae_finish

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d2ffaed1bed9d743401777f0d7bad153c2fbc72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
