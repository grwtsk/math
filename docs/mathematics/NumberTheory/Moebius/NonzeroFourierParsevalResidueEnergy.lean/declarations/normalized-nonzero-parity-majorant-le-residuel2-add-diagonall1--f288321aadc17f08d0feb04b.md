# normalized_nonzero_parity_majorant_le_residueL2_add_diagonalL1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0de7189a-8fd9-c00c-9999-d0572c80dd55",
  "kind": "theorem",
  "lexical_name": "normalized_nonzero_parity_majorant_le_residueL2_add_diagonalL1",
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
  "slug": "normalized-nonzero-parity-majorant-le-residuel2-add-diagonall1--f288321aadc17f08d0feb04b",
  "source": {
    "blob": "039b222f2d10086d9481a4d5fc16b3577a006052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 210,
    "path": "GRWTSK/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f288321aadc17f08d0feb04bf12961e61ab9b5372d76218de87284bd840bae06",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0de7189a-8fd9-c00c-9999-d0572c80dd55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_nonzero_parity_majorant_le_residueL2_add_diagonalL1
    (b d r : ℕ) [NeZero d] :
    (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          ‖parityOnePointMobiusFourierSum b d r k ^ 2 -
            parityOnePointMobiusFourierDiagonal b d r k‖ ≤
      parityMobiusResidueL2Energy b d r +
        paritySquarefreeDiagonalNonzeroFrequencyL1 b d r := by
  let q : ℝ := ((d * d : ℕ) : ℝ)
  have hq0 : 0 ≤ q⁻¹ := by positivity
  calc
    q⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          ‖parityOnePointMobiusFourierSum b d r k ^ 2 -
            parityOnePointMobiusFourierDiagonal b d r k‖ ≤
      q⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          (‖parityOnePointMobiusFourierSum b d r k‖ ^ 2 +
            ‖parityOnePointMobiusFourierDiagonal b d r k‖) := by
      apply mul_le_mul_of_nonneg_left ?_ hq0
      apply Finset.sum_le_sum
      intro k _hk
      exact norm_square_sub_diagonal_le _ _
    _ = q⁻¹ *
          ∑ k ∈ nonzeroSquareModulusFrequencySet d,
            ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2 +
        paritySquarefreeDiagonalNonzeroFrequencyL1 b d r := by
      unfold paritySquarefreeDiagonalNonzeroFrequencyL1
      rw [Finset.sum_add_distrib, mul_add]
    _ ≤ q⁻¹ *
          ∑ k : ZMod (d * d),
            ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2 +
        paritySquarefreeDiagonalNonzeroFrequencyL1 b d r := by
      gcongr
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · exact Finset.erase_subset _ _
      · intro k _hk _hnot
        positivity
    _ = parityMobiusResidueL2Energy b d r +
        paritySquarefreeDiagonalNonzeroFrequencyL1 b d r := by
      rw [parityMobiusFourier_parseval]
      unfold parityMobiusResidueL2Energy
      have hqne : q ≠ 0 := by
        dsimp [q]
        positivity
      field_simp

/-- The exact nonzero-frequency endpoint majorant is bounded by the new
Parseval residue-energy/diagonal endpoint majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/NonzeroFourierParsevalResidueEnergy.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039b222f2d10086d9481a4d5fc16b3577a006052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
