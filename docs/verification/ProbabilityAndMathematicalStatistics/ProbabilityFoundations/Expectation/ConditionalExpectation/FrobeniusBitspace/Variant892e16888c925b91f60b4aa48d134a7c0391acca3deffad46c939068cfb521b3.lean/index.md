# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.FrobeniusBitspace.Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66cfd25ec12e38391cd873fcc4fd3aaa966f5189",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66cfd25ec12e38391cd873fcc4fd3aaa966f5189`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrixStream` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FrobeniusBitspace](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3.lean/declarations/frobeniusbitspace--7f60b35938d4879e4d277ce0.md) | 29 | `declaration-track:7f60b35938d4879e4d277ce038033ed589d7464c57f213d7570a97a351bf37c9` |
| 2 | `def` | [bitValue](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3.lean/declarations/bitvalue--cf7c9fb09abef61ae80142cf.md) | 36 | `declaration-track:cf7c9fb09abef61ae80142cf4a552e7e3e55e08c6e0322d4ac4abbed71e9a9b1` |
| 3 | `def` | [bitNormSq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3.lean/declarations/bitnormsq--3b797b3535e48286430fad1b.md) | 39 | `declaration-track:3b797b3535e48286430fad1b91f981782dd27a0c38768141e29ad11d0be6a383` |
| 4 | `theorem` | [bitNormSq_le_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/FrobeniusBitspace/Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3.lean/declarations/bitnormsq-le-one--9ddff37a0468b76b3dcfb6fe.md) | 42 | `result-track:9ddff37a0468b76b3dcfb6feb899f2647bf8e6d5d90ff6342f6b7350b3ce1317` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
