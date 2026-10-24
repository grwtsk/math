# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceContinuationStatements.Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8a9d44b291981192ebf45f367034742ede07b0b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8a9d44b291981192ebf45f367034742ede07b0b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actuallaplace--c904b528c72b50acbbf73a51.md) | 25 | `declaration-track:c904b528c72b50acbbf73a51fcdb47c7ea1422f7c9f0d87d32fa39dee147b9a8` |
| 2 | `theorem` | [decay_derivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/decay-derivative-bound--649d1bade15d274b461f43e8.md) | 28 | `result-track:649d1bade15d274b461f43e862cddf1232e4053625ec4f3d25d46e311e0e9378` |
| 3 | `theorem` | [actualLaplace_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actuallaplace-differentiableat--84826b328ade690ad0520e57.md) | 41 | `result-track:84826b328ade690ad0520e576008d41b3b59c7ebb297ae920dd93987beb278a0` |
| 4 | `theorem` | [V_differentiableAt_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/v-differentiableat-of-ne-zero--ed3ee4d729a6c27914220389.md) | 93 | `result-track:ed3ee4d729a6c279142203890813b7bcccfae4d479237a9c05f02152aa674c21` |
| 5 | `theorem` | [repairedTransfer_differentiableAt_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/repairedtransfer-differentiableat-of-ne--0abae1876cb793efe99250da.md) | 102 | `result-track:0abae1876cb793efe99250daa4be0ac621fcc3769a9b885fee20a494b2e27021` |
| 6 | `theorem` | [repairedTransfer_analyticAt_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/repairedtransfer-analyticat-pole--52ae23f9b91759b3655955ca.md) | 118 | `result-track:52ae23f9b91759b3655955caad3f7209400904ccbc511d646ffd8b7076480c06` |
| 7 | `theorem` | [repairedTransfer_differentiableOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/repairedtransfer-differentiableon-positive--446a2517305870ead6114aba.md) | 127 | `result-track:446a2517305870ead6114aba6b7011aad9cac3dd4eca6d3fca565837cdfe7b6e` |
| 8 | `theorem` | [actualLaplace_analyticOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actuallaplace-analyticon-positive--fd6f83eb7a1ec055b1ee791d.md) | 139 | `result-track:fd6f83eb7a1ec055b1ee791d8b4e2c751240ebdc1f665f550b99615c32201cbe` |
| 9 | `theorem` | [actualLaplace_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actuallaplace-eq-repairedtransfer--506607d99abbe2fc8b86c334.md) | 146 | `result-track:506607d99abbe2fc8b86c33458d20ec52ed2fb178e562c414564041af9ca0431` |
| 10 | `theorem` | [actualLaplace_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actuallaplace-at-pole--785decf9cf321724feb56de5.md) | 161 | `result-track:785decf9cf321724feb56de5d1d2b8afec0a9c4f057cd614e71724efa843d838` |
| 11 | `theorem` | [actualLaplace_pole_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actuallaplace-pole-ne-zero--0ecf8eae6c11debf235f3926.md) | 165 | `result-track:0ecf8eae6c11debf235f3926287ffa5940d0b21331568def734b6a8c0a833be1` |
| 12 | `theorem` | [actual_laplace_integral_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actual-laplace-integral-eq-repairedtransfer--08426f870af4f759070e97dd.md) | 170 | `result-track:08426f870af4f759070e97dd3261f997d21c61c48c1c90cbd223649f132eb05a` |
| 13 | `theorem` | [actual_laplace_integral_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actual-laplace-integral-at-pole--05ac1c636d3fc35010bed76f.md) | 176 | `result-track:05ac1c636d3fc35010bed76f7ddd09214397c26179ae5b9f33feefb28c2c1f08` |
| 14 | `theorem` | [actual_laplace_integral_zero_of_nontrivial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actual-laplace-integral-zero-of-nontrivial--6f1aafd532f31a06cf8abc65.md) | 182 | `result-track:6f1aafd532f31a06cf8abc65ad196ee50bb60a83bd7f22fad3781e5000d48eff` |
| 15 | `theorem` | [actual_laplace_integral_zero_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/actual-laplace-integral-zero-occurrence--27f94b76d5046b2af5684f88.md) | 193 | `result-track:27f94b76d5046b2af5684f88d88432ef41da61e0bfb3da2c7255a5e5698f3797` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--02218eb13959d1c30c40586b.md) | 213 | `declaration-track:02218eb13959d1c30c40586b9aafea261d77f89b7c1f11bafbd92d0ef06de988` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--7439341161788b67af30191f.md) | 215 | `declaration-track:7439341161788b67af30191f02eb08e3f10a91018f2305170ee1082725ec3a94` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--f206e4ffb64bd1d55d315535.md) | 217 | `declaration-track:f206e4ffb64bd1d55d3155351085bd64508476500b7a0cf20cf8549a56cff466` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--ca69c2a18faea00143e9c5a7.md) | 219 | `declaration-track:ca69c2a18faea00143e9c5a702ea4bfd80f3eb68c6c31f4ab2dcb2c1fa5d6690` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--dd5045ea879888c9be0e2b18.md) | 222 | `declaration-track:dd5045ea879888c9be0e2b18356fe4e63616402607ede1467eecf2c5461ba163` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--090a34e54b8fe1e49aef3673.md) | 223 | `declaration-track:090a34e54b8fe1e49aef367322cf0dc82f28e9067684fe4ad38523b1cf6748c5` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--f406003a8126e702b6e56427.md) | 225 | `declaration-track:f406003a8126e702b6e5642760e366703ba04c7286819590e52b6fb7ab515dfc` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--a373d679ecdf50034f92e17d.md) | 227 | `declaration-track:a373d679ecdf50034f92e17d891652b254dc07f439b15d18a561a3dfa319a2e5` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--da3e4e51f5e32ba1248b521d.md) | 229 | `declaration-track:da3e4e51f5e32ba1248b521d43baf3f945515eb143e15a2cde3b5a33f7373652` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--c7bdf9992d24d335d9ca02dd.md) | 230 | `declaration-track:c7bdf9992d24d335d9ca02dd072e7fe2ff34359d7a74cae9dd430eacdf373ff7` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--a3403b7ba6d6a49533b70907.md) | 231 | `declaration-track:a3403b7ba6d6a49533b70907501349bd45b478cd738846da212a4dd6072d5566` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--c802718a2c186707402836cc.md) | 234 | `declaration-track:c802718a2c186707402836ccd540df531b9d76d819969cf6ef678ea013ecb4d2` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--c06a12b7893aecd226627e19.md) | 237 | `declaration-track:c06a12b7893aecd226627e192828ff7e1c4bf04f9ff60c24f2e5993841f8e934` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/declarations/example--26e196fff51bb178c0788fc9.md) | 242 | `declaration-track:26e196fff51bb178c0788fc9cec227eccbb2a6f4ea623109bff4a0e02302b9f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
