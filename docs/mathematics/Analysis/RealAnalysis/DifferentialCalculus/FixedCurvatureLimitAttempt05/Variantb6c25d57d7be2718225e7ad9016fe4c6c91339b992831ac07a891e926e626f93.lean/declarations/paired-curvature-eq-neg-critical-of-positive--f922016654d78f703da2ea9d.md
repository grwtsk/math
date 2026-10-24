# paired_curvature_eq_neg_critical_of_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:168b62ae-06ee-8a32-dc8f-9a30091eabd6",
  "kind": "theorem",
  "lexical_name": "paired_curvature_eq_neg_critical_of_positive",
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
  "slug": "paired-curvature-eq-neg-critical-of-positive--f922016654d78f703da2ea9d",
  "source": {
    "blob": "14c1e1b2599c20928fa5ae59f4172a55d7fa8d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f922016654d78f703da2ea9debb9ef2465dcec9777be08fc9c57a2a12c04e428",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:168b62ae-06ee-8a32-dc8f-9a30091eabd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paired_curvature_eq_neg_critical_of_positive {A u : ℝ} (hA : 1 ≤ A)
    (hu : 0 < deriv (criticalPrimeTest A) u) :
    deriv (deriv (pairedTailTest A)) u = -deriv (deriv (criticalPrimeTest A)) u := by
  have hc : Continuous (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff A (by linarith)).continuous_deriv_one
  have hp : ∀ᶠ t in 𝓝 u, 0 < deriv (criticalPrimeTest A) t :=
    hc.continuousAt.tendsto.eventually (eventually_gt_nhds hu)
  have he : deriv (pairedTailTest A) =ᶠ[𝓝 u] -deriv (criticalPrimeTest A) := by
    filter_upwards [hp] with t ht
    rw [pairedTailTest_deriv hA, positiveSlope, negativeSlope,
      max_eq_left ht.le, max_eq_right (neg_nonpos.mpr ht.le), mul_zero, add_zero]
    rfl
  rw [he.deriv_eq, deriv.neg]

/-- The actual paired curvature at every fixed real position has this negative limit.
No growing-domain integral or max-seam differentiation is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c1e1b2599c20928fa5ae59f4172a55d7fa8d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
