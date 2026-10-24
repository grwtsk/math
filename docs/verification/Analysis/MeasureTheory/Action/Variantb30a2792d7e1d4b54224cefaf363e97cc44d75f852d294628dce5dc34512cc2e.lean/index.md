# Verification target: GRWTSK.Analysis.MeasureTheory.Action.Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63a05cdc8b6e89f9ee6afe4b1a41ae78fbf0b6d3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63a05cdc8b6e89f9ee6afe4b1a41ae78fbf0b6d3`.

Source path: `GRWTSK/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Minimal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.MeasurableEquiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.EventuallyConst` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/zero--8581d4435140355df0c2895e.md) | 44 | `declaration-track:8581d4435140355df0c2895e490553c72551da64f891aa54152207ba71097693` |
| 2 | `instance` | [add](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/add--4a38b1885cef03a1194ba070.md) | 50 | `declaration-track:4a38b1885cef03a1194ba07010a8642da1a73831a6b245d883ce2d763dc2be19` |
| 3 | `instance` | [smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smul--a072d4f101d38ba7ea1776f9.md) | 57 | `declaration-track:a072d4f101d38ba7ea1776f996efe9282a311a5f0686db01ecde25241a7b1284` |
| 4 | `instance` | [smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smul-nnreal--cb6ac2910cc8d9dec6fee94f.md) | 61 | `declaration-track:cb6ac2910cc8d9dec6fee94f8966669f81e0f774b2702c2f1ea58ca4146c5119` |
| 5 | `theorem` | [measure_preimage_smul_le](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-preimage-smul-le--763ad5c8af350e0ea1d5d838.md) | 73 | `result-track:763ad5c8af350e0ea1d5d8388e64099f5c41aea615e75284c4817145f93fd150` |
| 6 | `theorem` | [tendsto_smul_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/tendsto-smul-ae--65cba5408705613589cc5a50.md) | 79 | `result-track:65cba5408705613589cc5a5024585d7876c9fc23577b97d115555661ba384b17` |
| 7 | `theorem` | [measure_preimage_smul_null](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-preimage-smul-null--d5d23148ef29b94b5bd88f67.md) | 85 | `result-track:d5d23148ef29b94b5bd88f67d9a1ce8c1ccabe97061e599625fc9c4c74510a3b` |
| 8 | `theorem` | [measure_preimage_smul_of_nullMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-preimage-smul-of-nullmeasurableset--1fff92a6e85b8309a6033521.md) | 89 | `result-track:1fff92a6e85b8309a60335217761cc7b7f853a3d4f9cb867fa9972b48e565169` |
| 9 | `theorem` | [measure_preimage_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-preimage-smul--4b1785da9a541cfb2b44d211.md) | 103 | `result-track:4b1785da9a541cfb2b44d2111a063447be6e65b11cd36670616a187c470d36e1` |
| 10 | `theorem` | [measure_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-smul--3b389e305fb74a3d289288c9.md) | 108 | `result-track:3b389e305fb74a3d289288c95f66764aeb5ff451a0a44f94ccfa984145ad1177` |
| 11 | `theorem` | [measure_smul_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-smul-eq-zero-iff--01ea87119572894d25f00961.md) | 114 | `result-track:01ea87119572894d25f00961834b1c5342d1b990acc83602ef8d00f972a71aef` |
| 12 | `theorem` | [measure_smul_null](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-smul-null--0d396fcaccc3a43c65a6360e.md) | 118 | `result-track:0d396fcaccc3a43c65a6360e5c6cfd6a079d6058955438b8f72c6813228e8a02` |
| 13 | `theorem` | [smul_mem_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smul-mem-ae--c0d0702ef2088d131242e067.md) | 122 | `result-track:c0d0702ef2088d131242e067d9b743f3e8ac76fe856ce6854f3f488d7bf06044` |
| 14 | `theorem` | [smul_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smul-ae--a5cc276c6777c4120c5b2903.md) | 126 | `result-track:a5cc276c6777c4120c5b2903922c6e77b8c39660c7fe2f95bd2ac9849535de65` |
| 15 | `theorem` | [eventuallyConst_smul_set_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/eventuallyconst-smul-set-ae--e3d07d8f2ed3475ff5b1e6e0.md) | 131 | `result-track:e3d07d8f2ed3475ff5b1e6e0aee3fb56b8676374693feb0afb12b2009c6ba7da` |
| 16 | `theorem` | [smul_set_ae_le](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smul-set-ae-le--4ee4a1656d1238c463dd74c6.md) | 136 | `result-track:4ee4a1656d1238c463dd74c615b28d59d01c6eba5caa23ff14a90d38081cdb43` |
| 17 | `theorem` | [smul_set_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smul-set-ae-eq--658b48e72edcdc021d13d3eb.md) | 140 | `result-track:658b48e72edcdc021d13d3eb2829a3bb4f0841f2139f49ee44653601e950634d` |
| 18 | `theorem` | [measurePreserving_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measurepreserving-smul--431aad7b7ed866f720e7b9e3.md) | 151 | `result-track:431aad7b7ed866f720e7b9e309d5634a9675fd74873de4d66f53be787932e2ba` |
| 19 | `theorem` | [map_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/map-smul--a41cf63c5633dcfb60aebe9c.md) | 159 | `result-track:a41cf63c5633dcfb60aebe9c3028ed2a00e822dbd54628bff5e26ea6facb4f49` |
| 20 | `theorem` | [MeasurePreserving.smulInvariantMeasure_iterateMulAct](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measurepreserving-smulinvariantmeasure-iteratemulact--863b217b4b3dc31f47519303.md) | 165 | `result-track:863b217b4b3dc31f4751930375ef25774214981607a1e6bfeb6edc18abdc9bf9` |
| 21 | `theorem` | [smulInvariantMeasure_iterateMulAct](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smulinvariantmeasure-iteratemulact--062f961ba6aebe12930e2b81.md) | 171 | `result-track:062f961ba6aebe12930e2b81c839f3ac5fb319fcd2e6be2f53cd2ccb74c33705` |
| 22 | `theorem` | [smulInvariantMeasure_map](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smulinvariantmeasure-map--5db19f857ea0ddbd6e2c2d93.md) | 186 | `result-track:5db19f857ea0ddbd6e2c2d93e3f99627dfa2de0bb1c58a27aee5f36a23000cdd` |
| 23 | `instance` | [smulInvariantMeasure_map_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smulinvariantmeasure-map-smul--08ca0a301386cdbdb7511c26.md) | 201 | `declaration-track:08ca0a301386cdbdb7511c26ce68da5c86ac7d07e5898fdd6ad7a7c62e812e6d` |
| 24 | `theorem` | [smulInvariantMeasure_tfae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/smulinvariantmeasure-tfae--6bc71bcb016e174ae4292402.md) | 228 | `result-track:6bc71bcb016e174ae4292402c7e1c809d28e290e92972c0f3809e3fe63b05cff` |
| 25 | `theorem` | [NullMeasurableSet.smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/nullmeasurableset-smul--a2a281aa7f54189b9351d0e6.md) | 275 | `result-track:a2a281aa7f54189b9351d0e63461d8ae1195ddbc78d474ee0fb977e095d52d52` |
| 26 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_compact_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-isopen-pos-of-smulinvariant-of-compact-ne-zero--2c637bfa168ca8e3fa331b6e.md) | 290 | `result-track:2c637bfa168ca8e3fa331b6e3baf622f1da2bd7d724010619d97ad101589da8f` |
| 27 | `theorem` | [isLocallyFiniteMeasure_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/islocallyfinitemeasure-of-smulinvariant--1eb020a378261297b91b6221.md) | 306 | `result-track:1eb020a378261297b91b6221325760189104851e115d470757375061faf2be8d` |
| 28 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-isopen-pos-of-smulinvariant-of-ne-zero--f170dfafb932b6f76467e95c.md) | 316 | `result-track:f170dfafb932b6f76467e95cc5dfbc8317f60975001b3a3baf47614e32255f31` |
| 29 | `theorem` | [measure_pos_iff_nonempty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-pos-iff-nonempty-of-smulinvariant--3c2fc52c2fd8936bf15e315d.md) | 322 | `result-track:3c2fc52c2fd8936bf15e315de57ed61dc205c6b2eb01553cea0821477cc0bab4` |
| 30 | `theorem` | [measure_eq_zero_iff_eq_empty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/declarations/measure-eq-zero-iff-eq-empty-of-smulinvariant--b4c7ed73f6918becbaf82cb0.md) | 328 | `result-track:b4c7ed73f6918becbaf82cb0b7b09beb8907ffb6220381b3c7f48d8896181881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
