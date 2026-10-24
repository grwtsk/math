# sevenEighthsBoundaryMinimalFejerQuadraticDiagonal_le_exactTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d8c0f85-0347-25c5-1775-b078a71de963",
  "kind": "theorem",
  "lexical_name": "sevenEighthsBoundaryMinimalFejerQuadraticDiagonal_le_exactTarget",
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
  "slug": "seveneighthsboundaryminimalfejerquadraticdiagonal-le-exacttarget--eef18e7b0ceeaa137878386d",
  "source": {
    "blob": "0395e4d6d09c52140c055bbd7bf78d569d522245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 227,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eef18e7b0ceeaa137878386d14b576dcfd82849eadb8eba56525b86bb6b543cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d8c0f85-0347-25c5-1775-b078a71de963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sevenEighthsBoundaryMinimalFejerQuadraticDiagonal_le_exactTarget
    (j m : ℕ)
    (hm0 : 2 * dyadicScale j ≤ m)
    (hm1 : m ≤ 4 * dyadicScale j) :
    nonAliasingFejerQuadraticDiagonal
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
      ≤
    200 *
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
      (Real.log (dyadicScale j : ℝ))^4 := by
  have hdiag :=
    nonAliasingFejerQuadraticDiagonal_le_atomEnvelope
      (sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing j)
      hm0 hm1
  have hlogPos :
      0 < Real.log (dyadicScale j : ℝ) := by
    linarith [
      half_lt_log_dyadicScale_for_exactCorrelationReadout j]
  have hB0 :
      0 ≤
        1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)) :=
    one_add_log_four_mul_nonnegative
      (dyadicScale_pos_for_boundaryMinimalFejerSchedule j)
  have hBsq :
      (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 ≤
        (5 * Real.log (dyadicScale j : ℝ))^2 := by
    exact
      (sq_le_sq₀ hB0 (by positivity)).2
        (one_add_log_four_mul_dyadicScale_le_five_log j)
  have hXone :
      (1 : ℝ) ≤ (dyadicScale j : ℝ) := by
    exact_mod_cast
      one_le_dyadicScale_for_boundaryMinimalFejerSchedule j
  have hXpow :
      (dyadicScale j : ℝ) ≤
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) := by
    simpa only [Real.rpow_one] using
      Real.rpow_le_rpow_of_exponent_le
        hXone (by norm_num : (1 : ℝ) ≤ (3 : ℝ) / 2)
  have hLhalf :
      (1 : ℝ) / 2 ≤ Real.log (dyadicScale j : ℝ) := by
    exact le_of_lt
      (half_lt_log_dyadicScale_for_exactCorrelationReadout j)
  have hLsqQuarter :
      (1 : ℝ) / 4 ≤
        (Real.log (dyadicScale j : ℝ))^2 := by
    nlinarith [
      sq_nonneg
        (Real.log (dyadicScale j : ℝ) - (1 : ℝ) / 2)]
  have hfactor :
      0 ≤
        4 * (Real.log (dyadicScale j : ℝ))^2 - 1 := by
    nlinarith
  have hproduct :
      0 ≤
        (Real.log (dyadicScale j : ℝ))^2 *
          (4 * (Real.log (dyadicScale j : ℝ))^2 - 1) :=
    mul_nonneg (sq_nonneg _) hfactor
  have hlogPower :
      (Real.log (dyadicScale j : ℝ))^2 ≤
        4 * (Real.log (dyadicScale j : ℝ))^4 := by
    nlinarith [hproduct]
  calc
    nonAliasingFejerQuadraticDiagonal
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
      ≤
    (2 * dyadicScale j : ℝ) *
      (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 := hdiag
    _ ≤
    (2 * dyadicScale j : ℝ) *
      (5 * Real.log (dyadicScale j : ℝ))^2 := by
        exact mul_le_mul_of_nonneg_left hBsq (by positivity)
    _ =
    50 * (dyadicScale j : ℝ) *
      (Real.log (dyadicScale j : ℝ))^2 := by
        push_cast
        ring
    _ ≤
    50 *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^2 := by
          exact mul_le_mul_of_nonneg_right
            (mul_le_mul_of_nonneg_left hXpow (by norm_num))
            (sq_nonneg _)
    _ ≤
    50 *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (4 * (Real.log (dyadicScale j : ℝ))^4) := by
          exact mul_le_mul_of_nonneg_left hlogPower (by positivity)
    _ =
    200 *
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
      (Real.log (dyadicScale j : ℝ))^4 := by
        ring

/-- Exact ledger in correlation form rather than value-square form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0395e4d6d09c52140c055bbd7bf78d569d522245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
