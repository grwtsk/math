# aux_basicOpen_of_aux_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e686d5ca-b84c-66ca-a8dc-c94f08b4500c",
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
  "slug": "aux-basicopen-of-aux-restrict--f3e0e9c5dac11355d9c3dda2",
  "source": {
    "blob": "7b414ff838619701683daafb0d6146a5314aebc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 849,
    "line": 806,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3e0e9c5dac11355d9c3dda2ff0819bb21357afcb26641d202fbc126e45fa77f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e686d5ca-b84c-66ca-a8dc-c94f08b4500c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 806–849.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean#L806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b414ff838619701683daafb0d6146a5314aebc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
