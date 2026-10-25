# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SumFourSquares.Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57d963e10ba2381dd5c37eb4cd0cf1a0baa5237b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57d963e10ba2381dd5c37eb4cd0cf1a0baa5237b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [euler_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/declarations/euler-four-squares--371746a44137dd8fbbbcadcc.md) | 31 | `result-track:371746a44137dd8fbbbcadcc76399b303d41b8942bb838dd94f4522aafd4738f` |
| 2 | `theorem` | [Nat.euler_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/declarations/nat-euler-four-squares--54641404bfad39d81950ea81.md) | 37 | `result-track:54641404bfad39d81950ea816239e64d077edd32d180014273ae107ea1828185` |
| 3 | `theorem` | [sq_add_sq_of_two_mul_sq_add_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/declarations/sq-add-sq-of-two-mul-sq-add-sq--6fa33a8df9b9cc82b89298b9.md) | 49 | `result-track:6fa33a8df9b9cc82b89298b916854d787fa13417837e8c07233e3ebdc437ffab` |
| 4 | `theorem` | [lt_of_sum_four_squares_eq_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/declarations/lt-of-sum-four-squares-eq-mul--7cc374fdbb6be96d41dcf3aa.md) | 60 | `result-track:7cc374fdbb6be96d41dcf3aa9f6299b4398d0640cef3746a757259ad66759987` |
| 5 | `theorem` | [exists_sq_add_sq_add_one_eq_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/declarations/exists-sq-add-sq-add-one-eq-mul--67c870b9eedf3da5e94c74d8.md) | 65 | `result-track:67c870b9eedf3da5e94c74d8f7c75b2edf3d3fc9ed424f0984addd6be72bdd91` |
| 6 | `theorem` | [sum_four_squares_of_two_mul_sum_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/declarations/sum-four-squares-of-two-mul-sum-four-squares--6b739ef6e11b46e743bfb537.md) | 91 | `result-track:6b739ef6e11b46e743bfb537347916f894f15694fd7b9da500de1b83d2ac92e5` |
| 7 | `theorem` | [Prime.sum_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/declarations/prime-sum-four-squares--c502d9746ebf02097175a04d.md) | 117 | `result-track:c502d9746ebf02097175a04d3816311caa8a6fdbb5f49853186e9fbd1985ead1` |
| 8 | `theorem` | [sum_four_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/declarations/sum-four-squares--6f378538f3e423d8b609d6f8.md) | 203 | `result-track:6f378538f3e423d8b609d6f8cd4fc4a5a51abb72afe5ae512891c545ad02a3ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
