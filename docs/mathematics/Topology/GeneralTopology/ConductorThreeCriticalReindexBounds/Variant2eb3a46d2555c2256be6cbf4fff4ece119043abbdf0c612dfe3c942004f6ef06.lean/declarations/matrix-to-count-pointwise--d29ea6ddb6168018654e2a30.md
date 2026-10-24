# matrix_to_count_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e83f1c85-9be8-91d5-df23-0812ec7ee0a4",
  "kind": "lemma",
  "lexical_name": "matrix_to_count_pointwise",
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
  "slug": "matrix-to-count-pointwise--d29ea6ddb6168018654e2a30",
  "source": {
    "blob": "22b6441a9311e0a05b31250db27dce650fb7cd2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d29ea6ddb6168018654e2a30c88574a5cd74d01bff143591404d99baff66d894",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e83f1c85-9be8-91d5-df23-0812ec7ee0a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma matrix_to_count_pointwise
    (C : ℝ) (hC : 0 ≤ C) (K x : ℕ) (hK : 9 ≤ K)
    (hLower : (K : ℝ) * Real.log K / (Real.log 4 + 1) ≤
      (actualEligiblePrimeCutoff K : ℝ))
    (hCutoff : actualEligiblePrimeCutoff K ≤ x)
    (hPlateau : countDifference actualResidueSixCounts x =
      countDifference actualResidueSixCounts (actualEligiblePrimeCutoff K))
    (hMatrix : ‖indexedDiscrepancyOperator actualResidueSixCounts K‖ ≤
      C * conductorThreeCriticalRate K) :
    |countDifference actualResidueSixCounts x| ≤
      (8 * (Real.log 4 + 1) * C) * Real.sqrt (x : ℝ) * Real.log x := by
  let A : ℝ := Real.log 4 + 1
  have hKposNat : 0 < K := by omega
  have hKpos : (0 : ℝ) < K := by positivity
  have hxposNat : 0 < x := lt_of_lt_of_le (by omega : 0 < K) <| by
    rw [actualEligiblePrimeCutoff_eq_nthPrime K hKposNat] at hCutoff
    have hbase := Nat.add_two_le_nth_prime (K + 1)
    omega
  have hxpos : (0 : ℝ) < x := by exact_mod_cast hxposNat
  have hA : (1 : ℝ) ≤ A := by
    dsimp only [A]
    have : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
    linarith
  have hApos : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hKCutoff : K ≤ actualEligiblePrimeCutoff K := by
    rw [actualEligiblePrimeCutoff_eq_nthPrime K hKposNat]
    exact (by have := Nat.add_two_le_nth_prime (K + 1); omega)
  have hKxNat : K ≤ x := hKCutoff.trans hCutoff
  have hKx : (K : ℝ) ≤ x := by exact_mod_cast hKxNat
  have hlogK : (1 : ℝ) ≤ Real.log K := by
    have hlog8 : (1 : ℝ) ≤ Real.log 8 := by
      rw [show (8 : ℝ) = 2 ^ 3 by norm_num, Real.log_pow]
      norm_num
      have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
      norm_num at h ⊢
      linarith
    exact hlog8.trans (Real.log_le_log (by norm_num)
      (by exact_mod_cast (show 8 ≤ K by omega)))
  have hlogKpos : 0 < Real.log K := lt_of_lt_of_le zero_lt_one hlogK
  have hlogKx : Real.log K ≤ Real.log x := Real.log_le_log hKpos hKx
  have hshiftBoundNat : K + 2 ≤ K ^ 2 := by nlinarith
  have hshiftBound : ((K + 2 : ℕ) : ℝ) ≤ (K : ℝ) ^ 2 := by
    exact_mod_cast hshiftBoundNat
  have hlogShift : Real.log ((K + 2 : ℕ) : ℝ) ≤ 2 * Real.log K := by
    calc
      Real.log ((K + 2 : ℕ) : ℝ) ≤ Real.log ((K : ℝ) ^ 2) :=
        Real.log_le_log (by positivity) hshiftBound
      _ = 2 * Real.log K := by rw [Real.log_pow]; norm_num
  have hlogShiftNonneg : 0 ≤ Real.log ((K + 2 : ℕ) : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1 ≤ K + 2 by omega))
  have hsqrtLogShift : Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ≤
      2 * Real.sqrt (Real.log K) := by
    have hsqLeft : Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ^ 2 =
        Real.log ((K + 2 : ℕ) : ℝ) := Real.sq_sqrt hlogShiftNonneg
    have hsqK : Real.sqrt (Real.log K) ^ 2 = Real.log K :=
      Real.sq_sqrt (by linarith)
    have hsq : Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ^ 2 ≤
        (2 * Real.sqrt (Real.log K)) ^ 2 := by
      calc
        Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ^ 2 =
            Real.log ((K + 2 : ℕ) : ℝ) := hsqLeft
        _ ≤ 2 * Real.log K := hlogShift
        _ ≤ 4 * Real.log K := by nlinarith
        _ = (2 * Real.sqrt (Real.log K)) ^ 2 := by
          rw [mul_pow, hsqK]
          norm_num
    exact (sq_le_sq₀ (Real.sqrt_nonneg _)
      (by positivity : 0 ≤ 2 * Real.sqrt (Real.log K))).mp hsq
  have hsqrtKPos : 0 < Real.sqrt (K : ℝ) := Real.sqrt_pos.2 hKpos
  have hsqrtKSq : Real.sqrt (K : ℝ) ^ 2 = (K : ℝ) :=
    Real.sq_sqrt (by positivity)
  have hsqrtShiftPos : 0 < Real.sqrt ((K + 2 : ℕ) : ℝ) :=
    Real.sqrt_pos.2 (by positivity)
  have hsqrtK_le_shift : Real.sqrt (K : ℝ) ≤
      Real.sqrt ((K + 2 : ℕ) : ℝ) := by
    apply Real.sqrt_le_sqrt
    exact_mod_cast (show K ≤ K + 2 by omega)
  have hKdiv : (K : ℝ) / Real.sqrt ((K + 2 : ℕ) : ℝ) ≤
      Real.sqrt K := by
    apply (div_le_iff₀ hsqrtShiftPos).2
    calc
      (K : ℝ) = Real.sqrt K * Real.sqrt K := by
        nlinarith [hsqrtKSq]
      _ ≤ Real.sqrt K * Real.sqrt ((K + 2 : ℕ) : ℝ) :=
        mul_le_mul_of_nonneg_left hsqrtK_le_shift (Real.sqrt_nonneg _)
  have hcutoffReal : (actualEligiblePrimeCutoff K : ℝ) ≤ x := by
    exact_mod_cast hCutoff
  have hKlog_le_Ax : (K : ℝ) * Real.log K ≤ A * x := by
    have := (div_le_iff₀ hApos).mp hLower
    calc
      (K : ℝ) * Real.log K ≤
          (actualEligiblePrimeCutoff K : ℝ) * A := this
      _ = A * (actualEligiblePrimeCutoff K : ℝ) := by ring
      _ ≤ A * x := mul_le_mul_of_nonneg_left hcutoffReal (by linarith)
  have hsqrtXSq : Real.sqrt (x : ℝ) ^ 2 = (x : ℝ) :=
    Real.sq_sqrt (by positivity)
  have hsqrtLogKSq : Real.sqrt (Real.log K) ^ 2 = Real.log K :=
    Real.sq_sqrt (by linarith)
  have hcross : Real.sqrt (K : ℝ) * Real.sqrt (Real.log K) ≤
      A * Real.sqrt (x : ℝ) := by
    have hsq : (Real.sqrt (K : ℝ) * Real.sqrt (Real.log K)) ^ 2 ≤
        (A * Real.sqrt (x : ℝ)) ^ 2 := by
      rw [mul_pow, hsqrtKSq, hsqrtLogKSq, mul_pow, hsqrtXSq]
      have hAx_le : A * x ≤ A ^ 2 * x := by
        have hAA : A ≤ A ^ 2 := by nlinarith
        exact mul_le_mul_of_nonneg_right hAA (by positivity)
      nlinarith
    exact (sq_le_sq₀ (by positivity) (by positivity)).mp hsq
  have hquotient :
      |countDifference actualResidueSixCounts
          (actualEligiblePrimeCutoff K)| / (2 * K) ≤
        C * conductorThreeCriticalRate K := by
    have hquotientNorm :
        |countDifference actualResidueSixCounts
            (actualEligiblePrimeCutoff K) / (2 * (K : ℝ))| ≤
          ‖indexedDiscrepancyOperator actualResidueSixCounts K‖ := by
      rw [actualIndexedErrorOperator_norm_eq_countDifference K hKposNat]
      exact le_mul_of_one_le_left (abs_nonneg _) one_le_sqrtThree
    rw [abs_div, abs_of_pos (by positivity : (0 : ℝ) < 2 * K)] at hquotientNorm
    exact hquotientNorm.trans hMatrix
  rw [hPlateau]
  calc
    |countDifference actualResidueSixCounts (actualEligiblePrimeCutoff K)| ≤
        (C * conductorThreeCriticalRate K) * (2 * K) :=
      (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * K)).mp hquotient
    _ = 2 * C * ((K : ℝ) / Real.sqrt ((K + 2 : ℕ) : ℝ)) *
          Real.log ((K + 2 : ℕ) : ℝ) *
          Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) := by
      unfold conductorThreeCriticalRate
      ring
    _ ≤ 2 * C * Real.sqrt K *
          (2 * Real.log K) * (2 * Real.sqrt (Real.log K)) := by
      gcongr
    _ = 8 * C *
          (Real.sqrt K * Real.sqrt (Real.log K)) * Real.log K := by ring
    _ ≤ 8 * C * (A * Real.sqrt x) * Real.log x := by
      gcongr
    _ = (8 * (Real.log 4 + 1) * C) * Real.sqrt x * Real.log x := by
      dsimp only [A]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b6441a9311e0a05b31250db27dce650fb7cd2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
