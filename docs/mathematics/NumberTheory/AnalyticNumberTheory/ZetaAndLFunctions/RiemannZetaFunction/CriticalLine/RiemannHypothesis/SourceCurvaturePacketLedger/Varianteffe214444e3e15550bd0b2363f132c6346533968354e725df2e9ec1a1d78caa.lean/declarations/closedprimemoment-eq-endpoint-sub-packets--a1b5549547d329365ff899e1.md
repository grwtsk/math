# closedPrimeMoment_eq_endpoint_sub_packets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96fe076f-478c-5a90-78ed-6a144c9041ac",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_endpoint_sub_packets",
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
  "slug": "closedprimemoment-eq-endpoint-sub-packets--a1b5549547d329365ff899e1",
  "source": {
    "blob": "eebb2b3c4d45694266674bc8d2bf64bf238bb0dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCurvaturePacketLedger/Varianteffe214444e3e15550bd0b2363f132c6346533968354e725df2e9ec1a1d78caa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1b5549547d329365ff899e1d16de08475d754b8b7da49c42c1476f21b8d1b7c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCurvaturePacketLedger/Varianteffe214444e3e15550bd0b2363f132c6346533968354e725df2e9ec1a1d78caa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96fe076f-478c-5a90-78ed-6a144c9041ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_endpoint_sub_packets {A : ℝ} (hA : 1 ≤ A) :
    closedPrimeMoment A = affineEndpointLedger A - criticalPacketLedger A := by
  rw [closedPrimeMoment_eq_mangoldtLogSum]
  unfold mangoldtLogSum affineEndpointLedger criticalPacketLedger
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [critical_endpoint_packet_formula hA]
  ring

/-- Native Q retains the signed endpoint compensation and full continuous contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCurvaturePacketLedger/Varianteffe214444e3e15550bd0b2363f132c6346533968354e725df2e9ec1a1d78caa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCurvaturePacketLedger/Varianteffe214444e3e15550bd0b2363f132c6346533968354e725df2e9ec1a1d78caa.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eebb2b3c4d45694266674bc8d2bf64bf238bb0dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
