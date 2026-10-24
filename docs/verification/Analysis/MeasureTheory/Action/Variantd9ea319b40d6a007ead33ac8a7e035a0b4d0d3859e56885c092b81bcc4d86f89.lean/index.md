# Verification target: GRWTSK.Analysis.MeasureTheory.Action.Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71e7bac2ee329ec531f8dc4879010041826cb1b8",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71e7bac2ee329ec531f8dc4879010041826cb1b8`.

Source path: `GRWTSK/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Minimal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.MeasurableEquiv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.EventuallyConst` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/zero--06c859a205b22717bef2ac6f.md) | 36 | `declaration-track:06c859a205b22717bef2ac6f93bf7740c0b55e20919545a3309a560b2babbb29` |
| 2 | `instance` | [add](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/add--16b39aa02cfed1d7c04df545.md) | 42 | `declaration-track:16b39aa02cfed1d7c04df545f104486a616ff2b9c0500e612189a6c451cff681` |
| 3 | `instance` | [smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smul--c79b016d6488af866651e82f.md) | 49 | `declaration-track:c79b016d6488af866651e82fdf6aca28264bc26c76a7aaae001b98fc4d23dfb9` |
| 4 | `instance` | [smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smul-nnreal--a1c035d71222fad0d7c217c3.md) | 53 | `declaration-track:a1c035d71222fad0d7c217c3a3de549c754ff3e94fa677a30fe29e5dac27bf74` |
| 5 | `theorem` | [measure_preimage_smul_le](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-preimage-smul-le--845aafb5209f2d52c1349581.md) | 65 | `result-track:845aafb5209f2d52c1349581ef7a5f2e0e7197c9ef4459827cc61d84727525a9` |
| 6 | `theorem` | [tendsto_smul_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/tendsto-smul-ae--97e3f1cbb8889f227b76bb0a.md) | 71 | `result-track:97e3f1cbb8889f227b76bb0acef7219cd43b40b1499c6a82cf24df2ae5861f8c` |
| 7 | `theorem` | [measure_preimage_smul_null](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-preimage-smul-null--c3fdb8ca1a59511c6a38dffb.md) | 77 | `result-track:c3fdb8ca1a59511c6a38dffb95896966df4d35fed20bff4fa53ffad521ecea7c` |
| 8 | `theorem` | [measure_preimage_smul_of_nullMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-preimage-smul-of-nullmeasurableset--c2fd2ef5297c60ec275c8531.md) | 81 | `result-track:c2fd2ef5297c60ec275c8531f956328b311d7adbc404b30b6f0ac98c6929eebc` |
| 9 | `theorem` | [measure_preimage_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-preimage-smul--1d4682b2703acbcace491d50.md) | 95 | `result-track:1d4682b2703acbcace491d50ee6823c58906204ce22e5debd867d53233b4002a` |
| 10 | `theorem` | [measure_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-smul--aae2bcbc4731f765616aee5a.md) | 100 | `result-track:aae2bcbc4731f765616aee5a0356bcba3b46618fb90bbd9edfe2cd57578e3249` |
| 11 | `theorem` | [measure_smul_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-smul-eq-zero-iff--8ead80647c7c8046e7cc3ae3.md) | 106 | `result-track:8ead80647c7c8046e7cc3ae3289a1752192acee37169fe14ad06aa41d44d283e` |
| 12 | `theorem` | [measure_smul_null](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-smul-null--2242ec6813deedd18c4ddb28.md) | 110 | `result-track:2242ec6813deedd18c4ddb282c1ab9e6680067ad4c589d8939ae347a8e2cfed8` |
| 13 | `theorem` | [smul_mem_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smul-mem-ae--784edde498b8404ca2cab2d1.md) | 114 | `result-track:784edde498b8404ca2cab2d17be808aea8690b7c6b0edc2d3d5ff98a6776c20e` |
| 14 | `theorem` | [smul_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smul-ae--5425866240ab5bbd2dcd78d4.md) | 118 | `result-track:5425866240ab5bbd2dcd78d41942a4713a3a1e35d1cb41e826a35b60aa405477` |
| 15 | `theorem` | [eventuallyConst_smul_set_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/eventuallyconst-smul-set-ae--87b14fc5e2cb9a27be26dca3.md) | 123 | `result-track:87b14fc5e2cb9a27be26dca3a2c9f5b60ba6ae058045ead67abed2f51b244445` |
| 16 | `theorem` | [smul_set_ae_le](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smul-set-ae-le--a7bb37fdc14be0aac5b05784.md) | 128 | `result-track:a7bb37fdc14be0aac5b05784d419b50f4332286a5de65a760f1b9c61f21a6475` |
| 17 | `theorem` | [smul_set_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smul-set-ae-eq--6d195340f0c8d8709605d537.md) | 132 | `result-track:6d195340f0c8d8709605d5370662e9d541a4b11ccd3c87903937eb4641b683d8` |
| 18 | `theorem` | [measurePreserving_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measurepreserving-smul--a656b902b95fe1f916a20bea.md) | 143 | `result-track:a656b902b95fe1f916a20bea593f60bba24ec26e88b4662e5565ce4ab1df3213` |
| 19 | `theorem` | [map_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/map-smul--f59a4551aa60ca2009afc61e.md) | 151 | `result-track:f59a4551aa60ca2009afc61e1826034ce292eb618ae7c128237d97ea15cbcd14` |
| 20 | `theorem` | [MeasurePreserving.smulInvariantMeasure_iterateMulAct](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measurepreserving-smulinvariantmeasure-iteratemulact--7fcbe3bc9f9081459dbd5464.md) | 157 | `result-track:7fcbe3bc9f9081459dbd546403c0b3aeaef724995e30000d35b40375fed562d0` |
| 21 | `theorem` | [smulInvariantMeasure_iterateMulAct](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smulinvariantmeasure-iteratemulact--8999fcdaafb3e1376671e904.md) | 163 | `result-track:8999fcdaafb3e1376671e9041752bca84d938ebbeacd9e74418fade43868447d` |
| 22 | `theorem` | [smulInvariantMeasure_map](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smulinvariantmeasure-map--fea211a98e0508cf174fa8ec.md) | 178 | `result-track:fea211a98e0508cf174fa8ec4a6915a52ed641f17490740792d034047d59af83` |
| 23 | `instance` | [smulInvariantMeasure_map_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smulinvariantmeasure-map-smul--af7c5566925cf3656e819a63.md) | 193 | `declaration-track:af7c5566925cf3656e819a633e716d664637d1a3c5b551efc6b6a2f5b0e0acda` |
| 24 | `theorem` | [smulInvariantMeasure_tfae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/smulinvariantmeasure-tfae--710c579b01d2892b0e308111.md) | 220 | `result-track:710c579b01d2892b0e308111ab1b28c77ffd4b9dca14efbd1c6b8e1faecd8529` |
| 25 | `theorem` | [NullMeasurableSet.smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/nullmeasurableset-smul--ecbbffd6bccde0d923e592d2.md) | 267 | `result-track:ecbbffd6bccde0d923e592d2e10f5e643387f9a5d519639fd11cc27749f8b906` |
| 26 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_compact_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-isopen-pos-of-smulinvariant-of-compact-ne-zero--d01ee1af8a839150f2c93792.md) | 282 | `result-track:d01ee1af8a839150f2c93792c2c1fd2880b4a087d3a519c7ff1088f99ee1b65a` |
| 27 | `theorem` | [isLocallyFiniteMeasure_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/islocallyfinitemeasure-of-smulinvariant--603fea3738abce5cd37ee1a1.md) | 298 | `result-track:603fea3738abce5cd37ee1a10e8eb6106d8b8f260939309a3df68262964bd1ac` |
| 28 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-isopen-pos-of-smulinvariant-of-ne-zero--040c5ac7069305ff5f7a6d61.md) | 308 | `result-track:040c5ac7069305ff5f7a6d619c2651cf10ff8f89325f6b3a7eef780759643773` |
| 29 | `theorem` | [measure_pos_iff_nonempty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-pos-iff-nonempty-of-smulinvariant--3db630efb4784caf3d941963.md) | 314 | `result-track:3db630efb4784caf3d9419635ff3683f4de35372d27ea7d3aab1961978b8b346` |
| 30 | `theorem` | [measure_eq_zero_iff_eq_empty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variantd9ea319b40d6a007ead33ac8a7e035a0b4d0d3859e56885c092b81bcc4d86f89.lean/declarations/measure-eq-zero-iff-eq-empty-of-smulinvariant--521774a50c4ab18501d4681a.md) | 320 | `result-track:521774a50c4ab18501d4681ad0009e330368600a61a6bada025979c44de83a6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
