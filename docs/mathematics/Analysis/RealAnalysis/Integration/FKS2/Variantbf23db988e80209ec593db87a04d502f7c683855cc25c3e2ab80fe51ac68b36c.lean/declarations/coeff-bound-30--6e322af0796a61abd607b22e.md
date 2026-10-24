# coeff_bound_30

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0fc0764-9881-86c4-cae5-560cd5bc2432",
  "kind": "lemma",
  "lexical_name": "coeff_bound_30",
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
  "slug": "coeff-bound-30--6e322af0796a61abd607b22e",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1394,
    "line": 1339,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e322af0796a61abd607b22e32651306b97d6d16392d18eb0b7c0112784e855c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0fc0764-9881-86c4-cae5-560cd5bc2432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1339–1394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coeff_bound_30 :
    (1 / (121.096 : ℝ)) * (5.5666305 / 30) ^ (3 / 2 : ℝ) * Real.exp (2 * Real.sqrt (30 / 5.5666305)) ≤ 0.06865 := by
  let r : ℝ := 5.5666305 / 30
  have hr_pos : 0 < r := by
    dsimp [r]
    positivity
  have hrpow : r ^ (3 / 2 : ℝ) = r * Real.sqrt r := by
    rw [show (3 / 2 : ℝ) = (1 : ℝ) + (1 / 2 : ℝ) by norm_num]
    rw [Real.rpow_add hr_pos]
    simp [Real.sqrt_eq_rpow]
  have hsqrt_r : Real.sqrt r ≤ (43077 / 100000 : ℝ) := by
    refine (Real.sqrt_le_iff).2 ?_
    constructor
    · norm_num
    · dsimp [r]
      norm_num
  have hrpow_bound : r ^ (3 / 2 : ℝ) ≤ r * (43077 / 100000 : ℝ) := by
    rw [hrpow]
    gcongr
  have hsqrt_u : Real.sqrt (30 / 5.5666305) ≤ (23215 / 10000 : ℝ) := by
    refine (Real.sqrt_le_iff).2 ?_
    constructor
    · norm_num
    · norm_num
  have hexp104 : Real.exp (2 * Real.sqrt (30 / 5.5666305)) ≤ 104 := by
    have hpow : 2 * Real.sqrt (30 / 5.5666305) ≤ (4.643 : ℝ) := by
      nlinarith [hsqrt_u]
    have hlog104 : (4.643 : ℝ) ≤ Real.log 104 := by
      have h104 : (104 : ℝ) = 13 * 2 ^ (3 : ℕ) := by norm_num
      rw [h104, Real.log_mul (by norm_num) (by positivity), Real.log_pow]
      norm_num
      have h : (4.643 : ℝ) < Real.log 13 + 3 * Real.log 2 := by
        nlinarith [LogTables.log_13_gt, LogTables.log_2_gt]
      linarith
    have : Real.exp (2 * Real.sqrt (30 / 5.5666305)) ≤ Real.exp (Real.log 104) :=
      Real.exp_le_exp.mpr (le_trans hpow hlog104)
    simpa [Real.exp_log (by norm_num : (0 : ℝ) < 104)] using this
  have hcoef_step :
      (1 / (121.096 : ℝ)) * r ^ (3 / 2 : ℝ) * Real.exp (2 * Real.sqrt (30 / 5.5666305))
      ≤ (1 / (121.096 : ℝ)) * (r * (43077 / 100000 : ℝ)) * 104 := by
    have hnonneg : 0 ≤ (1 / (121.096 : ℝ)) := by positivity
    have hmul1 : (1 / (121.096 : ℝ)) * r ^ (3 / 2 : ℝ) ≤ (1 / (121.096 : ℝ)) * (r * (43077 / 100000 : ℝ)) :=
      mul_le_mul_of_nonneg_left hrpow_bound hnonneg
    have hmul2 : (1 / (121.096 : ℝ)) * r ^ (3 / 2 : ℝ) * Real.exp (2 * Real.sqrt (30 / 5.5666305))
        ≤ ((1 / (121.096 : ℝ)) * (r * (43077 / 100000 : ℝ))) * 104 :=
      mul_le_mul hmul1 hexp104 (by positivity) (by positivity)
    simpa [mul_assoc, mul_left_comm, mul_comm] using hmul2
  have hnum : (1 / (121.096 : ℝ)) * (r * (43077 / 100000 : ℝ)) * 104 ≤ (0.06865 : ℝ) := by
    dsimp [r]
    norm_num
  have hmain :
      (1 / (121.096 : ℝ)) * r ^ (3 / 2 : ℝ) * Real.exp (2 * Real.sqrt (30 / 5.5666305)) ≤ (0.06865 : ℝ) :=
    le_trans hcoef_step hnum
  simpa [r] using hmain

-- Helper bounding ν_asymp.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L1339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
