# Verification target: GRWTSK.NumberTheory.VonMangoldt.LatticeGreenReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79567f164b371dfa37c94802004d9d1b6bc9d8bb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/LatticeGreenReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79567f164b371dfa37c94802004d9d1b6bc9d8bb`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/LatticeGreenReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/LatticeGreenReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.VonMangoldt.LatticeCellSource`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellSquare](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/cellsquare--0ab4fcac56653107d278cae4.md) | 25 | `declaration-track:0ab4fcac56653107d278cae433145fbd17253f4f3d86bfb3f0f16d6f768f5e8a` |
| 2 | `def` | [cellLogDefect](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/celllogdefect--313f4efb9ca6a4d100f8ae06.md) | 29 | `declaration-track:313f4efb9ca6a4d100f8ae0685149c7c91db7d1be3ffabdecd5e2a718f15c092` |
| 3 | `def` | [logMeshDefect](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/logmeshdefect--aeb65a3ae47c815c60daffa1.md) | 33 | `declaration-track:aeb65a3ae47c815c60daffa1700a8cb56912670fd43bfa083b4b28a09b367ac0` |
| 4 | `def` | [latticeCoarseGreen](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/latticecoarsegreen--f5b285e92d97d06a6a7d6eda.md) | 35 | `declaration-track:f5b285e92d97d06a6a7d6edaa85a8fdb7438510b3c231ec2467fbb74c3be4853` |
| 5 | `def` | [latticeCompleteEnergy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/latticecompleteenergy--76da262a10850d17a784f75c.md) | 38 | `declaration-track:76da262a10850d17a784f75c5d8957669cee0e1487ca43b46d8d2a5fee7758cf` |
| 6 | `theorem` | [cell_square_completion](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/cell-square-completion--34fb1fd3578fc764b9272e56.md) | 42 | `result-track:34fb1fd3578fc764b9272e563dfb1145f92d75f85b409cd009a26d5ed30be2bc` |
| 7 | `theorem` | [source_square_intervalIntegrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/source-square-intervalintegrable--3be6b75c06cb562c4696fca6.md) | 54 | `result-track:3be6b75c06cb562c4696fca69213eefa00e16fe1cc8238aab0c8e741cb719a16` |
| 8 | `theorem` | [green_eq_sum_cellSquares](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/green-eq-sum-cellsquares--955f5209dbdcb0ce54f80333.md) | 68 | `result-track:955f5209dbdcb0ce54f8033306d137405e88119a198898a7bdcfd0c5041d8cfb` |
| 9 | `theorem` | [green_eq_lattice_plus_logDefect](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/green-eq-lattice-plus-logdefect--36759327a044960087ac9f3b.md) | 86 | `result-track:36759327a044960087ac9f3b7a3d23e4b82c29efa6bfb00b5d1ac8ee55aea604` |
| 10 | `theorem` | [augmented_eq_lattice_plus_logDefect](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean/declarations/augmented-eq-lattice-plus-logdefect--f566cd2a71306f617929e477.md) | 94 | `result-track:f566cd2a71306f617929e47783afdc4a423a14caac1affea053e98f1f7dbde9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
