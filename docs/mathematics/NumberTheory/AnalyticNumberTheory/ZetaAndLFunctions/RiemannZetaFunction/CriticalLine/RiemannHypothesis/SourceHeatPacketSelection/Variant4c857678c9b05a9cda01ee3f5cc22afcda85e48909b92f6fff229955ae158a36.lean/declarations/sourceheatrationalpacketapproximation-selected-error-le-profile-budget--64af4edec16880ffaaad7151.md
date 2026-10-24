# sourceHeatRationalPacketApproximation_selected_error_le_profile_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8845b634-3e3c-7304-43b2-468a9103832a",
  "kind": "theorem",
  "lexical_name": "sourceHeatRationalPacketApproximation_selected_error_le_profile_budget",
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
  "slug": "sourceheatrationalpacketapproximation-selected-error-le-profile-budget--64af4edec16880ffaaad7151",
  "source": {
    "blob": "006ed5a9c00f2b8b283b8523f8e7ae55988cbd24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 269,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketSelection/Variant4c857678c9b05a9cda01ee3f5cc22afcda85e48909b92f6fff229955ae158a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64af4edec16880ffaaad7151a3fd513fdd7deddd39fd82ad0fc5c7c7e9960d8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketSelection/Variant4c857678c9b05a9cda01ee3f5cc22afcda85e48909b92f6fff229955ae158a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8845b634-3e3c-7304-43b2-468a9103832a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceHeatRationalPacketApproximation_selected_error_le_profile_budget
    (A tau : ℝ) (N : ℕ) (selected : ℕ → Finset ℚ)
    (hselected : ∀ j ∈ Finset.range (N + 1),
      selected j ⊆ sourceGroupedKeyInventory A (2 * j + 3)) :
    |sourceHeatRationalPacketApproximation A tau N -
      sourceHeatSelectionApproximation A tau N selected| ≤
      sourceHeatSelectionProfileBudget A tau N selected := by
  unfold sourceHeatRationalPacketApproximation sourceHeatSelectionApproximation
    sourceHeatSelectionProfileBudget sourceHeatSelectionCoefficient
  rw [← Finset.sum_sub_distrib]
  calc
    _ = |∑ j ∈ Finset.range (N + 1),
        ((-1 : ℝ) ^ j * tau ^ (j + 1) / (j + 1).factorial) *
          (sourceRationalTupleMoment A (2 * j + 3) -
            sourceGroupedPacketSum A (2 * j + 3) (selected j))| := by
      congr 1
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ ≤ ∑ j ∈ Finset.range (N + 1),
        |((-1 : ℝ) ^ j * tau ^ (j + 1) / (j + 1).factorial) *
          (sourceRationalTupleMoment A (2 * j + 3) -
            sourceGroupedPacketSum A (2 * j + 3) (selected j))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro j hj
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left
        (sourceRationalTupleMoment_selected_error_le_profile_budget A (2 * j + 3)
          (selected j) (hselected j hj)) (abs_nonneg _)

/-- Selecting every strict interior key preserves the complete finite heat approximation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketSelection/Variant4c857678c9b05a9cda01ee3f5cc22afcda85e48909b92f6fff229955ae158a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketSelection/Variant4c857678c9b05a9cda01ee3f5cc22afcda85e48909b92f6fff229955ae158a36.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006ed5a9c00f2b8b283b8523f8e7ae55988cbd24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
