# criticalRemovedPairedWork_eq_cumulative_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "372bfa9ded1b3169f26221cfad5da6367115aa16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b97afdaf25ea54b5d7a906555f9637c234895a0a0554d63c6d6d7e7186ae5ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e97099a-feaa-841f-432f-d392474f9324",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff5a5ffb-6f1a-95d5-5601-2dad0a9aa7a0",
  "kind": "theorem",
  "lexical_name": "criticalRemovedPairedWork_eq_cumulative_work",
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
  "slug": "criticalremovedpairedwork-eq-cumulative-work--b85d9a3927b7ebd71219e3f5",
  "source": {
    "blob": "372bfa9ded1b3169f26221cfad5da6367115aa16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant9b97afdaf25ea54b5d7a906555f9637c234895a0a0554d63c6d6d7e7186ae5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b85d9a3927b7ebd71219e3f5246fa465492bac72c214738e088f7b7b9c2f5aba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant9b97afdaf25ea54b5d7a906555f9637c234895a0a0554d63c6d6d7e7186ae5ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff5a5ffb-6f1a-95d5-5601-2dad0a9aa7a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalRemovedPairedWork_eq_cumulative_work {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      -(∫ u in 0..2 * A,
        criticalCumulativeDiscrepancy u * deriv (pairedTailTest A) u) := by
  have hD := pairedTailTest_contDiff hA
  have hDpc := paired_deriv_continuous hA
  have hB : Continuous (fun u : ℝ => u - 1 + criticalDecay u) :=
    (continuous_id.sub continuous_const).add decay_continuous
  have hprefix := primeLogPrefix_mul_deriv_intervalIntegrable 0 (2 * A)
    (show 0 ≤ 2 * A by linarith) (pairedTailTest A) hD
  have hmass : IntervalIntegrable (fun u : ℝ =>
      (u - 1 + criticalDecay u) * deriv (pairedTailTest A) u) volume 0 (2 * A) :=
    (hB.mul hDpc).intervalIntegrable (μ := volume) 0 (2 * A)
  have hprime := primeLogSum_abel (2 * A) (show 0 ≤ 2 * A by linarith)
    (pairedTailTest A) hD
  rw [pairedTailTest_at_upper hA, zero_mul, zero_sub] at hprime
  have hdensity := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun x : ℝ => x - 1 + criticalDecay x) (u' := criticalDensity)
    (v := pairedTailTest A) (v' := deriv (pairedTailTest A))
    (fun u _ => density_mass_hasDerivAt u) (fun u _ => paired_hasDerivAt hA u)
    (density_continuous.intervalIntegrable (μ := volume) 0 (2 * A))
    (hDpc.intervalIntegrable (μ := volume) 0 (2 * A))
  simp only [pairedTailTest_at_upper hA, pairedTailTest_at_zero hA, mul_zero,
    sub_zero, zero_sub] at hdensity
  have he : (fun u : ℝ =>
      criticalCumulativeDiscrepancy u * deriv (pairedTailTest A) u) =
      fun u => primeLogPrefix u * deriv (pairedTailTest A) u -
        (u - 1 + criticalDecay u) * deriv (pairedTailTest A) u := by
    funext u
    rw [criticalCumulativeDiscrepancy_eq]
    unfold primeLogError
    ring
  have hi : (∫ u in 0..2 * A,
      criticalCumulativeDiscrepancy u * deriv (pairedTailTest A) u) =
      (∫ u in 0..2 * A, primeLogPrefix u * deriv (pairedTailTest A) u) -
        (∫ u in 0..2 * A,
          (u - 1 + criticalDecay u) * deriv (pairedTailTest A) u) := by
    rw [he]
    exact intervalIntegral.integral_sub hprefix hmass
  rw [criticalRemovedPairedWork_eq_density_quadrature hA]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant9b97afdaf25ea54b5d7a906555f9637c234895a0a0554d63c6d6d7e7186ae5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant9b97afdaf25ea54b5d7a906555f9637c234895a0a0554d63c6d6d7e7186ae5ab.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372bfa9ded1b3169f26221cfad5da6367115aa16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
