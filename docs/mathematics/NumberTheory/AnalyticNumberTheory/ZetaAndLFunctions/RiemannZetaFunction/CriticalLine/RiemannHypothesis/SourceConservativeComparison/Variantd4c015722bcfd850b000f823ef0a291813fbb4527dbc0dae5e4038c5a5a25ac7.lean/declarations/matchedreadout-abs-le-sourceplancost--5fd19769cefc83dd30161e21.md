# matchedReadout_abs_le_sourcePlanCost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:322e8fee-34e1-f7de-f068-a93d5119ff60",
  "kind": "theorem",
  "lexical_name": "matchedReadout_abs_le_sourcePlanCost",
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
  "slug": "matchedreadout-abs-le-sourceplancost--5fd19769cefc83dd30161e21",
  "source": {
    "blob": "611c614e258ecde3314f3704ff3d272e6b422eba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantd4c015722bcfd850b000f823ef0a291813fbb4527dbc0dae5e4038c5a5a25ac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fd19769cefc83dd30161e21b2f0aa318c49054b148b057fae8529e9c2d3aae4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantd4c015722bcfd850b000f823ef0a291813fbb4527dbc0dae5e4038c5a5a25ac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322e8fee-34e1-f7de-f068-a93d5119ff60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matchedReadout_abs_le_sourcePlanCost {A : ℝ} (hA : 0 < A)
    (x : ι → ℝ) (y : κ → ℝ) (u : ι → ℝ) (v : κ → ℝ) (P : ι → κ → ℝ)
    (hP : ∀ i j, 0 ≤ P i j)
    (hu : ∀ i, ∑ j, P i j = u i) (hv : ∀ j, ∑ i, P i j = v j) :
    |matchedReadout A x y u v| ≤ sourcePlanCost A x y P := by
  rw [matchedReadout_eq_plan A x y u v P hu hv]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply (Finset.sum_le_sum (fun i _ => Finset.abs_sum_le_sum_abs _ _)).trans
  apply Finset.sum_le_sum
  intro i _
  apply Finset.sum_le_sum
  intro j _
  rw [abs_mul, abs_of_nonneg (hP i j)]
  exact mul_le_mul_of_nonneg_left
    (sourceCorrelation_increment_le_distance hA (x i) (y j)) (hP i j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantd4c015722bcfd850b000f823ef0a291813fbb4527dbc0dae5e4038c5a5a25ac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantd4c015722bcfd850b000f823ef0a291813fbb4527dbc0dae5e4038c5a5a25ac7.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `611c614e258ecde3314f3704ff3d272e6b422eba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
