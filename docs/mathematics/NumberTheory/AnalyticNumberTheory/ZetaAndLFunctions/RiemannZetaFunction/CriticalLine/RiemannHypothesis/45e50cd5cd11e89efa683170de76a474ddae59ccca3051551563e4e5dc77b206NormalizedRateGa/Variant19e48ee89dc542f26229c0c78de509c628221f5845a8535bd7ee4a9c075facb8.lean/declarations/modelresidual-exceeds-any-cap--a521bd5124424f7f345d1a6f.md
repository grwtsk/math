# modelResidual_exceeds_any_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d50f21a5-f44e-51ea-5ae1-e844cc0b696a",
  "kind": "theorem",
  "lexical_name": "modelResidual_exceeds_any_cap",
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
  "slug": "modelresidual-exceeds-any-cap--a521bd5124424f7f345d1a6f",
  "source": {
    "blob": "3c82760fc9c59e6aebad4f3cdc67a8b8dbfb9bba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant19e48ee89dc542f26229c0c78de509c628221f5845a8535bd7ee4a9c075facb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a521bd5124424f7f345d1a6f577b2f71ca39a4fbff985a976137a30ed3f33c77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant19e48ee89dc542f26229c0c78de509c628221f5845a8535bd7ee4a9c075facb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d50f21a5-f44e-51ea-5ae1-e844cc0b696a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modelResidual_exceeds_any_cap (k D R : ℝ) :
    ∃ A : ℝ, 0 < A ∧ R ≤ A ∧ D < modelResidual k A (Real.exp A) := by
  let A : ℝ := max 1 (max R (39916800 * (D + 1)))
  have hA1 : (1 : ℝ) ≤ A := le_max_left _ _
  have hA : 0 < A := by linarith
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hcost : 39916800 * (D + 1) ≤ A :=
    (le_max_right _ _).trans (le_max_right _ _)
  refine ⟨A, hA, hR, ?_⟩
  rw [modelResidual_eq hA.ne']
  calc
    D < D + 1 := by linarith
    _ ≤ A / 39916800 := (le_div_iff₀ (by norm_num : (0 : ℝ) < 39916800)).mpr
      (by nlinarith)
    _ ≤ Real.exp A / A ^ 10 := exp_div_tenth_power_lower hA

/-- Normalized convergence cannot supply an eventual all-real additive upper cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant19e48ee89dc542f26229c0c78de509c628221f5845a8535bd7ee4a9c075facb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant19e48ee89dc542f26229c0c78de509c628221f5845a8535bd7ee4a9c075facb8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c82760fc9c59e6aebad4f3cdc67a8b8dbfb9bba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
