# actual_cubic_log_derivative_error_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46c4a2060349d15af67f9afe1a273a728c8283f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3dd86e3-1d7d-4cf6-3b03-0a341999237c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10f21517-4bca-fc70-3b47-88d3d04ab05b",
  "kind": "theorem",
  "lexical_name": "actual_cubic_log_derivative_error_integrable",
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
  "slug": "actual-cubic-log-derivative-error-integrable--e037421b9becbcd1d1f84d03",
  "source": {
    "blob": "46c4a2060349d15af67f9afe1a273a728c8283f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e037421b9becbcd1d1f84d03eb6bf3880ac339f157f813e97e853eb41155ab04",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10f21517-4bca-fc70-3b47-88d3d04ab05b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cubic_log_derivative_error_integrable {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    IntegrableOn (fun u => deriv (logProfile A k) u - cubicLogModelDerivative A k u)
      (Ioi (1 : ℝ)) := by
  apply (cubicUpperMajorant_integrable A k).mono'
  · exact ((logProfile_contDiff (by linarith : 0 < A) k).continuous_deriv_one.measurable.sub
      (cubicLogModelDerivative_measurable A k)).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs]
    exact actual_cubic_log_derivative_error_le_majorant hA hk hu

/-- Independent literal centered cubic error row; no sampling sum is substituted for it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46c4a2060349d15af67f9afe1a273a728c8283f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
