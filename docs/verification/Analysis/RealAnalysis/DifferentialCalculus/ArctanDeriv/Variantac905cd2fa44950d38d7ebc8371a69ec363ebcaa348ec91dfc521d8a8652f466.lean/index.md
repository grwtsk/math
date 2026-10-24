# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ArctanDeriv.Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9d5f518a2830722a641c7bd317985f84e31a067",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9d5f518a2830722a641c7bd317985f84e31a067`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ComplexDeriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/macro-rules--0e24c5f780ee8e0ac4524584.md) | 28 | `declaration-track:0e24c5f780ee8e0ac4524584d0703b5ae96d12d4f4bc2c118bc2d64b11793297` |
| 2 | `theorem` | [hasStrictDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasstrictderivat-tan--93380f8754ec518fe2175a4e.md) | 36 | `result-track:93380f8754ec518fe2175a4ec2031afb246844076d07d2c35b5457564f27d1df` |
| 3 | `theorem` | [hasDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasderivat-tan--640a5ac6673b500dcbe5fb91.md) | 40 | `result-track:640a5ac6673b500dcbe5fb911fd0de3b2fb524c78881e90fb998ff920d5a6a00` |
| 4 | `theorem` | [tendsto_abs_tan_of_cos_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/tendsto-abs-tan-of-cos-eq-zero--c22a20bae516e87ce9b501a5.md) | 44 | `result-track:c22a20bae516e87ce9b501a57401fd38f58587699b94503cdc9a0e417b238406` |
| 5 | `theorem` | [tendsto_abs_tan_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/tendsto-abs-tan-attop--998786e27fea19045d1a4b51.md) | 53 | `result-track:998786e27fea19045d1a4b5152727743d99b23d2a9c0ca62ba176ed25710ab23` |
| 6 | `theorem` | [continuousAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/continuousat-tan--7ee0a2c1018e05237f497f9d.md) | 58 | `result-track:7ee0a2c1018e05237f497f9deb276559bc2ab711584aaa862be2318d14582ada` |
| 7 | `theorem` | [differentiableAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/differentiableat-tan--183d93e1040c8fc3899839b2.md) | 64 | `result-track:183d93e1040c8fc3899839b2f12c118f7b285e5d123c8ab86ca2061e8edf7b7e` |
| 8 | `theorem` | [deriv_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/deriv-tan--fed2a3f9fcb83b5176b5b2e7.md) | 69 | `result-track:fed2a3f9fcb83b5176b5b2e78b5c83d4331dad3c0846910a7a8bd800deb049d3` |
| 9 | `theorem` | [contDiffAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/contdiffat-tan--beea46ceee73cd83a59f5321.md) | 77 | `result-track:beea46ceee73cd83a59f5321f88a7089a70772df6d180181ed1e0a45c7328d7b` |
| 10 | `theorem` | [hasDerivAt_tan_of_mem_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasderivat-tan-of-mem-ioo--db0654a90ce7213e1af7dbf2.md) | 82 | `result-track:db0654a90ce7213e1af7dbf23a811603a8e57641a985048f414c65ecbdb88ffc` |
| 11 | `theorem` | [differentiableAt_tan_of_mem_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/differentiableat-tan-of-mem-ioo--a1e8eaeff3f6436760cb27d8.md) | 87 | `result-track:a1e8eaeff3f6436760cb27d89dd5e35a18661c200c85adc03286d41751222758` |
| 12 | `theorem` | [hasStrictDerivAt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasstrictderivat-arctan--415af549e7cc2ce971164ea7.md) | 92 | `result-track:415af549e7cc2ce971164ea7d9826e8103d105d756e1632542daf0561182eaa7` |
| 13 | `theorem` | [hasDerivAt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasderivat-arctan--6f2dd439304692f2dd31d4ae.md) | 98 | `result-track:6f2dd439304692f2dd31d4ae1d8fc0fda20f243800d653d0fb3552574450d86a` |
| 14 | `theorem` | [differentiableAt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/differentiableat-arctan--cec186cdb510109d622c2be1.md) | 102 | `result-track:cec186cdb510109d622c2be1fa878854adab640320717f7cb9e3311852e0d0af` |
| 15 | `theorem` | [differentiable_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/differentiable-arctan--2986853b9de59fdd0345fc11.md) | 106 | `result-track:2986853b9de59fdd0345fc1140e916d0d7cb638ee64a9ed20b1919ece3972c8d` |
| 16 | `theorem` | [deriv_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/deriv-arctan--15503ab4d5ec1d709039fcb7.md) | 111 | `result-track:15503ab4d5ec1d709039fcb7b1bc120aef24afcafabb39d205617f6ee4c8452f` |
| 17 | `theorem` | [contDiff_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/contdiff-arctan--8e7f9909253e08d91bfb0479.md) | 115 | `result-track:8e7f9909253e08d91bfb04792cab9030262635d2ab87e80efb979803180d95d1` |
| 18 | `theorem` | [HasStrictDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasstrictderivat-arctan--22effd037976f98de760b76d.md) | 139 | `result-track:22effd037976f98de760b76deccb6438bce2ee957e2a977ff45a0da443ee5d2c` |
| 19 | `theorem` | [HasDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasderivat-arctan--e1dd144d0ce07fcbb3a08565.md) | 144 | `result-track:e1dd144d0ce07fcbb3a08565e47e916063a9825ba2466b150a476b65dc2ecb66` |
| 20 | `theorem` | [HasDerivWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasderivwithinat-arctan--3b117a118bc50f49bd99fe02.md) | 149 | `result-track:3b117a118bc50f49bd99fe02a2460a6cda104cf0b7e6cf0c5c1e6018ddb6dc94` |
| 21 | `theorem` | [derivWithin_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/derivwithin-arctan--57546c6a14c0137feae20806.md) | 154 | `result-track:57546c6a14c0137feae208069b3c5cb5502165d065e9b088d33b953de7aa93c7` |
| 22 | `theorem` | [deriv_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/deriv-arctan--4bb77aad5904958c2f2777de.md) | 160 | `result-track:4bb77aad5904958c2f2777deae7533cce3fb283087b2b1cc46b17ac1bbc579f2` |
| 23 | `theorem` | [HasStrictFDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasstrictfderivat-arctan--e4cee11f7df9d26fda74a679.md) | 172 | `result-track:e4cee11f7df9d26fda74a6795652cf8e60fbd6c4e10d283043dadf12bde78603` |
| 24 | `theorem` | [HasFDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasfderivat-arctan--dad14504db765b90bb1f60ea.md) | 177 | `result-track:dad14504db765b90bb1f60eab38a43336346ca2a015b6c5f5b88082e07942d7c` |
| 25 | `theorem` | [HasFDerivWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/hasfderivwithinat-arctan--98b11ccba098df6a5f2a4786.md) | 182 | `result-track:98b11ccba098df6a5f2a478651356804c09776405e84260fef6104547e66b6f4` |
| 26 | `theorem` | [fderivWithin_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/fderivwithin-arctan--4d33b29066c8cf5149a3cd09.md) | 187 | `result-track:4d33b29066c8cf5149a3cd09b7a3ac814cb6f30e70715cd15ef8b588e719067d` |
| 27 | `theorem` | [fderiv_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/fderiv-arctan--696f04b0f8a788b5d81a0a34.md) | 193 | `result-track:696f04b0f8a788b5d81a0a3475ecf72f0b81a86f06848b073df97570218e2155` |
| 28 | `theorem` | [DifferentiableWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/differentiablewithinat-arctan--0f941fe24bd29582f2238766.md) | 198 | `result-track:0f941fe24bd29582f2238766d8d6c4211e831103f6fa3b23af8ed4834f693063` |
| 29 | `theorem` | [DifferentiableAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/differentiableat-arctan--06674e08410fb700378297c1.md) | 204 | `result-track:06674e08410fb700378297c1334d0b4a4b8feb4e9144b81d5749c24d43cf2250` |
| 30 | `theorem` | [DifferentiableOn.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/differentiableon-arctan--ea82f9c68389b17ba5039b1d.md) | 209 | `result-track:ea82f9c68389b17ba5039b1d0c3f1a1b49f95b062867de9b48c37347376eacec` |
| 31 | `theorem` | [Differentiable.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/differentiable-arctan--4135f52fe40e13734dabce82.md) | 214 | `result-track:4135f52fe40e13734dabce82b2bc0c5135e67de6feb40559cd9287f7ff8c271d` |
| 32 | `theorem` | [ContDiffAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/contdiffat-arctan--0f15207b0e15f5fc1e32454b.md) | 218 | `result-track:0f15207b0e15f5fc1e32454b6b2a369e42e563dacd556e6b73e8552a2458ffb1` |
| 33 | `theorem` | [ContDiff.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/contdiff-arctan--758461cc6bac8ba9544ece1e.md) | 222 | `result-track:758461cc6bac8ba9544ece1e6fee24e9178a51bc8b93c3bcfdc880100d8830bd` |
| 34 | `theorem` | [ContDiffWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/contdiffwithinat-arctan--ab1ffe69aa28bb512ad95b2e.md) | 226 | `result-track:ab1ffe69aa28bb512ad95b2ec0c6d06f47d0169be89478b3e3a59d025dbfbc16` |
| 35 | `theorem` | [ContDiffOn.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variantac905cd2fa44950d38d7ebc8371a69ec363ebcaa348ec91dfc521d8a8652f466.lean/declarations/contdiffon-arctan--d5989beb7981177d844591db.md) | 231 | `result-track:d5989beb7981177d844591db3b3bbf4dea42226cf189369f4b523a86810eee7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
