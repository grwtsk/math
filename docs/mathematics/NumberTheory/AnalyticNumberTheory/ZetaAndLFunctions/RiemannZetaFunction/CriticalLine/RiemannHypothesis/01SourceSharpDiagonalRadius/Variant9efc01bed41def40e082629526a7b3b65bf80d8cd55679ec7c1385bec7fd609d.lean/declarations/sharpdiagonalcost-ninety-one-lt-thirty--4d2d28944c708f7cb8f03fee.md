# sharpDiagonalCost_ninety_one_lt_thirty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b3e885-a7b1-02bf-3095-5c26dc2033d9",
  "kind": "theorem",
  "lexical_name": "sharpDiagonalCost_ninety_one_lt_thirty",
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
  "slug": "sharpdiagonalcost-ninety-one-lt-thirty--4d2d28944c708f7cb8f03fee",
  "source": {
    "blob": "0310618a706883337ce2b49d8269cb18de8b03cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 16,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceSharpDiagonalRadius/Variant9efc01bed41def40e082629526a7b3b65bf80d8cd55679ec7c1385bec7fd609d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d2d28944c708f7cb8f03fee80085d442d8ac127ccd1b000021540086c519e10",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceSharpDiagonalRadius/Variant9efc01bed41def40e082629526a7b3b65bf80d8cd55679ec7c1385bec7fd609d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b3e885-a7b1-02bf-3095-5c26dc2033d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpDiagonalCost_ninety_one_lt_thirty : sharpDiagonalCost 91 < 30 := by
  have hlog2 : Real.log 2 < (7 / 10 : ℝ) := by
    linarith [Real.log_two_lt_d9]
  have hlog4 : Real.log 4 + 4 < (27 / 5 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith
  have hlog128 := Real.log_pow (2 : ℝ) 7
  norm_num at hlog128
  have hlog91 : Real.log 91 < (5 : ℝ) := by
    have hm := Real.log_lt_log (by norm_num : (0 : ℝ) < 91)
      (by norm_num : (91 : ℝ) < 128)
    linarith
  have hlog8281 : Real.log 8281 < (10 : ℝ) := by
    have hp := Real.log_pow (91 : ℝ) 2
    norm_num at hp
    linarith
  have hδ := tailEnergyCoefficient_ninety_one_lt_five
  have hs : Real.sqrt (tailEnergyCoefficient 91) < (56 / 25 : ℝ) := by
    apply (Real.sqrt_lt' (by norm_num : (0 : ℝ) < 56 / 25)).mpr
    exact hδ.trans (by norm_num)
  have hprime : (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient 91)) <
      (3699 / 125 : ℝ) := by
    calc
      _ ≤ (27 / 5) * (1 + 2 * Real.sqrt (tailEnergyCoefficient 91)) :=
        mul_le_mul_of_nonneg_right hlog4.le (by positivity)
      _ < (27 / 5) * (1 + 2 * (56 / 25)) :=
        mul_lt_mul_of_pos_left (by linarith) (by norm_num)
      _ = _ := by norm_num
  have hcube : Real.log 91 ^ 3 ≤ (125 : ℝ) := by
    calc
      _ ≤ (5 : ℝ) ^ 3 := pow_le_pow_left₀ (Real.log_nonneg (by norm_num)) hlog91.le 3
      _ = _ := by norm_num
  have hshort : 16 * tailEnergyCoefficient 91 * Real.log 91 ^ 3 / (3 * (91 : ℝ) ^ 2) ≤
      (10000 / 24843 : ℝ) := by
    have hm := mul_le_mul hδ.le hcube (by positivity : 0 ≤ Real.log 91 ^ 3)
      (by norm_num : (0 : ℝ) ≤ 5)
    nlinarith
  have hproper : powerTailBudget (⌊(91 : ℝ) ^ 2⌋₊ : ℝ) ≤
      (182183 / 137149922 : ℝ) := by
    norm_num [powerTailBudget]
    linarith
  unfold sharpDiagonalCost
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceSharpDiagonalRadius/Variant9efc01bed41def40e082629526a7b3b65bf80d8cd55679ec7c1385bec7fd609d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceSharpDiagonalRadius/Variant9efc01bed41def40e082629526a7b3b65bf80d8cd55679ec7c1385bec7fd609d.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0310618a706883337ce2b49d8269cb18de8b03cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
