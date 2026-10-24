# exactSamplingLedgerCost_ninety_one_lt_1729

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a96578eb-067c-014d-0c21-be71346e8543",
  "kind": "theorem",
  "lexical_name": "exactSamplingLedgerCost_ninety_one_lt_1729",
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
  "slug": "exactsamplingledgercost-ninety-one-lt-1729--286ab67874ae000e4d7af82c",
  "source": {
    "blob": "0310618a706883337ce2b49d8269cb18de8b03cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceSharpDiagonalRadius/Variant9efc01bed41def40e082629526a7b3b65bf80d8cd55679ec7c1385bec7fd609d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:286ab67874ae000e4d7af82c1e340fa77ff1ea149c7da3857e60ece74f455cbf",
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

Occurrence: `result:a96578eb-067c-014d-0c21-be71346e8543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactSamplingLedgerCost_ninety_one_lt_1729 :
    exactSamplingLedgerCost (sharpDiagonalCost 91) 91 < 1729 := by
  have hδ : tailEnergyCoefficient 91 < (2449 / 500 : ℝ) := by
    rw [tailEnergyCoefficient_ninety_one]
    norm_num
  have hC : Real.log 4 + 4 < (6733 / 1250 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have hplain : 64 * (Real.log 4 + 4) * tailEnergyCoefficient 91 ≤
      (64 : ℝ) * (6733 / 1250) * (2449 / 500) := by
    have hm := mul_le_mul hC.le hδ.le (tailEnergyCoefficient_pos 91).le
      (by norm_num : (0 : ℝ) ≤ 6733 / 1250)
    nlinarith
  have hlog : 192 * tailEnergyCoefficient 91 / 91 ≤
      (192 : ℝ) * (2449 / 500) / 91 := by
    nlinarith
  have hcost := sharpDiagonalCost_ninety_one_lt_thirty
  unfold exactSamplingLedgerCost
  linarith

end RH16SharpDiagonalRadius
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceSharpDiagonalRadius/Variant9efc01bed41def40e082629526a7b3b65bf80d8cd55679ec7c1385bec7fd609d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/01SourceSharpDiagonalRadius/Variant9efc01bed41def40e082629526a7b3b65bf80d8cd55679ec7c1385bec7fd609d.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0310618a706883337ce2b49d8269cb18de8b03cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
