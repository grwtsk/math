# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CharFun.Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89714d32b9541081be71dd90e6b93b8ffdfd76be",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89714d32b9541081be71dd90e6b93b8ffdfd76be`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Fernique` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsGaussian.charFunDual_eq'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/isgaussian-charfundual-eq--2474f636a31b2750d75af0e9.md) | 65 | `result-track:2474f636a31b2750d75af0e950800771196c59cd76d62efa7a4248f4f50e8c9a` |
| 2 | `lemma` | [isGaussian_iff_gaussian_charFunDual](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/isgaussian-iff-gaussian-charfundual--e63b17da75cd9fe6167da38a.md) | 75 | `result-track:e63b17da75cd9fe6167da38a0cd0ca967746711353767bb6ad5f1d19088f9326` |
| 3 | `lemma` | [gaussian_charFunDual_congr](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/gaussian-charfundual-congr--eeb2268c37e4fed62f74f92d.md) | 92 | `result-track:eeb2268c37e4fed62f74f92df24ee5b6b967e7fcc139ebbba3faaaa4adb2f602` |
| 4 | `lemma` | [IsGaussian.ext_covarianceBilinDual](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/isgaussian-ext-covariancebilindual--b2df3d5fc0a0c342b202304e.md) | 126 | `result-track:b2df3d5fc0a0c342b202304e4246ad7d74c7df8a3370a016e4974a6793cf34a6` |
| 5 | `lemma` | [IsGaussian.ext_iff_covarianceBilinDual](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/isgaussian-ext-iff-covariancebilindual--6ef9c77493940e7f507ed4d6.md) | 133 | `result-track:6ef9c77493940e7f507ed4d6fb7b9b257b0eb7b9960dbd0164ece16a90946824` |
| 6 | `lemma` | [IsGaussian.charFun_eq'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/isgaussian-charfun-eq--56b16269fa649f288c56738b.md) | 145 | `result-track:56b16269fa649f288c56738b8d90c4338e1751b048ecb732bb3f7ec89c569ef2` |
| 7 | `lemma` | [isGaussian_iff_gaussian_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/isgaussian-iff-gaussian-charfun--00785cf160120920839fc953.md) | 156 | `result-track:00785cf160120920839fc95315416b51bc70e47dfa52614101a6a8bebc8150a1` |
| 8 | `lemma` | [gaussian_charFun_congr](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/gaussian-charfun-congr--e854841f6ecd0a21c04c92c2.md) | 176 | `result-track:e854841f6ecd0a21c04c92c2a8cec791eab0b2db6705733dab16b07e8641f3c8` |
| 9 | `lemma` | [IsGaussian.ext](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/isgaussian-ext--f6f3957d63868e3c23aa4350.md) | 194 | `result-track:f6f3957d63868e3c23aa4350f2e981d696062fc3d070b81b2f214ec8f514d0df` |
| 10 | `lemma` | [IsGaussian.ext_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/declarations/isgaussian-ext-iff--b1e02a1c44d5b4ea0cb7067b.md) | 202 | `result-track:b1e02a1c44d5b4ea0cb7067bc8cdfaa03fbbd99bc41fc55d1379592497ac4895` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
