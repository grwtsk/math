# ideal_ker_le_ker_ΓSpecIso_inv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "694fe45fcdcccce46e4dc883f56b70c042fb362a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 627,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7211c11f-9c74-c6ca-0517-906e6d8acbd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df653e0b-cea6-b121-12ad-05ace73111ae",
  "kind": "lemma",
  "lexical_name": "ideal_ker_le_ker_ΓSpecIso_inv_comp",
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
  "slug": "ideal-ker-le-ker-speciso-inv-comp--3a36775ac0d8a6156125c207",
  "source": {
    "blob": "694fe45fcdcccce46e4dc883f56b70c042fb362a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 627,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a36775ac0d8a6156125c207ea1329bb74039999a1ff8610b8f8fad88dc487e5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df653e0b-cea6-b121-12ad-05ace73111ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ideal_ker_le_ker_ΓSpecIso_inv_comp :
    f.ker.ideal U ≤ RingHom.ker ((ΓSpecIso Γ(Y, ↑U)).inv ≫
      (pullback.snd f U.1.ι ≫ U.1.toSpecΓ).appTop).hom := by
  let e : Γ(X, f ⁻¹ᵁ ↑U) ≅ Γ(Limits.pullback (C := Scheme) f U.1.ι, ⊤) :=
    X.presheaf.mapIso (eqToIso (by simp [IsOpenImmersion.opensRange_pullback_fst_of_right])).op
      ≪≫ (Limits.pullback.fst (C := Scheme) f U.1.ι).appIso ⊤
  have he : f.app U ≫ e.hom =
      (ΓSpecIso Γ(Y, ↑U)).inv ≫ (pullback.snd f U.1.ι ≫ U.1.toSpecΓ).appTop := by
    rw [← (Iso.inv_comp_eq _).mpr U.2.isoSpec_inv_appTop, Category.assoc, Iso.eq_inv_comp]
    simp only [Opens.topIso_hom, eqToHom_op, Hom.app_eq_appLE, Iso.trans_hom, Functor.mapIso_hom,
      Iso.op_hom, eqToIso.hom, Hom.appIso_hom, Hom.appLE_map, Hom.map_appLE, appLE_comp_appLE,
      Opens.map_top, e, pullback.condition, IsAffineOpen.toSpecΓ_isoSpec_inv, Category.assoc]
    rw [comp_appLE, Opens.ι_app]
    exact Hom.map_appLE _ _ (homOfLE le_top).op
  rw [← he]
  refine (IdealSheafData.ideal_ofIdeals_le _ _).trans_eq
    (RingHom.ker_equiv_comp _ e.commRingCatIsoToRingEquiv).symm

private noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694fe45fcdcccce46e4dc883f56b70c042fb362a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
