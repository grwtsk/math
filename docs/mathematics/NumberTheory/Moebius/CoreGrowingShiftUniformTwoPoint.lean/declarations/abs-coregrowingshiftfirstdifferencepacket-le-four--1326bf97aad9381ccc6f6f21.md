# abs_coreGrowingShiftFirstDifferencePacket_le_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0738f460-09f8-6b6f-38a1-dc4fc52af0e6",
  "kind": "theorem",
  "lexical_name": "abs_coreGrowingShiftFirstDifferencePacket_le_four",
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
  "slug": "abs-coregrowingshiftfirstdifferencepacket-le-four--1326bf97aad9381ccc6f6f21",
  "source": {
    "blob": "594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 314,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1326bf97aad9381ccc6f6f215cf9ecfa9b119741c816ac97347f4abb2bc51a57",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0738f460-09f8-6b6f-38a1-dc4fc52af0e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_coreGrowingShiftFirstDifferencePacket_le_four
    {j : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U) :
    |coreGrowingShiftFirstDifferencePacket j| ≤ 4 * U := by
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hXpos : (0 : ℝ) < X := by
    dsimp [X]
    positivity
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ (Y : ℝ) := by
    exact_mod_cast coreLongDeepDepths_card_le_rightScale j
  unfold coreGrowingShiftFirstDifferencePacket
  calc
    |∑ t ∈ coreLongDeepDepths j,
      coreGrowingShiftFirstDifferenceDepth j t| ≤
      ∑ t ∈ coreLongDeepDepths j,
        |coreGrowingShiftFirstDifferenceDepth j t| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _t ∈ coreLongDeepDepths j,
        2 * (X : ℝ) * U * ((X : ℝ)⁻¹) ^ 2 := by
      apply Finset.sum_le_sum
      intro t ht
      simpa [X] using
        abs_coreGrowingShiftFirstDifferenceDepth_le_leftScale henv ht
    _ = ((coreLongDeepDepths j).card : ℝ) *
        (2 * (X : ℝ) * U * ((X : ℝ)⁻¹) ^ 2) := by simp
    _ ≤ (Y : ℝ) *
        (2 * (X : ℝ) * U * ((X : ℝ)⁻¹) ^ 2) := by
      apply mul_le_mul_of_nonneg_right hcard
      exact mul_nonneg
        (mul_nonneg
          (mul_nonneg (by norm_num) (by positivity)) henv.1)
        (sq_nonneg _)
    _ = 4 * U := by
      have hYX : (Y : ℝ) = 2 * (X : ℝ) := by
        dsimp [X, Y]
        rw [Nat.pow_succ]
        norm_num
      rw [hYX]
      field_simp [ne_of_gt hXpos]
      ring

/-- The existing dyadic envelope has the same constant-four packet bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
