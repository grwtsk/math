# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Composition.Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6c9794abc494d790c095633044ce10546f8cbad",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6c9794abc494d790c095633044ce10546f8cbad`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Composition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [applyComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/applycomposition--de818b59b4770b48bd944438.md) | 114 | `declaration-track:de818b59b4770b48bd944438acd21751f334b57eaf2314a104752d10200968e2` |
| 2 | `theorem` | [applyComposition_ones](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/applycomposition-ones--a355764fab0fb0e64005ffd1.md) | 118 | `result-track:a355764fab0fb0e64005ffd1ffedfb9ecf150c880eb4a668833a6404ea8c8e5d` |
| 3 | `theorem` | [applyComposition_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/applycomposition-single--c93df8b21d50d197e1e1b69d.md) | 129 | `result-track:c93df8b21d50d197e1e1b69d66a3fd3c95fa70c972c265d32e15582b9a82e6f6` |
| 4 | `theorem` | [removeZero_applyComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/removezero-applycomposition--79660181db396c8b74002a0b.md) | 143 | `result-track:79660181db396c8b74002a0ba3d80092ad3135aac200ac1529fa646145b3e538` |
| 5 | `theorem` | [applyComposition_update](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/applycomposition-update--6eaad20d6319d3796ea09d82.md) | 152 | `result-track:6eaad20d6319d3796ea09d8267d106c3df5b3c8fb348e8dadbf6f8760efa1604` |
| 6 | `theorem` | [compContinuousLinearMap_applyComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compcontinuouslinearmap-applycomposition--30c55411d0c0e740bdfd4091.md) | 179 | `result-track:30c55411d0c0e740bdfd4091e646bb83bd7459b39061b986e2d6489cb224142f` |
| 7 | `def` | [compAlongComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compalongcomposition--23cd982e321053ee14f77d3c.md) | 199 | `declaration-track:23cd982e321053ee14f77d3cd3d3880723fd9a08006fc2782776bc85e2694fab` |
| 8 | `theorem` | [compAlongComposition_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compalongcomposition-apply--4296c3021654e4e1440703e4.md) | 215 | `result-track:4296c3021654e4e1440703e45586c6870200a10d81449f6821f600e5a8bd60db` |
| 9 | `def` | [compAlongComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compalongcomposition--90b3f5e38390195da3565a06.md) | 235 | `declaration-track:90b3f5e38390195da3565a0663520e25d5ea187c209b96497326bee0a83bd9aa` |
| 10 | `theorem` | [compAlongComposition_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compalongcomposition-apply--a24b1389637df29f29b54ceb.md) | 242 | `result-track:a24b1389637df29f29b54ceba42a2a50b4ce3a7c62cec5b10d8da7d15f887756` |
| 11 | `def` | [comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp--3866af4c16b9ac947f360b5a.md) | 257 | `declaration-track:3866af4c16b9ac947f360b5a59fbb1db8c62c27045b94db6f8a822d90dfaaea8` |
| 12 | `theorem` | [comp_coeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp-coeff-zero--5e5609313f22ad61efb81c1c.md) | 264 | `result-track:5e5609313f22ad61efb81c1c0f54b3a3985a9d20dc4967715d74864acb5fddaf` |
| 13 | `theorem` | [comp_coeff_zero'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp-coeff-zero--3d687a26a53364d20e76d873.md) | 275 | `result-track:3d687a26a53364d20e76d87375a89e809e06c14ed9091a424febfeb7803298d1` |
| 14 | `theorem` | [comp_coeff_zero''](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp-coeff-zero--3a9931a4d120a52ccc2bff58.md) | 282 | `result-track:3a9931a4d120a52ccc2bff585cffd71559ab31433d554fa74c1ef08f1ecf750f` |
| 15 | `theorem` | [comp_coeff_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp-coeff-one--3be437f59eb9b5cdc3ee18c6.md) | 288 | `result-track:3be437f59eb9b5cdc3ee18c66303bf902c9358f503138d5a41589d4337975f42` |
| 16 | `theorem` | [removeZero_comp_of_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/removezero-comp-of-pos--94810dee93f54c39ce777115.md) | 300 | `result-track:94810dee93f54c39ce7771155d04fbb2eda715180b75517316f860eaed860c7b` |
| 17 | `theorem` | [comp_removeZero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp-removezero--8bae9c0c379b52c95d042bb3.md) | 311 | `result-track:8bae9c0c379b52c95d042bb3ebc11ba805aeaaa30e68c6e8758adcfebff25cca` |
| 18 | `theorem` | [compAlongComposition_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compalongcomposition-bound--7cc9076b6eba0cb0fff7800f.md) | 327 | `result-track:7cc9076b6eba0cb0fff7800f557d34432ce66fca286d5c4ec3a60558ae8f84f6` |
| 19 | `theorem` | [compAlongComposition_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compalongcomposition-norm--6d48e599cded38b768baa5fd.md) | 347 | `result-track:6d48e599cded38b768baa5fdcf102bb594def017ef6e887f5f98434378fdc5f5` |
| 20 | `theorem` | [compAlongComposition_nnnorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compalongcomposition-nnnorm--a8c38080e519d6c0084e3c1a.md) | 355 | `result-track:a8c38080e519d6c0084e3c1aecec4eed47129d203883cfb071a2db5430cc21df` |
| 21 | `def` | [id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/id--6f37b673673459eb82e6e537.md) | 375 | `declaration-track:6f37b673673459eb82e6e53754bd094fb73f1617792b70e73fb5925c90f29875` |
| 22 | `theorem` | [id_apply_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/id-apply-one--4a52b3bc8048b43ffae7e9a8.md) | 383 | `result-track:4a52b3bc8048b43ffae7e9a8c609beb9b418eb250419b3315cdf066073518dbc` |
| 23 | `theorem` | [id_apply_one'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/id-apply-one--84f9686e30be14b2b9d31d60.md) | 389 | `result-track:84f9686e30be14b2b9d31d60a16b00b845425d0c28a59c9a3551552a393d7ca7` |
| 24 | `theorem` | [id_apply_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/id-apply-ne-one--0dab31e20dfb18e888126a1d.md) | 397 | `result-track:0dab31e20dfb18e888126a1df145f9d898dfa20d0b511942ef81390d0c5b4f40` |
| 25 | `theorem` | [comp_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp-id--798612bfac2d2fdfe1887684.md) | 408 | `result-track:798612bfac2d2fdfe1887684958c208b6368b75f71e60d734f6329e4ce96f53c` |
| 26 | `theorem` | [id_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/id-comp--3a6e24ce793ea5acd4bec9fd.md) | 441 | `result-track:3a6e24ce793ea5acd4bec9fd84d3659dcb3a5f54fad2b63b23b56e1bd9ed2a3a` |
| 27 | `theorem` | [comp_summable_nnreal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp-summable-nnreal--fa1bc06955f116e3d6dcd285.md) | 477 | `result-track:fa1bc06955f116e3d6dcd285b46efa0c00743ae2f296f463fa9d03503be82d67` |
| 28 | `theorem` | [le_comp_radius_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/le-comp-radius-of-summable--983fe6e2c7768db207df695f.md) | 541 | `result-track:983fe6e2c7768db207df695fe2367e865a72bd3a7555292a39ac7fe68972f159` |
| 29 | `def` | [compPartialSumSource](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comppartialsumsource--3b5c3623201c2fae5db2cfe8.md) | 574 | `declaration-track:3b5c3623201c2fae5db2cfe83ed970571d51a510c60c869b669f83c968adcdf0` |
| 30 | `theorem` | [mem_compPartialSumSource_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/mem-comppartialsumsource-iff--8bd8224dcf4423107a42f7f9.md) | 579 | `result-track:8bd8224dcf4423107a42f7f94e7cb171e02844fe92ef74114347e71463322b8a` |
| 31 | `def` | [compChangeOfVariables](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compchangeofvariables--b0b7c0625d376fb65ffe73a6.md) | 588 | `declaration-track:b0b7c0625d376fb65ffe73a66449e59b184bfb6082d4a1c828b142afe58dcbb4` |
| 32 | `theorem` | [compChangeOfVariables_length](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compchangeofvariables-length--4fcadd72487d2c533734f83a.md) | 599 | `result-track:4fcadd72487d2c533734f83a6ce5c43d6c7293f0c02be08d4c5023911a7a1911` |
| 33 | `theorem` | [compChangeOfVariables_blocksFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compchangeofvariables-blocksfun--e1456f20908b51689d26ff4b.md) | 608 | `result-track:e1456f20908b51689d26ff4b7a0c9f6694f16e58b25415326586d55cabae6cee` |
| 34 | `def` | [compPartialSumTargetSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comppartialsumtargetset--4f7d09feb3f4bc0c86891869.md) | 620 | `declaration-track:4f7d09feb3f4bc0c86891869b10a11afd93cec187b18152950ffafcdd74d36c2` |
| 35 | `theorem` | [compPartialSumTargetSet_image_compPartialSumSource](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comppartialsumtargetset-image-comppartialsumsource--19a3d6212bb53603b0ec921c.md) | 624 | `result-track:19a3d6212bb53603b0ec921c42a420466950f0400e87060a07d80e4b91e5d58a` |
| 36 | `def` | [compPartialSumTarget](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comppartialsumtarget--3272b910c4df08fbe2896230.md) | 641 | `declaration-track:3272b910c4df08fbe28962309ca3efade3fb5fdc8506fc12c6b181aa5700439d` |
| 37 | `theorem` | [mem_compPartialSumTarget_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/mem-comppartialsumtarget-iff--437610e24ebfe3d549740c9a.md) | 648 | `result-track:437610e24ebfe3d549740c9a544adb1bf60c7f84f073dab21600628b4fbc50ce` |
| 38 | `theorem` | [compChangeOfVariables_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/compchangeofvariables-sum--3793434d5ba8a9b41589c4db.md) | 660 | `result-track:3793434d5ba8a9b41589c4db931dd10da573d3ae106307463aa3060401c3d2e0` |
| 39 | `theorem` | [compPartialSumTarget_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comppartialsumtarget-tendsto-attop--b6e594fc4e7689fe2ad79b52.md) | 707 | `result-track:b6e594fc4e7689fe2ad79b526091fda438f52683fe4f4d81fa7acb3660bf0a8a` |
| 40 | `theorem` | [comp_partialSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp-partialsum--32704013aac0f131d4dc313c.md) | 727 | `result-track:32704013aac0f131d4dc313cc877209b4e5f13657479d67f01cfae22676f64f1` |
| 41 | `theorem` | [HasFPowerSeriesAt.comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/hasfpowerseriesat-comp--e139d14a7cdac00bc5ccbaa3.md) | 757 | `result-track:e139d14a7cdac00bc5ccbaa3fd7a606bb154b85752341b8928bf2db54e073183` |
| 42 | `theorem` | [AnalyticAt.comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/analyticat-comp--976a4743707bc3abcc2049ff.md) | 882 | `result-track:976a4743707bc3abcc2049ff0d7920ed5ca05a7b90bb5dfe3dd55eeaf46a6fba` |
| 43 | `theorem` | [sigma_composition_eq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/sigma-composition-eq-iff--d698a4340aac32fd3c713455.md) | 951 | `result-track:d698a4340aac32fd3c71345551d963c45c1d0ae8bed3b8ac9eed8ebcb90d174f` |
| 44 | `theorem` | [sigma_pi_composition_eq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/sigma-pi-composition-eq-iff--111e78c551ee0de206eb8f1c.md) | 964 | `result-track:111e78c551ee0de206eb8f1c0673d30f7e0f5b7490535edc29f230bd08be4d39` |
| 45 | `def` | [gather](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/gather--b375cd9a2192ec080395734a.md) | 995 | `declaration-track:b375cd9a2192ec080395734aed666d6bf87c60dbcb7606fed2ef78d98e373a3b` |
| 46 | `theorem` | [length_gather](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/length-gather--8877d8310e6266923cfdafc0.md) | 1012 | `result-track:8877d8310e6266923cfdafc05aaa6250137ed7835fe50cfc2a8ce9632c3fa731` |
| 47 | `def` | [sigmaCompositionAux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/sigmacompositionaux--9bc897b3cadca8b0ce441cc8.md) | 1024 | `declaration-track:9bc897b3cadca8b0ce441cc87d3994772be3b6832e713b93620ed27a4266dd9f` |
| 48 | `theorem` | [length_sigmaCompositionAux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/length-sigmacompositionaux--9f9291c452f405bef5332fa0.md) | 1039 | `result-track:9f9291c452f405bef5332fa00426f890192abf890f12af867f45d9e59bfc394b` |
| 49 | `theorem` | [blocksFun_sigmaCompositionAux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/blocksfun-sigmacompositionaux--e46be19b42f9f0d12a5daa63.md) | 1049 | `result-track:e46be19b42f9f0d12a5daa630420df933afd9d579b5332feb4d6f0b7d00698ee` |
| 50 | `theorem` | [sizeUpTo_sizeUpTo_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/sizeupto-sizeupto-add--9e540b894702b262258208f4.md) | 1067 | `result-track:9e540b894702b262258208f4c34e13fc4395798ed5fc7dc1be1594dc511370a9` |
| 51 | `def` | [sigmaEquivSigmaPi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/sigmaequivsigmapi--a626d307f34871fe42b0f1b5.md) | 1123 | `declaration-track:a626d307f34871fe42b0f1b5f5b5d5812ba00ef575d1d4cd3dab9cf2c3def0b9` |
| 52 | `theorem` | [comp_assoc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/declarations/comp-assoc--0da1234d0cd2f78daf07963a.md) | 1192 | `result-track:0da1234d0cd2f78daf07963a2e3386994c7222c7f9a0035b24dab2159ca2398e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
