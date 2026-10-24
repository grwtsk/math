# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TaylorExpansion.Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83160a39258640a390bb5d1979e904c5724aae32",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83160a39258640a390bb5d1979e904c5724aae32`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiff_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/contdiff-charfun--38bd0e20ee94c14e3df0cab2.md) | 49 | `result-track:38bd0e20ee94c14e3df0cab2883f0bf90d642ab24017075d29883b446bf6f5d9` |
| 2 | `theorem` | [contDiff_charFun'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/contdiff-charfun--9d4ab897a3f2a81659f9b044.md) | 59 | `result-track:9d4ab897a3f2a81659f9b044e0fa6e6c00d6c540d32ff23431bfa01da7bb1a95` |
| 3 | `lemma` | [continuous_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/continuous-charfun--cf28eedc5b86f7c8ca8ec49e.md) | 67 | `result-track:cf28eedc5b86f7c8ca8ec49e1d8f00b44be6a2ec4e5a6b8d81fc9a1042174a25` |
| 4 | `theorem` | [iteratedFDeriv_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/iteratedfderiv-charfun--20f8b1e37e92d95b611c2d91.md) | 71 | `result-track:20f8b1e37e92d95b611c2d910dcd7f3d168ffc9f5b2b7aadc542166a3137595b` |
| 5 | `theorem` | [iteratedDeriv_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/iteratedderiv-charfun--74302e16be2e1cabc82e00f2.md) | 105 | `result-track:74302e16be2e1cabc82e00f277a7b3581639fd34f730ab909cad2a036e3550ec` |
| 6 | `theorem` | [iteratedDeriv_charFun_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/iteratedderiv-charfun-zero--ea020f57c75e1a1d622f5fd0.md) | 110 | `result-track:ea020f57c75e1a1d622f5fd0076d6bcc9d425e16c29227fce2bfc47973328cbc` |
| 7 | `lemma` | [taylorWithinEval_charFun_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/taylorwithineval-charfun-zero--ce1b81a5df0bcbfbb3f7aab0.md) | 115 | `result-track:ce1b81a5df0bcbfbb3f7aab0ac87181ffddafb95710312f4cc80ebc32ae8cf6c` |
| 8 | `lemma` | [taylorWithinEval_charFun_two_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/taylorwithineval-charfun-two-zero--ccf376675f6e2dc781f057a5.md) | 127 | `result-track:ccf376675f6e2dc781f057a5a9920ab22290f49d0029bf06696d1d22927a244b` |
| 9 | `lemma` | [taylorWithinEval_charFun_two_zero'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/taylorwithineval-charfun-two-zero--211a680a6ccab55709875e56.md) | 141 | `result-track:211a680a6ccab55709875e56d3f61e6bb57d972dbc463126117809e2528c73ff` |
| 10 | `lemma` | [taylor_charFun_two](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/declarations/taylor-charfun-two--43f08a25a26bc94ff7dc9cb2.md) | 151 | `result-track:43f08a25a26bc94ff7dc9cb29d57acfd7a4391051d33bb46d19183d4fdfbb851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
