# critical_kernel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e6332b2-c7eb-4e2e-69f0-9a19d04c293c",
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
  "slug": "critical-kernel-abs-le--cd849e1066ff1e47b08543b0",
  "source": {
    "blob": "60710ef04a47accf8d4eba577a7b39acd53850d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 177,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variant9038ea0859c9b3b5531e086c2b7ccae7c77912849219b76096b55e49eafdb738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd849e1066ff1e47b08543b0d72b671dfcb106f4947edb28f42605f2ae217c6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variant9038ea0859c9b3b5531e086c2b7ccae7c77912849219b76096b55e49eafdb738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e6332b2-c7eb-4e2e-69f0-9a19d04c293c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–202.

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
        abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
          abs_add_le (sourceCorrelation explicitSecondDerivative A t / 4)
        (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
    _ ≤ 1 / 4 + (10 / A) / 2 := add_le_add
      (div_le_div_of_nonneg_right h0 (by norm_num))
      (div_le_div_of_nonneg_right h2 (by norm_num))
    _ = _ := by ring

/-- A genuine late amplitude gives only the stated signed lower direction and critical cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variant9038ea0859c9b3b5531e086c2b7ccae7c77912849219b76096b55e49eafdb738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variant9038ea0859c9b3b5531e086c2b7ccae7c77912849219b76096b55e49eafdb738.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60710ef04a47accf8d4eba577a7b39acd53850d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
