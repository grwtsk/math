# newtonStepTM_fc_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 733,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b744e0d-01be-298a-ca59-04b6d805531b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9de0f1fc-06f5-2cf6-61ff-bc8450c20d1c",
  "kind": "lemma",
  "lexical_name": "newtonStepTM_fc_correct",
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
  "slug": "newtonsteptm-fc-correct--6b3eba3dcfab74a6840cfa91",
  "source": {
    "blob": "ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 733,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b3eba3dcfab74a6840cfa916942484d5ce5da8c4e7102a5805a834b5edbf4fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de0f1fc-06f5-2cf6-61ff-bc8450c20d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 733–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma newtonStepTM_fc_correct (e : Expr) (I : IntervalRat)
    (tm : TaylorModel) (htmeq : TaylorModel.fromExpr? e I 1 = some tm) :
    let c := I.midpoint
    let fc := TaylorModel.valueAtCenterInterval tm
    evalFunc1 e c ∈ fc := by
  simp only
  -- tm.domain = I from fromExpr?_domain
  have hdomain := fromExpr?_domain e I 1 tm htmeq
  -- From fromExpr_evalSet_correct: ∀ x ∈ I, f(x) ∈ tm.evalSet x
  have heval : ∀ x ∈ I, Expr.eval (fun _ => x) e ∈ tm.evalSet x :=
    fromExpr_evalSet_correct e I 1 tm htmeq
  -- Convert to ∀ x ∈ tm.domain
  have heval' : ∀ x ∈ tm.domain, Expr.eval (fun _ => x) e ∈ tm.evalSet x := by
    intro x hx
    rw [hdomain] at hx
    exact heval x hx
  -- tm.center = I.midpoint
  have hc_eq := fromExpr?_center e I 1 tm htmeq
  -- center ∈ tm.domain
  have hc_in_domain : (tm.center : ℝ) ∈ tm.domain := by
    rw [hdomain]
    rw [hc_eq]
    exact IntervalRat.midpoint_mem I
  -- From valueAtCenter_correct: f(center) ∈ valueAtCenterInterval tm
  have hfc_correct := TaylorModel.valueAtCenter_correct tm (fun x => Expr.eval (fun _ => x) e) heval' hc_in_domain
  simp only [evalFunc1]
  -- Rewrite center to I.midpoint
  rw [hc_eq] at hfc_correct
  exact hfc_correct

end LeanCert.Engine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean#L733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
