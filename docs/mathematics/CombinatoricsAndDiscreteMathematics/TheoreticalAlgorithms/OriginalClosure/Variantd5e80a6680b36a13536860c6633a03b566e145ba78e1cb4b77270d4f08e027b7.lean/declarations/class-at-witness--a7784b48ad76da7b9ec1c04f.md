# class_at_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0795b7b-2376-7cdf-d609-7753679fa243",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8abac24-85cf-7b1e-42a9-fef007e3f027",
  "kind": "theorem",
  "lexical_name": "class_at_witness",
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
  "slug": "class-at-witness--a7784b48ad76da7b9ec1c04f",
  "source": {
    "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26155,
    "line": 26127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7784b48ad76da7b9ec1c04f6947477b87644cae408c4b04296c7cf422701642",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8abac24-85cf-7b1e-42a9-fef007e3f027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26127–26155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem class_at_witness (t : Fin 3) {y x : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (he : Proves P Γ γ (B.relation L.code KY.code KP.code y (B.observation.tagged L.code t x))) :
    Proves P Γ γ (B.cAt L.code KY.code KP.code t (B.classPred L.code KY.code KP.code y) x) := by
  have ht := H.classPred_typed KY KP hy my
  apply H.cAt_intro KY KP t ht.1 ht.2 hx mx
  intro Δ δ e w hw mw
  simp only [cStep,classPred_rename]
  have hy' := y_typed_rename (B := B) e hy
  have hx' := x_typed_rename (B := B) e hx
  have ht' := (H.rename e).classPred_typed (KY.rename e) (KP.rename e) hy' (e.moded my)
  have htag := (H.rename e).observation.tagged_typed t hx' (e.moded mx)
  have he' := he.rename e
  simp only [relation_rename,ObservationCode.tagged_rename] at he'
  have ee := (H.rename e).relation_congr (KY.rename e) (KP.rename e) hw mw hw mw hy' (e.moded my)
    htag.1 htag.2 ((H.rename e).relation_refl (KY.rename e) (KP.rename e) hw mw) he'
  have ec := (H.rename e).class_evaluation (KY.rename e) (KP.rename e) hy' (e.moded my) hw mw
  have ea := (H.rename e).observation_equivalence (KY.rename e) (KP.rename e) hw mw htag.1 htag.2
  exact (L.rename e).iff_of_equivalent
    ((H.rename e).ev_formula ht'.1 ht'.2 hw mw)
    ((H.rename e).observation.ae_formula (KY.rename e) (KP.rename e) hw mw htag.1 htag.2)
    (((H.rename e).ev_formula ht'.1 ht'.2 hw mw).equivalent_trans
      ((H.rename e).relation_formula (KY.rename e) (KP.rename e) hw mw hy' (e.moded my))
      ((H.rename e).observation.ae_formula (KY.rename e) (KP.rename e) hw mw htag.1 htag.2) ec
      (((H.rename e).relation_formula (KY.rename e) (KP.rename e) hw mw hy' (e.moded my)).equivalent_trans
        ((H.rename e).relation_formula (KY.rename e) (KP.rename e) hw mw htag.1 htag.2)
        ((H.rename e).observation.ae_formula (KY.rename e) (KP.rename e) hw mw htag.1 htag.2) ee ea))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean#L26127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
