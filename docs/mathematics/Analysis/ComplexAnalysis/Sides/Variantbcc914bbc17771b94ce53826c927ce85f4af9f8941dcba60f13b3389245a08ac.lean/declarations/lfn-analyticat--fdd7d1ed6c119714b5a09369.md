# Lfn_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6befe86b10230e4d760832461349890375289e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8552438-b15d-9d5c-b3fa-b4c1056bfa48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3a21202-ef3c-d942-d8b6-c777d0aa0271",
  "kind": "lemma",
  "lexical_name": "Lfn_analyticAt",
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
  "slug": "lfn-analyticat--fdd7d1ed6c119714b5a09369",
  "source": {
    "blob": "c6befe86b10230e4d760832461349890375289e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdd7d1ed6c119714b5a0936914929550115750fa1a98a796c8f9ffdb4555c6d6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a21202-ef3c-d942-d8b6-c777d0aa0271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Lfn_analyticAt {s : ℂ} (hs : 0 < s.re) (hs1 : s ≠ 1) : AnalyticAt ℂ Lfn s := by
  have hs0 : s ≠ 0 := fun h => by simp [h] at hs
  unfold Lfn
  have h1 : AnalyticAt ℂ (logDeriv Gammaℝ) s := by
    apply Zeta23.RvM.logDeriv_Gammaℝ_differentiableOn.analyticAt (Zeta23.RvM.isOpen_rightHalfPlane.mem_nhds hs)
  have h2 : AnalyticAt ℂ (fun z : ℂ => 1 / z) s := analyticAt_const.div analyticAt_id hs0
  have h3 : AnalyticAt ℂ (fun z : ℂ => 1 / (z - 1)) s :=
    analyticAt_const.div (analyticAt_id.sub analyticAt_const) (sub_ne_zero.mpr hs1)
  exact (h1.add h2).add h3

/-- ζ′/ζ is analytic where ζ ≠ 0 (s ≠ 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6befe86b10230e4d760832461349890375289e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
