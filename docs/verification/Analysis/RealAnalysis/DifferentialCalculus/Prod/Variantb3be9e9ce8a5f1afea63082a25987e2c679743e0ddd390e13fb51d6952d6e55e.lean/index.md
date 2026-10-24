# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Prod.Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7ec4c54c2098055fe7928856ea6a145b4c6bf1d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7ec4c54c2098055fe7928856ea6a145b4c6bf1d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasDerivAtFilter.prodMk](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivatfilter-prodmk--65cacaef0dabce7f9406cc8b.md) | 47 | `result-track:65cacaef0dabce7f9406cc8b8151412460f0a0f6272ab59dfd62a260f87598fe` |
| 2 | `theorem` | [HasDerivWithinAt.prodMk](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivwithinat-prodmk--d0f7a73b3ba5c3a5790f2cfd.md) | 54 | `result-track:d0f7a73b3ba5c3a5790f2cfd4d30e85798026a0c2ae9ff62cb650ee4fb8baea0` |
| 3 | `theorem` | [HasDerivAt.prodMk](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivat-prodmk--e9d7dbe2c22c24a7d51bf1ed.md) | 61 | `result-track:e9d7dbe2c22c24a7d51bf1edd2fa3767cd7a826acea4e808e5f5f368247f70cf` |
| 4 | `theorem` | [HasStrictDerivAt.prodMk](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasstrictderivat-prodmk--6b0be2a88384e7cf3f57dff2.md) | 68 | `result-track:6b0be2a88384e7cf3f57dff29e2163077bdd27a51593febb90d1618d2b967540` |
| 5 | `theorem` | [hasStrictDerivAt_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasstrictderivat-pi--fbcf42b4e80a4e2b921ef384.md) | 85 | `result-track:fbcf42b4e80a4e2b921ef384019e5a56a482f76c5625a321e3e3e0baab906306` |
| 6 | `theorem` | [hasDerivAtFilter_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivatfilter-pi--d0fc429db5f9bc0dcea74078.md) | 90 | `result-track:d0fc429db5f9bc0dcea74078ec39f6fa2b168c51bd1b7b028f60d4e71f32a841` |
| 7 | `theorem` | [hasDerivAt_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivat-pi--bd597c79b22e80975a9fd792.md) | 94 | `result-track:bd597c79b22e80975a9fd7920cd4d65d58d5f30d06e37d21c092107efdb8c102` |
| 8 | `theorem` | [hasDerivWithinAt_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivwithinat-pi--1f8952ee809f37a107fde146.md) | 97 | `result-track:1f8952ee809f37a107fde14603bce07dcbbbabf45ad2f1c2d2861f2403b625d6` |
| 9 | `theorem` | [derivWithin_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/derivwithin-pi--66165ca361efb1d91d147114.md) | 101 | `result-track:66165ca361efb1d91d147114291c042f4cfa3d264178e32ff85c85702bfdfc47` |
| 10 | `theorem` | [deriv_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/deriv-pi--7cdbcf0cf0c47e80c9643609.md) | 107 | `result-track:7cdbcf0cf0c47e80c96436094e4250bd4341b77f9b9be0407fcbb10290b2b90b` |
| 11 | `theorem` | [hasStrictDerivAt_finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasstrictderivat-fincons--7d06f09af2a547120b9cf1be.md) | 126 | `result-track:7d06f09af2a547120b9cf1becd48de1ee0afac0a69c7bfe3210215ed178c59e7` |
| 12 | `theorem` | [hasStrictDerivAt_finCons'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasstrictderivat-fincons--229e877e50324708dff4f7d3.md) | 133 | `result-track:229e877e50324708dff4f7d396c1b7dee50e49d01bc33c77d662804c613f754f` |
| 13 | `theorem` | [HasStrictDerivAt.finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasstrictderivat-fincons--e714e5ad50243c75e6fce9df.md) | 138 | `result-track:e714e5ad50243c75e6fce9df733ac66e496628a066a795bbb954dab6dbea8877` |
| 14 | `theorem` | [hasDerivAtFilter_finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivatfilter-fincons--abc2bb33b56be0741e7dba6e.md) | 143 | `result-track:abc2bb33b56be0741e7dba6e25ebb7a9c3722b41523d00f761d69bd5e607063f` |
| 15 | `theorem` | [hasDerivAtFilter_finCons'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivatfilter-fincons--d3d1d42928219d0112db21ca.md) | 150 | `result-track:d3d1d42928219d0112db21cab0b61939f03c4afec364ceaf61a6c3b5e27d9133` |
| 16 | `theorem` | [HasDerivAtFilter.finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivatfilter-fincons--abf40925d74f38f14a1c76dd.md) | 155 | `result-track:abf40925d74f38f14a1c76dd45fedcaa0a8ac70bebe8032874d170014cb11a80` |
| 17 | `theorem` | [hasDerivAt_finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivat-fincons--a8f815d51b329540a3243191.md) | 160 | `result-track:a8f815d51b329540a324319120769fc5ebf21ab57181402823a6ee51aeba6707` |
| 18 | `theorem` | [hasDerivAt_finCons'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivat-fincons--9b7bb19850242cfd0f95bd35.md) | 167 | `result-track:9b7bb19850242cfd0f95bd358179c86f544342fb7ff5a2b57553b0cab72d54c7` |
| 19 | `theorem` | [HasDerivAt.finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivat-fincons--344b1d3457314ee9d760ac11.md) | 172 | `result-track:344b1d3457314ee9d760ac111de7a4362858cd1c0ebe90f0112ef125a6ddacd8` |
| 20 | `theorem` | [hasDerivWithinAt_finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivwithinat-fincons--a48784223e105d13b6fa4103.md) | 177 | `result-track:a48784223e105d13b6fa4103426ea9701c4888189688f3e11a90d818f377d52b` |
| 21 | `theorem` | [hasDerivWithinAt_finCons'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivwithinat-fincons--aee78532148dea4f24727f64.md) | 184 | `result-track:aee78532148dea4f24727f6476c1da931237ba7bcdebc06e2647289b5a2f08ec` |
| 22 | `theorem` | [HasDerivWithinAt.finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variantb3be9e9ce8a5f1afea63082a25987e2c679743e0ddd390e13fb51d6952d6e55e.lean/declarations/hasderivwithinat-fincons--932da13fdcc57ed8383dc74d.md) | 189 | `result-track:932da13fdcc57ed8383dc74d24a4c1068f261b7cd30ea650a513ec75c81f49ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
