# isPushout_iff_isPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7914f5a1-bff0-8844-6e7f-f556ad25ca74",
  "kind": "lemma",
  "lexical_name": "isPushout_iff_isPushout",
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
  "slug": "ispushout-iff-ispushout--965be532399fbc03accda6df",
  "source": {
    "blob": "49bf76d2933f66199b49c6b2ace6278eb3f4481a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 145,
    "path": "GRWTSK/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965be532399fbc03accda6dfb03b6bfae52c1d5fde5ccfbeb49bfa75eff9bdc3",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7914f5a1-bff0-8844-6e7f-f556ad25ca74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPushout_iff_isPushout {R S : Type u} [CommRing R] [CommRing S] [Algebra R S]
    {R' S' : Type u} [CommRing R'] [CommRing S'] [Algebra R R'] [Algebra S S'] [Algebra R' S']
    [Algebra R S'] [IsScalarTower R R' S'] [IsScalarTower R S S'] :
    IsPushout (ofHom <| algebraMap R R') (ofHom <| algebraMap R S)
      (ofHom <| algebraMap R' S') (ofHom <| algebraMap S S') ↔ Algebra.IsPushout R R' S S' := by
  refine ⟨fun h ↦ ?_, fun h ↦ isPushout_of_isPushout ..⟩
  let e : R' ⊗[R] S ≃+* S' := ((CommRingCat.isPushout_tensorProduct R R' S).isoPushout ≪≫
      h.isoPushout.symm).commRingCatIsoToRingEquiv
  have h2 (r : R') : (CommRingCat.isPushout_tensorProduct R R' S).isoPushout.hom
      (r ⊗ₜ 1) = (pushout.inl (ofHom _) (ofHom _)) r :=
    congr($((CommRingCat.isPushout_tensorProduct R R' S).inl_isoPushout_hom).hom r)
  have h3 (x : R') := congr($(h.inl_isoPushout_inv) x)
  dsimp only [hom_comp, RingHom.coe_comp, Function.comp_apply, hom_ofHom] at h3
  let e' : R' ⊗[R] S ≃ₐ[R'] S' := {
    __ := e
    commutes' r := by simp [Iso.commRingCatIsoToRingEquiv, h2, e, h3] }
  refine Algebra.IsPushout.of_equiv e' ?_
  ext s
  have h1 : (CommRingCat.isPushout_tensorProduct R R' S).isoPushout.hom
      (algebraMap S (R' ⊗[R] S) s) = (pushout.inr (ofHom _) (ofHom _)) s :=
    congr($((CommRingCat.isPushout_tensorProduct R R' S).inr_isoPushout_hom).hom s)
  have h4 (x : S) := congr($(h.inr_isoPushout_inv) x)
  dsimp only [hom_comp, RingHom.coe_comp, Function.comp_apply, hom_ofHom] at h4
  simp [Iso.commRingCatIsoToRingEquiv, h1, e', e, h4]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49bf76d2933f66199b49c6b2ace6278eb3f4481a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
