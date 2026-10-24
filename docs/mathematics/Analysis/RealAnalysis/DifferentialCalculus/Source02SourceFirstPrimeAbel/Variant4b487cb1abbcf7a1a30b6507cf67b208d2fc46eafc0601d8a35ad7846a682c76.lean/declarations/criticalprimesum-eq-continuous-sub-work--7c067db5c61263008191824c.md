# criticalPrimeSum_eq_continuous_sub_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0289548-2038-8f82-01be-e046d1269a6d",
  "kind": "theorem",
  "lexical_name": "criticalPrimeSum_eq_continuous_sub_work",
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
  "slug": "criticalprimesum-eq-continuous-sub-work--7c067db5c61263008191824c",
  "source": {
    "blob": "29de7ed49e75d3b6b29b212ae699fbbfc78fdc95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Source02SourceFirstPrimeAbel/Variant4b487cb1abbcf7a1a30b6507cf67b208d2fc46eafc0601d8a35ad7846a682c76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c067db5c61263008191824c79abc4d036c2f516411608788dbc845ffc42818e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Source02SourceFirstPrimeAbel/Variant4b487cb1abbcf7a1a30b6507cf67b208d2fc46eafc0601d8a35ad7846a682c76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0289548-2038-8f82-01be-e046d1269a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeSum_eq_continuous_sub_work (A : ℝ) (hA : 1 ≤ A) :
    primeLogSum (2 * A) (criticalPrimeTest A) =
      criticalContinuousMoment A - criticalSignedWork A := by
  have h := primeLogWindow_sub_integral 0 (2 * A) (by norm_num) (by linarith)
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A (by linarith))
  rw [criticalPrimeWindow_eq_sum, criticalPrimeTest_at_upper A (by linarith)] at h
  simp only [primeLogError, primeLogPrefix_zero, sub_self, zero_mul, mul_zero,
    zero_sub] at h
  change primeLogSum (2 * A) (criticalPrimeTest A) - criticalContinuousMoment A =
    -criticalSignedWork A at h
  linarith

/-- Upper control of the first-prime main-term sum is exactly a signed lower target.
This equivalence does not construct either witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Source02SourceFirstPrimeAbel/Variant4b487cb1abbcf7a1a30b6507cf67b208d2fc46eafc0601d8a35ad7846a682c76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Source02SourceFirstPrimeAbel/Variant4b487cb1abbcf7a1a30b6507cf67b208d2fc46eafc0601d8a35ad7846a682c76.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29de7ed49e75d3b6b29b212ae699fbbfc78fdc95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
