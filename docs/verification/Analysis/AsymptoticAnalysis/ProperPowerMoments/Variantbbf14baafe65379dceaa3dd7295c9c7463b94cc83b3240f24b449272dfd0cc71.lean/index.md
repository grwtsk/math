# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ProperPowerMoments.Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73ea2e19685262b22955c29ffcdb0bc599f4b2bf",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73ea2e19685262b22955c29ffcdb0bc599f4b2bf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/outerweight--7ab80f4f2759e4df3a0d6c49.md) | 26 | `declaration-track:7ab80f4f2759e4df3a0d6c492228206a97fc7cd443ec2b840fc13a806d3173aa` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/exponentweight--658a3261dc7530b58b994be1.md) | 28 | `declaration-track:658a3261dc7530b58b994be1b40bbcd847a9c12e123834af3b1e675573047dd5` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/momentatom--da1f77ccf5128c8a4a87c466.md) | 30 | `declaration-track:da1f77ccf5128c8a4a87c466e4264c1bf3ec0710458980fa03a1107e2bd6ea3a` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/primemomentatom--7f154998c7737287ce3216ff.md) | 33 | `declaration-track:7f154998c7737287ce3216ffeae718e17557f0f93205e6cc0eea1829c9eae014` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/properpowermoment--893392a4963079dae3d45bc1.md) | 35 | `declaration-track:893392a4963079dae3d45bc18ee91224b9f61648ebf74bf636ef9d801b93cf50` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/properpowerb1--87a055718a0d91a632f04e67.md) | 37 | `declaration-track:87a055718a0d91a632f04e675f4fb718a5c633dc0e58daac5e03f06047c741d4` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/properpowerb2--8da2c1a8a3d7a3d58d52286e.md) | 39 | `declaration-track:8da2c1a8a3d7a3d58d52286e662aac0a86f30324c856687cb960bf477aed5f05` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/outerweight-nonneg--5f329b5b1495bf250e20c73f.md) | 41 | `result-track:5f329b5b1495bf250e20c73faf1f81833e34b85dadf0e345585e2c1e48b22248` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/exponentweight-nonneg--3d69abc1ba54b674fdcc0f0a.md) | 49 | `result-track:3d69abc1ba54b674fdcc0f0a9956fb779a009ae58dc6a3ea669ff030457dd129` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/momentatom-nonneg--cca90f9ccc7cbf8132fd1698.md) | 53 | `result-track:cca90f9ccc7cbf8132fd16989c4ec42d3662a1424fbb7d0c4fc3527fa9343498` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/outerweight-summable--e0f964abc5db808544799f1f.md) | 61 | `result-track:e0f964abc5db808544799f1f77e0f2f619dfee8243ddfa89173c8f13c8411604` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/exponentweight-summable--665d2c87e543ff24803a8df3.md) | 91 | `result-track:665d2c87e543ff24803a8df34a75195ddbcf7dbb9e80d4d96b1eb784560325fa` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/momentatom-le-product--7e4baf64a968377a212efa1c.md) | 100 | `result-track:7e4baf64a968377a212efa1c758560d3e9c14e594117aba09d7eb3caf8d29aa8` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/prime-outerweight-summable--7da34ec9b8435fb8bccbe791.md) | 121 | `result-track:7da34ec9b8435fb8bccbe791a6f5a2f15991750141f196ce29e683ae6631db4e` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/primemomentatom-summable--626c5cc3eccc3186d6e8bc7f.md) | 125 | `result-track:626c5cc3eccc3186d6e8bc7fee6b39582dcc9fe9d7e1ed334dc224a273adb113` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/primemomentatom-inner-summable--5f4f026dd15dd72a394acb61.md) | 132 | `result-track:5f4f026dd15dd72a394acb61c72e085e18baa9d8f299e9dfdad0a9c8b4a20598` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/primemomentatom-outer-summable--1e819292faeed3759210e2d1.md) | 137 | `result-track:1e819292faeed3759210e2d154129c23153b08e6a9dbb3717c2f580a6277426b` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/properpowermoment-nonneg--c82a784d0ceb09832edc7803.md) | 142 | `result-track:c82a784d0ceb09832edc78032f464d5c0f74027d238281df2d9913d6c3dfa453` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/finiteproperpowermoment-le-b1--7b566dcd9939834efb21ddb1.md) | 145 | `result-track:7b566dcd9939834efb21ddb15c402a643c4c8c0dabd18f5c2c06c3d817ae763f` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/properpowerb1-gt-nine-quarters--b9a60316a5882f9d3f55a88f.md) | 174 | `result-track:b9a60316a5882f9d3f55a88f73ca5d4ae3174e48fc297c822abc45389eb2a472` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/arithmeticconstant-gt-one-five-hundred--b349c508fa220e18262ae63a.md) | 177 | `result-track:b349c508fa220e18262ae63a03dd8cf6632fa5fe78ef67a127cc8ac87055b575` |
| 22 | `def` | [omittedOnsetAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/omittedonsetatom--fc1a0371607247712bd30a10.md) | 183 | `declaration-track:fc1a0371607247712bd30a1056816954886f15113780c5dbe08626eb50bc54ed` |
| 23 | `def` | [omittedOnsetTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/omittedonsettail--9cc382427a76ccb166f14eab.md) | 187 | `declaration-track:9cc382427a76ccb166f14eab01997980788dba4c02e681764c6e6270cb4f7239` |
| 24 | `theorem` | [properPowerMoment_eq_joint_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/properpowermoment-eq-joint-sum--617df2988807b4e1529cd347.md) | 190 | `result-track:617df2988807b4e1529cd34706511cc5a81f65893b179ce2fb45d4ed5d9cd011` |
| 25 | `theorem` | [omittedOnsetAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/omittedonsetatom-nonneg--4e2d125de01e6eef253b245b.md) | 194 | `result-track:4e2d125de01e6eef253b245b1d822b66f15de11a076c54b9e50240c9a7a7390f` |
| 26 | `theorem` | [omittedOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/omittedonsetatom-le-zeromoment--386993aec28f1107d84e111d.md) | 200 | `result-track:386993aec28f1107d84e111d28431d563a77bdf22f2b510bb64ed4186c153d9e` |
| 27 | `theorem` | [omittedOnsetTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/omittedonsettail-summable--c29af97b165915f022982b94.md) | 207 | `result-track:c29af97b165915f022982b940ed7016f56bded9b4524b0f87e87805b3c906696` |
| 28 | `theorem` | [omittedOnsetTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/omittedonsettail-nonneg--aeeaaa7fec721c60772a529e.md) | 212 | `result-track:aeeaaa7fec721c60772a529e68c91cf658bedda4e9f21bd440b5a4da981365b2` |
| 29 | `theorem` | [omittedOnsetTail_eq_iterated](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/omittedonsettail-eq-iterated--56fdb01fbfcf9822beb1ad36.md) | 215 | `result-track:56fdb01fbfcf9822beb1ad363b96d8c2948b0b47aba4889fd4d7d228935a91c1` |
| 30 | `theorem` | [omittedOnsetAtom_secondMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/omittedonsetatom-secondmoment--2afd4803967ad57c62aa21a2.md) | 219 | `result-track:2afd4803967ad57c62aa21a2fd5787591742b6f5f5bcf931c3469febcc3f40fe` |
| 31 | `theorem` | [omittedOnsetTail_le_B2_div_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/omittedonsettail-le-b2-div-square--49c697c38198bf1d217381ed.md) | 234 | `result-track:49c697c38198bf1d217381ed685ce57a973335bd5643951842191e3849f1a79a` |
| 32 | `theorem` | [properPowerB1_eq_actual](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/properpowerb1-eq-actual--a0d547e8a09cfafcf4fd913c.md) | 242 | `result-track:a0d547e8a09cfafcf4fd913c56fcd79b7f7bb278729abae2dddcd5e8afb4aa5a` |
| 33 | `theorem` | [properPowerB2_eq_actual](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/declarations/properpowerb2-eq-actual--83596a633f3061345b8b6cfe.md) | 247 | `result-track:83596a633f3061345b8b6cfe8c3b3491e243cbe84558f8c4a94e2adff45add0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
