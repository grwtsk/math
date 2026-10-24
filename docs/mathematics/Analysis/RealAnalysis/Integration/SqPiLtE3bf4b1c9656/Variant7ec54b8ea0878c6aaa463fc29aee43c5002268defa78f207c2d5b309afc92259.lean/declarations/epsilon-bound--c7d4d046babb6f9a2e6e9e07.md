# epsilon_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b2e5fff-8c97-cb5c-35dc-01bdcbbfacc9",
  "kind": "theorem",
  "lexical_name": "epsilon_bound",
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
  "slug": "epsilon-bound--c7d4d046babb6f9a2e6e9e07",
  "source": {
    "blob": "b6ca87b02f4d071369a6450567252419632f736d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2440,
    "line": 2395,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7d4d046babb6f9a2e6e9e074eff00a55de8b5e073f0876b89465f7f12e16886",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b2e5fff-8c97-cb5c-35dc-01bdcbbfacc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2395–2440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epsilon_bound :
  ∀ x > exₐ, ε (Mₐ exₐ) x - εlower (mₐ xₐ) xₐ x < log x := by
  intro x hx
  have log_gt_3915 : (3915 : ℝ) < log x := by
    simpa [exₐ_eq, log_exp] using log_lt_log exₐ_pos hx
  have := Mₐ_exₐ_nonneg
  have := Mₐ_exₐ_le_1426
  have : (2 * Mₐ exₐ + 132) / log x ≤ (2 * (1426 : ℝ) + 132) / (3915 : ℝ) :=
    le_trans (div_le_div_of_nonneg_left (by nlinarith) (by positivity) log_gt_3915.le)
      (div_le_div_of_nonneg_right (by nlinarith) (by positivity))
  have : (4 * Mₐ exₐ + 288) / (log x) ^ 2 ≤ (4 * (1426 : ℝ) + 288) / (3915 : ℝ) ^ 2 :=
    le_trans (div_le_div_of_nonneg_left (by nlinarith) (by positivity) (by grind [pow_le_pow_left₀]))
      (div_le_div_of_nonneg_right (by nlinarith) (by positivity))
  have : (12 * Mₐ exₐ + 576) / (log x) ^ 3 ≤ (12 * (1426 : ℝ) + 576) / (3915 : ℝ) ^ 3 :=
    le_trans (div_le_div_of_nonneg_left (by nlinarith) (by positivity) (by grind [pow_le_pow_left₀]))
      (div_le_div_of_nonneg_right (by nlinarith) (by positivity))
  have : (48 * Mₐ exₐ) / (log x) ^ 4 ≤ (48 * (1426 : ℝ)) / (3915 : ℝ) ^ 4 :=
    le_trans (div_le_div_of_nonneg_left (by nlinarith) (by positivity) (by grind [pow_le_pow_left₀]))
      (div_le_div_of_nonneg_right (by nlinarith) (by positivity))
  have : (Mₐ exₐ ^ 2) / (log x) ^ 5 ≤ ((1426 : ℝ) ^ 2) / (3915 : ℝ) ^ 5 :=
    le_trans (div_le_div_of_nonneg_left (sq_nonneg _) (by positivity) (by grind [pow_le_pow_left₀]))
      (div_le_div_of_nonneg_right (by nlinarith) (by positivity))
  have : 0 ≤ 364 / log x := by positivity
  have : 0 ≤ 381 / (log x) ^ 2 := by positivity
  have : 0 ≤ 238 / (log x) ^ 3 := by positivity
  have : 0 ≤ 97 / (log x) ^ 4 := by positivity
  have : 0 ≤ 30 / (log x) ^ 5 := by positivity
  have : 0 ≤ 8 / (log x) ^ 6 := by positivity
  by_cases hm : 0 ≤ mₐ xₐ
  · rw [εlower, if_pos hm]
    unfold ε ε'
    linarith
  · rw [εlower, if_neg hm]
    have := mₐ_xₐ_ge_neg1194
    have halpha_tight : (1 + 1 / log xₐ) ^ 6 ≤ (10016 : ℝ) / 10000 := by
      rw [log_xₐ_val]; norm_num
    unfold ε εneg
    nlinarith [mul_le_mul_of_nonpos_right halpha_tight (by linarith : mₐ xₐ ≤ 0)]

@[blueprint
  "ramanujan-final"
  (title := "Ramanujan's inequality")
  (statement := /-- For $x \geq e x_a$ we have $\pi(x)^2 < \frac{e x}{\log x} \pi\Big(\frac{x}{e}\Big)$. -/)
  (proof := /-- \cite[Theorem 2]{PT2021} This follows from the previous lemmas and calculations, including the criterion for Ramanujan's inequality. -/)
  (latexEnv := "theorem")
  (discussion := 999)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean#L2395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ca87b02f4d071369a6450567252419632f736d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
