# actual_correlation_first_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f298eea-ec47-76c7-b1b3-680fc699cbb6",
  "kind": "theorem",
  "lexical_name": "actual_correlation_first_edge_abs_le",
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
  "slug": "actual-correlation-first-edge-abs-le--a39821689d7f8aacf61d0a86",
  "source": {
    "blob": "c690e786cbd792230363408231312db64378a5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a39821689d7f8aacf61d0a86cb9a16b9b1d106db4c5af27a6448e4e1071bbf6c",
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

Occurrence: `result:3f298eea-ec47-76c7-b1b3-680fc699cbb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_first_edge_abs_le {A z : ℝ} (hA : 91 ≤ A) (hz : z ≤ 2 * A) :
    |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤
      67 / A ^ 4 * (2 * A - z) ^ 3 / 6 := by
  have h1 := edge_jet_zero A (by linarith) 1
  have h2 := edge_jet_zero A (by linarith) 2
  have h3 := edge_jet_zero A (by linarith) 3
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h1 h2 h3
  have h := cubicCorrelationRemainder_deriv_abs_le A (2 * A) (z - 2 * A) hA
  rw [(cubicCorrelationRemainder_hasDerivAt A (2 * A) (z - 2 * A)
    (by linarith)).deriv] at h
  simp only [h1, h2, h3, mul_zero, add_zero, sub_zero] at h
  rw [show 2 * A + (z - 2 * A) = z by ring,
    abs_of_nonpos (by linarith : z - 2 * A ≤ 0)] at h
  simpa only [iteratedDeriv_succ, iteratedDeriv_zero,
    show -(z - 2 * A) = 2 * A - z by ring] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c690e786cbd792230363408231312db64378a5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
