# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitQuarticDiagonalSplit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b20973c098b261c0c199d2b17671cbd34dc140a0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b20973c098b261c0c199d2b17671cbd34dc140a0`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitSignedQuarticCollisions`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityAffineShiftCollisionCoordinateNat](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/parityaffineshiftcollisioncoordinatenat--e39827a49a07e3f9d7a897b9.md) | 36 | `declaration-track:e39827a49a07e3f9d7a897b950202eb944d45c8326db64d6782ad39eee17bcde` |
| 2 | `theorem` | [parityAffineShiftResidueCoordinate_eq_natCast](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/parityaffineshiftresiduecoordinate-eq-natcast--b006c7c8f9542728121bc1ef.md) | 42 | `result-track:b006c7c8f9542728121bc1ef1409461bafaa03e62c4a591082f13537efc9710b` |
| 3 | `theorem` | [parityAffineShiftResidueCoordinate_eq_iff_modEq](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/parityaffineshiftresiduecoordinate-eq-iff-modeq--13a904c0dbbf1d0a16cedef4.md) | 54 | `result-track:13a904c0dbbf1d0a16cedef49f44d1836ae9cbff689eafac94fb0be70d076e66` |
| 4 | `def` | [regularQuarticMobiusCoefficient](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/regularquarticmobiuscoefficient--2f02764cc4cd7e6703ecf9a1.md) | 65 | `declaration-track:2f02764cc4cd7e6703ecf9a143edd8b065a64e2c67e7d2b5d0412176b5e8daf4` |
| 5 | `def` | [parityHalfShiftQuarticDiagonal](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/parityhalfshiftquarticdiagonal--76ef9c1799b6440e2602eb2b.md) | 73 | `declaration-track:76ef9c1799b6440e2602eb2ba3bf24abb17936162909626b43657c1d02a1c5b6` |
| 6 | `def` | [parityHalfShiftSignedQuarticOffDiagonal](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/parityhalfshiftsignedquarticoffdiagonal--c1beb2a6dbd1a90c88452f5d.md) | 86 | `declaration-track:c1beb2a6dbd1a90c88452f5d7337cb4f9f72c9645d8d5282f0387686175aed3c` |
| 7 | `theorem` | [diagonal_implies_affineCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/diagonal-implies-affinecollision--dc39bcf83e0b278b4bb27f1b.md) | 100 | `result-track:dc39bcf83e0b278b4bb27f1b0f6a900dd5f16687d1983a0a1188ac35de9c45ca` |
| 8 | `theorem` | [quarticCollisionTerm_eq_diagonal_add_offDiagonal](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/quarticcollisionterm-eq-diagonal-add-offdiagonal--baf0e30b81376d11d464a624.md) | 110 | `result-track:baf0e30b81376d11d464a624a29fdc0cf2d41936eb13b7433752925d965c040a` |
| 9 | `theorem` | [parityHalfShiftSignedQuarticCollision_eq_diagonal_add_offDiagonal](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/parityhalfshiftsignedquarticcollision-eq-diagonal-add-offdiagonal--15379ad61bebe80e17f4c1fb.md) | 136 | `result-track:15379ad61bebe80e17f4c1fb6b4d4a3778fe00f9c775887ac3934e3704dc1231` |
| 10 | `theorem` | [regularQuarticMobiusCoefficient_diagonal](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/regularquarticmobiuscoefficient-diagonal--8d7f002d8d86a379cbbd5002.md) | 154 | `result-track:8d7f002d8d86a379cbbd5002b8d811c62daa95c6abf2d41263b48adc22955418` |
| 11 | `structure` | [RegularSignedQuarticOffDiagonalSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/regularsignedquarticoffdiagonalsourcedata--86b6da44df3e21cfe0d3fb7e.md) | 163 | `declaration-track:86b6da44df3e21cfe0d3fb7e55e8d980e94a268a04515988b5312a8dccc0cece` |
| 12 | `def` | [RegularSignedQuarticOffDiagonalSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/declarations/regularsignedquarticoffdiagonalsource--72d68e812dd16be42d47cff7.md) | 175 | `declaration-track:72d68e812dd16be42d47cff7cbb76cf1e362d88af1ab81e57989177e1d72fae1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
