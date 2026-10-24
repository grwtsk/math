# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ArctanDeriv.Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6aaba2a8f95a94b289fa48a478a1478cc8eca4c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6aaba2a8f95a94b289fa48a478a1478cc8eca4c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ComplexDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasstrictderivat-tan--44a8b0675e902cd7521f1c0b.md) | 24 | `result-track:44a8b0675e902cd7521f1c0b3bab9c8a37956f093b143073c2f3e35e2871b461` |
| 2 | `theorem` | [hasDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasderivat-tan--0ca4be8edce4d534458e2e98.md) | 27 | `result-track:0ca4be8edce4d534458e2e983c0dfc7f50557efba6d33eb4d5f2eb27b4887e5f` |
| 3 | `theorem` | [tendsto_abs_tan_of_cos_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/tendsto-abs-tan-of-cos-eq-zero--3b8fa4887653e3a70049d6df.md) | 30 | `result-track:3b8fa4887653e3a70049d6dffc2a90317db6f550e29b96f3abfa77c46842db45` |
| 4 | `theorem` | [tendsto_abs_tan_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/tendsto-abs-tan-attop--26ba0826fad0c47863e8cf10.md) | 38 | `result-track:26ba0826fad0c47863e8cf100398e9809284283229fe56d1ce351e2935e9d1dc` |
| 5 | `theorem` | [continuousAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/continuousat-tan--a1855702d852a02bf4f6c8fc.md) | 42 | `result-track:a1855702d852a02bf4f6c8fc6fd78839c71089d617aacba9148cdb127c9104ec` |
| 6 | `theorem` | [differentiableAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/differentiableat-tan--61eb95e9175829ee7c0df1a6.md) | 47 | `result-track:61eb95e9175829ee7c0df1a6edeb88507576badcb43ae3c7cb2c3b22871b1720` |
| 7 | `theorem` | [deriv_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/deriv-tan--dedd7330e492cefb8d7be032.md) | 51 | `result-track:dedd7330e492cefb8d7be032ffaab56fe73f780b41ad00eeea3396c06ec20044` |
| 8 | `theorem` | [contDiffAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/contdiffat-tan--c619e1374e55655ab1969f6f.md) | 58 | `result-track:c619e1374e55655ab1969f6f0739fdfd24371f7112821c0b1e1512ee4136600e` |
| 9 | `theorem` | [hasDerivAt_tan_of_mem_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasderivat-tan-of-mem-ioo--eb7b8e43e7a431f498ae23f6.md) | 62 | `result-track:eb7b8e43e7a431f498ae23f608e95f327dea32332056e33a483908305b45f706` |
| 10 | `theorem` | [differentiableAt_tan_of_mem_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/differentiableat-tan-of-mem-ioo--e2df1d26f80e02080c276616.md) | 66 | `result-track:e2df1d26f80e02080c2766163d3997bcfc26f332d0c1f573eeeb8eecea4a64b1` |
| 11 | `theorem` | [hasStrictDerivAt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasstrictderivat-arctan--a30de553d473f1e355dd77f1.md) | 70 | `result-track:a30de553d473f1e355dd77f1d9228f69235929621f84c2b6f4fd1765858f464b` |
| 12 | `theorem` | [hasDerivAt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasderivat-arctan--244a87d3e4640fa2f68d8c9b.md) | 75 | `result-track:244a87d3e4640fa2f68d8c9ba8e2209fb6efa5af18011b94afca11ba6e371038` |
| 13 | `theorem` | [hasDerivAt_arctan'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasderivat-arctan--72b9418969d073bf7c98b0a9.md) | 78 | `result-track:72b9418969d073bf7c98b0a926cf5c0d0ac24f081226a18a95b57aa67588bd91` |
| 14 | `theorem` | [differentiableAt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/differentiableat-arctan--2e793fe922551adf3ac2332a.md) | 81 | `result-track:2e793fe922551adf3ac2332a86aabfe1760cca46db70737e0bf8105dfee4cff4` |
| 15 | `theorem` | [differentiable_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/differentiable-arctan--4c758bd569f48b341cc1ae94.md) | 84 | `result-track:4c758bd569f48b341cc1ae940ce561a6cd7647defaf12b27e7ce03a93e6667c7` |
| 16 | `theorem` | [deriv_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/deriv-arctan--98f4dcec2ce2f6fb9db57e3f.md) | 88 | `result-track:98f4dcec2ce2f6fb9db57e3f4026d0904671ac75e6af28babb0c32b27932706d` |
| 17 | `theorem` | [contDiff_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/contdiff-arctan--57dd4fd1a7b126ba7ef7ca07.md) | 91 | `result-track:57dd4fd1a7b126ba7ef7ca074b06c6acd071894c03c778852ad4ec4ec14bbf14` |
| 18 | `theorem` | [HasStrictDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasstrictderivat-arctan--83e1996d18ce117c7beb0147.md) | 114 | `result-track:83e1996d18ce117c7beb0147fdcb05a140a24f5355b23e4cc7d318a89981859d` |
| 19 | `theorem` | [HasDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasderivat-arctan--e3e278d116a2d0263e3d3b50.md) | 118 | `result-track:e3e278d116a2d0263e3d3b5014ce34738be7af05c58481b9a9f2559b196bdd8c` |
| 20 | `theorem` | [HasDerivWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasderivwithinat-arctan--c404e0d0052e367590e93cd1.md) | 122 | `result-track:c404e0d0052e367590e93cd117231efe5f98e802386efef3df6a753464839b26` |
| 21 | `theorem` | [derivWithin_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/derivwithin-arctan--607944e259600470a8519ac6.md) | 126 | `result-track:607944e259600470a8519ac6fd69339460e428f6d989cdeb3e20ca0869547502` |
| 22 | `theorem` | [deriv_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/deriv-arctan--ab30036f34b725a74389d5ea.md) | 131 | `result-track:ab30036f34b725a74389d5ea1b7017518de8c1793f14ebe301237cd8767cf3bb` |
| 23 | `theorem` | [HasStrictFDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasstrictfderivat-arctan--09761e39642e9b6943a2d224.md) | 142 | `result-track:09761e39642e9b6943a2d2242ad25b73c7fd2c68b4072b3f311d3135bc193658` |
| 24 | `theorem` | [HasFDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasfderivat-arctan--0b79b75df48cdbf3b7afb665.md) | 146 | `result-track:0b79b75df48cdbf3b7afb66541e00d80144eaedca4ee1134ca33dad757170941` |
| 25 | `theorem` | [HasFDerivWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/hasfderivwithinat-arctan--6b64b51449912a22bebb4f76.md) | 150 | `result-track:6b64b51449912a22bebb4f76c07161b2bafe1e0d98dce20f151c46c65016df23` |
| 26 | `theorem` | [fderivWithin_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/fderivwithin-arctan--801d65091c445998549d4bcb.md) | 154 | `result-track:801d65091c445998549d4bcbb6f9ff6bec7905b7b2dcab00e04d3b8718ddc837` |
| 27 | `theorem` | [fderiv_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/fderiv-arctan--5b1f8cc8e2280e1e62a1684c.md) | 159 | `result-track:5b1f8cc8e2280e1e62a1684c0b50343e96f278ed13f769ad1a9bf0c369079372` |
| 28 | `theorem` | [DifferentiableWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/differentiablewithinat-arctan--32652481433145cd99858737.md) | 163 | `result-track:32652481433145cd99858737cbbe4b7798f0f63991d4c9e3a86720df7a6bea1d` |
| 29 | `theorem` | [DifferentiableAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/differentiableat-arctan--8f9ce795398ef1426533695b.md) | 168 | `result-track:8f9ce795398ef1426533695b6bf3fb498636fe6c17bdae55571fbadd5d0f0b72` |
| 30 | `theorem` | [DifferentiableOn.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/differentiableon-arctan--f251a0dedee801a51d0e1571.md) | 172 | `result-track:f251a0dedee801a51d0e157172f67d0726dd14e300d399a614b2dc25fd30c9b3` |
| 31 | `theorem` | [Differentiable.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/differentiable-arctan--512d1de099aab459951bfb5b.md) | 176 | `result-track:512d1de099aab459951bfb5b3ce0f99e79a86fcf08ef8fa9155bd40f68ba9b47` |
| 32 | `theorem` | [ContDiffAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/contdiffat-arctan--d755a1823d860851a49b105a.md) | 179 | `result-track:d755a1823d860851a49b105a0da79731b8fb65343c8081eb71fb6c959613b463` |
| 33 | `theorem` | [ContDiff.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/contdiff-arctan--a57c274a463f8ce84429d3a5.md) | 182 | `result-track:a57c274a463f8ce84429d3a51b0047bb9327dd431b66469bd59ee4692cd72b36` |
| 34 | `theorem` | [ContDiffWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/contdiffwithinat-arctan--e2b4ef47ef73a7f3f56b6fe7.md) | 185 | `result-track:e2b4ef47ef73a7f3f56b6fe7039222ac71186798aeb364660541cbbebc1e9eeb` |
| 35 | `theorem` | [ContDiffOn.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant0a2b67e7c7ef92dfc709868812f81fd14bfc3637e10b8f69b6b76b8cf5d38cca.lean/declarations/contdiffon-arctan--988163daca2409a88116a5ae.md) | 189 | `result-track:988163daca2409a88116a5aebf403f9041c37c421a6f6acb626041e5cb335e0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
