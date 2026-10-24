# sourceEventGain_eq_packet_gain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d799a0b-fc37-8438-4978-6f818300b9cd",
  "kind": "theorem",
  "lexical_name": "sourceEventGain_eq_packet_gain",
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
  "slug": "sourceeventgain-eq-packet-gain--34c96a338b72961a15fc7e14",
  "source": {
    "blob": "a16403a078a05970787b573fc8ae289a0936934f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCurvaturePacketLedger/Variant1b745904fc6cb117e4a925ae8c871564cde64ce850a084824aa6dc8bde9039e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c96a338b72961a15fc7e1424b8b1343090c3cd0a2d5c3dfe1753bdd2d40073",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCurvaturePacketLedger/Variant1b745904fc6cb117e4a925ae8c871564cde64ce850a084824aa6dc8bde9039e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d799a0b-fc37-8438-4978-6f818300b9cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceEventGain_eq_packet_gain {A : ℝ} (hA : 1 ≤ A) {n : ℕ}
    (hn : n ∈ primePowerInventory (2 * A)) :
    sourceEventGain A n = ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      (2 * packetValue (criticalPrimeTest A) (Real.log n)
        (2 * A - Real.log n) (Real.log n) - 2 * (1 - Real.log n / (2 * A))) := by
  have hn0 : 0 < n := by have := (Finset.mem_Icc.mp hn).1; omega
  rw [sourceEventGain_of_mem A hn, natural_source_coefficient_eq_critical_test A hn0,
    critical_endpoint_packet_formula hA]
  ring

end FormalResearch.RiemannHypothesis.SourceCurvaturePacketLedger
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCurvaturePacketLedger/Variant1b745904fc6cb117e4a925ae8c871564cde64ce850a084824aa6dc8bde9039e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCurvaturePacketLedger/Variant1b745904fc6cb117e4a925ae8c871564cde64ce850a084824aa6dc8bde9039e7.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a16403a078a05970787b573fc8ae289a0936934f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
