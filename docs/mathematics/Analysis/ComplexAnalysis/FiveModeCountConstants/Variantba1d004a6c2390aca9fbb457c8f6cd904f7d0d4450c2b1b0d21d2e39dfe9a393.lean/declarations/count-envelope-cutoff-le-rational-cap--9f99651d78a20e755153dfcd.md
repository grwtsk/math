# count_envelope_cutoff_le_rational_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:286cab68-356b-fefa-5853-32ad16ea050d",
  "kind": "theorem",
  "lexical_name": "count_envelope_cutoff_le_rational_cap",
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
  "slug": "count-envelope-cutoff-le-rational-cap--9f99651d78a20e755153dfcd",
  "source": {
    "blob": "4e4fe8f5cb4b9443c5a8347b619cbe06712c298f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 50,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FiveModeCountConstants/Variantba1d004a6c2390aca9fbb457c8f6cd904f7d0d4450c2b1b0d21d2e39dfe9a393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f99651d78a20e755153dfcd40629fcb20f9a3730f7247c13b90ea555f99b005",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiveModeCountConstants/Variantba1d004a6c2390aca9fbb457c8f6cd904f7d0d4450c2b1b0d21d2e39dfe9a393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:286cab68-356b-fefa-5853-32ad16ea050d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_envelope_cutoff_le_rational_cap :
    positiveSixthPowerCountEnvelope 3000000000000 ≤ rationalCountCap := by
  have hT : (0 : ℝ) < 3000000000000 := by norm_num
  have hp : (6 : ℝ) < 2*Real.pi := by linarith [Real.pi_gt_three]
  have hp0 : (0 : ℝ) < 2*Real.pi := by positivity
  have hratio : (1 : ℝ) < (3000000000000 : ℝ)/(2*Real.pi) := by
    apply (lt_div_iff₀ hp0).2
    linarith [Real.pi_lt_four]
  have hlogpos : (0 : ℝ) ≤ Real.log ((3000000000000 : ℝ)/(2*Real.pi)) :=
    Real.log_nonneg hratio.le
  have hlog : Real.log ((3000000000000 : ℝ)/(2*Real.pi)) < 29 := by
    have hd : (3000000000000 : ℝ)/(2*Real.pi) ≤ 3000000000000 := by
      apply (div_le_iff₀ hp0).2
      nlinarith
    exact (Real.log_le_log (by positivity) hd).trans_lt cutoff_log_lt_twenty_nine
  have hmain : (Real.log ((3000000000000 : ℝ)/(2*Real.pi))/5+1/25)/(2*Real.pi) ≤
      (146/150 : ℝ) := by
    have hnum : Real.log ((3000000000000 : ℝ)/(2*Real.pi))/5+1/25 ≤ (146/25 : ℝ) := by linarith
    calc
      _ ≤ (146/25 : ℝ)/(2*Real.pi) := div_le_div_of_nonneg_right hnum hp0.le
      _ ≤ (146/25 : ℝ)/6 := by gcongr
      _ = _ := by norm_num
  have herr : 2*correctedBellottiWongError (3000000000000 : ℝ) +
      (11200/100000 : ℝ)/6+(12567/100000 : ℝ)/(6*Real.log 3000000000000) ≤ 17 := by
    have hb : (12567/100000 : ℝ)/(6*Real.log 3000000000000) ≤ (12567/100000 : ℝ)/6 := by
      gcongr
      linarith [cutoff_log_gt_one]
    linarith [corrected_error_cutoff_lt_eight]
  unfold positiveSixthPowerCountEnvelope rationalCountCap
  calc
    _ = (1/(3000000000000 : ℝ)^5)*
      ((Real.log ((3000000000000 : ℝ)/(2*Real.pi))/5+1/25)/(2*Real.pi)) +
      (1/(3000000000000 : ℝ)^6)*
      (2*correctedBellottiWongError 3000000000000+(11200/100000 : ℝ)/6+
        (12567/100000 : ℝ)/(6*Real.log 3000000000000)) := by ring
    _ ≤ (1/(3000000000000 : ℝ)^5)*(146/150) +
      (1/(3000000000000 : ℝ)^6)*17 := by gcongr
    _ = _ := by ring

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FiveModeCountConstants/Variantba1d004a6c2390aca9fbb457c8f6cd904f7d0d4450c2b1b0d21d2e39dfe9a393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FiveModeCountConstants/Variantba1d004a6c2390aca9fbb457c8f6cd904f7d0d4450c2b1b0d21d2e39dfe9a393.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e4fe8f5cb4b9443c5a8347b619cbe06712c298f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
