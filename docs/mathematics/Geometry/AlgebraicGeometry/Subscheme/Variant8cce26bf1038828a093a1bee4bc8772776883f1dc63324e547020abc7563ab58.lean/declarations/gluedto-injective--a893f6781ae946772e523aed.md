# gluedTo_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "807d549eba1105b449311e8bb91afdf0b6f6dd1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f57fb2fd-ddf5-1ca4-3e8f-d4624a262148",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e39ee77-d710-7048-0413-95de7a7a7cc5",
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
  "slug": "gluedto-injective--a893f6781ae946772e523aed",
  "source": {
    "blob": "807d549eba1105b449311e8bb91afdf0b6f6dd1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 359,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a893f6781ae946772e523aed983c15925f79e4d14adcd11c51072923f52a7ea6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e39ee77-d710-7048-0413-95de7a7a7cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma gluedTo_injective :
    Function.Injective I.gluedTo := by
  intro a b e
  obtain ⟨ia, a : I.glueDataObj ia, rfl⟩ :=
    I.glueData.toGlueData.ι_jointly_surjective forget a
  obtain ⟨ib, b : I.glueDataObj ib, rfl⟩ :=
    I.glueData.toGlueData.ι_jointly_surjective forget b
  change I.glueData.ι ia a = I.glueData.ι ib b
  have : (I.glueDataObjι ia a).1 = (I.glueDataObjι ib b).1 := by
    have : (I.glueData.ι ia ≫ I.gluedTo) a = (I.glueData.ι ib ≫ I.gluedTo) b := e
    rwa [ι_gluedTo, ι_gluedTo] at this
  obtain ⟨f, g, hfg, H⟩ := exists_basicOpen_le_affine_inter ia.2 ib.2
    (I.glueDataObjι ia a).1
      ⟨(I.glueDataObjι ia a).2, this ▸ (I.glueDataObjι ib b).2⟩
  have hmem (W) (hW : W = X.affineBasicOpen g) :
      b ∈ Set.range (I.glueDataObjMap (hW.trans_le (X.affineBasicOpen_le g))) := by
    subst hW
    refine (I.opensRange_glueDataObjMap g).ge ?_
    change (I.glueDataObjι ib b).1 ∈ X.basicOpen g
    rwa [← this, ← hfg]
  obtain ⟨a, rfl⟩ := (I.opensRange_glueDataObjMap f).ge H
  obtain ⟨b, rfl⟩ := hmem (X.affineBasicOpen f) (Subtype.ext hfg)
  simp only [glueData_U, ← Scheme.Hom.comp_apply, glueDataObjMap_glueDataObjι] at this ⊢
  simp only [Scheme.affineBasicOpen_coe, Scheme.Hom.comp_base, TopCat.comp_app,
    Scheme.homOfLE_apply, SetLike.coe_eq_coe] at this
  obtain rfl := (I.glueDataObjι (X.affineBasicOpen f)).isEmbedding.injective this
  simp only [glueDataObjMap_ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `807d549eba1105b449311e8bb91afdf0b6f6dd1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
