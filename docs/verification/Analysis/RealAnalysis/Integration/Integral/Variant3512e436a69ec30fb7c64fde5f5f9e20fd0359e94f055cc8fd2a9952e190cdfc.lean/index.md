# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a31ff181c79a08e50fc9489a66a11be45402a6d4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a31ff181c79a08e50fc9489a66a11be45402a6d4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.IntegralCompProd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.StandardBorel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lintegral_condKernel_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/lintegral-condkernel-mem--56eb0273220c7771bce8b9ec.md) | 40 | `result-track:56eb0273220c7771bce8b9ec147171005289c03eba20594dbddbab5b873d5bba` |
| 2 | `lemma` | [setLIntegral_condKernel_eq_measure_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setlintegral-condkernel-eq-measure-prod--fe5a349165a16196ef43818e.md) | 45 | `result-track:fe5a349165a16196ef43818eb61de4c84757238f5c390d3846a0f3e319fba4c6` |
| 3 | `lemma` | [lintegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/lintegral-condkernel--20f4a0ff8f50b8694f81864c.md) | 59 | `result-track:20f4a0ff8f50b8694f81864c60a6c9ed40b5621a95bd8c905518023dfa8841d5` |
| 4 | `lemma` | [setLIntegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setlintegral-condkernel--b9a8bfd95697fd987283e5f0.md) | 64 | `result-track:b9a8bfd95697fd987283e5f0a00e83bc471de78d3bba4f65e4ab99e736176359` |
| 5 | `lemma` | [setLIntegral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setlintegral-condkernel-univ-right--ee71d61959bdbd906ee6bef5.md) | 71 | `result-track:ee71d61959bdbd906ee6bef5f0ba4dffbb63fc7277e98c3b9cd1095e6f0624f2` |
| 6 | `lemma` | [setLIntegral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setlintegral-condkernel-univ-left--cd80981b289bd523aba0db94.md) | 77 | `result-track:cd80981b289bd523aba0db94daeb0fdad4eb843ea692fdbe79a0be637b4c4db5` |
| 7 | `lemma` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_kernel_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/root-measuretheory-aestronglymeasurable-integral-kernel-condkernel--a28e4d7dff5f1eb43cb90b84.md) | 90 | `result-track:a28e4d7dff5f1eb43cb90b84f0d6997a79ed0cf1628dbfcf7217ddb28414b183` |
| 8 | `lemma` | [integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/integral-condkernel--4207a0b1a8cd457a3b46b398.md) | 97 | `result-track:4207a0b1a8cd457a3b46b398f69a3e3404499c1c153b88465c793e3301d2d9c4` |
| 9 | `lemma` | [setIntegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setintegral-condkernel--1a9d37f62541851ae89728f0.md) | 103 | `result-track:1a9d37f62541851ae89728f0ef999a76960fd23950a53f3218ebc4fe69075f25` |
| 10 | `lemma` | [setIntegral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setintegral-condkernel-univ-right--38950958b50c9ace99cea3b2.md) | 111 | `result-track:38950958b50c9ace99cea3b28602f72ec91ec4fa6f6231d4d270381eaef3ca2b` |
| 11 | `lemma` | [setIntegral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setintegral-condkernel-univ-left--646007d9abbb04efe61756f8.md) | 117 | `result-track:646007d9abbb04efe61756f8c66b8d16302b09d29e21feeb2ab78a3d2ff55ab6` |
| 12 | `lemma` | [lintegral_condKernel_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/lintegral-condkernel-mem--672873fb18a885d0b922bccd.md) | 137 | `result-track:672873fb18a885d0b922bccd038b834ac9997b7199f55bcd55cfac431aefa198` |
| 13 | `lemma` | [setLIntegral_condKernel_eq_measure_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setlintegral-condkernel-eq-measure-prod--cf835ca79d0cc7ef279ec841.md) | 143 | `result-track:cf835ca79d0cc7ef279ec8412e25d82793ed4146807acb27823b93d5e8b936ed` |
| 14 | `lemma` | [lintegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/lintegral-condkernel--a538ead7d061f0fcf15fbf98.md) | 157 | `result-track:a538ead7d061f0fcf15fbf98ffbd0cdf01b925370f11502c5d44cb9f91d2b24b` |
| 15 | `lemma` | [setLIntegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setlintegral-condkernel--4c8edd59b903a97b25007be6.md) | 162 | `result-track:4c8edd59b903a97b25007be60f2b10218a1ce4411b3cb61e80c85eb77b9ead3b` |
| 16 | `lemma` | [setLIntegral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setlintegral-condkernel-univ-right--a2e708b5c7fc7922034af202.md) | 169 | `result-track:a2e708b5c7fc7922034af2025001714fd7253269c1e61a1bd6bd0dab95ada325` |
| 17 | `lemma` | [setLIntegral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setlintegral-condkernel-univ-left--9020ec306ff9d2164a7c2d83.md) | 175 | `result-track:9020ec306ff9d2164a7c2d83257abb3f5ad7727d5e88e84ced5b7982cab317de` |
| 18 | `lemma` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/root-measuretheory-aestronglymeasurable-integral-condkernel--0608b0ddaa347c45408a5cb8.md) | 188 | `result-track:0608b0ddaa347c45408a5cb8834c2ccb5dae32155d563b2230ea46411b9adc58` |
| 19 | `lemma` | [integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/integral-condkernel--19ab546838b97260cd94fd51.md) | 194 | `result-track:19ab546838b97260cd94fd517f141d5b329bfa2ea8fd916e29a2fb37782f7b3f` |
| 20 | `lemma` | [setIntegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setintegral-condkernel--a86e822548df2f40f36cb791.md) | 200 | `result-track:a86e822548df2f40f36cb79197c0e0b76b95b9087fecff4b4804229da91c890b` |
| 21 | `lemma` | [setIntegral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setintegral-condkernel-univ-right--d3345ee4a9543d22162f9ba2.md) | 207 | `result-track:d3345ee4a9543d22162f9ba2dabb64bf8ff15eebc9d242ebc5d81e26bb46d5f6` |
| 22 | `lemma` | [setIntegral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/setintegral-condkernel-univ-left--e7f0c164fc18b44118e56dd9.md) | 212 | `result-track:e7f0c164fc18b44118e56dd96a6fded6ef49fe2aab6f77400f79f67f3dd29e92` |
| 23 | `theorem` | [AEStronglyMeasurable.ae_integrable_condKernel_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/aestronglymeasurable-ae-integrable-condkernel-iff--ddd6837b0af815e6353153fd.md) | 233 | `result-track:ddd6837b0af815e6353153fd8d52bc4abbb0b7492b339390e20c36e3ad10d947` |
| 24 | `theorem` | [Integrable.condKernel_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/integrable-condkernel-ae--c04eddbff864a4179c642524.md) | 241 | `result-track:c04eddbff864a4179c6425248195e2aa556f73c0856ce9b6f1f1d04b598466e7` |
| 25 | `theorem` | [Integrable.integral_norm_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/integrable-integral-norm-condkernel--1f8f0d37b9815d2e8d931382.md) | 247 | `result-track:1f8f0d37b9815d2e8d931382be14308e722a988a4f7d9f611f777e90f3363fd6` |
| 26 | `theorem` | [Integrable.norm_integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/integrable-norm-integral-condkernel--94b9b975920d0003ec19d64e.md) | 253 | `result-track:94b9b975920d0003ec19d64ec3e846b3acd72bec64f5018c0aa16023626a08ed` |
| 27 | `theorem` | [Integrable.integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/declarations/integrable-integral-condkernel--dfd1f33d961931f55aa64534.md) | 261 | `result-track:dfd1f33d961931f55aa64534e7534815b3bedc7550b54272e91f591b6544e296` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
