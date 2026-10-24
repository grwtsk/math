# early_kernel_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc3d0ab8-5a3e-2852-7ed1-3daf55b404fc",
  "kind": "theorem",
  "lexical_name": "early_kernel_error",
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
  "slug": "early-kernel-error--833d73283198a0da5b8e0df7",
  "source": {
    "blob": "2a76ca98dbb73ecf50117b59c0947533ecda4804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:833d73283198a0da5b8e0df7f9189a2fc37ed68c42455324a300d43cfb75a333",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc3d0ab8-5a3e-2852-7ed1-3daf55b404fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem early_kernel_error {A T t : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (htT : t ≤ T) :
    |sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2 - (1 / 4 : ℝ)| ≤
        (5 / 8 * T ^ 2 + 5 / 2 * T) / A ^ 2 := by
  have h0 := actualCorrelation_sub_one_abs_le_five hA t
  have h1 := actualCorrelation_first_abs_le_five hA t
  rw [abs_of_nonneg ht] at h1
  have he : sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2 - (1 / 4 : ℝ) =
        (sourceCorrelation explicitSecondDerivative A t - 1) / 4 +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2 := by ring
  rw [he]
  have hh := abs_add_le ((sourceCorrelation explicitSecondDerivative A t - 1) / 4)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
  rw [abs_div, abs_div] at hh
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 4),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hh
  have hs : t ^ 2 ≤ T ^ 2 := by nlinarith
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t - 1| / 4 +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := hh
    _ ≤ (5 / 2 / A ^ 2 * t ^ 2) / 4 + (5 / A ^ 2 * t) / 2 :=
      add_le_add (div_le_div_of_nonneg_right h0 (by norm_num))
        (div_le_div_of_nonneg_right h1 (by norm_num))
    _ ≤ _ := by
      have hp : 0 < A ^ 2 := by positivity
      apply (le_div_iff₀ hp).2
      field_simp
      nlinarith

/-- The actual finite early head approaches its independent signed center at an explicit rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a76ca98dbb73ecf50117b59c0947533ecda4804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
