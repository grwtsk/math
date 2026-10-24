# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ArctanDeriv.Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f233b94ec12b8fb365d7cc618f3d5b6556e55b3d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f233b94ec12b8fb365d7cc618f3d5b6556e55b3d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean.json)

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
| 1 | `theorem` | [hasStrictDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasstrictderivat-tan--a4de77a751ddafbf28ff9823.md) | 32 | `result-track:a4de77a751ddafbf28ff9823c05f9c33be363d384c54c306861906d3a0ed19e1` |
| 2 | `theorem` | [hasDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasderivat-tan--f697df680d9764d3171cce89.md) | 35 | `result-track:f697df680d9764d3171cce89f99d95552205faf433b9fc322267f0ba303458d2` |
| 3 | `theorem` | [tendsto_abs_tan_of_cos_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/tendsto-abs-tan-of-cos-eq-zero--9e75422ad2f05486ccb0530f.md) | 38 | `result-track:9e75422ad2f05486ccb0530f482b2eb4919946e9c349bac50b6db49871bb71fb` |
| 4 | `theorem` | [tendsto_abs_tan_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/tendsto-abs-tan-attop--532da3053897febffeab7587.md) | 46 | `result-track:532da3053897febffeab7587581a75560a75953b5f5b62f1268cae03fb7420fc` |
| 5 | `theorem` | [continuousAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/continuousat-tan--7c85503cdfe642faa748aa76.md) | 50 | `result-track:7c85503cdfe642faa748aa763a4aedbdd604e37e5316c6ccb2402191b73ce12e` |
| 6 | `theorem` | [differentiableAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/differentiableat-tan--3e36f20d97ba1b32e90d4d0c.md) | 55 | `result-track:3e36f20d97ba1b32e90d4d0cbbfa246ba3148b63060009aaa66de5d140010d68` |
| 7 | `theorem` | [deriv_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/deriv-tan--f09ceb1a06d81519fb29b047.md) | 59 | `result-track:f09ceb1a06d81519fb29b047dc1920f70b92e1525957a937c315d4efccf4f0c5` |
| 8 | `theorem` | [contDiffAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/contdiffat-tan--66cc451e78b340c9273ae583.md) | 66 | `result-track:66cc451e78b340c9273ae5832a2677aafba2608c000d9ecc909898f2b164fdb9` |
| 9 | `theorem` | [hasDerivAt_tan_of_mem_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasderivat-tan-of-mem-ioo--b6a028f537b6aa7b087cbe2a.md) | 70 | `result-track:b6a028f537b6aa7b087cbe2aed7c6dbda3f88c8df38048790bae292ae80775c3` |
| 10 | `theorem` | [differentiableAt_tan_of_mem_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/differentiableat-tan-of-mem-ioo--ded42fe69bc538e14e750c4a.md) | 74 | `result-track:ded42fe69bc538e14e750c4aeb20f0c36d2c059256fe067969cf5b180cdd4ca3` |
| 11 | `theorem` | [hasStrictDerivAt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasstrictderivat-arctan--d0245aa9016a59277c00272b.md) | 78 | `result-track:d0245aa9016a59277c00272b4608761ec4fca34b7b8cfe589e849878155f856e` |
| 12 | `theorem` | [hasDerivAt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasderivat-arctan--4d47e3afbfca61d3680127b9.md) | 83 | `result-track:4d47e3afbfca61d3680127b93107f20c70b12870a5dddb828e24b9cb51213774` |
| 13 | `theorem` | [hasDerivAt_arctan'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasderivat-arctan--ef3ab4fe35732714bd9e393d.md) | 86 | `result-track:ef3ab4fe35732714bd9e393d72936cb1cb7d3ea83628e2a519348996b9600640` |
| 14 | `theorem` | [differentiableAt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/differentiableat-arctan--bd51a40131382e82e2e02a49.md) | 89 | `result-track:bd51a40131382e82e2e02a492617a6404612f5c60b94e5aeb59c628729a929d9` |
| 15 | `theorem` | [differentiable_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/differentiable-arctan--843c8c09bde837f5db12fa2e.md) | 92 | `result-track:843c8c09bde837f5db12fa2ebd67800384db05ed989ef2396370c26abe33d358` |
| 16 | `theorem` | [deriv_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/deriv-arctan--cb8ff25f418955832f6aef5e.md) | 96 | `result-track:cb8ff25f418955832f6aef5e055ac480327835fda5776c22fdc45f0e5a1d6542` |
| 17 | `theorem` | [contDiff_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/contdiff-arctan--e6f571097ad27afe319a6662.md) | 99 | `result-track:e6f571097ad27afe319a666265dea4f1a12033e6cf269990981d961131d63991` |
| 18 | `theorem` | [HasStrictDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasstrictderivat-arctan--4c84531bc4d2848dd48a67a7.md) | 122 | `result-track:4c84531bc4d2848dd48a67a712949b76057883b382e77f5507005a769adb6508` |
| 19 | `theorem` | [HasDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasderivat-arctan--8e6c58f4daec7d596008bbae.md) | 126 | `result-track:8e6c58f4daec7d596008bbae18279033db2bb0628ba59d71aeb5fa054d0ee771` |
| 20 | `theorem` | [HasDerivWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasderivwithinat-arctan--35bd028efeb3fdfbf4a00dda.md) | 130 | `result-track:35bd028efeb3fdfbf4a00dda34c015f94f1717f7f143e3b5eb45d432ba7d4910` |
| 21 | `theorem` | [derivWithin_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/derivwithin-arctan--58106aa66d97ed41279bc7be.md) | 134 | `result-track:58106aa66d97ed41279bc7be365d7a767ad7532985fd376171d5357a0f91b2be` |
| 22 | `theorem` | [deriv_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/deriv-arctan--aafaeec159d16188793ba845.md) | 139 | `result-track:aafaeec159d16188793ba8456080e929dd331f5492485de32e04463833572978` |
| 23 | `theorem` | [HasStrictFDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasstrictfderivat-arctan--8126ae3c3c5044eda95a389b.md) | 150 | `result-track:8126ae3c3c5044eda95a389ba77f8f241e4d07e3562a8a00348674d31b51e7cf` |
| 24 | `theorem` | [HasFDerivAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasfderivat-arctan--5bf18d8528866a6cd4b420ae.md) | 154 | `result-track:5bf18d8528866a6cd4b420ae3749fe13e522e54e260b473fb2f70ebe4bd81f58` |
| 25 | `theorem` | [HasFDerivWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/hasfderivwithinat-arctan--974d72ee07e2f5122fd77865.md) | 158 | `result-track:974d72ee07e2f5122fd778654af29ffd219a39d1fd44ceeb31d29ba735ee58c6` |
| 26 | `theorem` | [fderivWithin_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/fderivwithin-arctan--ebb5524c80728082ae4d9e26.md) | 162 | `result-track:ebb5524c80728082ae4d9e26cf679deb0c543bd026b413fadd95d73973a75d48` |
| 27 | `theorem` | [fderiv_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/fderiv-arctan--d3029c15c6c49a10aaa8e7b9.md) | 167 | `result-track:d3029c15c6c49a10aaa8e7b9cda8a6fd845bfca32c4608f5ba0c48185ffa95a9` |
| 28 | `theorem` | [DifferentiableWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/differentiablewithinat-arctan--5fdd62a95bd43624380c1f7a.md) | 171 | `result-track:5fdd62a95bd43624380c1f7a12a7e545129f0e6a573c388448dbd897f6f72f54` |
| 29 | `theorem` | [DifferentiableAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/differentiableat-arctan--c625492d4d2f80f1b722cb13.md) | 176 | `result-track:c625492d4d2f80f1b722cb136d83c511969d27111388e5062f79c1d50bb63f3c` |
| 30 | `theorem` | [DifferentiableOn.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/differentiableon-arctan--31afb43e340fc52794ac0f70.md) | 180 | `result-track:31afb43e340fc52794ac0f707b365dfaca6a92aa1eda64e0b80cf93d22e68633` |
| 31 | `theorem` | [Differentiable.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/differentiable-arctan--a4f4ba69dfbef12538c743c8.md) | 184 | `result-track:a4f4ba69dfbef12538c743c895cc4992f1a92395c1e0766b56f573fb66a569d6` |
| 32 | `theorem` | [ContDiffAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/contdiffat-arctan--28f63b878f0c46fe8f726c06.md) | 187 | `result-track:28f63b878f0c46fe8f726c065dae0e1a2227aacbae393a9203f9d484e4457bdc` |
| 33 | `theorem` | [ContDiff.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/contdiff-arctan--8e86a78a65da06bc65853bba.md) | 190 | `result-track:8e86a78a65da06bc65853bba7afdb5932b873b9291a5d9f0494a6b899fb5c9ee` |
| 34 | `theorem` | [ContDiffWithinAt.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/contdiffwithinat-arctan--bd5a9e1d25f783a29dd3cbcf.md) | 193 | `result-track:bd5a9e1d25f783a29dd3cbcf383519652ed9deee787e76df7c93e3bd22b0d9ce` |
| 35 | `theorem` | [ContDiffOn.arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant84fc141e89a2affcae79441bc67be97b497e9d6bdb1dbff0c5bf85d5b76218d6.lean/declarations/contdiffon-arctan--f7a00c3b9deebacca9a9bfb1.md) | 197 | `result-track:f7a00c3b9deebacca9a9bfb1da34b577df378021bc87fe57fd7c4556e2e10cc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
