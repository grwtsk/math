# gluedTo_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6488389-7fa9-d195-8f57-e6dfac50ace7",
  "kind": "lemma",
  "lexical_name": "gluedTo_injective",
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
  "slug": "gluedto-injective--447b6e2b4c23ecf35da89165",
  "source": {
    "blob": "cdc31c03361e5e97798706fdc1030713093fd5b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 348,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:447b6e2b4c23ecf35da89165da913374577ab5aa78d85f3ba65d4c3034ce0c6b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6488389-7fa9-d195-8f57-e6dfac50ace7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma gluedTo_injective :
    Function.Injective I.gluedTo.base := by
  intro a b e
  obtain ⟨ia, a : I.glueDataObj ia, rfl⟩ :=
    I.glueData.toGlueData.ι_jointly_surjective (Scheme.forgetToTop ⋙ forget _) a
  obtain ⟨ib, b : I.glueDataObj ib, rfl⟩ :=
    I.glueData.toGlueData.ι_jointly_surjective (Scheme.forgetToTop ⋙ forget _) b
  show (I.glueData.ι ia).base a = (I.glueData.ι ib).base b
  have : ((I.glueDataObjι ia).base a).1 = ((I.glueDataObjι ib).base b).1 := by
    have : (I.glueData.ι ia ≫ I.gluedTo).base a =
      (I.glueData.ι ib ≫ I.gluedTo).base b := e
    rwa [ι_gluedTo, ι_gluedTo] at this
  obtain ⟨f, g, hfg, H⟩ := exists_basicOpen_le_affine_inter ia.2 ib.2
    ((I.glueDataObjι ia).base a).1
      ⟨((I.glueDataObjι ia).base a).2, this ▸ ((I.glueDataObjι ib).base b).2⟩
  have hmem (W) (hW : W = X.affineBasicOpen g) :
      b ∈ Set.range (I.glueDataObjMap (hW.trans_le (X.affineBasicOpen_le g))).base := by
    subst hW
    refine (I.opensRange_glueDataObjMap g).ge ?_
    show ((I.glueDataObjι ib).base b).1 ∈ X.basicOpen g
    rwa [← this, ← hfg]
  obtain ⟨a, rfl⟩ := (I.opensRange_glueDataObjMap f).ge H
  obtain ⟨b, rfl⟩ := hmem (X.affineBasicOpen f) (Subtype.ext hfg)
  simp only [glueData_U, ← Scheme.comp_base_apply, glueDataObjMap_glueDataObjι] at this ⊢
  simp only [Scheme.affineBasicOpen_coe, Scheme.comp_coeBase, TopCat.comp_app,
    Scheme.homOfLE_apply, SetLike.coe_eq_coe] at this
  obtain rfl := (I.glueDataObjι (X.affineBasicOpen f)).isEmbedding.injective this
  simp only [glueDataObjMap_ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant0b6269f2ba54cea9eb87e041a7ab856a5b322693f93ac22c6972fad759b22b05.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc31c03361e5e97798706fdc1030713093fd5b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
