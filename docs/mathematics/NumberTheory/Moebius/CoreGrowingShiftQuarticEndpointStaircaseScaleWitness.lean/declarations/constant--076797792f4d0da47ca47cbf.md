# Anonymous constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87c04ecf41663911288d1458689910fff90d6b83e073e1554c2574879f166611",
  "kind": "constant",
  "lexical_name": null,
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
  "slug": "constant--076797792f4d0da47ca47cbf",
  "source": {
    "blob": "79fead57e101fe67db21dad9bfd5e4150a1cc334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircaseScaleWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:076797792f4d0da47ca47cbf69625c7f401015109406675b06f9353a09e730e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircaseScaleWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `constant` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87c04ecf41663911288d1458689910fff90d6b83e073e1554c2574879f166611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  constant := (1 - hOffDiagonal.relativeLoss) * hDiagonal.constant
  constant_pos :=
    mul_pos (sub_pos.mpr hOffDiagonal.relativeLoss_lt_one)
      hDiagonal.constant_pos
  threshold := max hDiagonal.threshold hOffDiagonal.threshold
  lower := by
    intro j hj
    let X : ℝ := ((2 ^ j : ℕ) : ℝ)
    have hDiag := hDiagonal.lower j
      (le_trans (le_max_left _ _) hj)
    have hOff := hOffDiagonal.lower j
      (le_trans (le_max_right _ _) hj)
    have hOneMinus : 0 ≤ 1 - hOffDiagonal.relativeLoss :=
      sub_nonneg.mpr (le_of_lt hOffDiagonal.relativeLoss_lt_one)
    have hScaled :
        (1 - hOffDiagonal.relativeLoss) *
            (hDiagonal.constant * X ^ 3) ≤
          (1 - hOffDiagonal.relativeLoss) *
            coreGrowingShiftQuarticDiagonalEnergy j :=
      mul_le_mul_of_nonneg_left (by simpa [X] using hDiag) hOneMinus
    have hRestore :
        (1 - hOffDiagonal.relativeLoss) *
            coreGrowingShiftQuarticDiagonalEnergy j ≤
          coreGrowingShiftQuarticDiagonalEnergy j +
            coreGrowingShiftQuarticOffDiagonalEnergy j := by
      linarith
    rw [coreGrowingShiftQuarticEndpointStaircaseSquareEnergy_eq_diagonal_add_offDiagonal]
    calc
      ((1 - hOffDiagonal.relativeLoss) * hDiagonal.constant) *
          (((2 ^ j : ℕ) : ℝ)) ^ 3 =
        (1 - hOffDiagonal.relativeLoss) *
          (hDiagonal.constant * X ^ 3) := by
            dsimp [X]
            ring
      _ ≤ (1 - hOffDiagonal.relativeLoss) *
          coreGrowingShiftQuarticDiagonalEnergy j := hScaled
      _ ≤ coreGrowingShiftQuarticDiagonalEnergy j +
          coreGrowingShiftQuarticOffDiagonalEnergy j := hRestore

/-- Elementary dyadic scale separation at exponent `delta = 1/4`: every
fixed `X^(2+1/2)` square envelope is eventually below every positive cubic
multiple. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircaseScaleWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircaseScaleWitness.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79fead57e101fe67db21dad9bfd5e4150a1cc334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
