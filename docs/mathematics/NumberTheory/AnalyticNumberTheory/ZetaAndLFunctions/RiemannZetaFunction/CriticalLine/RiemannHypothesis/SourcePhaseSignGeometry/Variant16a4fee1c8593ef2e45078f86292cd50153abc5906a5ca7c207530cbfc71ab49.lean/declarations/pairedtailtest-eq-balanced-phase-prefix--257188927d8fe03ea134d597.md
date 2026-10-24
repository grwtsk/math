# pairedTailTest_eq_balanced_phase_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7804639baa87c9aa85779796cf39fefea97761d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff1d7dec-a9a6-dd20-70f7-5b7acd323efc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a92e5379-77ad-b32b-3250-3eebbc160cf6",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_eq_balanced_phase_prefix",
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
  "slug": "pairedtailtest-eq-balanced-phase-prefix--257188927d8fe03ea134d597",
  "source": {
    "blob": "7804639baa87c9aa85779796cf39fefea97761d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhaseSignGeometry/Variant16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:257188927d8fe03ea134d59767d6eef22ec946ab056b67cb86026bf66ca6dd70",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhaseSignGeometry/Variant16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a92e5379-77ad-b32b-3250-3eebbc160cf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_eq_balanced_phase_prefix {A u : ℝ} (hA : 1 ≤ A)
    (hu : u ∈ Icc 0 (2 * A)) :
    pairedTailTest A u =
      (positiveMass A / negativeMass A) * (∫ t in 0..u, negativeSlope A t) -
        (∫ t in 0..u, positiveSlope A t) := by
  have hA0 : 0 < A := by linarith
  have hp : IntervalIntegrable (positiveSlope A) volume 0 u :=
    (positiveSlope_continuous hA0).intervalIntegrable 0 u
  have hn : IntervalIntegrable (negativeSlope A) volume 0 u :=
    (negativeSlope_continuous hA0).intervalIntegrable 0 u
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hu.1
    (pairedTailTest_continuous hA).continuousOn
    (fun t _ => pairedTailTest_hasDerivAt hA t)
    (hp.neg.add (hn.const_mul (positiveMass A / negativeMass A)))
  rw [intervalIntegral.integral_add
      (f := fun t : ℝ => -positiveSlope A t)
      (g := fun t : ℝ => (positiveMass A / negativeMass A) * negativeSlope A t)
      hp.neg (hn.const_mul (positiveMass A / negativeMass A)),
    intervalIntegral.integral_neg, intervalIntegral.integral_const_mul,
    pairedTailTest_at_zero hA, sub_zero] at h
  linarith

/-- Positive total drift forces an actual interior real point of positive sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhaseSignGeometry/Variant16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhaseSignGeometry/Variant16a4fee1c8593ef2e45078f86292cd50153abc5906a5ca7c207530cbfc71ab49.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7804639baa87c9aa85779796cf39fefea97761d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
