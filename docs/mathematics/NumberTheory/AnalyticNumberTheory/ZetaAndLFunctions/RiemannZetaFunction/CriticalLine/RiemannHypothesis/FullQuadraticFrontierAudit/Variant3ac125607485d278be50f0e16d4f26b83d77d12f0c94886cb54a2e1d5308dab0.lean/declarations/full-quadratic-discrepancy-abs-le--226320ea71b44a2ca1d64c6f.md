# full_quadratic_discrepancy_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0d56315-158f-00f5-817d-8de4c5334576",
  "kind": "theorem",
  "lexical_name": "full_quadratic_discrepancy_abs_le",
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
  "slug": "full-quadratic-discrepancy-abs-le--226320ea71b44a2ca1d64c6f",
  "source": {
    "blob": "d6494160bab32f6bd13ecaf38472fceb20beee2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticFrontierAudit/Variant3ac125607485d278be50f0e16d4f26b83d77d12f0c94886cb54a2e1d5308dab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:226320ea71b44a2ca1d64c6fb5e4f18d29d25c5c45c5ca31c7894d929870b2fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticFrontierAudit/Variant3ac125607485d278be50f0e16d4f26b83d77d12f0c94886cb54a2e1d5308dab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0d56315-158f-00f5-817d-8de4c5334576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_quadratic_discrepancy_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |-sourceQuadraticValue explicitSecondDerivative A / 2 - sourceDiscrepancyValue A| ≤
      fullCorrectionBound := by
  rw [full_quadratic_discrepancy_correction]
  let I : ℝ := ∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t
  let H : ℝ := higherPowerContribution A
  let G : ℝ := archimedeanValue explicitSecondDerivative A
  change |I + H - G / 2| ≤ fullCorrectionBound
  calc
    _ ≤ |I + H| + |G / 2| := by
      simpa only [sub_eq_add_neg, abs_neg] using abs_add_le (I + H) (-(G / 2))
    _ ≤ |I| + |H| + |G / 2| := add_le_add (abs_add_le I H) le_rfl
    _ ≤ fullCorrectionBound := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      unfold fullCorrectionBound
      exact add_le_add
        (add_le_add (source_continuum_abs_le_two A hA)
          (higherPowerContribution_abs_le_bound A hA))
        (div_le_div_of_nonneg_right (actual_archimedean_abs_le A hA) (by norm_num))

/-- Unit scaling and one fixed error certify the frontier audit of the complete scalar. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticFrontierAudit/Variant3ac125607485d278be50f0e16d4f26b83d77d12f0c94886cb54a2e1d5308dab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticFrontierAudit/Variant3ac125607485d278be50f0e16d4f26b83d77d12f0c94886cb54a2e1d5308dab0.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6494160bab32f6bd13ecaf38472fceb20beee2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
