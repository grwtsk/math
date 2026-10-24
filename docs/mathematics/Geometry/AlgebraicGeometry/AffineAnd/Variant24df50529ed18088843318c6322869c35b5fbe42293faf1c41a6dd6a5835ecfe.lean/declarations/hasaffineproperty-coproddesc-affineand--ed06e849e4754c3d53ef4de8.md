# HasAffineProperty.coprodDesc_affineAnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1e652d2-5957-3fcd-3c09-699d21cbf1e5",
  "kind": "lemma",
  "lexical_name": "HasAffineProperty.coprodDesc_affineAnd",
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
  "slug": "hasaffineproperty-coproddesc-affineand--ed06e849e4754c3d53ef4de8",
  "source": {
    "blob": "41a2da0fabaa493e5d93539a169e7b6e452039e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 291,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed06e849e4754c3d53ef4de8564983b78c5f82e1d1640692603327dbe6f994b8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1e652d2-5957-3fcd-3c09-699d21cbf1e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasAffineProperty.coprodDesc_affineAnd {P : MorphismProperty Scheme.{u}}
    (hP : HasAffineProperty P (affineAnd Q)) (hQi : RingHom.RespectsIso Q)
    (hQ : ∀ {R S T : Type u} [CommRing R] [CommRing S] [CommRing T] (f : R →+* S) (g : R →+* T),
      Q f → Q g → Q (f.prod g))
    {U V X : Scheme.{u}} (f : U ⟶ X) (g : V ⟶ X) (hf : P f) (hg : P g) :
    P (Limits.coprod.desc f g) := by
  have := HasAffineProperty.affineAnd_le_isAffineHom P hP f hf
  have := HasAffineProperty.affineAnd_le_isAffineHom P hP g hg
  rw [HasAffineProperty.eq_targetAffineLocally P, targetAffineLocally_affineAnd_iff hQi] at hf hg ⊢
  refine fun W hW ↦ ⟨hW.preimage _, ?_⟩
  let e : Γ(U ⨿ V, Limits.coprod.desc f g ⁻¹ᵁ W) ≅ Γ(U, f ⁻¹ᵁ W) ⨯ Γ(V, g ⁻¹ᵁ W) :=
    Scheme.coprodPresheafObjIso _ ≪≫ Limits.prod.mapIso
      (U.presheaf.mapIso (eqToIso (by simp [← Scheme.Hom.comp_preimage])).op)
      (V.presheaf.mapIso (eqToIso (by simp [← Scheme.Hom.comp_preimage])).op)
  rw [← hQi.cancel_right_isIso _ e.hom,
    ← CommRingCat.hom_comp, ← hQi.cancel_right_isIso _
    ((Limits.limit.isLimit _).conePointUniqueUpToIso (CommRingCat.prodFanIsLimit _ _)).hom,
    ← CommRingCat.hom_comp]
  have {R S T : Type u} [CommRing R] [CommRing S] [CommRing T] (f : R →+* S × T) :
      Q (.comp (.fst _ _) f) → Q (.comp (.snd _ _) f) → Q f :=
    hQ (.comp (.fst _ _) f) (.comp (.snd _ _) f)
  refine this _ ?_ ?_
  · have : (Limits.coprod.desc f g).app W ≫ e.hom ≫ Limits.prod.fst = f.app W := by
      simp [e, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE]
    convert! (hf W hW).2
    exact congr(($this).1)
  · have : (Limits.coprod.desc f g).app W ≫ e.hom ≫ Limits.prod.snd = g.app W := by
      simp [e, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE]
    convert! (hg W hW).2
    exact congr(($this).1)

end

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a2da0fabaa493e5d93539a169e7b6e452039e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
