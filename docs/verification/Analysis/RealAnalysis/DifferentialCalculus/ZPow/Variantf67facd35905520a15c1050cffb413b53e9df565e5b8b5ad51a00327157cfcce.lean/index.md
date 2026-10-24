# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZPow.Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a03902cf839e44802c25a8c985089767e5cea04d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a03902cf839e44802c25a8c985089767e5cea04d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean.json)

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
| 1 | `theorem` | [hasStrictDerivAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/hasstrictderivat-zpow--2d14af4149cad19956f8a7e8.md) | 48 | `result-track:2d14af4149cad19956f8a7e8035e0455ed18c1db6208de0861ecb9764c2a0704` |
| 2 | `theorem` | [hasDerivAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/hasderivat-zpow--98c0326beb9db481db4792d4.md) | 69 | `result-track:98c0326beb9db481db4792d49442cdfd6765983803b5cc4852d3bb0831295f2e` |
| 3 | `theorem` | [hasDerivWithinAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/hasderivwithinat-zpow--7ed2fe99816b607acc8ac86a.md) | 73 | `result-track:7ed2fe99816b607acc8ac86a53b37d0f727d80a88353197b5e3ec79ea14c22ab` |
| 4 | `theorem` | [differentiableAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/differentiableat-zpow--451b2f15ad89c7a2d1353b93.md) | 77 | `result-track:451b2f15ad89c7a2d1353b93391f1fd89aa1fb40295ec119c941f916792ef89d` |
| 5 | `theorem` | [differentiableWithinAt_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/differentiablewithinat-zpow--f01325c58b50fe52d638b24f.md) | 81 | `result-track:f01325c58b50fe52d638b24f583e71238cf6bbbc6d9d58f972cacf387ddf98a2` |
| 6 | `theorem` | [differentiableOn_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/differentiableon-zpow--217679e83b9331ada640f6ed.md) | 85 | `result-track:217679e83b9331ada640f6ed0eb2b269f978a6176e0b316e3ab70abf72d639e1` |
| 7 | `theorem` | [deriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/deriv-zpow--6f551b19c3b61a9804bffb98.md) | 89 | `result-track:6f551b19c3b61a9804bffb989aa4293752be7a01e8afcfb940fc818a617ea556` |
| 8 | `theorem` | [deriv_zpow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/deriv-zpow--0eb9ab89f921f242e340bd66.md) | 98 | `result-track:0eb9ab89f921f242e340bd66d85524e0e91042d3ef0c1105b31002694f738d4b` |
| 9 | `theorem` | [derivWithin_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/derivwithin-zpow--c801191de09ddbd5719d4c90.md) | 101 | `result-track:c801191de09ddbd5719d4c90740d7144cfe97ff0fdc06d5e8bdad9af9197be57` |
| 10 | `theorem` | [iter_deriv_zpow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/iter-deriv-zpow--d1d8a26b7747cbbfb2ded162.md) | 106 | `result-track:d1d8a26b7747cbbfb2ded1622f451209ad78b8e137f0d688da0a9d0769185fe6` |
| 11 | `theorem` | [iter_deriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/iter-deriv-zpow--48b627370264ec2f2403d16d.md) | 117 | `result-track:48b627370264ec2f2403d16d71f9c68c708f82adc4924ce20d20c23bb5863189` |
| 12 | `theorem` | [iter_deriv_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/iter-deriv-pow--a3e3f063b7b1b9e7efccc849.md) | 121 | `result-track:a3e3f063b7b1b9e7efccc8495bf3d1db92f9706949cd1927c84130bceb7b25a0` |
| 13 | `theorem` | [iter_deriv_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/iter-deriv-pow--0ba7dae832ac116a4ba6e706.md) | 131 | `result-track:0ba7dae832ac116a4ba6e706da46a8f15dfcf72ff342b5e0d840f7962dc611ba` |
| 14 | `theorem` | [iter_deriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/iter-deriv-inv--0f4ce64ab77000b43b24d43f.md) | 136 | `result-track:0f4ce64ab77000b43b24d43f22781061d2f6779724693b9f2a17a61632e94191` |
| 15 | `theorem` | [iter_deriv_inv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/iter-deriv-inv--a3a65f151a2d8ce1f047fcbb.md) | 146 | `result-track:a3a65f151a2d8ce1f047fcbbe569ce8fae7b5c8b09b70038d7c778b61d803477` |
| 16 | `theorem` | [iter_deriv_inv_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/iter-deriv-inv-linear--4668157c84fcc9b42f366623.md) | 151 | `result-track:4668157c84fcc9b42f366623c1792a90b616de68645ee55d31aff417df28158d` |
| 17 | `theorem` | [iter_deriv_inv_linear_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/iter-deriv-inv-linear-sub--c95e2efb1ec8585442dbad55.md) | 172 | `result-track:c95e2efb1ec8585442dbad5502dc58c915f0d4f6e5c830eee8a020b02b1c7b4f` |
| 18 | `theorem` | [DifferentiableWithinAt.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/differentiablewithinat-zpow--5c4a26762cc7284fecd5d349.md) | 180 | `result-track:5c4a26762cc7284fecd5d349a91f7f25da66b236d70a3351ba10d5b32fb24a48` |
| 19 | `theorem` | [DifferentiableAt.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/differentiableat-zpow--f74121a60c2c7e00b7cbe149.md) | 185 | `result-track:f74121a60c2c7e00b7cbe149fc38a6559ac1f3cf03b369b917e5efd5bfb0bcac` |
| 20 | `theorem` | [DifferentiableOn.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/differentiableon-zpow--5c7fb9986b04e1bb55f9618b.md) | 190 | `result-track:5c7fb9986b04e1bb55f9618b12fbc2db5f5d2742b5a223b3ff991a4efb3f4cb2` |
| 21 | `theorem` | [Differentiable.zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variantf67facd35905520a15c1050cffb413b53e9df565e5b8b5ad51a00327157cfcce.lean/declarations/differentiable-zpow--5a7a67cfb6b65a3fe01201ab.md) | 195 | `result-track:5a7a67cfb6b65a3fe01201abfca2b10752a9c59d2227085c08340ef65cadc7b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
