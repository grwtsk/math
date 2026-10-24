# actualHalfNearMean_closedPrefix_discrepancy_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c2a2469-fe98-21bc-ad7f-37a867267181",
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
  "slug": "actualhalfnearmean-closedprefix-discrepancy-abs-le--41c08a18448854de8bd57013",
  "source": {
    "blob": "233d971ea948161d49589bc43fe9e621a8bc2c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 271,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearClosedPrefix/Variant8b8aa862619ac3a425a029d883ee38a8a9f1913ff9c35d52b9d69c3ab5bbe9dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41c08a18448854de8bd5701393483e3c83489a3459ed1c1284391185c24555a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearClosedPrefix/Variant8b8aa862619ac3a425a029d883ee38a8a9f1913ff9c35d52b9d69c3ab5bbe9dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c2a2469-fe98-21bc-ad7f-37a867267181`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–280.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearClosedPrefix/Variant8b8aa862619ac3a425a029d883ee38a8a9f1913ff9c35d52b9d69c3ab5bbe9dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearClosedPrefix/Variant8b8aa862619ac3a425a029d883ee38a8a9f1913ff9c35d52b9d69c3ab5bbe9dd.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `233d971ea948161d49589bc43fe9e621a8bc2c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
