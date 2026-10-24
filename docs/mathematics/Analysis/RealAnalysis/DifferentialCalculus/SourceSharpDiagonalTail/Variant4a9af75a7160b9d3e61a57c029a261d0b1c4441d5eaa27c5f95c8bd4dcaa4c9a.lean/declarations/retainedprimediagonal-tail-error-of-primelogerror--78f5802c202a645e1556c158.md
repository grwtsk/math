# retainedPrimeDiagonal_tail_error_of_primeLogError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d242e075-f99d-c30b-ccbc-5fb46fa5ca51",
  "kind": "theorem",
  "lexical_name": "retainedPrimeDiagonal_tail_error_of_primeLogError",
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
  "slug": "retainedprimediagonal-tail-error-of-primelogerror--78f5802c202a645e1556c158",
  "source": {
    "blob": "224c36150220bf2f01b89caf5d8cb1c1c3d335e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant4a9af75a7160b9d3e61a57c029a261d0b1c4441d5eaa27c5f95c8bd4dcaa4c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78f5802c202a645e1556c158b6fee2a46b1e501086e022566e83b6b77a63c29f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant4a9af75a7160b9d3e61a57c029a261d0b1c4441d5eaa27c5f95c8bd4dcaa4c9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d242e075-f99d-c30b-ccbc-5fb46fa5ca51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retainedPrimeDiagonal_tail_error_of_primeLogError (CM : ℝ) (hCM0 : 0 ≤ CM)
    (hCM : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ CM)
    {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
      Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤
      CM * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) +
        16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
  have hQ1 : 1 ≤ Q := by linarith
  have hA1 := hQ1.trans hQA
  have hp : 0 < A := by linarith
  have hlo := floor_square_log_bounds A hA1
  have hc := (diagonalCorrelation_contDiff A hp).continuous
  have he := primeLogWindow_error_le (Real.log (⌊A ^ 2⌋₊ : ℝ)) A hlo.1 hlo.2
    (diagonalCorrelation A) (diagonalCorrelation_contDiff A hp) CM hCM
  have hv := diagonal_variation_le_tail hQ1 hQA hlo.1 hlo.2 le_rfl
  have hleft := diagonalCorrelation_abs_le_one A (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA1
  rw [diagonalCorrelation_at_upper A hp, abs_zero, add_zero] at he
  have heb : |retainedPrimeDiagonal A +
      (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| ≤
      CM * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) := by
    rw [retainedPrimeDiagonal_eq_window A hA1]
    have hs : |-primeLogWindow (Real.log (⌊A ^ 2⌋₊ : ℝ)) A (diagonalCorrelation A) +
        (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| =
        |primeLogWindow (Real.log (⌊A ^ 2⌋₊ : ℝ)) A (diagonalCorrelation A) -
          (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| := by
      rw [← abs_neg]
      congr 1
      ring
    rw [hs]
    exact he.trans (mul_le_mul_of_nonneg_left (add_le_add hleft hv) hCM0)
  have hs := floor_square_short_error_tail hQ hQA
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable (μ := volume) 0 (Real.log (⌊A ^ 2⌋₊ : ℝ)))
    (hc.intervalIntegrable (μ := volume) (Real.log (⌊A ^ 2⌋₊ : ℝ)) A)
  rw [diagonalCorrelation_integral A hA1] at hadd
  calc
    _ = |(retainedPrimeDiagonal A +
      (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)) +
      ((∫ t in 0..Real.log (⌊A ^ 2⌋₊ : ℝ), diagonalCorrelation A t) -
        Real.log (⌊A ^ 2⌋₊ : ℝ))| := by congr 1; linarith [hadd]
    _ ≤ _ := abs_add_le _ _
    _ ≤ _ := add_le_add heb hs

/-- One inherited elementary arithmetic constant works for every admitted tail radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant4a9af75a7160b9d3e61a57c029a261d0b1c4441d5eaa27c5f95c8bd4dcaa4c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant4a9af75a7160b9d3e61a57c029a261d0b1c4441d5eaa27c5f95c8bd4dcaa4c9a.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224c36150220bf2f01b89caf5d8cb1c1c3d335e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
