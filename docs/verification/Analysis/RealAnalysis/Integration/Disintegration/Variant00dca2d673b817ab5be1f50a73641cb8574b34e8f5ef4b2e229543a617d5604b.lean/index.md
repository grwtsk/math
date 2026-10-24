# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Disintegration.Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcf65f53557e43ad0721daecd32d7d5458b505b9",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcf65f53557e43ad0721daecd32d7d5458b505b9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.CondCdf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.IntegralCompProd` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condKernelReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/condkernelreal--fe5df9e907efcff2861aa895.md) | 64 | `declaration-track:fe5df9e907efcff2861aa895c2c09d16034a9b6b16e050994ccb0ac01667061a` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/instance--7fde31b5af8bedeaed288624.md) | 69 | `declaration-track:7fde31b5af8bedeaed288624d0ed89b116cf9dd4194809ae5483cbc398274db3` |
| 3 | `theorem` | [condKernelReal_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/condkernelreal-iic--b192e63193e6ec6b7efc0d06.md) | 72 | `result-track:b192e63193e6ec6b7efc0d0647a3c48293a05838aa6729d087a9efaa3375c307` |
| 4 | `theorem` | [set_lintegral_condKernelReal_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-lintegral-condkernelreal-iic--b477ea84f44348fa7849f86b.md) | 77 | `result-track:b477ea84f44348fa7849f86b4ebfe78e545a2a2b7b2e34657d4a788ef3228322` |
| 5 | `theorem` | [set_lintegral_condKernelReal_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-lintegral-condkernelreal-univ--4663af7731160213670ba87b.md) | 83 | `result-track:4663af7731160213670ba87b2bb34a7799b8fc96f793cad8923c6e0f7da58781` |
| 6 | `theorem` | [lintegral_condKernelReal_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/lintegral-condkernelreal-univ--631a9e76955e960600ee889f.md) | 89 | `result-track:631a9e76955e960600ee889f059c998e5c556d66330d6be2f6efbecb19b19a3a` |
| 7 | `theorem` | [set_lintegral_condKernelReal_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-lintegral-condkernelreal-prod--7aba7c5b345b057475506e6d.md) | 97 | `result-track:7aba7c5b345b057475506e6d274b782c172564c8d44e34f29f3125fed1ba7cba` |
| 8 | `theorem` | [lintegral_condKernelReal_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/lintegral-condkernelreal-mem--8233eacdcc8992e3db561d76.md) | 135 | `result-track:8233eacdcc8992e3db561d76cc7727866ae8db6cae3f182c676655df5ee8889e` |
| 9 | `theorem` | [kernel.const_eq_compProd_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/kernel-const-eq-compprod-real--7b1dd2d343a6baa938d297c1.md) | 210 | `result-track:7b1dd2d343a6baa938d297c1dc1dc84af15dd152119f52afa474109861bc173d` |
| 10 | `theorem` | [measure_eq_compProd_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/measure-eq-compprod-real--9cfe3ce7e382fb87c7f3e6d7.md) | 219 | `result-track:9cfe3ce7e382fb87c7f3e6d7a901c8ed840e0e0cf01215a7d898fc9db2a1aa96` |
| 11 | `theorem` | [lintegral_condKernelReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/lintegral-condkernelreal--1ad74a9d465857d0efc431aa.md) | 224 | `result-track:1ad74a9d465857d0efc431aa6de42c962fac081be5a64e6c7602595ab59cc75b` |
| 12 | `theorem` | [ae_condKernelReal_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/ae-condkernelreal-eq-one--c6312774b070e98263da1552.md) | 231 | `result-track:c6312774b070e98263da15522d922ef9ee55731b12e419f96c6744a46aa4c1b2` |
| 13 | `theorem` | [exists_cond_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/exists-cond-kernel--0d85f4ceca700ff834b21d2d.md) | 264 | `result-track:0d85f4ceca700ff834b21d2dc556c840c1473398f9fd40521647c5215e09f6e6` |
| 14 | `theorem` | [condKernel_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/condkernel-def--e8ae3aed2140a137f3211a94.md) | 352 | `result-track:e8ae3aed2140a137f3211a94c8560bac0efff007cdafd6035550e7f6d689a6e6` |
| 15 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/instance--727469019d518c563f0d4e88.md) | 356 | `declaration-track:727469019d518c563f0d4e886d99ce3bc5996702c52c0259a816c5b4e17c28b7` |
| 16 | `theorem` | [kernel.const_unit_eq_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/kernel-const-unit-eq-compprod--672b83cf0b860c4e59d1edff.md) | 359 | `result-track:672b83cf0b860c4e59d1edff16814b158203e417d3c08fc2e38c0247933df0ae` |
| 17 | `theorem` | [measure_eq_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/measure-eq-compprod--cba4720468b7c3878ede0884.md) | 368 | `result-track:cba4720468b7c3878ede0884a1a00bf65a37c3fdc04b292d202fc9f4b936796a` |
| 18 | `theorem` | [kernel.const_eq_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/kernel-const-eq-compprod--9f337ab8cd509376540dd5c9.md) | 377 | `result-track:9f337ab8cd509376540dd5c9458d01fb1ddf7994f2859e61002e812efbf5edb7` |
| 19 | `theorem` | [lintegral_condKernel_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/lintegral-condkernel-mem--997857080913cf9385d72bf6.md) | 385 | `result-track:997857080913cf9385d72bf64d896b045d4d51d8231ecd0352a670668a290561` |
| 20 | `theorem` | [set_lintegral_condKernel_eq_measure_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-lintegral-condkernel-eq-measure-prod--4ffa46b858bfd2980eca6de6.md) | 391 | `result-track:4ffa46b858bfd2980eca6de61a54ae2ce6ec74024b7e897514b76f3e0e258236` |
| 21 | `theorem` | [lintegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/lintegral-condkernel--1081885b042e623e0bd40cee.md) | 408 | `result-track:1081885b042e623e0bd40cee5efb5f71b89b70b4959c9a5a3f1facc3f30166cc` |
| 22 | `theorem` | [set_lintegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-lintegral-condkernel--4cf89ee4bf112d25c4a7fa8c.md) | 415 | `result-track:4cf89ee4bf112d25c4a7fa8ce88be0a9c00b368197c3752994043e3d7b04c2d7` |
| 23 | `theorem` | [set_lintegral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-lintegral-condkernel-univ-right--ed08a0411d7f58b54ad98484.md) | 424 | `result-track:ed08a0411d7f58b54ad98484decab8c76455de268c24a31c718b3b570f657638` |
| 24 | `theorem` | [set_lintegral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-lintegral-condkernel-univ-left--e8d54f755406e639d866d965.md) | 430 | `result-track:e8d54f755406e639d866d965e6a637a8adb0f2af9f7a264b40fbb0d06b66d726` |
| 25 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/root-measuretheory-aestronglymeasurable-integral-condkernel--604f16a46efd4ff27c7f21a2.md) | 440 | `result-track:604f16a46efd4ff27c7f21a21c895f31394fbb743b3f0e55c121e394ac15f138` |
| 26 | `theorem` | [integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/integral-condkernel--291300491c43ef2fff8c8a86.md) | 447 | `result-track:291300491c43ef2fff8c8a867156d78dc2c83319d3a165b073b246432ff485f2` |
| 27 | `theorem` | [set_integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-integral-condkernel--9bf5347f330410327e244a24.md) | 456 | `result-track:9bf5347f330410327e244a245f6be33f655e4b8380948076df10adb41a7490eb` |
| 28 | `theorem` | [set_integral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-integral-condkernel-univ-right--3b758a04ce1251974a1d021f.md) | 466 | `result-track:3b758a04ce1251974a1d021ff4320f84e07e4ec8c975838bc3708e184db47a69` |
| 29 | `theorem` | [set_integral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/set-integral-condkernel-univ-left--046a46791b7bf508d7179447.md) | 472 | `result-track:046a46791b7bf508d71794478f35a64bafdf3e55d86ca0afb02bae3549b26718` |
| 30 | `theorem` | [AEStronglyMeasurable.ae_integrable_condKernel_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/aestronglymeasurable-ae-integrable-condkernel-iff--4e0d7659924a432c2c2094e2.md) | 497 | `result-track:4e0d7659924a432c2c2094e2075d57dfb51c083e5c37cc55085e2eea5d03cf00` |
| 31 | `theorem` | [Integrable.condKernel_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/integrable-condkernel-ae--3a791ec4a7faf62653ce2271.md) | 507 | `result-track:3a791ec4a7faf62653ce2271a279f35f24f81a1325d7c130a0d7b7a27612ddf4` |
| 32 | `theorem` | [Integrable.integral_norm_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/integrable-integral-norm-condkernel--bf7d01f60ee4bae26d57f85b.md) | 514 | `result-track:bf7d01f60ee4bae26d57f85b707dfa4092b65902a2f8912fe35480dadb70fff1` |
| 33 | `theorem` | [Integrable.norm_integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/integrable-norm-integral-condkernel--5972aaf29c61810a1238c478.md) | 521 | `result-track:5972aaf29c61810a1238c47821e04da888001bd97ed26fc0346c7b16f9a16edc` |
| 34 | `theorem` | [Integrable.integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/declarations/integrable-integral-condkernel--8cd95fb6925ad600f59710ef.md) | 530 | `result-track:8cd95fb6925ad600f59710efdf976d1964c0291badf2be7b8e80862da3bdd1f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
