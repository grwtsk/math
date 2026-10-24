# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33ec055aa2c759d65f9d2644d6015390827eec4b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33ec055aa2c759d65f9d2644d6015390827eec4b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernelintegrand--aaf85934b4f0fbd08ad3f0d6.md) | 38 | `declaration-track:aaf85934b4f0fbd08ad3f0d61fa758368a2c322cd974973bdec7bb2291f47628` |
| 2 | `lemma` | [norm_kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/norm-kernelintegrand--363b5fa2950e476f7768398c.md) | 42 | `result-track:363b5fa2950e476f7768398c0bb37bb0c55223f5054b7a89097356c790fde335` |
| 3 | `lemma` | [kernelIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernelintegrand-integrable--488b595b6608cf15fbbbde9a.md) | 50 | `result-track:488b595b6608cf15fbbbde9a264facff21dc135134e007d528c5060a29ba9ec5` |
| 4 | `lemma` | [kernelIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernelintegrand-tendsto--9d88c97b57ca8f11421b56f9.md) | 68 | `result-track:9d88c97b57ca8f11421b56f92e6e82fa293263c8bcd873a474915cd0e1b0d88c` |
| 5 | `lemma` | [kernelIntegrand_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernelintegrand-deriv--156b0e1485ec00a24714524a.md) | 81 | `result-track:156b0e1485ec00a24714524a908465b4947b0a41dd129603cb2b5b609ad917db` |
| 6 | `lemma` | [integral_recurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/integral-recurrence--d48575c503d0b8d0988002f6.md) | 95 | `result-track:d48575c503d0b8d0988002f6126198fc0912883eda9e0f0772a7c0bbf9aeaecc` |
| 7 | `def` | [kernelNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernelnumerator--ec68e12ee34a7f52607ea6d2.md) | 121 | `declaration-track:ec68e12ee34a7f52607ea6d29ad307227c574155526f32181b51921c5c6cdec0` |
| 8 | `def` | [laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/laplacekernel--1f42317d9ff0a66acd4e66bd.md) | 126 | `declaration-track:1f42317d9ff0a66acd4e66bdbee3704fdd20f1db04df62af74ed4730bbf30568` |
| 9 | `lemma` | [laplaceKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/laplacekernel-zero--b820b8e3fb047392f94de116.md) | 129 | `result-track:b820b8e3fb047392f94de116b859bdb5631e8ec333b9c8ff39d58ae13750184f` |
| 10 | `lemma` | [laplaceKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/laplacekernel-succ--d1e6c496f0327f7597cca02f.md) | 133 | `result-track:d1e6c496f0327f7597cca02feab173f3326261c0c73caae54f9e3d812bf7d902` |
| 11 | `lemma` | [integral_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/integral-eq-laplacekernel--a37906f157c77dcf8f6a4c1a.md) | 142 | `result-track:a37906f157c77dcf8f6a4c1a19d8bf51686bc6a3decbb783171eccfbb2166034` |
| 12 | `lemma` | [kernelNumerator_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernelnumerator-eq-sum--6822fadbdc176c9431f0ea36.md) | 161 | `result-track:6822fadbdc176c9431f0ea3675c6293ae1c5beae57cb46c154332bcf0f304541` |
| 13 | `lemma` | [laplaceKernel_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/laplacekernel-eq-sum--04459ee4aa0f9229f8d48787.md) | 182 | `result-track:04459ee4aa0f9229f8d48787ebc8e8024df1fd31c897badb52dcb5f04101100e` |
| 14 | `lemma` | [kernelNumerator_eq_source_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernelnumerator-eq-source-sum--70ae9c5c266d82814b2ec69b.md) | 193 | `result-track:70ae9c5c266d82814b2ec69b90347036e71f9acb3ae96aebf3a004f6a316869b` |
| 15 | `theorem` | [laplaceKernel_eq_J](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/laplacekernel-eq-j--ad92bfe7feef2cf21e7dc708.md) | 205 | `result-track:ad92bfe7feef2cf21e7dc708debdeb5b58274dc8bd8abbe54646f1bbb2b8607d` |
| 16 | `theorem` | [j_integral_obligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/j-integral-obligation--341e8d6dbc3d4fd9340d5194.md) | 225 | `result-track:341e8d6dbc3d4fd9340d5194380b8435ebd5c451df835a9c8aecb000ac8b0ab3` |
| 17 | `def` | [headIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/headintegral--d0dbbf147fa1bf72dfdb9731.md) | 242 | `declaration-track:d0dbbf147fa1bf72dfdb97319862eee567b07b46a89c335e7a31f97557623443` |
| 18 | `lemma` | [headIntegral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/headintegral-zero--a28f2040fa361cd822890491.md) | 245 | `result-track:a28f2040fa361cd82289049147be3a12de149d1a1bcffe9617773804469c7f90` |
| 19 | `lemma` | [headIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/headintegral-succ--ee4862cc6c264d1af97584d1.md) | 259 | `result-track:ee4862cc6c264d1af97584d1f6d765ca2f99a954954e1345d8aeb3aca504cc5f` |
| 20 | `def` | [regularKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/regularkernel--d853108618ebf54fb6caff34.md) | 302 | `declaration-track:d853108618ebf54fb6caff34d2d819db4c10fe85111b3c18683d7555e753cba1` |
| 21 | `lemma` | [regularKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/regularkernel-zero--86fc5c7dbcb54f7d2aaffbc8.md) | 305 | `result-track:86fc5c7dbcb54f7d2aaffbc88d58c19bbe05d1b2c262838b6d5866d3eba730ad` |
| 22 | `lemma` | [regularKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/regularkernel-succ--8dd3da63b81a85f75ccda20f.md) | 313 | `result-track:8dd3da63b81a85f75ccda20f161a0cfa99c83d901d5b9bef4c1280c0cfc578f0` |
| 23 | `lemma` | [regularKernel_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/regularkernel-eq-laplacekernel--7b0311e4f5fa1b93c7023c20.md) | 326 | `result-track:7b0311e4f5fa1b93c7023c202b3f668f5edf3beb9cd503f53f60eebcc3230ca2` |
| 24 | `lemma` | [setIntegral_Icc_eq_headIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/setintegral-icc-eq-headintegral--fd5759eb1c04d1a41ebf8df8.md) | 338 | `result-track:fd5759eb1c04d1a41ebf8df818cc22d37211fbf8513b1c934d3c7e28f9b04324` |
| 25 | `theorem` | [j_regular_part_obligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/j-regular-part-obligation--1840097f15d43b735893344f.md) | 350 | `result-track:1840097f15d43b735893344f6e2809c0a435efba6d5c128732bc1b4c1bed0452` |
| 26 | `lemma` | [kernelNumerator_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernelnumerator-analytic--1bed3aa1ad5672a2a70cfab1.md) | 358 | `result-track:1bed3aa1ad5672a2a70cfab136a57eef06022caa590c02d5b2336a07e1be09e5` |
| 27 | `lemma` | [laplaceKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/laplacekernel-analytic--ad6b8e420c5b9a987692fbb9.md) | 369 | `result-track:ad6b8e420c5b9a987692fbb9e5344288ee28e5bef390cea36255a9b260d418a6` |
| 28 | `lemma` | [kernelNumerator_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernelnumerator-at-zero--c4a2eb969706cdb38cdfd9d1.md) | 376 | `result-track:c4a2eb969706cdb38cdfd9d11f0bd89b6df4496e7f5e25a75e4455b38ee9d3be` |
| 29 | `lemma` | [laplaceKernel_cleared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/laplacekernel-cleared--6fe65a93b599bd4412601a1a.md) | 385 | `result-track:6fe65a93b599bd4412601a1ae381f4142a34e74cd6cf8bd103de07159c92bf8c` |
| 30 | `lemma` | [laplaceKernel_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/laplacekernel-cleared-tendsto--558a95c8b6d946dcb11ef7ca.md) | 393 | `result-track:558a95c8b6d946dcb11ef7caf788af2742bb2b18e7625d25bf5b6719900902c5` |
| 31 | `theorem` | [J_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/j-cleared-tendsto--324f4ad0dac82a15a6739180.md) | 415 | `result-track:324f4ad0dac82a15a6739180258150d18182617f5c2d0087bdca1079ac20088d` |
| 32 | `theorem` | [kernel_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/declarations/kernel-checkpoint--5a840f9e59041efa3cafeaf2.md) | 425 | `result-track:5a840f9e59041efa3cafeaf23bc0fcc7ecd7547cdb83b375a151a845fb346387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
