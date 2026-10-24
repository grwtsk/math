# HasAffineProperty.coprodDesc_affineAnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1c3a52f-b595-61de-c6bd-5f3b6597bf16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a02c492d-7f3f-7991-98c4-1e3b698ede6b",
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
  "slug": "hasaffineproperty-coproddesc-affineand--9a26589c93c1e8edb006921a",
  "source": {
    "blob": "0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 283,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a26589c93c1e8edb006921a81bb8c41b26864705edf3d593dde825c42800efe",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a02c492d-7f3f-7991-98c4-1e3b698ede6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–316.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
