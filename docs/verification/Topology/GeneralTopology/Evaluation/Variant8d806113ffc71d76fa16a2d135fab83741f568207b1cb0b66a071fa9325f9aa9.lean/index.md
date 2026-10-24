# Verification target: GRWTSK.Topology.GeneralTopology.Evaluation.Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cb404745ec52338f0ade8d47e4e074ea779e203",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cb404745ec52338f0ade8d47e4e074ea779e203`.

Source path: `GRWTSK/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasEval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/haseval--2bb5b1963745ffbc7a96dae9.md) | 74 | `declaration-track:2bb5b1963745ffbc7a96dae94a9c0dd842de5d7e6f371f3266d1832d7998f5f8` |
| 2 | `theorem` | [HasEval.mono](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/haseval-mono--69683d53c8493bb2ef691606.md) | 78 | `result-track:69683d53c8493bb2ef691606902ddc42a59c1328aec43d78ec8cfb94b0aa3b4d` |
| 3 | `theorem` | [HasEval.zero](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/haseval-zero--6d24a9dcc535caf71d13145d.md) | 84 | `result-track:6d24a9dcc535caf71d13145d934bc3399798d9aa1220bcbddcfa6d1d6f51aa48` |
| 4 | `theorem` | [HasEval.add](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/haseval-add--7ec9fdd0304f0549fd6c702a.md) | 88 | `result-track:7ec9fdd0304f0549fd6c702a40226d6a1fec86cb396878c69c8d69ffb70e4720` |
| 5 | `theorem` | [HasEval.mul_left](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/haseval-mul-left--0c8656f531277de67981c8c4.md) | 93 | `result-track:0c8656f531277de67981c8c4df07f0846b9205ccf8e91d493122bf8e9acdd309` |
| 6 | `theorem` | [HasEval.mul_right](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/haseval-mul-right--d99542611dc87a8dfcd617c1.md) | 98 | `result-track:d99542611dc87a8dfcd617c13e3aef5b428327b641b2550e75ddc178ccfbf8c4` |
| 7 | `theorem` | [HasEval.map](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/haseval-map--d22565341fcc4096e91fb1f0.md) | 103 | `result-track:d22565341fcc4096e91fb1f0cc97919971463cd0dbf30c42b098061973bf4a60` |
| 8 | `theorem` | [HasEval.X](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/haseval-x--1db4d02db57482c3427aaee3.md) | 108 | `result-track:1db4d02db57482c3427aaee31c3dabe50f20b31572c8d026c88f225c81f54d29` |
| 9 | `def` | [hasEvalIdeal](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/hasevalideal--5cb4afa25dffc6483c65cbaa.md) | 117 | `declaration-track:5cb4afa25dffc6483c65cbaae694e7cf49ed55cdaaf0a9092ada5625505739f5` |
| 10 | `theorem` | [mem_hasEvalIdeal_iff](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/mem-hasevalideal-iff--cfeb38ef4eb3a19977537bf1.md) | 123 | `result-track:cfeb38ef4eb3a19977537bf1851d3b6cde42a51e3ba83c3b928dc82c8662508b` |
| 11 | `theorem` | [HasEval.pow](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/haseval-pow--6782a478522665e6128a39e7.md) | 127 | `result-track:6782a478522665e6128a39e7b36bdfc2812ddbf89afe7b2e23933512d4348e64` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/instance--a28b69e2dcce600ef89765d0.md) | 146 | `declaration-track:a28b69e2dcce600ef89765d030ad3ad1fe4a5f7445eff5cafde5b153936868bd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/instance--2410b501f3579660764ec616.md) | 150 | `declaration-track:2410b501f3579660764ec616a59e7ce5607e534d533df697841377f7d918e0a5` |
| 14 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasEval.Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.MvPolynomial.toMvPowerSeries_isUniformInducing](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/root-grwtsk-topology-generaltopology-haseval-varianta9f032e25790cfc33033--817cd0a0b6b06335ba06b36c.md) | 153 | `result-track:817cd0a0b6b06335ba06b36ca7773806280e37ec7ec93e9f3c9c7cccf8beb62f` |
| 15 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasEval.Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.MvPolynomial.toMvPowerSeries_isDenseInducing](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/root-grwtsk-topology-generaltopology-haseval-varianta9f032e25790cfc33033--00a741cd77c1898256050f26.md) | 157 | `result-track:00a741cd77c1898256050f26abeadcd859cd6811bd613b5349a5f120f3e64b8c` |
| 16 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasEval.Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.MvPolynomial.toMvPowerSeries_uniformContinuous](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/root-grwtsk-topology-generaltopology-haseval-varianta9f032e25790cfc33033--caeae14c9eabb2d97b743680.md) | 165 | `result-track:caeae14c9eabb2d97b743680dccc64e2498759a213463b7eaa720eef54371bd0` |
| 17 | `def` | [eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/eval--e5ae2f8e15a673cff5433a0b.md) | 209 | `declaration-track:e5ae2f8e15a673cff5433a0b347c49ddeba0717871f8d25d88b09d7ddca8adb7` |
| 18 | `theorem` | [eval₂_coe](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/eval-coe--4f6de05c8be01d6f2181ccb8.md) | 214 | `result-track:4f6de05c8be01d6f2181ccb8a9a548e6731419d8499d4f21eefd074990ca04a0` |
| 19 | `theorem` | [eval₂_C](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/eval-c--7816ca5df6c79690cc38c7d4.md) | 222 | `result-track:7816ca5df6c79690cc38c7d44a68ca16ce7af93d6e4457a25444c28dd497bc67` |
| 20 | `theorem` | [eval₂_X](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/eval-x--ff07565cdaa82111fa327f99.md) | 226 | `result-track:ff07565cdaa82111fa327f99ec301ded119060bc66d31231666a2900fe2deabc` |
| 21 | `def` | [eval₂Hom](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/eval-hom--61765b6182a13001aeefefbb.md) | 236 | `declaration-track:61765b6182a13001aeefefbb89291df0ec24f83c21de9aa7282c64987c19696b` |
| 22 | `theorem` | [eval₂Hom_eq_extend](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/eval-hom-eq-extend--6fb6f3d3d22e37b33f415010.md) | 243 | `result-track:6fb6f3d3d22e37b33f41501019b81027ff2b2c9b8be398eedae207c4a2ed1ab3` |
| 23 | `theorem` | [coe_eval₂Hom](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/coe-eval-hom--4d40b3240bbc371fc8047e1e.md) | 248 | `result-track:4d40b3240bbc371fc8047e1ed484aaeb8623333763660c5301d24c729be9cea5` |
| 24 | `theorem` | [uniformContinuous_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/uniformcontinuous-eval--8a31b97943b9dc848c5beae3.md) | 262 | `result-track:8a31b97943b9dc848c5beae316cc3a326dabdcc2773d5b817fa8172a40fae89b` |
| 25 | `theorem` | [continuous_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/continuous-eval--1adb18a06e36ebb9df92798a.md) | 270 | `result-track:1adb18a06e36ebb9df92798ae64cb1f6fd022b618c83aca6142d82f3931d44db` |
| 26 | `theorem` | [hasSum_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/hassum-eval--1dbec66cc618c70d8ea92a35.md) | 274 | `result-track:1dbec66cc618c70d8ea92a354848bc6741def1c5885ae8639ce5257e72045090` |
| 27 | `theorem` | [eval₂_eq_tsum](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/eval-eq-tsum--c545018971339628c0f81a59.md) | 284 | `result-track:c545018971339628c0f81a593974705e9ae9aeca1532092b7d08fff05c385c15` |
| 28 | `theorem` | [eval₂_unique](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/eval-unique--d403d8d3f996267411b85a7b.md) | 289 | `result-track:d403d8d3f996267411b85a7bf19276cf5b5bfc288e7158019e785b7e9d3d8264` |
| 29 | `theorem` | [comp_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/comp-eval--c6a7eadcd675ee60edc2858a.md) | 296 | `result-track:c6a7eadcd675ee60edc2858a78d7ff2dfbaabf9910771c6cd623d7a283229de9` |
| 30 | `def` | [aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/aeval--99f62c14aced728e06c4b71e.md) | 312 | `declaration-track:99f62c14aced728e06c4b71e666c7410c2fa0ba1b37f1fb688357b69806820f8` |
| 31 | `theorem` | [coe_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/coe-aeval--7ae473093296c197a3bba3b2.md) | 318 | `result-track:7ae473093296c197a3bba3b2b2bb27d41b29b5175d88c569ff9b485e358d021e` |
| 32 | `theorem` | [continuous_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/continuous-aeval--2cac9fafddf2ba0ae43fe7ca.md) | 322 | `result-track:2cac9fafddf2ba0ae43fe7cae976d9e2af14570e85c8605327924c132c996936` |
| 33 | `theorem` | [aeval_coe](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/aeval-coe--ab74eb813601825ce8dc1767.md) | 328 | `result-track:ab74eb813601825ce8dc17676ac3828ba073a426168b9f72175c95e9d0486bc0` |
| 34 | `theorem` | [aeval_unique](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/aeval-unique--80aa6cb75ff41fd6c0da02d2.md) | 332 | `result-track:80aa6cb75ff41fd6c0da02d2b580c98b9bafd7038526ad3a133034b65594739f` |
| 35 | `theorem` | [hasSum_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/hassum-aeval--d6292d899fb80ceb01226dbf.md) | 343 | `result-track:d6292d899fb80ceb01226dbf44d752d43c2d4a752985dcb955c91a691eb261ac` |
| 36 | `theorem` | [aeval_eq_sum](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/aeval-eq-sum--3abcfbae0a73f7d4b3ca6d9c.md) | 349 | `result-track:3abcfbae0a73f7d4b3ca6d9c707df798ffe2c6fe2d5af42ff240315731202794` |
| 37 | `theorem` | [comp_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/declarations/comp-aeval--e8743924b9ab1735328a68c7.md) | 354 | `result-track:e8743924b9ab1735328a68c75917abf0ca3795e4f38c0040464cd6b716a8626b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
