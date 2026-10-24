# actual_correlation_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9633e0f1-0200-81d2-ceb8-32cd1f9ecf23",
  "kind": "theorem",
  "lexical_name": "actual_correlation_edge_abs_le",
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
  "slug": "actual-correlation-edge-abs-le--dfc0247f8a25c8ab50975ab0",
  "source": {
    "blob": "c690e786cbd792230363408231312db64378a5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfc0247f8a25c8ab50975ab00cdb9c143e30f832f012f06136e4b91121ff60df",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9633e0f1-0200-81d2-ceb8-32cd1f9ecf23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_edge_abs_le {A z : ℝ} (hA : 91 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A z| ≤
      67 / A ^ 4 * (2 * A - z) ^ 4 / 24 := by
  have h0 := edge_jet_zero A (by linarith) 0
  have h1 := edge_jet_zero A (by linarith) 1
  have h2 := edge_jet_zero A (by linarith) 2
  have h3 := edge_jet_zero A (by linarith) 3
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h0 h1 h2 h3
  have h := cubicCorrelationRemainder_abs_le A (2 * A) (z - 2 * A) hA
  simp only [cubicCorrelationRemainder, cubicCorrelationJet, h0, h1, h2, h3,
    mul_zero, add_zero, sub_zero] at h
  rw [show 2 * A + (z - 2 * A) = z by ring] at h
  convert h using 1
  ring

/-- Actual first derivative jets retain the third-power edge factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c690e786cbd792230363408231312db64378a5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
