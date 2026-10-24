# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.SourceComponents.Variant6a8c4d7c421f9c98.BinaryMatrixFiniteCounts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e54c79be2de43d117e1bee5481d39a38e156b4fb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/index.md) · [Full source](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e54c79be2de43d117e1bee5481d39a38e156b4fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Bit` — import line 19; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant6a8c4d7c421f9c98.FiniteBinaryMatrixCarrier`](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/FiniteBinaryMatrixCarrier.lean/index.md) — import line 20; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellCount](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/declarations/cellcount--4302029304f35026cc7b30fb.md) | 38 | `declaration-track:4302029304f35026cc7b30fb8735c43f77b8558b841c91fb5b95b18a1eb7376c` |
| 2 | `def` | [IsCheckerboardPattern](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/declarations/ischeckerboardpattern--028c18969bbe3fcddacc67c7.md) | 41 | `declaration-track:028c18969bbe3fcddacc67c71a98c2218fa70808211dadd0d525cdb8f976a100` |
| 3 | `def` | [actualCount](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/declarations/actualcount--0db100bc050f1936c87df0e1.md) | 44 | `declaration-track:0db100bc050f1936c87df0e150e1c8ce988a93b7f8b8c193ceb19da7ad73c166` |
| 4 | `def` | [countOnes](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/declarations/countones--1ff46abcb0ae73b5e148f7d5.md) | 47 | `declaration-track:1ff46abcb0ae73b5e148f7d52f9b15f650c3c61e082651703efcc9e26d1092df` |
| 5 | `def` | [countZeros](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/declarations/countzeros--03d36fdc239726f77bfb95de.md) | 50 | `declaration-track:03d36fdc239726f77bfb95de8def579939c22ec65094815020be23abee544bf0` |
| 6 | `theorem` | [bit_eq_zero_or_one](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/declarations/bit-eq-zero-or-one--5d26496e6ce61b316ee651e8.md) | 53 | `result-track:5d26496e6ce61b316ee651e89cb6941211df00d043b0963106d0ae5304089524` |
| 7 | `theorem` | [bit_eq_zero_iff_not_eq_one](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/declarations/bit-eq-zero-iff-not-eq-one--13090d4d4bc9291b1755420d.md) | 61 | `result-track:13090d4d4bc9291b1755420ddc916facab06f959d111083e094dad49905aa72f` |
| 8 | `theorem` | [countOnes_add_countZeros](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/declarations/countones-add-countzeros--fdafe928b9312cb139253aca.md) | 72 | `result-track:fdafe928b9312cb139253acac758b3b6cddc34833dfa15e819bfa97a79e34bfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
