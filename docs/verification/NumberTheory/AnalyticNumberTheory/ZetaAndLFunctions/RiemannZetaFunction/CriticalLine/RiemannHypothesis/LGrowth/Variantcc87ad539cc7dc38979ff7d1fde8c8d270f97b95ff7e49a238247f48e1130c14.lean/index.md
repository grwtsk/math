# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LGrowth.Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.SeamL` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ZetaGrowth` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 31; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_Ico_add_period_eq_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/sum-ico-add-period-eq-zero--769fb23ba4a9c92f493c61e1.md) | 48 | `result-track:769fb23ba4a9c92f493c61e1b7e66951d5b917f9e49945d55dffe011b1ce9194` |
| 2 | `lemma` | [sum_range_add_period](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/sum-range-add-period--c335189a84b725c65eb47854.md) | 70 | `result-track:c335189a84b725c65eb4785402e14ddaf05eec86ecae9c2dc13e703a4c1c0b3b` |
| 3 | `lemma` | [sum_range_add_mul_period](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/sum-range-add-mul-period--f6ffc6cd8ca56a4dc279bcd1.md) | 75 | `result-track:f6ffc6cd8ca56a4dc279bcd1a9c4d1aa234cd8dba8dbf2becd4dd54234a53fa3` |
| 4 | `lemma` | [norm_sum_range_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/norm-sum-range-le--e868420c6b624cdb992320d9.md) | 81 | `result-track:e868420c6b624cdb992320d9609b4e9970696f9db0f765abb272e2799c653984` |
| 5 | `theorem` | [norm_sum_Icc_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/norm-sum-icc-le--0ac3f76b3f2ee0372680b4fb.md) | 94 | `result-track:0ac3f76b3f2ee0372680b4fb6fd9a80f1d3367ffe8793db69e2d071af23599ff` |
| 6 | `def` | [abelKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/abelkernel--fe6cb2b3f8353e8071ab9d17.md) | 114 | `declaration-track:fe6cb2b3f8353e8071ab9d17ecd383fd414da859b7192afc1ce7f65b9259df95` |
| 7 | `lemma` | [norm_abelKernel_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/norm-abelkernel-le--4c536ca0269771f5b54b8598.md) | 117 | `result-track:4c536ca0269771f5b54b8598ead83bccd9420c0732a02be28757c272ef7f5162` |
| 8 | `lemma` | [measurable_abelKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/measurable-abelkernel--1dbe6e588a8cd5fbc8bf0378.md) | 124 | `result-track:1dbe6e588a8cd5fbc8bf03781e66dc70a0d94b7bf256c16d7caf2264ab8ca40c` |
| 9 | `lemma` | [locallyIntegrable_abelKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/locallyintegrable-abelkernel--04c4ad55e85abe2479a39652.md) | 130 | `result-track:04c4ad55e85abe2479a39652e73b3521f7bff89ca96f3a8591e4d8c1638df121` |
| 10 | `lemma` | [mellin_abelKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/mellin-abelkernel--c39a22fe26d33b064f2f5e07.md) | 138 | `result-track:c39a22fe26d33b064f2f5e077853872daa8199f54181adc7cae5e35f16df9834` |
| 11 | `lemma` | [differentiableAt_mellin_abelKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/differentiableat-mellin-abelkernel--16360af7ba53baf78085cb1a.md) | 155 | `result-track:16360af7ba53baf78085cb1ae7fd56294ecef33efa3bcf9affb4fcd83d73ca07` |
| 12 | `theorem` | [LFunction_eq_mul_integral](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/lfunction-eq-mul-integral--4e6739ef76e9907f58b88574.md) | 179 | `result-track:4e6739ef76e9907f58b8857472816394cfb95d5e01ee181005adc0bed9ccb82c` |
| 13 | `theorem` | [norm_LFunction_le_of_re_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/norm-lfunction-le-of-re-pos--46db34e42022eb7287c678b6.md) | 217 | `result-track:46db34e42022eb7287c678b644e8b20cb0a9348fc86e765e86cb42603698c626` |
| 14 | `theorem` | [LFunction_linear_growth](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/lfunction-linear-growth--bb307b852f22b95e17c64328.md) | 244 | `result-track:bb307b852f22b95e17c6432894e1b7c55a3b30e41c01e936c2e040d2d667c791` |
| 15 | `theorem` | [LFunction_growth_right](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/lfunction-growth-right--d9f044127761277d40e4267a.md) | 265 | `result-track:d9f044127761277d40e4267a7a5bc1c6b3beff2477a9542f673aaf6e134d1a3b` |
| 16 | `theorem` | [norm_LFunction_sub_one_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/norm-lfunction-sub-one-le--fa57ddc56a5c05dbc7bfb3a4.md) | 278 | `result-track:fa57ddc56a5c05dbc7bfb3a40bf77536884203d10fcebdbfeb38179ae3c736d7` |
| 17 | `theorem` | [LFunction_lower_bound_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/lfunction-lower-bound-two--32b0e43a54a1a2b77c94ce50.md) | 317 | `result-track:32b0e43a54a1a2b77c94ce5021b649aa30f5acb6f4475a0e4621bbaef70765f0` |
| 18 | `theorem` | [norm_LFunction_le_of_two_le_re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/norm-lfunction-le-of-two-le-re--b93ccc68663d84287a68aedb.md) | 326 | `result-track:b93ccc68663d84287a68aedb4bfe5a1be7738cc409c87e06620b0edf1261d058` |
| 19 | `theorem` | [LFunction_ne_zero_of_two_le_re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/lfunction-ne-zero-of-two-le-re--52670403103e15dc6000e5bf.md) | 334 | `result-track:52670403103e15dc6000e5bfec76b433997f419ba9902de084fd5b0ea3656cff` |
| 20 | `theorem` | [LFunction_growth_right_uniform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/declarations/lfunction-growth-right-uniform--cb542a0c09a4249700ad8e22.md) | 342 | `result-track:cb542a0c09a4249700ad8e22289325d7cabddbad7a44b0bfa9ac626d20e448cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
