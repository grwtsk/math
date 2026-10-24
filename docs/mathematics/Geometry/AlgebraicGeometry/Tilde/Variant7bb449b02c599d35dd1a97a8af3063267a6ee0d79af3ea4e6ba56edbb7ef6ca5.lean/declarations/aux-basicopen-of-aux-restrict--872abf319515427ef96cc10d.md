# aux_basicOpen_of_aux_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06d1d92a2293c66b68f27b9d03d863c6839eef5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 798,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9705260-0f68-091c-95e8-59f4245a641d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b2b1c7f-4ac7-cd4a-0cc6-bdd5d7bcd4d8",
  "kind": "lemma",
  "lexical_name": "aux_basicOpen_of_aux_restrict",
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
  "slug": "aux-basicopen-of-aux-restrict--872abf319515427ef96cc10d",
  "source": {
    "blob": "06d1d92a2293c66b68f27b9d03d863c6839eef5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 841,
    "line": 798,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:872abf319515427ef96cc10d69d3595d7a1160295f313d794e8236d7e967bc24",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b2b1c7f-4ac7-cd4a-0cc6-bdd5d7bcd4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–841.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma aux_basicOpen_of_aux_restrict (M : (Spec R).Modules) (g : R)
    (h : Aux (M.restrict <|
        Spec.map <| CommRingCat.ofHom <| algebraMap R <| Localization.Away g) ⊤) :
      Aux M (basicOpen g) := by
  let a : R ⟶ ↧(Localization.Away g) :=
    CommRingCat.ofHom <| algebraMap R _
  set ψ : Spec ↧(Localization.Away g) ⟶ Spec ↧R := Spec.map a
  set M' : (Spec ↧(Localization.Away g)).Modules := M.restrict ψ
  have heq (f : R) (hf : basicOpen f ≤ basicOpen g) :
      basicOpen f = ψ ''ᵁ basicOpen (a f) := by
    rw [← SpecMap_preimage_basicOpen, Scheme.Hom.image_preimage_eq_opensRange_inf]
    simp [a, ψ, hf]
  let iso : Γ(M.restrict ψ, ⊤) ≅ Γ(M, basicOpen g) :=
    M.restrictAppIso _ _ ≪≫ M.presheaf.mapIso (eqToIso <| by simp [ψ, a]).op
  let e (f : R) (hf : basicOpen f ≤ basicOpen g) : Γ(M', basicOpen (a f)) ≅ Γ(M, basicOpen f) :=
    M.restrictAppIso ψ (basicOpen (a f)) ≪≫ M.presheaf.mapIso (eqToIso <| heq f hf).op
  refine ⟨fun f hf s ↦ ?_, fun f hf t ht ↦ ?_⟩
  · obtain ⟨n, t, ht⟩ := h.existence (a f) le_top ((e _ hf).inv s)
    use n, iso.hom t
    have := congr((e _ hf).hom $ht)
    dsimp [M'] at this
    rw [← ConcreteCategory.comp_apply] at this
    simp only [homOfLE_leOfHom, Iso.trans_hom, Functor.mapIso_hom, Iso.op_hom, eqToIso.hom,
      eqToHom_op, Iso.trans_inv, Functor.mapIso_inv, Iso.op_inv, eqToIso.inv, e, iso] at this ⊢
    simp only [homOfLE_leOfHom, Scheme.Modules.map_restrictAppIso_hom_assoc, AddCommGrpCat.hom_comp,
      AddMonoidHom.coe_comp, Function.comp_apply, ← map_pow, ψ] at this
    rw [Scheme.Modules.restrictAppIso_smul_Spec] at this
    simpa [← Functor.map_comp_apply, eqToHom_comp_homOfLE_op, homOfLE_op_comp_eqToHom] using this
  · obtain ⟨n, hn⟩ := h.uniqueness (a f) le_top (iso.inv t) <| by
      simpa [M', iso, ← M.presheaf.map_comp_apply, homOfLE_op_comp_eqToHom, e] using
        congr((e _ hf).inv $ht)
    use n
    have := congr(iso.hom $hn)
    dsimp [iso, ψ] at this
    rw [eqToHom_op, map_zero, ← map_pow, Scheme.Modules.restrictAppIso_smul_Spec,
      M.map_smul_Spec, Iso.inv_hom_id_apply] at this
    simpa using this

end QuasicoherentTilde

open QuasicoherentTilde in
set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `M` is a quasi-coherent `𝒪_{Spec R}` module, it is isomorphic to `Γ(M)^~`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06d1d92a2293c66b68f27b9d03d863c6839eef5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
