# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InvLog.Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09b53ea2bc8614a4b821513b01889248b2017f34",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09b53ea2bc8614a4b821513b01889248b2017f34`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [not_differentiableAt_inv_log_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/not-differentiableat-inv-log-zero--3d73e947b16a16190f9c6aa9.md) | 40 | `result-track:3d73e947b16a16190f9c6aa90e76e348efa8710970c1156eb4bf4ba91e8b9075` |
| 2 | `lemma` | [not_continuousAt_inv_log_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/not-continuousat-inv-log-one--07496e29fc10169d743d1af3.md) | 51 | `result-track:07496e29fc10169d743d1af33cacbeafd2ddc80e54f818491e08ae42da56de39` |
| 3 | `lemma` | [not_continuousAt_inv_log_neg_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/not-continuousat-inv-log-neg-one--e8d8b8116ed9dd406bc03ca0.md) | 57 | `result-track:e8d8b8116ed9dd406bc03ca002ac92f1c99abdc9d3603e66c6d676224324c106` |
| 4 | `theorem` | [deriv_inv_log_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/deriv-inv-log-apply--2aba368ebb8a81f493703c3e.md) | 61 | `result-track:2aba368ebb8a81f493703c3eeacfa636e8d9916635df83a32cc71a0e26dd9f86` |
| 5 | `theorem` | [deriv_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/deriv-inv-log--0fa82347ba51751e46b7341e.md) | 71 | `result-track:0fa82347ba51751e46b7341e8789c17bec1486f99692c105bd53be74df009462` |
| 6 | `theorem` | [differentiableAt_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/differentiableat-inv-log--60d89bb862578c6351804ef8.md) | 74 | `result-track:60d89bb862578c6351804ef81f6b96776eb0c9edb01a8f73321158ba80655be1` |
| 7 | `theorem` | [hasDerivAt_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/hasderivat-inv-log--cd407c43fd68436de8a061be.md) | 78 | `result-track:cd407c43fd68436de8a061be8a34e7ef245b7844ebd5510ad35bcc64eb198b1c` |
| 8 | `theorem` | [differentiableOn_inv_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/differentiableon-inv-log--6d1b10cfd2a6171865d652f2.md) | 82 | `result-track:6d1b10cfd2a6171865d652f2448065cda94d5c93f04c22298fa22e592a087e4d` |
| 9 | `theorem` | [differentiableOn_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/differentiableon-inv-log--5a55589ab2130c6ac8690877.md) | 85 | `result-track:5a55589ab2130c6ac8690877a81a20a0339645198d97cef0e6f55ef469a9a367` |
| 10 | `theorem` | [inv_log_isLittleO_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/inv-log-islittleo-one--1dbf509c62842a088bc4c897.md) | 88 | `result-track:1dbf509c62842a088bc4c897fc22e1f5ec800ace4079d0088d35921d347d0d10` |
| 11 | `lemma` | [not_continuousAt_log_log_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/not-continuousat-log-log-zero--7b84314b0605fd7ddc6a39ab.md) | 94 | `result-track:7b84314b0605fd7ddc6a39ab1d8329b546391d35a7b3bdb882bc878eba45e0e8` |
| 12 | `lemma` | [not_continuousAt_log_log_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/not-continuousat-log-log-one--b3e1647e5a8a251015ab11ae.md) | 101 | `result-track:b3e1647e5a8a251015ab11ae96a03db908632079a07893b7bb1e2911dddd7699` |
| 13 | `lemma` | [not_continuousAt_log_log_neg_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/not-continuousat-log-log-neg-one--05e26c93acd00082ecb04b85.md) | 107 | `result-track:05e26c93acd00082ecb04b85c17a7dc5de06ef33aa2df820461bb858074ab106` |
| 14 | `theorem` | [deriv_log_log_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/deriv-log-log-apply--e507c74e2624a915da737e22.md) | 111 | `result-track:e507c74e2624a915da737e22e51a20a51e882fdb4816b693a2242854a5bf5f6a` |
| 15 | `theorem` | [deriv_log_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/deriv-log-log--c26731e038c8e5f79f0daa74.md) | 121 | `result-track:c26731e038c8e5f79f0daa745a74bd019e00699fd2658c74358f47eb75ee4eec` |
| 16 | `theorem` | [differentiableAt_log_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/differentiableat-log-log--8394dcc80a249cb3ed82bd3a.md) | 124 | `result-track:8394dcc80a249cb3ed82bd3a260d0b9a6806e698b51ff930c6e1103bdc9050ec` |
| 17 | `theorem` | [hasDerivAt_log_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/hasderivat-log-log--c9be797180161d2d868f48c1.md) | 128 | `result-track:c9be797180161d2d868f48c1a49fa6408d61f910cc9f685c449efd62450c8808` |
| 18 | `theorem` | [differentiableOn_log_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/differentiableon-log-log--3ab839440177381be488b457.md) | 132 | `result-track:3ab839440177381be488b457f4a376bca037bf00b976f27cdcce5f415913e259` |
| 19 | `theorem` | [differentiableOn_log_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/differentiableon-log-log--cdd56d532daad0af2d25ec92.md) | 135 | `result-track:cdd56d532daad0af2d25ec92590539c31b070e02c8c009372c98879f88143c54` |
| 20 | `theorem` | [one_isLittleO_log_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/declarations/one-islittleo-log-log--7a78c18569c1b87421ac9f7f.md) | 138 | `result-track:7a78c18569c1b87421ac9f7f9c6e43c6ac3f4b0f72a3e2942e8a18cf65b1f0c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
