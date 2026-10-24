# negativeSmoothMoment_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5dfba304d010691f056b6810c07f87a999e2d555",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fc24e3f-c1f2-b675-41bc-6d544bf490e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5faa1d55-2f19-d8d5-62b8-71e5855ef7c1",
  "kind": "theorem",
  "lexical_name": "negativeSmoothMoment_upper",
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
  "slug": "negativesmoothmoment-upper--2cb3193e4dc42db8e8129cb1",
  "source": {
    "blob": "5dfba304d010691f056b6810c07f87a999e2d555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb3193e4dc42db8e8129cb16026408f1f9b253eef16c9362df76a12df0b7857",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5faa1d55-2f19-d8d5-62b8-71e5855ef7c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSmoothMoment_upper
    (A : ℝ) (hA : 1 ≤ A) :
    negativeSmoothMoment A ≤ 2 := by
  have hc :=
    (CorrelationRegularity.sourceCorrelation_contDiff A
      (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (-t / 2)) := by
    fun_prop
  have h :=
    intervalIntegral.integral_mono_on
      (μ := volume)
      (by linarith : (0 : ℝ) ≤ 2 * A)
      ((he.mul hc).intervalIntegrable _ _)
      (he.intervalIntegrable _ _)
      (fun t _ ↦ by
        have ht :=
          (abs_le.mp
            (EstimateCorrelation.actual_correlation_abs_le_one
              A t hA)).2
        exact
          mul_le_mul_of_nonneg_left ht
            (Real.exp_pos (-t / 2)).le)
  have hp :
      (∫ t in 0..2 * A, Real.exp (-t / 2)) =
        2 - 2 * Real.exp (-A) := by
    have hd (t : ℝ) :
        HasDerivAt
          (fun x : ℝ ↦ -2 * Real.exp (-x / 2))
          (Real.exp (-t / 2)) t := by
      apply
        ((((hasDerivAt_id t).neg.div_const 2).exp)
          .const_mul (-2)).congr_deriv
      simp only [Pi.neg_apply, id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.intervalIntegrable _ _)]
    simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
    rw [show -(2 * A) / 2 = -A by ring]
    ring
  unfold negativeSmoothMoment
  rw [hp] at h
  linarith [Real.exp_pos (-A)]

/-- The negative exponential moment is at least minus two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dfba304d010691f056b6810c07f87a999e2d555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
