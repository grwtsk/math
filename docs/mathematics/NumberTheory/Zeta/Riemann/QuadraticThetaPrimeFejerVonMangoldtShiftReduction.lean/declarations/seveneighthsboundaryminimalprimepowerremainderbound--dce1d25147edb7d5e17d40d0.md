# sevenEighthsBoundaryMinimalPrimePowerRemainderBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15ddb99d-b3f2-690e-0eeb-759afe81d93e",
  "kind": "theorem",
  "lexical_name": "sevenEighthsBoundaryMinimalPrimePowerRemainderBound",
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
  "slug": "seveneighthsboundaryminimalprimepowerremainderbound--dce1d25147edb7d5e17d40d0",
  "source": {
    "blob": "c0157897853716e8630663f1f070cd3050ee87d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1054,
    "line": 935,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dce1d25147edb7d5e17d40d018c33cc6e854f5592d3bc0daa3f30bad6e4d8979",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15ddb99d-b3f2-690e-0eeb-759afe81d93e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 935–1054.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sevenEighthsBoundaryMinimalPrimePowerRemainderBound :
    SevenEighthsBoundaryMinimalPrimePowerRemainderBound := by
  rcases exists_fejerHigherPrimePowerCorrectionMass_rpow_bound with
    ⟨C, hC, hmass⟩
  refine ⟨240 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j m hm0 hm1
  let X := dyadicScale j
  have hreg :=
    sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing j
  have hraw :=
    nonAliasingFejerPositivePrimePowerRemainder_abs_le
      hreg hm0 hm1
  have hB :
      1 + Real.log (((4 * X : ℕ) : ℝ)) ≤
        5 * Real.log (X : ℝ) := by
    dsimp [X]
    exact one_add_log_four_mul_dyadicScale_le_five_log j
  have hM :
      fejerHigherPrimePowerCorrectionMass X ≤
        C * Real.rpow (X : ℝ) ((1 : ℝ) / 2) :=
    hmass X
  have hXpos : 0 < (X : ℝ) := by
    dsimp [X]
    exact_mod_cast
      dyadicScale_pos_for_boundaryMinimalFejerSchedule j
  have hX0 : 0 ≤ (X : ℝ) := hXpos.le
  have hLpos : 0 < Real.log (X : ℝ) := by
    dsimp [X]
    linarith [
      half_lt_log_dyadicScale_for_exactCorrelationReadout j]
  have hL0 : 0 ≤ Real.log (X : ℝ) := hLpos.le
  have hLhalf :
      (1 : ℝ) / 2 ≤ Real.log (X : ℝ) := by
    dsimp [X]
    exact le_of_lt
      (half_lt_log_dyadicScale_for_exactCorrelationReadout j)
  have hLsq :
      (1 : ℝ) / 4 ≤ (Real.log (X : ℝ))^2 := by
    nlinarith [sq_nonneg
      (Real.log (X : ℝ) - (1 : ℝ) / 2)]
  have hLcube :
      (1 : ℝ) / 8 ≤ (Real.log (X : ℝ))^3 := by
    calc
      (1 : ℝ) / 8 =
          ((1 : ℝ) / 2) * ((1 : ℝ) / 4) := by norm_num
      _ ≤
          Real.log (X : ℝ) *
            (Real.log (X : ℝ))^2 := by
              exact mul_le_mul hLhalf hLsq
                (by norm_num) hL0
      _ = (Real.log (X : ℝ))^3 := by ring
  have hLpower :
      Real.log (X : ℝ) ≤
        8 * (Real.log (X : ℝ))^4 := by
    have hone :
        1 ≤ 8 * (Real.log (X : ℝ))^3 := by
      nlinarith
    calc
      Real.log (X : ℝ) =
          1 * Real.log (X : ℝ) := by ring
      _ ≤
          (8 * (Real.log (X : ℝ))^3) *
            Real.log (X : ℝ) := by
              exact mul_le_mul_of_nonneg_right hone hL0
      _ =
          8 * (Real.log (X : ℝ))^4 := by ring
  have hpower :
      (X : ℝ) *
          Real.rpow (X : ℝ) ((1 : ℝ) / 2) =
        Real.rpow (X : ℝ) ((3 : ℝ) / 2) := by
    rw [← Real.rpow_one (X : ℝ),
      ← Real.rpow_add hXpos]
    congr 1
    ring
  have hM0 :
      0 ≤ fejerHigherPrimePowerCorrectionMass X :=
    fejerHigherPrimePowerCorrectionMass_nonnegative X
  calc
    |nonAliasingFejerPositivePrimePowerRemainder
        X
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m|
      ≤
    6 * (X : ℝ) *
      (1 + Real.log (((4 * X : ℕ) : ℝ))) *
      fejerHigherPrimePowerCorrectionMass X := hraw
    _ ≤
    6 * (X : ℝ) *
      (5 * Real.log (X : ℝ)) *
      fejerHigherPrimePowerCorrectionMass X := by
        exact mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hB
            (mul_nonneg (by norm_num) hX0))
          hM0
    _ ≤
    6 * (X : ℝ) *
      (5 * Real.log (X : ℝ)) *
      (C * Real.rpow (X : ℝ) ((1 : ℝ) / 2)) := by
        exact mul_le_mul_of_nonneg_left hM (by positivity)
    _ =
    30 * C *
      Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
      Real.log (X : ℝ) := by
        rw [← hpower]
        ring
    _ ≤
    30 * C *
      Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
      (8 * (Real.log (X : ℝ))^4) := by
        exact mul_le_mul_of_nonneg_left hLpower
          (mul_nonneg
            (mul_nonneg (by norm_num) hC)
            (Real.rpow_nonneg hX0 _))
    _ =
    (240 * C) *
      Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
      (Real.log (X : ℝ))^4 := by ring

/-- Exact remaining arithmetic supplier after eliminating higher prime powers:
the shifted centered von Mangoldt aggregate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean#L935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0157897853716e8630663f1f070cd3050ee87d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
