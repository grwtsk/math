# actualShortMangoldtBlock_sub_halfPrefix_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9675a59c-300a-6861-e9d3-83a8c9cdbea6",
  "kind": "theorem",
  "lexical_name": "actualShortMangoldtBlock_sub_halfPrefix_abs_le",
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
  "slug": "actualshortmangoldtblock-sub-halfprefix-abs-le--690ef74eb6c3938d7664cec3",
  "source": {
    "blob": "f182be551c4c37f2fb87fe5fcefa7e0b881be137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variant0e735714734979d28e5157ba8c4e31f54f4170fcb44374baf6bbb56a53d18296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:690ef74eb6c3938d7664cec3f9a451e61b18a0ffbb7c7911f79dce2f81e21d4a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variant0e735714734979d28e5157ba8c4e31f54f4170fcb44374baf6bbb56a53d18296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9675a59c-300a-6861-e9d3-83a8c9cdbea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortMangoldtBlock_sub_halfPrefix_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |actualShortMangoldtBlock A - actualMangoldtHalfClosedPrefix (2 * Real.log A)| ≤
      (160 * Real.sqrt A / A ^ 2) * actualMangoldtHalfClosedPrefix (2 * Real.log A) := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hU1 : (1 : ℝ) ≤ vaughanCutoff A := by
    exact_mod_cast vaughanCutoff_pos A hA1
  have hlogU := RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt hA1
  rw [halfPrefix_square_eq_sum hA1]
  unfold actualShortMangoldtBlock
  rw [← Finset.sum_sub_distrib, Finset.mul_sum]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
  intro n hn
  have hn2 := (Finset.mem_Icc.mp hn).1
  have hn0 : 0 < n := by omega
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
  have hln := Real.log_nonneg hn1
  have hlu := Real.log_nonneg hU1
  have hle : Real.log (n : ℝ) ≤ Real.log (vaughanCutoff A : ℝ) :=
    Real.log_le_log hnR (by exact_mod_cast (Finset.mem_Icc.mp hn).2)
  have hlogs : (Real.log (n : ℝ)) ^ 2 ≤
      (Real.log (vaughanCutoff A : ℝ)) ^ 2 := by nlinarith
  have hc := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A)
    (Real.log (n : ℝ))
  have hcn : |sourceCorrelation explicitSecondDerivative A (Real.log n) - 1| ≤
      160 * Real.sqrt A / A ^ 2 := by
    calc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (Real.log (n : ℝ)) ^ 2 := hc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (64 * Real.sqrt A) := by
        exact mul_le_mul_of_nonneg_left (hlogs.trans hlogU) (by positivity)
      _ = _ := by ring
  have hw : vonMangoldt n * closedPrimeWeight A n -
      vonMangoldt n / Real.sqrt (n : ℝ) =
      (vonMangoldt n / Real.sqrt (n : ℝ)) *
        (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1) := by
    unfold closedPrimeWeight
    rw [exponentialTest_log _ _ hn0]
    ring
  rw [hw, abs_mul, abs_of_nonneg (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _))]
  calc
    _ ≤ (vonMangoldt n / Real.sqrt (n : ℝ)) * (160 * Real.sqrt A / A ^ 2) :=
      mul_le_mul_of_nonneg_left hcn (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _))
    _ = _ := by ring

/-- The original actual short source, without renormalizing its arithmetic row, has mass 2A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variant0e735714734979d28e5157ba8c4e31f54f4170fcb44374baf6bbb56a53d18296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variant0e735714734979d28e5157ba8c4e31f54f4170fcb44374baf6bbb56a53d18296.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f182be551c4c37f2fb87fe5fcefa7e0b881be137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
