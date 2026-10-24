# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CharFun.Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87d85389ad12d2f778cb24600435f613b5af7cab",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87d85389ad12d2f778cb24600435f613b5af7cab`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Fernique` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsGaussian.charFunDual_eq'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/isgaussian-charfundual-eq--31ced2459d4a3c5ebf0119cc.md) | 57 | `result-track:31ced2459d4a3c5ebf0119ccf9cb90b1612dceeffe48a4ed3df0f4ebcd3d6348` |
| 2 | `lemma` | [isGaussian_iff_gaussian_charFunDual](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/isgaussian-iff-gaussian-charfundual--04827571372f9ac676dd7ee4.md) | 67 | `result-track:04827571372f9ac676dd7ee4cc54d7fe4dfc4026571c36368ee2476543d21765` |
| 3 | `lemma` | [gaussian_charFunDual_congr](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/gaussian-charfundual-congr--67011cf49cf8993c1b33cfe2.md) | 84 | `result-track:67011cf49cf8993c1b33cfe2d39004167982c90eadd242ce6d908f35144eb8b3` |
| 4 | `lemma` | [IsGaussian.ext_covarianceBilinDual](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/isgaussian-ext-covariancebilindual--a0a567e52619b2ddbe39cc4d.md) | 118 | `result-track:a0a567e52619b2ddbe39cc4d4f9f9e7c4d39dba7168f6973b1cfc6488d47df04` |
| 5 | `lemma` | [IsGaussian.ext_iff_covarianceBilinDual](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/isgaussian-ext-iff-covariancebilindual--f44b2a5c95980ed02bf4a409.md) | 125 | `result-track:f44b2a5c95980ed02bf4a4090ae9c7c2d39160ebe13631fd76cbb13b55207c5b` |
| 6 | `lemma` | [IsGaussian.charFun_eq'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/isgaussian-charfun-eq--3f9275ae6ce267f5e6374a54.md) | 137 | `result-track:3f9275ae6ce267f5e6374a54932c6ce3db7ddb0a5999df8bc84bce9f796bde03` |
| 7 | `lemma` | [isGaussian_iff_gaussian_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/isgaussian-iff-gaussian-charfun--ceb2faffb4e5b27b8f904590.md) | 148 | `result-track:ceb2faffb4e5b27b8f90459077a14a1b583b7974819e72bc20051647f54ea72d` |
| 8 | `lemma` | [gaussian_charFun_congr](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/gaussian-charfun-congr--3549c6c90745547c1f28c045.md) | 168 | `result-track:3549c6c90745547c1f28c045551028c720777dbc887c1c24e61c514e2779d9fa` |
| 9 | `lemma` | [IsGaussian.ext](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/isgaussian-ext--86900b17c4b1cd77f954f565.md) | 186 | `result-track:86900b17c4b1cd77f954f565c28ec14ba77be6bf7bde14fb7a0a80e255e90d50` |
| 10 | `lemma` | [IsGaussian.ext_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/declarations/isgaussian-ext-iff--c0b3becce6e2fb37a43c5c12.md) | 194 | `result-track:c0b3becce6e2fb37a43c5c1258aadd13b8377560fe508c743c36174530c3e81e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
