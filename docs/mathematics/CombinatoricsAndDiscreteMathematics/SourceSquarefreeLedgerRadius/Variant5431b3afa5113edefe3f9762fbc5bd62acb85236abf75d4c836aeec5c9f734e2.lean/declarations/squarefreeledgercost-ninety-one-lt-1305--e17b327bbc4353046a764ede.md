# squarefreeLedgerCost_ninety_one_lt_1305

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0e4a4f7-a44d-d6ce-cf7e-897895266867",
  "kind": "theorem",
  "lexical_name": "squarefreeLedgerCost_ninety_one_lt_1305",
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
  "slug": "squarefreeledgercost-ninety-one-lt-1305--e17b327bbc4353046a764ede",
  "source": {
    "blob": "2dfa8ff360f8498ef6fd75aff3784e72747b2c9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant5431b3afa5113edefe3f9762fbc5bd62acb85236abf75d4c836aeec5c9f734e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e17b327bbc4353046a764edeba9e393d9c08474ec96ff24dd6baff0f26ae29ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant5431b3afa5113edefe3f9762fbc5bd62acb85236abf75d4c836aeec5c9f734e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0e4a4f7-a44d-d6ce-cf7e-897895266867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefreeLedgerCost_ninety_one_lt_1305 : squarefreeLedgerCost 91 < 1305 := by
  have hd : tailEnergyCoefficient 91 < (2449 / 500 : Real) := by
    rw [tailEnergyCoefficient_ninety_one]
    norm_num
  have hC : Real.log 4 + 4 < (6733 / 1250 : Real) := by
    have hp := Real.log_pow (2 : Real) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have hp : 48 * (Real.log 4 + 4) * tailEnergyCoefficient 91 <=
      (48 : Real) * (6733 / 1250) * (2449 / 500) := by
    have hm := mul_le_mul hC.le hd.le (tailEnergyCoefficient_pos 91).le
      (by norm_num : (0 : Real) <= 6733 / 1250)
    nlinarith
  have hl : 144 * tailEnergyCoefficient 91 / 91 <=
      (144 : Real) * (2449 / 500) / 91 := by nlinarith
  have hc := sharpDiagonalCost_ninety_one_lt_thirty
  unfold squarefreeLedgerCost
  rw [show sharpDiagonalCost 91 + tailEnergyCoefficient 91 *
    (144 / 91 + 48 * (Real.log 4 + 4)) =
      sharpDiagonalCost 91 + 144 * tailEnergyCoefficient 91 / 91 +
        48 * (Real.log 4 + 4) * tailEnergyCoefficient 91 by ring]
  linarith

/-- No rounding of a later supplied readout radius is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant5431b3afa5113edefe3f9762fbc5bd62acb85236abf75d4c836aeec5c9f734e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant5431b3afa5113edefe3f9762fbc5bd62acb85236abf75d4c836aeec5c9f734e2.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dfa8ff360f8498ef6fd75aff3784e72747b2c9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
