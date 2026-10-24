# actualErrorExpMass_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "426815c81b8fcb81fa26da0e1e56b1cf3723675c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7143d15-b151-ff79-a461-e17dd219c02f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:776afd25-6434-da26-b996-12a789aaed4a",
  "kind": "theorem",
  "lexical_name": "actualErrorExpMass_nonneg",
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
  "slug": "actualerrorexpmass-nonneg--c3c587f314b1bd58514f4bde",
  "source": {
    "blob": "426815c81b8fcb81fa26da0e1e56b1cf3723675c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2d12379e9ecd829b921fSourceActualMixedWorkExplicitEnvelope/Variant2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3c587f314b1bd58514f4bde76fb7e8a95d661418fe598c74aa54fc91456264e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2d12379e9ecd829b921fSourceActualMixedWorkExplicitEnvelope/Variant2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:776afd25-6434-da26-b996-12a789aaed4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualErrorExpMass_nonneg (A : ℝ) (hA : 1 ≤ A) : 0 ≤ actualErrorExpMass A := by
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast (by have := vaughanCutoff_pos A hA; omega : 0 < vaughanCutoff A)
  unfold actualErrorExpMass
  apply intervalIntegral.integral_nonneg (Real.log_le_log hU0 (by exact_mod_cast hUN))
  intro t _
  positivity

/-- A genuine quantitative bound on the complete actual work, with its precise growth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2d12379e9ecd829b921fSourceActualMixedWorkExplicitEnvelope/Variant2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2d12379e9ecd829b921fSourceActualMixedWorkExplicitEnvelope/Variant2d12379e9ecd829b921f3fe271ca548a99fd63874c743c21d9dbf70283abb774.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `426815c81b8fcb81fa26da0e1e56b1cf3723675c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
