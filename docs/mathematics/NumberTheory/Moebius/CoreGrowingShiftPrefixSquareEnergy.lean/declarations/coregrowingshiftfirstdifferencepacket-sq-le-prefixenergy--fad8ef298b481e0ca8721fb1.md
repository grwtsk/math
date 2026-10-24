# coreGrowingShiftFirstDifferencePacket_sq_le_prefixEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f708537-4aa4-5d13-f8ab-7bc491a91e69",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftFirstDifferencePacket_sq_le_prefixEnergy",
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
  "slug": "coregrowingshiftfirstdifferencepacket-sq-le-prefixenergy--fad8ef298b481e0ca8721fb1",
  "source": {
    "blob": "f45803f1a1068b8817771de233c80a7f0846283d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 326,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fad8ef298b481e0ca8721fb10f5e55b9d24bac046e8493915795e7c671cacd2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f708537-4aa4-5d13-f8ab-7bc491a91e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftFirstDifferencePacket_sq_le_prefixEnergy
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j ^ 2 ≤
      8 * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 *
        coreGrowingShiftBinaryPrefixSquareEnergy j := by
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 0 < X := by
    dsimp [X]
    positivity
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ 2 * X := by
    have h := coreLongDeepDepths_card_le_rightScale j
    rw [Nat.pow_succ] at h
    exact_mod_cast h
  have hweighted := coreGrowingShiftWeightedPrefixSquareEnergy_le j
  have hweighted_nonneg :
      0 ≤ coreGrowingShiftWeightedPrefixSquareEnergy j := by
    unfold coreGrowingShiftWeightedPrefixSquareEnergy
    positivity
  have hprefix_nonneg :
      0 ≤ coreGrowingShiftBinaryPrefixSquareEnergy j := by
    unfold coreGrowingShiftBinaryPrefixSquareEnergy
      coreGrowingShiftBinaryPrefixSquareDepth
    positivity
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_weightedPrefix]
  calc
    (2 * coreGrowingShiftWeightedPrefixPacket j) ^ 2 =
      4 * coreGrowingShiftWeightedPrefixPacket j ^ 2 := by ring
    _ ≤ 4 * (((coreLongDeepDepths j).card : ℝ) *
        coreGrowingShiftWeightedPrefixSquareEnergy j) := by
      exact mul_le_mul_of_nonneg_left
        (coreGrowingShiftWeightedPrefixPacket_sq_le j) (by norm_num)
    _ ≤ 4 * ((2 * X) *
        ((X * X⁻¹ ^ 4) *
          coreGrowingShiftBinaryPrefixSquareEnergy j)) := by
      apply mul_le_mul_of_nonneg_left
      · exact mul_le_mul hcard
          (by simpa [X] using hweighted)
          hweighted_nonneg
          (by positivity)
      · norm_num
    _ = 8 * X⁻¹ ^ 2 *
        coreGrowingShiftBinaryPrefixSquareEnergy j := by
      field_simp [ne_of_gt hX]
      ring
    _ = 8 * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 *
        coreGrowingShiftBinaryPrefixSquareEnergy j := by rfl

/-- Natural averaged binary-prefix square-energy source.  Its scale is the
number of active cells, `O((2^j)^2)`, times a subpolynomial square envelope.
This is weaker than controlling every prefix by one common supremum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f45803f1a1068b8817771de233c80a7f0846283d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
