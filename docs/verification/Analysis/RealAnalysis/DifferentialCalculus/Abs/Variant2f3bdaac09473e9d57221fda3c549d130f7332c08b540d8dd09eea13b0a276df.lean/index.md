# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Abs.Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a15b3b51bf05d026a9cb471e19c26502a2ab84e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a15b3b51bf05d026a9cb471e19c26502a2ab84e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean.json)

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
| 1 | `theorem` | [contDiffAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/contdiffat-abs--02dcb5af66e8f12fe98fb0dd.md) | 38 | `result-track:02dcb5af66e8f12fe98fb0dd1ef199381251e3a4fc954f42b85e728d5308043c` |
| 2 | `theorem` | [ContDiffAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/contdiffat-abs--1b1d3adab9431aad7e631a8f.md) | 40 | `result-track:1b1d3adab9431aad7e631a8fcb59d14aafb2e26664a9b6923f72b8a9ac59cb4d` |
| 3 | `theorem` | [contDiffWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/contdiffwithinat-abs--3e2d9a6ac2f027e24ffcdf65.md) | 43 | `result-track:3e2d9a6ac2f027e24ffcdf6516cb82c210f91e1b60ffed6e5321681d7c54f295` |
| 4 | `theorem` | [ContDiffWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/contdiffwithinat-abs--f1a9d60b9f22f5cb355e8c6f.md) | 46 | `result-track:f1a9d60b9f22f5cb355e8c6f9cc7e7c7ac037a6a7e9e072f8e0c7872597634c6` |
| 5 | `theorem` | [contDiffOn_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/contdiffon-abs--f312c5e4ee7f26ebf962fade.md) | 50 | `result-track:f312c5e4ee7f26ebf962fadef22ac2e06b688e3ab234af990c092187e7ccfac0` |
| 6 | `theorem` | [ContDiffOn.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/contdiffon-abs--c8e4c2ff74f9fbe06d84aaca.md) | 53 | `result-track:c8e4c2ff74f9fbe06d84aaca43037e49c49df86e72f7b1e47f72d84d7cbdb687` |
| 7 | `theorem` | [ContDiff.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/contdiff-abs--3bf63430424b5374a229f2f3.md) | 56 | `result-track:3bf63430424b5374a229f2f39993cac843cde25141f13a91ddf9192c4a235106` |
| 8 | `theorem` | [hasStrictDerivAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasstrictderivat-abs-neg--c27425b955e7f8d065adc1bf.md) | 59 | `result-track:c27425b955e7f8d065adc1bf786949eda2fb090450ef0cdbf588c0e91382425c` |
| 9 | `theorem` | [hasDerivAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasderivat-abs-neg--6cb588ec2239d22d2152c3a2.md) | 64 | `result-track:6cb588ec2239d22d2152c3a2aa448576390bbbf5008fa78210e891517e4e08d9` |
| 10 | `theorem` | [hasStrictDerivAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasstrictderivat-abs-pos--a66061d4714624873da0dffc.md) | 67 | `result-track:a66061d4714624873da0dffcb273b5d8230bec9308e6a107f8538e368466c955` |
| 11 | `theorem` | [hasDerivAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasderivat-abs-pos--6d614895dfeb7df548939bcc.md) | 72 | `result-track:6d614895dfeb7df548939bcc1fe177248bf0c9aab3622cffd457037766342be8` |
| 12 | `theorem` | [hasStrictDerivAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasstrictderivat-abs--0d3c809bf198ed9e14876794.md) | 75 | `result-track:0d3c809bf198ed9e1487679453f7b9eac04cd86981929b7a39d7b8cbf56e66ea` |
| 13 | `theorem` | [hasDerivAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasderivat-abs--8ab8f420014cebd7a013c8ac.md) | 81 | `result-track:8ab8f420014cebd7a013c8ac87cc65932a03042f11e47a9d75d41b64e02291f8` |
| 14 | `theorem` | [HasStrictFDerivAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasstrictfderivat-abs-of-neg--7a2fe2bd506c70900e6e7d24.md) | 84 | `result-track:7a2fe2bd506c70900e6e7d244f92cfbd9816ee5aec6271e5657d24d52fab5b0c` |
| 15 | `theorem` | [HasFDerivAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasfderivat-abs-of-neg--c52cf508ee0d2f637371c6e9.md) | 90 | `result-track:c52cf508ee0d2f637371c6e900ea4528d62b8ddd78ca05374a0091f0d562b6fc` |
| 16 | `theorem` | [HasStrictFDerivAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasstrictfderivat-abs-of-pos--4a291bb39be797e63be28c3e.md) | 96 | `result-track:4a291bb39be797e63be28c3e9cddb778bc4867482cbcf8e56349881644848e8a` |
| 17 | `theorem` | [HasFDerivAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasfderivat-abs-of-pos--9377e9bec8d710ca0bc37ed2.md) | 102 | `result-track:9377e9bec8d710ca0bc37ed29686f3a0b1e8e32064e79372b70404dc9df5eae2` |
| 18 | `theorem` | [HasStrictFDerivAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasstrictfderivat-abs--d4e5e8e660398e726c40abcf.md) | 108 | `result-track:d4e5e8e660398e726c40abcf536a488c2d6b71046d76de13f576d0e3535b51b9` |
| 19 | `theorem` | [HasFDerivAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasfderivat-abs--c090f5a88d53e9cd63e88590.md) | 114 | `result-track:c090f5a88d53e9cd63e88590407869b531c5ef935d02bf0e65c5c10f7f773dd7` |
| 20 | `theorem` | [hasDerivWithinAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasderivwithinat-abs-neg--c0e552f7efc388fe8e921111.md) | 120 | `result-track:c0e552f7efc388fe8e9211115c3b25b10903f8584d972a815b796e197a2e80c8` |
| 21 | `theorem` | [hasDerivWithinAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasderivwithinat-abs-pos--c5cff1f046631d9e8244eed4.md) | 123 | `result-track:c5cff1f046631d9e8244eed4f0255bca6626a9aff1d51e07aa0e94f7c8f0d45a` |
| 22 | `theorem` | [hasDerivWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasderivwithinat-abs--48c109a6ef065bf1d715e3a0.md) | 126 | `result-track:48c109a6ef065bf1d715e3a0d71aa67e418c8384818fda0918c6319c0b98dea8` |
| 23 | `theorem` | [HasFDerivWithinAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasfderivwithinat-abs-of-neg--5a67d8ee4882eaf1f26e3a8c.md) | 129 | `result-track:5a67d8ee4882eaf1f26e3a8cdfa08dd83915932be2ac3232ae44229c1c47b81d` |
| 24 | `theorem` | [HasFDerivWithinAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasfderivwithinat-abs-of-pos--9381954b58e043881c89d625.md) | 134 | `result-track:9381954b58e043881c89d625ef09abaea87fec87f1ed852c454858883b7ec783` |
| 25 | `theorem` | [HasFDerivWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/hasfderivwithinat-abs--6d27bf6f158a28ba3f773415.md) | 139 | `result-track:6d27bf6f158a28ba3f77341529a5c2984a3a4d561fe5db719017b2054b4a4056` |
| 26 | `theorem` | [differentiableAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiableat-abs-neg--b825b01ddd223161d239d7d1.md) | 143 | `result-track:b825b01ddd223161d239d7d15e79cba9de20adde796ed4323380658adfa7eeee` |
| 27 | `theorem` | [differentiableAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiableat-abs-pos--3d84f19d4c05015ce4dcb040.md) | 146 | `result-track:3d84f19d4c05015ce4dcb040e3bf6c3d7b1c135cd5593a91bafcaf73dd513e66` |
| 28 | `theorem` | [differentiableAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiableat-abs--64c52344d5719105d6227d8f.md) | 149 | `result-track:64c52344d5719105d6227d8f44482817010a948c96c1789c48f5fcd1622eb46f` |
| 29 | `theorem` | [DifferentiableAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiableat-abs-of-neg--c54c4c0cd5e8af6d72180aa8.md) | 152 | `result-track:c54c4c0cd5e8af6d72180aa88742e01b21c7dca1000c78c562c1e55a41c714dd` |
| 30 | `theorem` | [DifferentiableAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiableat-abs-of-pos--69cb8821070f34d05f562b71.md) | 155 | `result-track:69cb8821070f34d05f562b71791b9ae67026e3a08019f245a5b905a79c0df54e` |
| 31 | `theorem` | [DifferentiableAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiableat-abs--e894b39e1915e5d9907ee20c.md) | 158 | `result-track:e894b39e1915e5d9907ee20c4f1d4509885f95f33bc978d67e5a23c7fc0b2be8` |
| 32 | `theorem` | [differentiableWithinAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiablewithinat-abs-neg--57e683bd9dacc78732c72edd.md) | 161 | `result-track:57e683bd9dacc78732c72edde0d3b77b9da4a1918abdfd03c38bea7484316518` |
| 33 | `theorem` | [differentiableWithinAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiablewithinat-abs-pos--838b787aaaf6b42b95ae694d.md) | 164 | `result-track:838b787aaaf6b42b95ae694dfbfc4ac5a112d582bb119b718885bc553fa45853` |
| 34 | `theorem` | [differentiableWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiablewithinat-abs--ed0f0ab441640f80a3e9b3cd.md) | 167 | `result-track:ed0f0ab441640f80a3e9b3cd5e6140c1937e228810ea99d2fd7a44f9a531b786` |
| 35 | `theorem` | [DifferentiableWithinAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiablewithinat-abs-of-neg--fc367715073a5fa850d40bd2.md) | 170 | `result-track:fc367715073a5fa850d40bd2bb2e95b9d044a9ee1b11234bea0881413d1e8f05` |
| 36 | `theorem` | [DifferentiableWithinAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiablewithinat-abs-of-pos--46ef10b1bf3c7c46eecafc68.md) | 174 | `result-track:46ef10b1bf3c7c46eecafc68e49094d6243b6c0cb5b543d6379f41e6276af20e` |
| 37 | `theorem` | [DifferentiableWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiablewithinat-abs--dbc2acc62ded156187bf137f.md) | 178 | `result-track:dbc2acc62ded156187bf137f7de2c99f4e0cdd75545d898af5bdbc111404e2a2` |
| 38 | `theorem` | [differentiableOn_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiableon-abs--6ecd0c8e5c83fcbfe5611a85.md) | 182 | `result-track:6ecd0c8e5c83fcbfe5611a850806f907ad3c79f0128a8df43c2470385a657f54` |
| 39 | `theorem` | [DifferentiableOn.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiableon-abs--9f8039d4f2fde9158de5005a.md) | 185 | `result-track:9f8039d4f2fde9158de5005aae51c4c7db76638e1a88406f8aee1049f6e2a5c0` |
| 40 | `theorem` | [Differentiable.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/differentiable-abs--81b449fab80277fc09164b45.md) | 189 | `result-track:81b449fab80277fc09164b450ad69b6c2bb4ac7354b895e5bf742e712effc348` |
| 41 | `theorem` | [not_differentiableAt_abs_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/not-differentiableat-abs-zero--b16d50bc6213816284f0b477.md) | 192 | `result-track:b16d50bc6213816284f0b477bb014afbb1e2ffab2a09bcb0f028557452fdcaa8` |
| 42 | `theorem` | [deriv_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/deriv-abs-neg--8462224e89fa3ac0cd7048b6.md) | 202 | `result-track:8462224e89fa3ac0cd7048b6e1ab8500fb35bd2e2eb421a5ba3983b47ceb94fc` |
| 43 | `theorem` | [deriv_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/deriv-abs-pos--1685c288517d495cb730cb23.md) | 204 | `result-track:1685c288517d495cb730cb237849d3249f2fea7be2c362fc69e52244f0fb73c2` |
| 44 | `theorem` | [deriv_abs_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/deriv-abs-zero--86e5f18ca25e47e9c5c21721.md) | 206 | `result-track:86e5f18ca25e47e9c5c2172162ac8baf847dfd4a10915164479755bae991676d` |
| 45 | `theorem` | [deriv_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant2f3bdaac09473e9d57221fda3c549d130f7332c08b540d8dd09eea13b0a276df.lean/declarations/deriv-abs--ae39ed309ced1180c66ed43b.md) | 209 | `result-track:ae39ed309ced1180c66ed43bc0031fad77e19531dc7fdc1b9466d48e128c114f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
