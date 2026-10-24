# oneSidedPowerRadiusBudget_ninety_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55a50932-69ec-eae8-ac7b-a0bfff611e68",
  "kind": "theorem",
  "lexical_name": "oneSidedPowerRadiusBudget_ninety_one",
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
  "slug": "onesidedpowerradiusbudget-ninety-one--37267067dcc07978b21130a1",
  "source": {
    "blob": "df3b2532d83309f9cd9cc7ca443ad4a48677d724",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerBudget/Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37267067dcc07978b21130a17aaa6c52a9bb223cdf89c0574a9f91293d21db48",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerBudget/Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a50932-69ec-eae8-ac7b-a0bfff611e68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oneSidedPowerRadiusBudget_ninety_one :
    oneSidedPowerRadiusBudget 91 < (23 / 1250000 : ℝ) := by
  have he := exp_radius_square_threshold
  have hl := log_radius_vaughan_upper
  have hs : squareNegativeTailCost 91 ≤ (293 / 20 : ℝ) / 799999 := by
    unfold squareNegativeTailCost
    rw [show 3 * (91 : ℝ) / 20 + 1 = 293 / 20 by norm_num,
      show 3 * (91 : ℝ) / 20 = 273 / 20 by norm_num]
    exact div_le_div_of_nonneg_left (show (0 : ℝ) ≤ 293 / 20 by norm_num)
      (show (0 : ℝ) < 799999 by norm_num)
      (show (799999 : ℝ) ≤ Real.exp (273 / 20) - 1 by linarith)
  have hc : cubicPowerTailCost 8281 ≤
      (8282 : ℝ) * (96 / 5) / (4 * 8281 ^ 3) := by
    unfold cubicPowerTailCost
    have hn : 2 * Real.log (8281 : ℝ) + 1 ≤ 96 / 5 := by linarith
    rw [show (8281 : ℝ) + 1 = 8282 by norm_num]
    exact div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_left hn (show (0 : ℝ) ≤ 8282 by norm_num))
      (show (0 : ℝ) ≤ 4 * 8281 ^ 3 by norm_num)
  have hb : (293 / 20 : ℝ) / 799999 + 8282 * (96 / 5) / (4 * 8281 ^ 3) <
      (23 / 1250000 : ℝ) := by norm_num
  have hsum := add_le_add hs hc
  unfold oneSidedPowerRadiusBudget
  norm_num only [show (⌊(91 : ℝ) ^ 2⌋₊ : ℝ) = 8281 by norm_num]
  exact hsum.trans_lt hb

end RH16OneSidedPowerDiagonal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerBudget/Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerBudget/Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3b2532d83309f9cd9cc7ca443ad4a48677d724` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
