# actual_square_tail_not_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b4886535e854940abad0fe43aab306573c06902",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f92e5329-8ab1-b34c-011a-e4c365f3b387",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2a20d7a-0267-27f1-32f2-cc487d667dac",
  "kind": "theorem",
  "lexical_name": "actual_square_tail_not_decay",
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
  "slug": "actual-square-tail-not-decay--dd4a42681f1045e4e9938312",
  "source": {
    "blob": "0b4886535e854940abad0fe43aab306573c06902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 16,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd4a42681f1045e4e9938312b9df4b56e7ec4a8d1074f2a8ec3d84de91f00e1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2a20d7a-0267-27f1-32f2-cc487d667dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_square_tail_not_decay : squareTail ≠ criticalDecay := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  have hq : squareTail (Real.log 2) = squarePrefixBaseline :=
    squareTail_below_first_square (by linarith)
  have hh : criticalDecay (Real.log 2) < criticalDecay 0 := by
    simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero]
    rw [Real.exp_lt_one_iff]
    linarith
  intro he
  have h0 := congrFun he 0
  have hlog := congrFun he (Real.log 2)
  rw [squareTail_at_zero] at h0
  rw [hq] at hlog
  linarith

#check endpoint_minus_one_required
#print axioms endpoint_minus_one_required
#check actual_square_tail_not_decay
#print axioms actual_square_tail_not_decay
end FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant6d933d6de5625ed8b8c2a0d78d75bbd51a4604f0b6941a7ec148b97fdacaeed0.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b4886535e854940abad0fe43aab306573c06902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
