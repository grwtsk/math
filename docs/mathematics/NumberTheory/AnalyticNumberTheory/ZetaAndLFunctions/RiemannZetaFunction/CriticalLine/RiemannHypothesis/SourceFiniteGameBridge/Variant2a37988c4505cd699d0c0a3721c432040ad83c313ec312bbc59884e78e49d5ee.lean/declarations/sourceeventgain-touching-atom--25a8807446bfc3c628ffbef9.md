# sourceEventGain_touching_atom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d39f6935-34f2-adb7-7fb7-86d0d98ee2ee",
  "kind": "theorem",
  "lexical_name": "sourceEventGain_touching_atom",
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
  "slug": "sourceeventgain-touching-atom--25a8807446bfc3c628ffbef9",
  "source": {
    "blob": "fda42145041b9ecfb53a6ffa95d9547ed0b20132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant2a37988c4505cd699d0c0a3721c432040ad83c313ec312bbc59884e78e49d5ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25a8807446bfc3c628ffbef93f6df3a7bf0bf5580d0958fcf04fe960fd6dddbb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant2a37988c4505cd699d0c0a3721c432040ad83c313ec312bbc59884e78e49d5ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d39f6935-34f2-adb7-7fb7-86d0d98ee2ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceEventGain_touching_atom (A : ℝ) (hA : 1 ≤ A) {n : ℕ}
    (hn : 2 ≤ n) (he : (n : ℝ) = Real.exp (2 * A)) : sourceEventGain A n = 0 := by
  have hl : Real.log (n : ℝ) = 2 * A := by rw [he, Real.log_exp]
  rw [sourceEventGain_eq_raw A hA hn]
  simp [closedPrimeWeight, exponentialTest, hl,
    CorrelationRegularity.sourceCorrelation_upper_endpoint A (by linarith : 0 < A)]

/-- Continuous source lifting includes both one-sided limits at every moving
cutoff: the indicator decoder equals the same actual smooth fixed-index weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant2a37988c4505cd699d0c0a3721c432040ad83c313ec312bbc59884e78e49d5ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant2a37988c4505cd699d0c0a3721c432040ad83c313ec312bbc59884e78e49d5ee.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fda42145041b9ecfb53a6ffa95d9547ed0b20132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
