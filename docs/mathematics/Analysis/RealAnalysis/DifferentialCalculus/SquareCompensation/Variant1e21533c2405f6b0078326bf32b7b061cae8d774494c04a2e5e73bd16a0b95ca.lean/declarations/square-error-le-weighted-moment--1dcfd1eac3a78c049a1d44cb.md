# square_error_le_weighted_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84d88860-760d-0e92-6508-625c58ecfd96",
  "kind": "theorem",
  "lexical_name": "square_error_le_weighted_moment",
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
  "slug": "square-error-le-weighted-moment--1dcfd1eac3a78c049a1d44cb",
  "source": {
    "blob": "6fe671147bc94f3d8692130c65aa7f5efa0749a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dcfd1eac3a78c049a1d44cbd5027b8ac08d25658194427a1c5835f32efe184c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84d88860-760d-0e92-6508-625c58ecfd96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_error_le_weighted_moment {A : ℝ} (hA : 1 ≤ A) (B W : ℝ)
    (hW : (∫ t in 0..A, t * |primeLogError t - B|) ≤ W) :
    |primeSquareMoment A - diagonalMainCoefficient A * A - B| ≤
      squareCurvatureCoefficient * W / A ^ 2 := by
  have hp : 0 < A := by linarith
  have hc := diagonalCorrelation_contDiff A hp
  have he0 : IntervalIntegrable primeLogError volume 0 A := by
    simpa using primeLogError_mul_deriv_intervalIntegrable 0 A (by linarith)
      id (by fun_prop : ContDiff ℝ 1 (id : ℝ → ℝ))
  have he : IntervalIntegrable (fun t => primeLogError t - B) volume 0 A :=
    he0.sub (continuous_const.intervalIntegrable _ _)
  have hweight : IntervalIntegrable (fun t => t * |primeLogError t - B|) volume 0 A := by
    simpa only [id_eq, mul_comm] using he.abs.mul_continuousOn continuous_id.continuousOn
  have hprod : IntervalIntegrable
      (fun t => (primeLogError t - B) * deriv (diagonalCorrelation A) t) volume 0 A :=
    he.mul_continuousOn hc.continuous_deriv_one.continuousOn
  have hmono : (∫ t in 0..A, |(primeLogError t - B) * deriv (diagonalCorrelation A) t|) ≤
      ∫ t in 0..A, (squareCurvatureCoefficient / A ^ 2) * (t * |primeLogError t - B|) := by
    apply intervalIntegral.integral_mono_on (by linarith) hprod.abs
      (hweight.const_mul (squareCurvatureCoefficient / A ^ 2))
    intro t ht
    have ht0 : 0 ≤ t := ht.1
    rw [abs_mul]
    calc
      _ ≤ |primeLogError t - B| * (squareCurvatureCoefficient / A ^ 2 * t) :=
        mul_le_mul_of_nonneg_left (diagonal_deriv_linear_bound hA ht0) (abs_nonneg _)
      _ = _ := by ring
  rw [centered_square_error_eq hA B, abs_neg]
  calc
    _ ≤ ∫ t in 0..A, |(primeLogError t - B) * deriv (diagonalCorrelation A) t| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ _ := hmono
    _ = squareCurvatureCoefficient / A ^ 2 * (∫ t in 0..A, t * |primeLogError t - B|) :=
      intervalIntegral.integral_const_mul _ _
    _ ≤ squareCurvatureCoefficient / A ^ 2 * W :=
      mul_le_mul_of_nonneg_left hW (by unfold squareCurvatureCoefficient; positivity)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fe671147bc94f3d8692130c65aa7f5efa0749a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
