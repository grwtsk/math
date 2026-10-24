# critical_kernel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9648087-fc5c-7108-afde-31c2d65ba181",
  "kind": "theorem",
  "lexical_name": "critical_kernel_abs_le",
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
  "slug": "critical-kernel-abs-le--d4095f0ae9365e2a757a2375",
  "source": {
    "blob": "34e87ca6a38ffcfa60cd799403398b541c64b70c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantbacf8ea47099493d0b45cb09bf53b49d570df13bd721eeee0d0bb77ca8dbb1a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4095f0ae9365e2a757a2375a94def1b61d1411feb974631cfdf19ae3cfb7e27",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantbacf8ea47099493d0b45cb09bf53b49d570df13bd721eeee0d0bb77ca8dbb1a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9648087-fc5c-7108-afde-31c2d65ba181`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem critical_kernel_abs_le {A t : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (htA : t ≤ 2 * A) :
    |sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤ 1 / 4 + 5 / A := by
  have h0 := actual_correlation_abs_le_one A t (by linarith : 1 ≤ A)
  have h1 := actualCorrelation_first_abs_le_five hA t
  rw [abs_of_nonneg ht] at h1
  have hp : 0 < A := by linarith
  have h2 : |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 10 / A := by
    apply h1.trans
    rw [div_mul_eq_mul_div]
    apply (div_le_div_iff₀ (sq_pos_of_pos hp) hp).2
    nlinarith
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t| / 4 +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := by
      simpa only [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4),
        abs_of_pos (by norm_num : (0 : ℝ) < 2)] using abs_add_le (sourceCorrelation explicitSecondDerivative A t / 4)
        (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
    _ ≤ 1 / 4 + (10 / A) / 2 := add_le_add
      (div_le_div_of_nonneg_right h0 (by norm_num))
      (div_le_div_of_nonneg_right h2 (by norm_num))
    _ = _ := by ring

/-- A genuine late amplitude gives only the stated signed lower direction and critical cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantbacf8ea47099493d0b45cb09bf53b49d570df13bd721eeee0d0bb77ca8dbb1a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantbacf8ea47099493d0b45cb09bf53b49d570df13bd721eeee0d0bb77ca8dbb1a5.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e87ca6a38ffcfa60cd799403398b541c64b70c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
