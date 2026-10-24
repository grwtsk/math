# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.FiniteBinaryCarrierMathematics.Variante70264a1b259cd1a.OddEvenCardinalityAndMatrixCounts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86ff9af2ed87f2a3601cad0d133b677518a01fb6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86ff9af2ed87f2a3601cad0d133b677518a01fb6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Bitspace.Checkerboard` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_odd_eq_div_two](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/declarations/count-odd-eq-div-two--c627d57062fc5baada8b2bdc.md) | 41 | `result-track:c627d57062fc5baada8b2bdcd0615d354c292d2773ccc03429f4b1c4448677cb` |
| 2 | `def` | [finOddEquiv](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/declarations/finoddequiv--7bcec878055eabb40014da7b.md) | 56 | `declaration-track:7bcec878055eabb40014da7bfef6dd776d6707a90f1ea1d21cbeccdc2d36740c` |
| 3 | `theorem` | [card_fin_odd](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/declarations/card-fin-odd--bd042de081a2e2c27cc494fc.md) | 67 | `result-track:bd042de081a2e2c27cc494fc5367cd5964fd13d7ad718fd619b73b97be4e414c` |
| 4 | `theorem` | [card_fin_even](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/declarations/card-fin-even--8ecf285a83b8253708ff6ff2.md) | 81 | `result-track:8ecf285a83b8253708ff6ff2bda57a22491dc07d6fa5d657dc52d1dfea2db4c8` |
| 5 | `theorem` | [checkerboard_count_arithmetic](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/declarations/checkerboard-count-arithmetic--2a55952cd02e2bed8401c0c8.md) | 92 | `result-track:2a55952cd02e2bed8401c0c8177173bc8e58c19c986d8af7c62f6cf671a8650c` |
| 6 | `theorem` | [checkerboard_one_iff](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/declarations/checkerboard-one-iff--92b921fee244c2cc967dec21.md) | 160 | `result-track:92b921fee244c2cc967dec218157d39ac7e9a3b675298fbb73c76689497eaed7` |
| 7 | `theorem` | [checkerboard_countOnes_eq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/declarations/checkerboard-countones-eq--e96315b20b8c92487a741a58.md) | 167 | `result-track:e96315b20b8c92487a741a58eb219634234d3aacdb1ddf00d354dfc5625bc81d` |
| 8 | `theorem` | [checkerboard_countZeros_eq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/OddEvenCardinalityAndMatrixCounts.lean/declarations/checkerboard-countzeros-eq--e14306e90d81dc1cf2dc8de0.md) | 194 | `result-track:e14306e90d81dc1cf2dc8de024f85058ea808dd680d5722f6a1e92e67777392c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
