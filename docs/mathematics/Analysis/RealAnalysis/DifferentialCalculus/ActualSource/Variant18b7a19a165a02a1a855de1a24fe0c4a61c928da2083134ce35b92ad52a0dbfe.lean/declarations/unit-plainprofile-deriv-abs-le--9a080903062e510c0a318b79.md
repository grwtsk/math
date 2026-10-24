# unit_plainProfile_deriv_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da467c91-d1f6-6c31-f155-0166acfbd468",
  "kind": "theorem",
  "lexical_name": "unit_plainProfile_deriv_abs_le",
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
  "slug": "unit-plainprofile-deriv-abs-le--9a080903062e510c0a318b79",
  "source": {
    "blob": "c3f66aa0b3243d6af3c7e046e75534240657f851",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variant18b7a19a165a02a1a855de1a24fe0c4a61c928da2083134ce35b92ad52a0dbfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a080903062e510c0a318b79528c185f6ea58cba4a2336d50e0e3b55c987cb8f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variant18b7a19a165a02a1a855de1a24fe0c4a61c928da2083134ce35b92ad52a0dbfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da467c91-d1f6-6c31-f155-0166acfbd468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_plainProfile_deriv_abs_le {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    |deriv (plainProfile A 1) x| ≤ (1 / 2 + 5 / A) * x ^ (-3 / 2 : ℝ) := by
  have hw : 0 ≤ x ^ (-3 / 2 : ℝ) := Real.rpow_nonneg hx.le _
  have hc := actual_correlation_abs_le_one A (Real.log x) hA
  have hcp := sourceCorrelation_deriv_abs_le_five_div hA (Real.log x)
  rw [(unit_plainProfile_hasDerivAt hA hx).deriv, abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ x ^ (-3 / 2 : ℝ) *
        (|deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x)| +
          |sourceCorrelation explicitSecondDerivative A (Real.log x)| / 2) := by
      apply mul_le_mul_of_nonneg_left _ hw
      simpa only [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
        abs_sub (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x))
          (sourceCorrelation explicitSecondDerivative A (Real.log x) / 2)
    _ ≤ x ^ (-3 / 2 : ℝ) * (5 / A + 1 / 2) := by
      apply mul_le_mul_of_nonneg_left _ hw
      exact add_le_add hcp (div_le_div_of_nonneg_right hc (by norm_num))
    _ = _ := by ring

/-- The actual maintained sharp energy result implies the requested coarse coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variant18b7a19a165a02a1a855de1a24fe0c4a61c928da2083134ce35b92ad52a0dbfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variant18b7a19a165a02a1a855de1a24fe0c4a61c928da2083134ce35b92ad52a0dbfe.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f66aa0b3243d6af3c7e046e75534240657f851` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
