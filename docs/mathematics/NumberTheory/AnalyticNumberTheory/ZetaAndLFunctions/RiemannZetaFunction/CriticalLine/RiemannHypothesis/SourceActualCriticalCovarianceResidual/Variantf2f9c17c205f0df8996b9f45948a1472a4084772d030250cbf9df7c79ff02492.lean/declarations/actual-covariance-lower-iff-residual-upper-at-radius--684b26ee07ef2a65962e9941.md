# actual_covariance_lower_iff_residual_upper_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56d31a11-b78c-0011-ce15-cebeda8f342a",
  "kind": "theorem",
  "lexical_name": "actual_covariance_lower_iff_residual_upper_at_radius",
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
  "slug": "actual-covariance-lower-iff-residual-upper-at-radius--684b26ee07ef2a65962e9941",
  "source": {
    "blob": "5ec513754f9ec8e348790aeac97b5144da4f8432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variantf2f9c17c205f0df8996b9f45948a1472a4084772d030250cbf9df7c79ff02492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:684b26ee07ef2a65962e99419517f48913c7dcf2ebefc74ed41a0088b6fd3fdd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variantf2f9c17c205f0df8996b9f45948a1472a4084772d030250cbf9df7c79ff02492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56d31a11-b78c-0011-ce15-cebeda8f342a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_covariance_lower_iff_residual_upper_at_radius (R : ℝ) (hR : 91 ≤ R) :
    (∃ L : ℝ, ∀ A : ℝ, R ≤ A → L ≤ actualCriticalErrorCovariance A) ↔
      (∃ U : ℝ, ∀ A : ℝ, R ≤ A → mertensResidual A ≤ U) := by
  constructor
  · rintro ⟨L, hL⟩
    refine ⟨2 - 2 * L + actualZeroSevenCriticalBudget +
      |Real.eulerMascheroniConstant|, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A (by linarith : 1 ≤ A))).2
    have hh := (abs_le.mp (actualZeroSevenCriticalWork_abs_le hA)).1
    have hg := neg_abs_le Real.eulerMascheroniConstant
    rw [mertensResidual_eq_actual_covariance_and_full_head hA]
    linarith [hL A hRA]
  · rintro ⟨U, hU⟩
    refine ⟨(-2 - U - actualZeroSevenCriticalBudget -
      |Real.eulerMascheroniConstant|) / 2, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A (by linarith : 1 ≤ A))).1
    have hh := (abs_le.mp (actualZeroSevenCriticalWork_abs_le hA)).2
    have hg := le_abs_self Real.eulerMascheroniConstant
    have he := mertensResidual_eq_actual_covariance_and_full_head hA
    linarith [hU A hRA]

/-- Only an actual uniform signed covariance lower witness activates the original all-real gate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variantf2f9c17c205f0df8996b9f45948a1472a4084772d030250cbf9df7c79ff02492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variantf2f9c17c205f0df8996b9f45948a1472a4084772d030250cbf9df7c79ff02492.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec513754f9ec8e348790aeac97b5144da4f8432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
