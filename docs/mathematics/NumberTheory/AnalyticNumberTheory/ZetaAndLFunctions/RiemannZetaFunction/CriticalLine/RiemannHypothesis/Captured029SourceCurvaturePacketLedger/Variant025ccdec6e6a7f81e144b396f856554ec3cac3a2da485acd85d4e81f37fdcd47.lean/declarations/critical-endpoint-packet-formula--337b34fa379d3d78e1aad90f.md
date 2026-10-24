# critical_endpoint_packet_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08957b12-7dab-2eb6-a35f-6cb2d99ab8fe",
  "kind": "theorem",
  "lexical_name": "critical_endpoint_packet_formula",
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
  "slug": "critical-endpoint-packet-formula--337b34fa379d3d78e1aad90f",
  "source": {
    "blob": "d775e0472e307061741aa14863e7c8226cf43b0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured029SourceCurvaturePacketLedger/Variant025ccdec6e6a7f81e144b396f856554ec3cac3a2da485acd85d4e81f37fdcd47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:337b34fa379d3d78e1aad90f740f5a07ffd4553f9795708a3c3078a0dd8b0304",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured029SourceCurvaturePacketLedger/Variant025ccdec6e6a7f81e144b396f856554ec3cac3a2da485acd85d4e81f37fdcd47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08957b12-7dab-2eb6-a35f-6cb2d99ab8fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_endpoint_packet_formula {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    packetValue (criticalPrimeTest A) s (2 * A - s) s =
      1 - s / (2 * A) - criticalPrimeTest A s := by
  rw [endpoint_packet_formula _ (show 2 * A ≠ 0 by linarith),
    criticalPrimeTest_at_zero A hA, criticalPrimeTest_at_upper A (by linarith)]
  ring

/-- The exact initial endpoint coefficient; it may grow with A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured029SourceCurvaturePacketLedger/Variant025ccdec6e6a7f81e144b396f856554ec3cac3a2da485acd85d4e81f37fdcd47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured029SourceCurvaturePacketLedger/Variant025ccdec6e6a7f81e144b396f856554ec3cac3a2da485acd85d4e81f37fdcd47.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d775e0472e307061741aa14863e7c8226cf43b0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
