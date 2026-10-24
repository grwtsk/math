# gluedTo_injective

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
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a814ec1e-875a-4d4b-5931-159bd0b1b66e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc6d7c80-f6a8-0eb4-22ec-e23e5c285ed5",
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
  "slug": "gluedto-injective--cff5a6883bcce92c929c8450",
  "source": {
    "blob": "694fe45fcdcccce46e4dc883f56b70c042fb362a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 340,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cff5a6883bcce92c929c8450103db3ab772a6de94aaec9c9b0a60a5c378dbd71",
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

Occurrence: `result:fc6d7c80-f6a8-0eb4-22ec-e23e5c285ed5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–368.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694fe45fcdcccce46e4dc883f56b70c042fb362a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
