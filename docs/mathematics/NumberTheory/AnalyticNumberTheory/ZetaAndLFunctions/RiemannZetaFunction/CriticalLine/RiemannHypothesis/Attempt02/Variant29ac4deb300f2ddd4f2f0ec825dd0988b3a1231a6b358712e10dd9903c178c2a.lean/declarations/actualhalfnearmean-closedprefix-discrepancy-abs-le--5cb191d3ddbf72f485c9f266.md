# actualHalfNearMean_closedPrefix_discrepancy_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5658568-e202-1cfe-0ec6-f9f46a03f092",
  "kind": "theorem",
  "lexical_name": "actualHalfNearMean_closedPrefix_discrepancy_abs_le",
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
  "slug": "actualhalfnearmean-closedprefix-discrepancy-abs-le--5cb191d3ddbf72f485c9f266",
  "source": {
    "blob": "a95c998406e340099c7859d166006e1bda27698f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 270,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant29ac4deb300f2ddd4f2f0ec825dd0988b3a1231a6b358712e10dd9903c178c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cb191d3ddbf72f485c9f26601800d1a2718d3d1361cfa2dab983d82aef5e850",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant29ac4deb300f2ddd4f2f0ec825dd0988b3a1231a6b358712e10dd9903c178c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5658568-e202-1cfe-0ec6-f9f46a03f092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfNearMean_closedPrefix_discrepancy_abs_le {A : ℝ}
    (hA : 25600 ≤ A) :
    |actualHalfNearMeanRetainedRemainder A - actualHalfNearClosedPrefixRetainedRemainder A| ≤
      135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2) / (A * Real.exp A) := by
  rw [actualHalfNearMeanRetainedRemainder_eq_closedPrefix_sub_upper hA,
    sub_sub_cancel_left, abs_neg]
  exact actualUpperPeriodMeanTrace_abs_le (by linarith)

end
end FormalResearch.RiemannHypothesis.SourceActualHalfNearClosedPrefix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant29ac4deb300f2ddd4f2f0ec825dd0988b3a1231a6b358712e10dd9903c178c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant29ac4deb300f2ddd4f2f0ec825dd0988b3a1231a6b358712e10dd9903c178c2a.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95c998406e340099c7859d166006e1bda27698f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
