# criticalPrimeSum_eq_continuous_sub_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0dddca77ebb5bbb2328227115c896f09ccf2d85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/866cee3da1a544e33eeb9fb4fffb17ee7ca9622ffbf0339b85259b09b8ee6399.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a343382-fdd6-1359-fd70-2c5f82e9b723",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bd92c5c-7400-3f57-a737-807c2841d6eb",
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
  "slug": "criticalprimesum-eq-continuous-sub-work--a49a9da6e863a29adec49c50",
  "source": {
    "blob": "b0dddca77ebb5bbb2328227115c896f09ccf2d85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV3Source/Variant866cee3da1a544e33eeb9fb4fffb17ee7ca9622ffbf0339b85259b09b8ee6399.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a49a9da6e863a29adec49c506c2936631178d19a4469d1281d10435150086b7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DraftV3Source/Variant866cee3da1a544e33eeb9fb4fffb17ee7ca9622ffbf0339b85259b09b8ee6399.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bd92c5c-7400-3f57-a737-807c2841d6eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–140.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DraftV3Source/Variant866cee3da1a544e33eeb9fb4fffb17ee7ca9622ffbf0339b85259b09b8ee6399.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV3Source/Variant866cee3da1a544e33eeb9fb4fffb17ee7ca9622ffbf0339b85259b09b8ee6399.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0dddca77ebb5bbb2328227115c896f09ccf2d85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
