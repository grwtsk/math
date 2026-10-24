# actualComplementaryFrequencyRatio_eventually_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0f04a11-6b06-d00b-1993-c16ece7e164c",
  "kind": "theorem",
  "lexical_name": "actualComplementaryFrequencyRatio_eventually_abs_le",
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
  "slug": "actualcomplementaryfrequencyratio-eventually-abs-le--b2901857f9e55f1f2a69c66a",
  "source": {
    "blob": "1260d7993acf210366437cfe8ecdd8c76b9362e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant3f9888da771bb72800573c1758472ce47195d9a5ee48c5e7e082e2222612b750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2901857f9e55f1f2a69c66accf41ac943aa45d3df924f393767a858ed8e5940",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant3f9888da771bb72800573c1758472ce47195d9a5ee48c5e7e082e2222612b750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0f04a11-6b06-d00b-1993-c16ece7e164c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplementaryFrequencyRatio_eventually_abs_le :
    ∀ᶠ A : ℝ in atTop,
      |actualComplementaryFrequencyMass A / actualCentralFrequencyMass A + 1| ≤
        (actualAbsolutePrimeMomentUpperConstant / actualCentralFrequencyConstant) *
          A * Real.exp (-A) +
        ((actualBumpMovingTailConstant (3 / 2) +
          actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) /
          actualCentralFrequencyConstant) * A * Real.exp (-2 * A) := by
  filter_upwards [eventually_ge_atTop (1 : ℝ),
    actualCentralFrequencyMass_eventually_lower,
    actualCentralFrequencyMass_eventually_pos] with A hA hbound hpos
  have hp : 0 < A := by linarith
  have hc : actualCentralFrequencyConstant ≠ 0 :=
    ne_of_gt actualCentralFrequencyConstant_pos
  have hlow : 0 < actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 :=
    div_pos (mul_pos actualCentralFrequencyConstant_pos (Real.exp_pos _)) (by positivity)
  have hid := actualClosedPrimeHead_eq_central_add_complement hA
  have hratio : actualComplementaryFrequencyMass A / actualCentralFrequencyMass A + 1 =
      (actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re /
        actualCentralFrequencyMass A := by
    rw [hid]
    field_simp
    ring
  rw [hratio, abs_div, abs_of_pos hpos]
  calc
    _ ≤ |(actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re| /
        (actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10) :=
      div_le_div_of_nonneg_left (abs_nonneg _) hlow hbound
    _ ≤ (actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 +
        (actualBumpMovingTailConstant (3 / 2) +
          actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)) / A ^ 9) /
        (actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10) :=
      div_le_div_of_nonneg_right (whole_head_abs_le hA) hlow.le
    _ = _ := by
      have hexp : Real.exp (2 * A) = Real.exp A * Real.exp A := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [show -2 * A = -(2 * A) by ring, Real.exp_neg, Real.exp_neg, hexp]
      field_simp
      ring

/-- The relative cancellation error tends to zero without a signed residual cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant3f9888da771bb72800573c1758472ce47195d9a5ee48c5e7e082e2222612b750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant3f9888da771bb72800573c1758472ce47195d9a5ee48c5e7e082e2222612b750.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1260d7993acf210366437cfe8ecdd8c76b9362e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
