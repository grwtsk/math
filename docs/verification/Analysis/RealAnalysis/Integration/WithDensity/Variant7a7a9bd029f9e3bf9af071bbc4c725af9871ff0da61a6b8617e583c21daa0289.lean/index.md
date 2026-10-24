# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WithDensity.Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fb7f4d757f76c40c17974acba5410954bf79291",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fb7f4d757f76c40c17974acba5410954bf79291`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity--96c1216afd4940b8536a9c3e.md) | 44 | `declaration-track:96c1216afd4940b8536a9c3e885e3dce663750a5ac8471984b57f29f3da7d119` |
| 2 | `theorem` | [withDensity_of_not_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-of-not-measurable--d106ff8cdcc1a16599f6c796.md) | 53 | `result-track:d106ff8cdcc1a16599f6c796a86a9ef5a7e8501d5219edb16497f81b8ad79fb4` |
| 3 | `theorem` | [withDensity_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-apply--f07ab5df06394f4bfd7cd675.md) | 56 | `result-track:f07ab5df06394f4bfd7cd6752db344fb8859081eb75e9ed988232e5f6bb20f72` |
| 4 | `theorem` | [withDensity_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-apply--fb744faa2b5b76d3ed7869c6.md) | 63 | `result-track:fb744faa2b5b76d3ed7869c66657cfef14c5800932d5c542cfc238f392518a43` |
| 5 | `lemma` | [withDensity_congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-congr-ae--71473f8f770a88221f09c540.md) | 68 | `result-track:71473f8f770a88221f09c540bf53c8738b9a1d763a59d7be8b766f229a61cee8` |
| 6 | `lemma` | [withDensity_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-absolutelycontinuous--77788c919139b1cc937ebf85.md) | 75 | `result-track:77788c919139b1cc937ebf854bdce0ac23a506c3a3d4b8a0b4e90ccd1bf36b45` |
| 7 | `lemma` | [withDensity_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-one--5c2401970c86aba522d5adc8.md) | 85 | `result-track:5c2401970c86aba522d5adc8caa90796c640981593c906d564d674cd9bff67f0` |
| 8 | `lemma` | [withDensity_one'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-one--628860bc4fbd22572bac51e4.md) | 90 | `result-track:628860bc4fbd22572bac51e4beb304207cfb58cf92e7303138c70b443342aa31` |
| 9 | `lemma` | [withDensity_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-zero--6308f277100812d14b490201.md) | 94 | `result-track:6308f277100812d14b490201e8f81818afd3dae184b3d5c8986eb059b6d8257f` |
| 10 | `lemma` | [withDensity_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-zero--17713fbbe8ee09712cb91f5d.md) | 99 | `result-track:17713fbbe8ee09712cb91f5df1ac3e51f8a2939d6fea700ee887f8af76f84583` |
| 11 | `theorem` | [lintegral_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/lintegral-withdensity--45c129aa43fd40531a2ac3c4.md) | 102 | `result-track:45c129aa43fd40531a2ac3c43a9898fac879777df4c4f722734865aa859eec09` |
| 12 | `theorem` | [integral_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/integral-withdensity--7aa4cf7f31d005d106d042d1.md) | 109 | `result-track:7aa4cf7f31d005d106d042d1235d0cc3e14e8ba05e9533c1ea0efc1a112de8fa` |
| 13 | `theorem` | [withDensity_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-add-left--ec242cd6b5c59f6760974a0b.md) | 117 | `result-track:ec242cd6b5c59f6760974a0b284582d20c297cf401744479ca92cbc21ceaa647` |
| 14 | `theorem` | [withDensity_kernel_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-kernel-sum--d2cf61da5ab689a23f880d7b.md) | 126 | `result-track:d2cf61da5ab689a23f880d7b98e53936e47568e79225086296299f68d74a40bd` |
| 15 | `lemma` | [withDensity_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-add-right--99c21b8873e55969e0086f06.md) | 136 | `result-track:99c21b8873e55969e0086f066a17de81eb969474982782d1447a3a3063c92508` |
| 16 | `lemma` | [withDensity_sub_add_cancel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-sub-add-cancel--5ec7426ae516cabd8d1f617c.md) | 145 | `result-track:5ec7426ae516cabd8d1f617cd9cae2c60ccc927d010f746a0cb272ef8c87b8cc` |
| 17 | `theorem` | [withDensity_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-tsum--3c275cf0a6ac927db57bdd10.md) | 155 | `result-track:3c275cf0a6ac927db57bdd10a1c5ba145e8a0cc743b7cc8f5e7ea06ce9465660` |
| 18 | `theorem` | [isFiniteKernel_withDensity_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/isfinitekernel-withdensity-of-bounded--3d141ad942c41492ba9e0987.md) | 179 | `result-track:3d141ad942c41492ba9e0987610427fefb8f5fb0b8b6c2bb0d19a8bb90d3dccb` |
| 19 | `theorem` | [isSFiniteKernel_withDensity_of_isFiniteKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/issfinitekernel-withdensity-of-isfinitekernel--205fdc08f983564daea8572e.md) | 195 | `result-track:205fdc08f983564daea8572e0da413e62f8e96e188d7a5596d463e55d559316f` |
| 20 | `theorem` | [IsSFiniteKernel.withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/issfinitekernel-withdensity--506fd8912a844180958d6d07.md) | 255 | `result-track:506fd8912a844180958d6d07874cc67d17298e0902703f7a3677f4a2787a2baf` |
| 21 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/instance--3fed6e565c3a1c6850d21403.md) | 266 | `declaration-track:3fed6e565c3a1c6850d214031a94ab9ef247293671135385e0845c6b261bbad2` |
| 22 | `lemma` | [withDensity_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant7a7a9bd029f9e3bf9af071bbc4c725af9871ff0da61a6b8617e583c21daa0289.lean/declarations/withdensity-mul--966c87cc759df5de214c843f.md) | 270 | `result-track:966c87cc759df5de214c843f0c9890bf45363053c990090f37a9844ba22b1a8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
