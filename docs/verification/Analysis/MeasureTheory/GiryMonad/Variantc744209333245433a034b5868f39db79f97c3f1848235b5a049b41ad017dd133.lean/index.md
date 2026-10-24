# Verification target: GRWTSK.Analysis.MeasureTheory.GiryMonad.Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c230e4d87d49bfbc2e71cae42c80c44843fea70",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c230e4d87d49bfbc2e71cae42c80c44843fea70`.

Source path: `GRWTSK/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Countable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/instmeasurablespace--b716c9ee88a70555b8be3201.md) | 52 | `declaration-track:b716c9ee88a70555b8be3201aaefca024279cf7cfe85973f4af3d2050acdff8c` |
| 2 | `theorem` | [measurable_coe](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/measurable-coe--2f030b1e7b37d5eeee835039.md) | 55 | `result-track:2f030b1e7b37d5eeee835039424704c59328d191af9ad348ac11a3d85aba43f5` |
| 3 | `theorem` | [measurable_of_measurable_coe](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/measurable-of-measurable-coe--17a5cff6bfe53311ce0afa9e.md) | 58 | `result-track:17a5cff6bfe53311ce0afa9ee3a19f1aa95726a1b0177a7e2b1232b2bd4dd823` |
| 4 | `instance` | [instMeasurableAdd₂](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/instmeasurableadd--a64f1477bed4bbbd4e0db791.md) | 64 | `declaration-track:a64f1477bed4bbbd4e0db791b28d8eeac4b70ee3a8d2674ae536811c60f92a0d` |
| 5 | `theorem` | [measurable_measure](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/measurable-measure--9246d6ded46924ad85b6ad22.md) | 71 | `result-track:9246d6ded46924ad85b6ad22906c8fd740e708a994c6b18c9ab952b1844edfa9` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.Measurable.measure_of_isPiSystem](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/root-grwtsk-analysis-measuretheory-measurablecoe-variant5f8164ec3f96c215--8980519a3da06c98a6628912.md) | 75 | `result-track:8980519a3da06c98a6628912341b8386cc7e22cc7f61fa6e932454821c4717b8` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.Measurable.measure_of_isPiSystem_of_isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/root-grwtsk-analysis-measuretheory-measurablecoe-variant5f8164ec3f96c215--5242e876c4c9bc40c1976a5d.md) | 90 | `result-track:5242e876c4c9bc40c1976a5de8b164d83924c85a62d3ea5539abeb34e8b29a21` |
| 8 | `theorem` | [measurable_map](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/measurable-map--fa712ed36029a01b7b79bc47.md) | 97 | `result-track:fa712ed36029a01b7b79bc47df3560a2c48b7ecf7b30bb4d279630cf5513a94b` |
| 9 | `theorem` | [measurable_dirac](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/measurable-dirac--4a6581b16fef3e227278acdc.md) | 104 | `result-track:4a6581b16fef3e227278acdc7d903b0f82aa20840dfea7af911b68867400ee6d` |
| 10 | `theorem` | [measurable_lintegral](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/measurable-lintegral--3e7bdf182b41c5f862c80d1c.md) | 110 | `result-track:3e7bdf182b41c5f862c80d1c2cc52285a82ab1e8faf4b8fdedcc2645aa807e37` |
| 11 | `def` | [join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/join--9b986aa757db01b4909f33a3.md) | 119 | `declaration-track:9b986aa757db01b4909f33a3fbfbc18d94bb96f4a2262ef11980ec58b39fd25e` |
| 12 | `theorem` | [join_apply](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/join-apply--e0b65dfda569d7ebc86d18e1.md) | 129 | `result-track:e0b65dfda569d7ebc86d18e11941971257aaf9f68ab284e61bd70fb0071471a2` |
| 13 | `theorem` | [le_join_apply](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/le-join-apply--c8acb2aacf0a0b6d8d774b73.md) | 133 | `result-track:c8acb2aacf0a0b6d8d774b73c59dae1f457c5e210b2a84c18b39e8838a86db8e` |
| 14 | `theorem` | [join_smul](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/join-smul--4e6568ae55d9468a0fb79b75.md) | 138 | `result-track:4e6568ae55d9468a0fb79b758f9af578dd35707583ab216c86f2ebc43981a4d4` |
| 15 | `theorem` | [join_dirac](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/join-dirac--619c952e81fb8244d09c71de.md) | 144 | `result-track:619c952e81fb8244d09c71de6d473d5da59ee58006be4eb7859229f540b1902e` |
| 16 | `theorem` | [le_ae_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/le-ae-join--3e98732dfd1ff5449078fc4e.md) | 148 | `result-track:3e98732dfd1ff5449078fc4e36f9763d69303fccbb006213a5754e1a9f7ea3d8` |
| 17 | `theorem` | [ae_ae_of_ae_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/ae-ae-of-ae-join--f371d026b5ff4464d4f9c482.md) | 155 | `result-track:f371d026b5ff4464d4f9c482100c50e008c8c54ff94e59a71802dd657332f922` |
| 18 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.AEMeasurable.ae_of_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/root-grwtsk-analysis-measuretheory-measurablecoe-variant5f8164ec3f96c215--6b1bd07227a7ec52c027fdd0.md) | 159 | `result-track:6b1bd07227a7ec52c027fdd016ba2e4b16176c06031e48eefdbbaaaa99206fad` |
| 19 | `theorem` | [aemeasurable_lintegral](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/aemeasurable-lintegral--1cb3a51ab9a65ef72e823a4e.md) | 163 | `result-track:1cb3a51ab9a65ef72e823a4ed2902d6d3ed7d1d0e8a826578d03f317b7236ac3` |
| 20 | `theorem` | [join_zero](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/join-zero--64c0338efb271c479657e6ec.md) | 170 | `result-track:64c0338efb271c479657e6ec444f57ccb674b6818a8b0117c78da815d919900e` |
| 21 | `theorem` | [measurable_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/measurable-join--048872d49cbbc52dc3d2c8d0.md) | 175 | `result-track:048872d49cbbc52dc3d2c8d0102dd9d6399ab48e180fd6f036a409c9a3ca17dc` |
| 22 | `theorem` | [lintegral_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/lintegral-join--64edde91ab2c387f61caadea.md) | 179 | `result-track:64edde91ab2c387f61caadea8557d4cf057ce5d518a223a7c7d7c19cb7878240` |
| 23 | `theorem` | [lintegral_join_le](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/lintegral-join-le--fb827ad26c7b1a4918150556.md) | 208 | `result-track:fb827ad26c7b1a4918150556453cc5bf223681737de0083ccd370617ac5b1f46` |
| 24 | `def` | [bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind--9ac4805bb2d5cc9c7cfb51ee.md) | 217 | `declaration-track:9ac4805bb2d5cc9c7cfb51ee5123ef4f2df9b17575f386366df62e751385bd2a` |
| 25 | `theorem` | [bind_zero_left](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-zero-left--f6bc969dceed6a967596bb4f.md) | 221 | `result-track:f6bc969dceed6a967596bb4fe51f359ed01953518522ddce8e625dd6742144ce` |
| 26 | `theorem` | [bind_apply](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-apply--e417cdd343fe8d05a304a8c6.md) | 224 | `result-track:e417cdd343fe8d05a304a8c62ac524e391b5c2d9f455154237a8b16eefd8270e` |
| 27 | `theorem` | [bind_apply_le](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-apply-le--e73b4e6bc2bd27456ac21b21.md) | 228 | `result-track:e73b4e6bc2bd27456ac21b219fe52fd6f6d14ee6965bd5a0fee10b57dd14397c` |
| 28 | `theorem` | [ae_ae_of_ae_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/ae-ae-of-ae-bind--07f82963c7b63d847afedaaa.md) | 233 | `result-track:07f82963c7b63d847afedaaa97a9881dcbb139ad69b69841fb880506275e419a` |
| 29 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.AEMeasurable.ae_of_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/root-grwtsk-analysis-measuretheory-measurablecoe-variant5f8164ec3f96c215--8bdaac8fe1cf0893655b225f.md) | 237 | `result-track:8bdaac8fe1cf0893655b225f1b78f84d5d080ece9e1ab923f93da894c1dcaec2` |
| 30 | `theorem` | [bind_congr_right](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-congr-right--ec4f943e23309ebe65524a13.md) | 242 | `result-track:ec4f943e23309ebe65524a1338b6c116857cfdf3ac44478dcf0a721e617e3018` |
| 31 | `lemma` | [bind_const](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-const--61b4244bdc06b13e19f91d42.md) | 247 | `result-track:61b4244bdc06b13e19f91d42be4594aa635a9700e304a0233a79ab889f669667` |
| 32 | `theorem` | [bind_zero_right'](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-zero-right--57e11b8146de10435be6a177.md) | 250 | `result-track:57e11b8146de10435be6a17729229c169b99cbfe93ef546e2801233418557838` |
| 33 | `theorem` | [bind_zero_right](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-zero-right--d639c5b7b6e118b6d0614c3b.md) | 253 | `result-track:d639c5b7b6e118b6d0614c3b5facd7cdb68faf183fb37fa112aa686a1119844b` |
| 34 | `theorem` | [measurable_bind'](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/measurable-bind--23e55c7383a3694a4efade64.md) | 256 | `result-track:23e55c7383a3694a4efade64b7b0f17f265e19b484e84be3967dbcb11fd656a7` |
| 35 | `theorem` | [aemeasurable_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/aemeasurable-bind--e10a1943262f998fc2a83c12.md) | 260 | `result-track:e10a1943262f998fc2a83c126e5c1db5b7be605fec8c5ac69f0aa025ac3b112e` |
| 36 | `theorem` | [lintegral_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/lintegral-bind--6c5cfbce7785ce87b4597eda.md) | 265 | `result-track:6c5cfbce7785ce87b4597eda4843fc38eb94d84eb41472bcecb0e4e792c6a4a5` |
| 37 | `theorem` | [lintegral_bind_le](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/lintegral-bind-le--dee80f55e5d8856ded0b8002.md) | 269 | `result-track:dee80f55e5d8856ded0b800251bf432e8c4d88168ed16ff2ac64b645482092ed` |
| 38 | `theorem` | [bind_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-bind--c898a4a635b904f900da9427.md) | 273 | `result-track:c898a4a635b904f900da9427539938b5a9100dc6b6a5fe37607842ce703e471d` |
| 39 | `theorem` | [dirac_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/dirac-bind--bc96b3eaa3a34dbcb199db99.md) | 283 | `result-track:bc96b3eaa3a34dbcb199db991c587fa2bb1161780d6b61de6c59699cb8a126b6` |
| 40 | `theorem` | [bind_dirac](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-dirac--68a46378d248ab22790b70fb.md) | 287 | `result-track:68a46378d248ab22790b70fbaba90e4358e1c2696cf78c675828f3b193a76651` |
| 41 | `lemma` | [bind_dirac_eq_map](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/bind-dirac-eq-map--fd6edba31afd02a2c6f56a2f.md) | 293 | `result-track:fd6edba31afd02a2c6f56a2ff07ec1fa57546fd454e80d8d83e5e6a740dc28f6` |
| 42 | `theorem` | [join_eq_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/join-eq-bind--4f183e10733f4dce42437eb7.md) | 298 | `result-track:4f183e10733f4dce42437eb746f52215e8aec32d94f04d3be1b363a307b1c369` |
| 43 | `theorem` | [join_map_map](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/join-map-map--2b0dff40378bff1d85f16268.md) | 300 | `result-track:2b0dff40378bff1d85f162680c4bcb9ee2d1fc97e335683de41550f33cadba5d` |
| 44 | `theorem` | [join_map_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/join-map-join--c31818c9bf0e363a439dbb23.md) | 307 | `result-track:c31818c9bf0e363a439dbb2371624beddda3594952c9ab5f5cd1d1c77f90538d` |
| 45 | `theorem` | [join_map_dirac](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/declarations/join-map-dirac--1f35256daf3b6040f0320767.md) | 314 | `result-track:1f35256daf3b6040f0320767c6f81f975d6c9298cda3b820df24e1b7a2ac8bd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
