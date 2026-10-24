# coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_offFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bc61077-1e38-581d-3cb9-58cf44c3f330",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_offFiber",
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
  "slug": "coregrowingshiftendpointtransverseinteriorrightendpointharmonicdft2-norm--dae38da5dd9f70720e641e2f",
  "source": {
    "blob": "64f490dc18a0e344c1cf99964cc3df081447714e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 501,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dae38da5dd9f70720e641e2fc7912acac7087ab5ea89099e1c8cb04d5c6ddba4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bc61077-1e38-581d-3cb9-58cf44c3f330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_norm_le_offFiber
    {j : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hus : s - u ≠ 0) :
    ‖coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
        j u s‖ ≤
      2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖ := by
  rw [coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_eq_sheared]
  unfold coreGrowingShiftEndpointRightEndpointHarmonicShearedDFT2
  calc
    ‖∑ y ∈ Finset.Ico
        (coreGrowingShiftEndpointRightEndpointHarmonicYLower j)
        (coreGrowingShiftEndpointRightEndpointHarmonicYUpper j),
      coreGrowingShiftEndpointTransverseNatCharacter j u y *
        (((y : ℕ) : ℂ))⁻¹ *
        coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
          j y (s - u)‖ ≤
      ∑ y ∈ Finset.Ico
        (coreGrowingShiftEndpointRightEndpointHarmonicYLower j)
        (coreGrowingShiftEndpointRightEndpointHarmonicYUpper j),
        ‖coreGrowingShiftEndpointTransverseNatCharacter j u y *
          (((y : ℕ) : ℂ))⁻¹ *
          coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
            j y (s - u)‖ := norm_sum_le _ _
    _ ≤ ∑ y ∈ Finset.Ico
        (coreGrowingShiftEndpointRightEndpointHarmonicYLower j)
        (coreGrowingShiftEndpointRightEndpointHarmonicYUpper j),
        (((y : ℕ) : ℝ))⁻¹ *
          (2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖) := by
      apply Finset.sum_le_sum
      intro y hy
      rw [norm_mul, norm_mul]
      have hchar :
          ‖coreGrowingShiftEndpointTransverseNatCharacter j u y‖ = 1 := by
        unfold coreGrowingShiftEndpointTransverseNatCharacter
        rw [ZMod.stdAddChar_apply]
        simp
      rw [hchar, one_mul, Complex.norm_inv, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        (coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum_norm_le
          hus)
        (by positivity)
    _ = coreGrowingShiftEndpointRightEndpointHarmonicMass j *
        (2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖) := by
      unfold coreGrowingShiftEndpointRightEndpointHarmonicMass
      rw [Finset.sum_mul]
    _ ≤ 1 *
        (2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖) := by
      exact mul_le_mul_of_nonneg_right
        (coreGrowingShiftEndpointRightEndpointHarmonicMass_le_one j)
        (by positivity)
    _ = 2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j (s - u))⁻¹‖ := by
      ring

/-- Circular-distance form of the off-fiber estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f490dc18a0e344c1cf99964cc3df081447714e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
