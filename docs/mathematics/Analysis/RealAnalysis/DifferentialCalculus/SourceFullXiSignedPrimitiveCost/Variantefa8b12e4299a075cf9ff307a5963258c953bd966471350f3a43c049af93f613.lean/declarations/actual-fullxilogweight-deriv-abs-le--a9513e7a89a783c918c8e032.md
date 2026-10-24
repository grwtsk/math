# actual_fullXiLogWeight_deriv_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7965cfa5-5f2b-91a8-7868-fdf4c59297ee",
  "kind": "theorem",
  "lexical_name": "actual_fullXiLogWeight_deriv_abs_le",
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
  "slug": "actual-fullxilogweight-deriv-abs-le--a9513e7a89a783c918c8e032",
  "source": {
    "blob": "fd65b9e5eecdd91681adff906f95eb655ef2b547",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variantefa8b12e4299a075cf9ff307a5963258c953bd966471350f3a43c049af93f613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9513e7a89a783c918c8e03290a3ed735bccc8dd6c116dc167357fe245fb992c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variantefa8b12e4299a075cf9ff307a5963258c953bd966471350f3a43c049af93f613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7965cfa5-5f2b-91a8-7868-fdf4c59297ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_fullXiLogWeight_deriv_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (fullXiLogWeight A) t| ≤
      162826 / (7623 * A ^ 2) + 5 / A / 2 := by
  rw [actual_fullXiLogWeight_deriv A t (by linarith)]
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| := abs_sub _ _
    _ ≤ 162826 / (7623 * A ^ 2) + 5 / A / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add (sourceCorrelation_second_deriv_abs_le_coefficient hA t)
        (div_le_div_of_nonneg_right (sourceCorrelation_deriv_abs_le_five_div hA t)
          (by norm_num))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variantefa8b12e4299a075cf9ff307a5963258c953bd966471350f3a43c049af93f613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCost/Variantefa8b12e4299a075cf9ff307a5963258c953bd966471350f3a43c049af93f613.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd65b9e5eecdd91681adff906f95eb655ef2b547` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
