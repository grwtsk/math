# count_to_matrix_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:264b64b1-a896-d41d-1f46-e505a4f45f2d",
  "kind": "lemma",
  "lexical_name": "count_to_matrix_pointwise",
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
  "slug": "count-to-matrix-pointwise--99e846114f4db72e3be8e143",
  "source": {
    "blob": "22b6441a9311e0a05b31250db27dce650fb7cd2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99e846114f4db72e3be8e14393bfaf8b7a6e319d86cab2ec280a861d0d05a2be",
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

Occurrence: `result:264b64b1-a896-d41d-1f46-e505a4f45f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma count_to_matrix_pointwise
    (C : ℝ) (hC : 0 ≤ C) (K : ℕ) (hK : 9 ≤ K)
    (hUpper : (actualEligiblePrimeCutoff K : ℝ) ≤
      80 * (K : ℝ) * Real.log K)
    (hD : |countDifference actualResidueSixCounts
        (actualEligiblePrimeCutoff K)| ≤
      C * Real.sqrt (actualEligiblePrimeCutoff K : ℝ) *
        Real.log (actualEligiblePrimeCutoff K : ℝ)) :
    ‖indexedDiscrepancyOperator actualResidueSixCounts K‖ ≤
      (640 * C) * conductorThreeCriticalRate K := by
  have hKposNat : 0 < K := by omega
  have hKpos : (0 : ℝ) < K := by positivity
  have hKnonneg : (0 : ℝ) ≤ K := by positivity
  have hshiftPos : (0 : ℝ) < (K + 2 : ℕ) := by positivity
  have hlogK : (1 : ℝ) ≤ Real.log K := by
    have hlog8 : (1 : ℝ) ≤ Real.log 8 := by
      rw [show (8 : ℝ) = 2 ^ 3 by norm_num, Real.log_pow]
      norm_num
      have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
      norm_num at h ⊢
      linarith
    exact hlog8.trans (Real.log_le_log (by norm_num) (by exact_mod_cast (show 8 ≤ K by omega)))
  have hlogKpos : 0 < Real.log K := lt_of_lt_of_le zero_lt_one hlogK
  have hlogShift : Real.log K ≤ Real.log ((K + 2 : ℕ) : ℝ) := by
    apply Real.log_le_log hKpos
    exact_mod_cast (show K ≤ K + 2 by omega)
  have hlogShiftNonneg : 0 ≤ Real.log ((K + 2 : ℕ) : ℝ) :=
    le_trans (by linarith : 0 ≤ Real.log K) hlogShift
  have hcutPosNat : 0 < actualEligiblePrimeCutoff K := by
    rw [actualEligiblePrimeCutoff_eq_nthPrime K hKposNat]
    exact (Nat.prime_nth_prime (K + 1)).pos
  have hcutPos : (0 : ℝ) < actualEligiblePrimeCutoff K := by
    exact_mod_cast hcutPosNat
  have hlogK_le_K : Real.log (K : ℝ) ≤ K := by
    have h := Real.log_le_sub_one_of_pos hKpos
    linarith
  have hpoly : (80 : ℝ) * K ^ 2 ≤ ((K + 2 : ℕ) : ℝ) ^ 4 := by
    have hKr : (9 : ℝ) ≤ K := by exact_mod_cast hK
    have h80 : (80 : ℝ) ≤ K ^ 2 := by nlinarith
    have hmul : (80 : ℝ) * K ^ 2 ≤ K ^ 2 * K ^ 2 :=
      mul_le_mul_of_nonneg_right h80 (sq_nonneg (K : ℝ))
    have hmono : (K : ℝ) ^ 4 ≤ ((K + 2 : ℕ) : ℝ) ^ 4 := by
      gcongr
      norm_num
    calc
      (80 : ℝ) * K ^ 2 ≤ K ^ 2 * K ^ 2 := hmul
      _ = K ^ 4 := by ring
      _ ≤ ((K + 2 : ℕ) : ℝ) ^ 4 := hmono
  have hcutPow : (actualEligiblePrimeCutoff K : ℝ) ≤
      ((K + 2 : ℕ) : ℝ) ^ 4 := by
    calc
      (actualEligiblePrimeCutoff K : ℝ) ≤ 80 * K * Real.log K := hUpper
      _ ≤ 80 * K ^ 2 := by
        calc
          80 * K * Real.log K ≤ 80 * K * K :=
            mul_le_mul_of_nonneg_left hlogK_le_K (by positivity)
          _ = 80 * K ^ 2 := by ring
      _ ≤ ((K + 2 : ℕ) : ℝ) ^ 4 := hpoly
  have hlogCut : Real.log (actualEligiblePrimeCutoff K : ℝ) ≤
      4 * Real.log ((K + 2 : ℕ) : ℝ) := by
    calc
      Real.log (actualEligiblePrimeCutoff K : ℝ) ≤
          Real.log (((K + 2 : ℕ) : ℝ) ^ 4) :=
        Real.log_le_log hcutPos hcutPow
      _ = 4 * Real.log ((K + 2 : ℕ) : ℝ) := by
        rw [Real.log_pow]
        norm_num
  have hsqrtCutSq : Real.sqrt (actualEligiblePrimeCutoff K : ℝ) ^ 2 =
      (actualEligiblePrimeCutoff K : ℝ) := Real.sq_sqrt (by positivity)
  have hsqrtKSq : Real.sqrt (K : ℝ) ^ 2 = (K : ℝ) :=
    Real.sq_sqrt hKnonneg
  have hsqrtLogSq : Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) ^ 2 =
      Real.log ((K + 2 : ℕ) : ℝ) := Real.sq_sqrt hlogShiftNonneg
  have hsqrtCut : Real.sqrt (actualEligiblePrimeCutoff K : ℝ) ≤
      80 * Real.sqrt (K : ℝ) *
        Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) := by
    have hsq : Real.sqrt (actualEligiblePrimeCutoff K : ℝ) ^ 2 ≤
        (80 * Real.sqrt (K : ℝ) *
          Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) ^ 2 := by
      rw [hsqrtCutSq]
      calc
        (actualEligiblePrimeCutoff K : ℝ) ≤ 80 * K * Real.log K := hUpper
        _ ≤ 6400 * K * Real.log ((K + 2 : ℕ) : ℝ) := by
          have : Real.log K ≤ 80 * Real.log ((K + 2 : ℕ) : ℝ) := by
            calc
              Real.log K ≤ Real.log ((K + 2 : ℕ) : ℝ) := hlogShift
              _ ≤ 80 * Real.log ((K + 2 : ℕ) : ℝ) := by
                nlinarith
          nlinarith
        _ = (80 * Real.sqrt (K : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) ^ 2 := by
          rw [mul_pow, mul_pow, hsqrtKSq, hsqrtLogSq]
          norm_num
    have ha := Real.sqrt_nonneg (actualEligiblePrimeCutoff K : ℝ)
    have hb : 0 ≤ 80 * Real.sqrt (K : ℝ) *
        Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) := by positivity
    exact (sq_le_sq₀ ha hb).mp hsq
  have hsqrtKPos : 0 < Real.sqrt (K : ℝ) := Real.sqrt_pos.2 hKpos
  have hsqrtShiftPos : 0 < Real.sqrt ((K + 2 : ℕ) : ℝ) :=
    Real.sqrt_pos.2 hshiftPos
  have hsqrtShiftSq : Real.sqrt (((K + 2 : ℕ) : ℝ)) ^ 2 =
      ((K + 2 : ℕ) : ℝ) := Real.sq_sqrt (by positivity)
  have hsqrtShift_le : Real.sqrt ((K + 2 : ℕ) : ℝ) ≤
      2 * Real.sqrt (K : ℝ) := by
    have hsq : Real.sqrt ((K + 2 : ℕ) : ℝ) ^ 2 ≤
        (2 * Real.sqrt (K : ℝ)) ^ 2 := by
      rw [hsqrtShiftSq, mul_pow, hsqrtKSq]
      norm_num
      exact_mod_cast (show K + 2 ≤ 4 * K by omega)
    nlinarith [Real.sqrt_nonneg ((K + 2 : ℕ) : ℝ), Real.sqrt_nonneg (K : ℝ)]
  have hinv : 1 / Real.sqrt (K : ℝ) ≤
      2 / Real.sqrt ((K + 2 : ℕ) : ℝ) := by
    rw [div_le_div_iff₀ hsqrtKPos hsqrtShiftPos]
    simpa using hsqrtShift_le
  rw [actualIndexedErrorOperator_norm_eq_countDifference K hKposNat]
  rw [abs_div, abs_of_pos (by positivity : (0 : ℝ) < 2 * K)]
  calc
    sqrtThree *
        (|countDifference actualResidueSixCounts
            (actualEligiblePrimeCutoff K)| / (2 * K)) ≤
        2 * (C * Real.sqrt (actualEligiblePrimeCutoff K : ℝ) *
            Real.log (actualEligiblePrimeCutoff K : ℝ) / (2 * K)) := by
      have hsqrtThree : sqrtThree ≤ 2 := by
        have hs := Real.sqrt_nonneg 3
        nlinarith [sqrtThree_sq]
      gcongr
    _ ≤ 2 * (C *
          (80 * Real.sqrt (K : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) *
          (4 * Real.log ((K + 2 : ℕ) : ℝ)) / (2 * K)) := by
      gcongr
    _ = 320 * C *
          (Real.log ((K + 2 : ℕ) : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) /
          Real.sqrt (K : ℝ) := by
      field_simp [hKpos.ne', hsqrtKPos.ne']
      rw [hsqrtKSq]
      ring

    _ ≤ 640 * C *
          (Real.log ((K + 2 : ℕ) : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) /
          Real.sqrt ((K + 2 : ℕ) : ℝ) := by
      have hfactor : 0 ≤ 320 * C *
          (Real.log ((K + 2 : ℕ) : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) := by positivity
      calc
        320 * C * (Real.log ((K + 2 : ℕ) : ℝ) *
            Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) /
            Real.sqrt (K : ℝ) =
            (320 * C * (Real.log ((K + 2 : ℕ) : ℝ) *
              Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)))) *
              (1 / Real.sqrt (K : ℝ)) := by ring
        _ ≤ (320 * C * (Real.log ((K + 2 : ℕ) : ℝ) *
              Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)))) *
              (2 / Real.sqrt ((K + 2 : ℕ) : ℝ)) :=
          mul_le_mul_of_nonneg_left hinv hfactor
        _ = 640 * C * (Real.log ((K + 2 : ℕ) : ℝ) *
              Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ))) /
              Real.sqrt ((K + 2 : ℕ) : ℝ) := by ring
    _ = (640 * C) * conductorThreeCriticalRate K := by
      unfold conductorThreeCriticalRate
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b6441a9311e0a05b31250db27dce650fb7cd2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
