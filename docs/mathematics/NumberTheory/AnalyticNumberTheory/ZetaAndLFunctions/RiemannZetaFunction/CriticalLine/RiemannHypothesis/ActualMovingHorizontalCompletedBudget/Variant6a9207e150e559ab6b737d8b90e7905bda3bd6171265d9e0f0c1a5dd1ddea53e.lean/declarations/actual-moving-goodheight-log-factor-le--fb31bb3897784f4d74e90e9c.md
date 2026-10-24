# actual_moving_goodheight_log_factor_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5c22041-acce-c5b2-9c01-1f80a226f957",
  "kind": "theorem",
  "lexical_name": "actual_moving_goodheight_log_factor_le",
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
  "slug": "actual-moving-goodheight-log-factor-le--fb31bb3897784f4d74e90e9c",
  "source": {
    "blob": "af1bc989070f76741201963535e3f13c317f7a4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant6a9207e150e559ab6b737d8b90e7905bda3bd6171265d9e0f0c1a5dd1ddea53e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb31bb3897784f4d74e90e9c0eaa1b08a9a4497470148e675961059725f390d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant6a9207e150e559ab6b737d8b90e7905bda3bd6171265d9e0f0c1a5dd1ddea53e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5c22041-acce-c5b2-9c01-1f80a226f957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_moving_goodheight_log_factor_le (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    (Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2*
      Real.exp (-((2*c-1)*A)/5) ≤ 2*(Real.log 11)^2+8 := by
  let v : ℝ := (2*c-1)*A/5
  have hκ : 0 < 2*c-1 := by linarith
  have hv : 0 ≤ v := by dsimp [v]; positivity
  have hi := actualGoodHeightIndex_bounds A c
  have hT : 1 ≤ actualBumpMovingHeight A c := actualBumpMovingHeight_ge_one A c hA hc
  have hm : max 7 (actualBumpMovingHeight A c) ≤ 7*actualBumpMovingHeight A c := by
    exact max_le (by linarith) (by linarith)
  have hidx : (actualGoodHeightIndex A c : ℝ)+3 ≤ 11*actualBumpMovingHeight A c := by
    linarith [hi.2.2]
  have hidxp : 0 < (actualGoodHeightIndex A c : ℝ)+3 := by positivity
  have hlog : Real.log ((actualGoodHeightIndex A c : ℝ)+3) ≤ Real.log 11+v := by
    have hh := Real.log_le_log hidxp hidx
    rw [Real.log_mul (by norm_num) (by unfold actualBumpMovingHeight; positivity),
      actualBumpMovingHeight,Real.log_exp] at hh
    exact hh
  have hlog0 : 0 ≤ Real.log ((actualGoodHeightIndex A c : ℝ)+3) :=
    Real.log_nonneg (by
      have hj : (0 : ℝ) ≤ actualGoodHeightIndex A c := Nat.cast_nonneg _
      linarith)
  have hlog11 : 0 ≤ Real.log 11 := Real.log_nonneg (by norm_num)
  have hsq : (Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2 ≤
      2*(Real.log 11)^2+2*v^2 := by
    have hh := pow_le_pow_left₀ hlog0 hlog 2
    nlinarith [sq_nonneg (Real.log 11-v)]
  have hexp2 : Real.exp (v/2)^2 = Real.exp v := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have hvexp : v ≤ 2*Real.exp (v/2) := by linarith [Real.add_one_le_exp (v/2)]
  have hv2 : v^2 ≤ 4*Real.exp v := by
    have hh := pow_le_pow_left₀ hv hvexp 2
    rw [mul_pow,hexp2] at hh
    norm_num at hh
    exact hh
  have hprod : Real.exp v*Real.exp (-v) = 1 := by rw [← Real.exp_add]; simp
  have hv2exp : v^2*Real.exp (-v) ≤ 4 := by
    have hh := mul_le_mul_of_nonneg_right hv2 (Real.exp_pos (-v)).le
    simpa only [mul_assoc,hprod,mul_one] using hh
  have hexp : Real.exp (-v) ≤ 1 := by simpa using Real.exp_le_exp.mpr (neg_nonpos.mpr hv)
  have hneg : -((2*c-1)*A)/5 = -v := by dsimp [v]; ring
  rw [hneg]
  calc
    _ ≤ (2*(Real.log 11)^2+2*v^2)*Real.exp (-v) := by gcongr
    _ ≤ _ := by
      have hh := mul_le_mul_of_nonneg_left hexp (show 0 ≤ 2*(Real.log 11)^2 by positivity)
      nlinarith

/-- A fixed coefficient absorbs the good-height logarithm in the actual source budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant6a9207e150e559ab6b737d8b90e7905bda3bd6171265d9e0f0c1a5dd1ddea53e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant6a9207e150e559ab6b737d8b90e7905bda3bd6171265d9e0f0c1a5dd1ddea53e.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af1bc989070f76741201963535e3f13c317f7a4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
