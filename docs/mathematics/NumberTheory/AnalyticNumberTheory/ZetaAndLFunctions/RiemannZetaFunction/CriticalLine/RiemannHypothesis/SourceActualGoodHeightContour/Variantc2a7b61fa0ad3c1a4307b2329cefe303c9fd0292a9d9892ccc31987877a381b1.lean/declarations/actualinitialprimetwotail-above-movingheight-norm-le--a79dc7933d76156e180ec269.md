# actualInitialPrimeTwoTail_above_movingHeight_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c3896a0-dbe2-48ef-23e7-293131f6e75a",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeTwoTail_above_movingHeight_norm_le",
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
  "slug": "actualinitialprimetwotail-above-movingheight-norm-le--a79dc7933d76156e180ec269",
  "source": {
    "blob": "bacd5601a20e6f79948af2af8a64e4bf310dd817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a79dc7933d76156e180ec269b40632cb7d2bd999a0069d13722ba32c36795add",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c3896a0-dbe2-48ef-23e7-293131f6e75a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeTwoTail_above_movingHeight_norm_le (A c R : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hR : actualBumpMovingHeight A c ≤ R) :
    ‖actualInitialPrimeTwoTail A c R‖ ≤ actualBumpMovingTailConstant c / A ^ 9 := by
  have hbase := actualBumpMovingHeight_ge_one A c hA hc
  rw [actualInitialPrimeTwoTail_eq_bump hA hc]
  have hb := actualBumpTwoTail_norm_le A c R hA hc (hbase.trans hR)
  have hp : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hD := actualRightLineMass_nonneg c
  have hnum : 0 ≤ actualRightBumpTailNumerator A c := by
    unfold actualRightBumpTailNumerator
    positivity
  have hpow := pow_le_pow_left₀ (show 0 ≤ actualBumpMovingHeight A c by linarith) hR 5
  have ht : actualBumpMovingHeight A c ^ 5 = Real.exp ((2 * c - 1) * A) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have he : actualRightBumpTailNumerator A c /
      (5 * Real.pi * actualBumpMovingHeight A c ^ 5) =
      (actualRightLineMass c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) *
        (1 + (c - 1) ^ 2)) / (5 * Real.pi * sourceNormalization A * A ^ 9) := by
    rw [ht]
    unfold actualRightBumpTailNumerator
    field_simp
  calc
    _ ≤ actualRightBumpTailNumerator A c / (5 * Real.pi * R ^ 5) := hb
    _ ≤ actualRightBumpTailNumerator A c /
        (5 * Real.pi * actualBumpMovingHeight A c ^ 5) := by
      apply div_le_div_of_nonneg_left hnum (by positivity)
      gcongr
    _ = _ := he
    _ ≤ (actualRightLineMass c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) *
        (1 + (c - 1) ^ 2)) / (5 * Real.pi * (4096 / 109395) * A ^ 9) := by
      apply div_le_div_of_nonneg_left (by positivity) (by positivity)
      gcongr
      exact actualBumpNormalization_lower A hA
    _ = _ := by unfold actualBumpMovingTailConstant; ring

/-- Actual good-height selection and the complete finite source residue identity are unconditional.
All zero multiplicities and the entire completed-zeta contour are retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bacd5601a20e6f79948af2af8a64e4bf310dd817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
