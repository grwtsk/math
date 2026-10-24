# paired_curvature_eq_neg_critical_of_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30cd75c9-aa4d-1744-2f63-b40f128e71f2",
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
  "slug": "paired-curvature-eq-neg-critical-of-positive--e2c20d1e206a14fcb4884e50",
  "source": {
    "blob": "b8db3529f300e8e41bddd7538d88197ed999a807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2c20d1e206a14fcb4884e50565c43b6af46c595a42c9c5074e5bf35430fcb26",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30cd75c9-aa4d-1744-2f63-b40f128e71f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–124.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8db3529f300e8e41bddd7538d88197ed999a807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
