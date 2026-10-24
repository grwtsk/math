# actualXiCurvature_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83968549-1acd-dea4-e15e-069b2d1ee3af",
  "kind": "theorem",
  "lexical_name": "actualXiCurvature_abs_le",
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
  "slug": "actualxicurvature-abs-le--280d2b89f8168634bbefe6b9",
  "source": {
    "blob": "277dea7a973c39f51b99d3c12a37fdf55ffb9353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant91ce41d0bd59b8819dddd747d771ddba9aff3b4071470433c6b095c8ba13ab6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:280d2b89f8168634bbefe6b91f85b822211de4094e0f348428517be7982650a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant91ce41d0bd59b8819dddd747d771ddba9aff3b4071470433c6b095c8ba13ab6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83968549-1acd-dea4-e15e-069b2d1ee3af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiCurvature_abs_le {A t : ℝ} (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |actualXiCurvature A t| ≤ 5 / A ^ 2 * (1 + t / 2) := by
  have h0 := actualCorrelation_second_abs_le_five hA t
  have h1 := actual_first_small_time hA t
  rw [abs_of_nonneg ht] at h1
  unfold actualXiCurvature
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| := abs_sub_le _ _
    _ ≤ 5 / A ^ 2 + (5 / A ^ 2 * t) / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add h0 (div_le_div_of_nonneg_right h1 (by norm_num))
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant91ce41d0bd59b8819dddd747d771ddba9aff3b4071470433c6b095c8ba13ab6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant91ce41d0bd59b8819dddd747d771ddba9aff3b4071470433c6b095c8ba13ab6d.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `277dea7a973c39f51b99d3c12a37fdf55ffb9353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
