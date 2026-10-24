# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TaylorExpansion.Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de8d53bdfb87882b57f3602abeb4db89faaa449",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de8d53bdfb87882b57f3602abeb4db89faaa449`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiff_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/contdiff-charfun--68a6a96e1fab691bf8557e35.md) | 57 | `result-track:68a6a96e1fab691bf8557e35f87d360d19fb650dd7d620df9f9631a1693534b0` |
| 2 | `theorem` | [contDiff_charFun'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/contdiff-charfun--4b0fe223430742b5feaca0b1.md) | 67 | `result-track:4b0fe223430742b5feaca0b10a3943c236c7de75ff063204fb407d9a58a90917` |
| 3 | `lemma` | [continuous_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/continuous-charfun--c3c0bdbb4b23fe6d96172334.md) | 75 | `result-track:c3c0bdbb4b23fe6d96172334928a5c681308d0296bc878a73b1d83912b104e74` |
| 4 | `theorem` | [iteratedFDeriv_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/iteratedfderiv-charfun--f8b63cb6466c77740b9b10d7.md) | 79 | `result-track:f8b63cb6466c77740b9b10d7341265c6a7b01c0c78a3b7408033eb64e634c084` |
| 5 | `theorem` | [iteratedDeriv_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/iteratedderiv-charfun--fec60195f1f0ba4dc559310d.md) | 113 | `result-track:fec60195f1f0ba4dc559310d7f1f4fda47865162a9bf8c873bb9d0475e6bf9dc` |
| 6 | `theorem` | [iteratedDeriv_charFun_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/iteratedderiv-charfun-zero--870afc2bda23fcbce46afa2b.md) | 118 | `result-track:870afc2bda23fcbce46afa2bb324ff543b0b97f856628f15a4758ee45495c26a` |
| 7 | `lemma` | [taylorWithinEval_charFun_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/taylorwithineval-charfun-zero--7d3625ffa7a39fdb6729a7c0.md) | 123 | `result-track:7d3625ffa7a39fdb6729a7c0b3d19d603ebfa04b8f40dfa891ff27c39a47aee7` |
| 8 | `lemma` | [taylorWithinEval_charFun_two_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/taylorwithineval-charfun-two-zero--a94fff460052e13b46a0beba.md) | 135 | `result-track:a94fff460052e13b46a0beba7acf238437690e5557f865be86d70a94ab87d700` |
| 9 | `lemma` | [taylorWithinEval_charFun_two_zero'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/taylorwithineval-charfun-two-zero--f3629ac8fa79199ebd96fd13.md) | 149 | `result-track:f3629ac8fa79199ebd96fd133307d555c25c8333dedf22b46a5f3b96a491e0ea` |
| 10 | `lemma` | [taylor_charFun_two](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/declarations/taylor-charfun-two--5ba6f600633128e316b41356.md) | 159 | `result-track:5ba6f600633128e316b413566a2de81c0a8c4c08a987fc25eb75c79a14bf8f01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
