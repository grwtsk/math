# Scheme.nonempty_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c637cda-4940-65a1-6bef-1068d424cbca",
  "kind": "lemma",
  "lexical_name": "Scheme.nonempty_of_isLimit",
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
  "slug": "scheme-nonempty-of-islimit--384370ab3b22937f43a9e1a0",
  "source": {
    "blob": "fac74f6c68e11e7b6069698df948fa94158eba80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 43,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant4aee6a7e109d23a8a74b06330c2302bddc84e6041c1ecb540da807c75b159e5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:384370ab3b22937f43a9e1a0ef4d3b6c1a5bf771be2867c68357622d3229b9b3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant4aee6a7e109d23a8a74b06330c2302bddc84e6041c1ecb540da807c75b159e5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c637cda-4940-65a1-6bef-1068d424cbca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.nonempty_of_isLimit [IsCofilteredOrEmpty I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)] [∀ i, Nonempty (D.obj i)]
    [∀ i, CompactSpace (D.obj i)] :
    Nonempty c.pt := by
  classical
  cases isEmpty_or_nonempty I
  · have e := (isLimitEquivIsTerminalOfIsEmpty _ _ hc).uniqueUpToIso specULiftZIsTerminal
    exact Nonempty.map e.inv.base inferInstance
  · have i := Nonempty.some ‹Nonempty I›
    have : IsCofiltered I := ⟨⟩
    let 𝒰 := (D.obj i).affineCover.finiteSubcover
    have (i') : IsAffine (𝒰.obj i') := inferInstanceAs (IsAffine (Spec _))
    obtain ⟨j, H⟩ :
        ∃ j : 𝒰.J, ∀ {i'} (f : i' ⟶ i), Nonempty ((𝒰.pullbackCover (D.map f)).obj j) := by
      simp_rw [← not_isEmpty_iff]
      by_contra! H
      choose i' f hf using H
      let g (j) := IsCofiltered.infTo (insert i (Finset.univ.image i'))
        (Finset.univ.image fun j : 𝒰.J ↦ ⟨_, _, by simp, by simp, f j⟩) (X := j)
      have (j : 𝒰.J) : IsEmpty ((𝒰.pullbackCover (D.map (g i (by simp)))).obj j) := by
        let F : (𝒰.pullbackCover (D.map (g i (by simp)))).obj j ⟶
            (𝒰.pullbackCover (D.map (f j))).obj j :=
          pullback.map _ _ _ _ (D.map (g _ (by simp))) (𝟙 _) (𝟙 _) (by
            rw [← D.map_comp, IsCofiltered.infTo_commutes]
            · simp [g]
            · simp
            · exact Finset.mem_image_of_mem _ (Finset.mem_univ _)) (by simp)
        exact Function.isEmpty F.base
      obtain ⟨x, -⟩ :=
        (𝒰.pullbackCover (D.map (g i (by simp)))).covers (Nonempty.some inferInstance)
      exact (this _).elim x
    let F := Over.post D ⋙ Over.pullback (𝒰.map j) ⋙ Over.forget _
    have (i') : IsAffine (F.obj i') :=
      have : IsAffineHom (pullback.snd (D.map i'.hom) (𝒰.map j)) :=
        MorphismProperty.pullback_snd _ _ inferInstance
      isAffine_of_isAffineHom (pullback.snd (D.map i'.hom) (𝒰.map j))
    have (i') : Nonempty (F.obj i') := H i'.hom
    let e : F ⟶ (F ⋙ Scheme.Γ.rightOp) ⋙ Scheme.Spec := whiskerLeft F ΓSpec.adjunction.unit
    have (i) : IsIso (e.app i) := IsAffine.affine
    have : IsIso e := NatIso.isIso_of_isIso_app e
    let c' : LimitCone F := ⟨_, (IsLimit.postcomposeInvEquiv (asIso e) _).symm
      (isLimitOfPreserves Scheme.Spec (limit.isLimit (F ⋙ Scheme.Γ.rightOp)))⟩
    have : Nonempty c'.1.pt := by
      apply (config := { allowSynthFailures := true }) PrimeSpectrum.instNonemptyOfNontrivial
      have (i') : Nontrivial ((F ⋙ Scheme.Γ.rightOp).leftOp.obj i') := by
        apply (config := { allowSynthFailures := true }) Scheme.component_nontrivial
        simp
      exact CommRingCat.FilteredColimits.nontrivial
        (isColimitCoconeLeftOpOfCone _ (limit.isLimit (F ⋙ Scheme.Γ.rightOp)))
    let α : F ⟶ Over.forget _ ⋙ D := whiskerRight
      (whiskerLeft (Over.post D) (Over.mapPullbackAdj (𝒰.map j)).counit) (Over.forget _)
    exact this.map (((Functor.Initial.isLimitWhiskerEquiv (Over.forget i) c).symm hc).lift
        ((Cones.postcompose α).obj c'.1)).base
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant4aee6a7e109d23a8a74b06330c2302bddc84e6041c1ecb540da807c75b159e5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant4aee6a7e109d23a8a74b06330c2302bddc84e6041c1ecb540da807c75b159e5e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac74f6c68e11e7b6069698df948fa94158eba80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
