# actual_census_quadrature_price_le_fourteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e54219a-1ba6-77bc-0ed8-66982b94fe11",
  "kind": "theorem",
  "lexical_name": "actual_census_quadrature_price_le_fourteen",
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
  "slug": "actual-census-quadrature-price-le-fourteen--afa5275e01e06c1048cae957",
  "source": {
    "blob": "4d00d9d873cce5585fdd5ab67f6d239f485ec90b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afa5275e01e06c1048cae95783ef8c7d336fcb7ff77bc7b40ca9e664615d98bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e54219a-1ba6-77bc-0ed8-66982b94fe11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_census_quadrature_price_le_fourteen {A r : ℝ}
    (hA : 8 ≤ A) (hr : 0 < r) (hr6 : r ≤ 6) :
    |actualCensus A r -
      (∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x)| ≤ 14 := by
  have hA1 : 1 ≤ A := by linarith
  have hApos : 0 < A := by linarith
  have hX1 : 1 ≤ censusCutoff A r := Real.one_le_exp_iff.mpr (by positivity)
  have hXpos : 0 < censusCutoff A r := Real.exp_pos _
  have hNpos : 0 < (censusCount A r + 1 : ℝ) := by positivity
  have hN2X : (censusCount A r + 1 : ℝ) ≤ 2 * censusCutoff A r := by
    have hn : (censusCount A r : ℝ) ≤ censusCutoff A r := Nat.floor_le hXpos.le
    linarith
  have hl := Real.log_le_log hNpos hN2X
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hXpos.ne', censusCutoff,
    Real.log_exp] at hl
  have hlog2 : Real.log (2 : ℝ) ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h
    exact h
  have hco : 0 ≤ 5 * r / A := by positivity
  have hco4 : 5 * r / A ≤ 4 := (div_le_iff₀ hApos).mpr (by nlinarith)
  have hp : (5 * r / A) * Real.log (censusCount A r + 1 : ℝ) ≤ 14 := by
    calc
      _ ≤ (5 * r / A) * (Real.log 2 + 2 * A / r) :=
        mul_le_mul_of_nonneg_left hl hco
      _ = (5 * r / A) * Real.log 2 + 10 := by field_simp; ring
      _ ≤ 14 := by nlinarith [mul_le_mul_of_nonneg_left hlog2 hco]
  have h := actual_logarithmic_complete_sampling_price hA1 hr.le (censusCount A r)
  rw [actual_census_integral_retains_final_cell hA1 hr] at h
  exact h.trans hp

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCensusCutoff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d00d9d873cce5585fdd5ab67f6d239f485ec90b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
