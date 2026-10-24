# intervalIntegrable_logDeriv_two

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
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f723200-1444-86c0-95a7-23a679ec0067",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc50f4fd-1d84-fafc-829e-4738b93ce28e",
  "kind": "lemma",
  "lexical_name": "intervalIntegrable_logDeriv_two",
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
  "slug": "intervalintegrable-logderiv-two--98f59993ed3c8564e1da4940",
  "source": {
    "blob": "c6befe86b10230e4d760832461349890375289e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98f59993ed3c8564e1da4940c12b7325c26db3296606056e9a9057bc37c9b373",
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

Occurrence: `result:bc50f4fd-1d84-fafc-829e-4738b93ce28e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma intervalIntegrable_logDeriv_two {f : ℂ → ℂ} {T₁ T₂ : ℝ}
    (h : ∀ t ∈ uIcc T₁ T₂, AnalyticAt ℂ f (2 + t * I) ∧ f (2 + t * I) ≠ 0) :
    IntervalIntegrable (fun t : ℝ => logDeriv f (2 + t * I) * I) volume T₁ T₂ := by
  apply ContinuousOn.intervalIntegrable
  intro t ht
  obtain ⟨ha, hne⟩ := h t ht
  have hc := (continuousAt_logDeriv_of_analyticAt ha hne).comp
    (f := fun t : ℝ => (2 : ℂ) + t * I) (x := t) (by fun_prop)
  exact (hc.mul continuousAt_const).continuousWithinAt

/-- **Vertical side.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6befe86b10230e4d760832461349890375289e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
