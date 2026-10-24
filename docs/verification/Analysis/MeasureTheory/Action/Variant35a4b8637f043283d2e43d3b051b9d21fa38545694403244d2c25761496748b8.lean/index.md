# Verification target: GRWTSK.Analysis.MeasureTheory.Action.Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5a858ee1a25db3ee7e18c80f2b70b7097f56f77",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5a858ee1a25db3ee7e18c80f2b70b7097f56f77`.

Source path: `GRWTSK/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.MeasurableEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Minimal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [VAddInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/vaddinvariantmeasure--1588b72c4d4e3bff828b0402.md) | 34 | `declaration-track:1588b72c4d4e3bff828b04021ff559fc6625e7ecda6ccc590dc8546cf6a6e1f3` |
| 2 | `class` | [SMulInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/smulinvariantmeasure--f586b73f90e33f1be1bd12cb.md) | 44 | `declaration-track:f586b73f90e33f1be1bd12cb23c040768095fddce404ac51008949fcadac2157` |
| 3 | `instance` | [zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/zero--1db4afb4966b4fbcc0081c09.md) | 53 | `declaration-track:1db4afb4966b4fbcc0081c09edec5cb297d07912abb6b908b99ebae7d56a0e7a` |
| 4 | `instance` | [add](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/add--bce43050952a4d300bfd8354.md) | 61 | `declaration-track:bce43050952a4d300bfd8354574062a9457943d1e9fa33a5823eb6ca48a9bc79` |
| 5 | `instance` | [smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/smul--71e0754280a8a5e6c7d7b7f1.md) | 70 | `declaration-track:71e0754280a8a5e6c7d7b7f19634972192dc0dec6c07c059e1da97dc0c4e492d` |
| 6 | `instance` | [smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/smul-nnreal--29eb355f38f34f28620fcd84.md) | 76 | `declaration-track:29eb355f38f34f28620fcd845445d409dc3b625b53ec0036090e047cc8e391a8` |
| 7 | `theorem` | [measurePreserving_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/measurepreserving-smul--7f875f6a94fb3898c17fbdb7.md) | 89 | `result-track:7f875f6a94fb3898c17fbdb74bb0a21650df873ae125d19ebb9e3d6c30f4f6a9` |
| 8 | `theorem` | [map_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/map-smul--68999cb4325dfeed3ebb8666.md) | 99 | `result-track:68999cb4325dfeed3ebb8666049fdb963a6a4ed45a053f1385e4661be39c392a` |
| 9 | `theorem` | [smulInvariantMeasure_tfae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/smulinvariantmeasure-tfae--9f27b84bc8d16b602bb86f3b.md) | 125 | `result-track:9f27b84bc8d16b602bb86f3bbe41a765067f673de4ea56cb58f15861e6c0c82b` |
| 10 | `theorem` | [measure_preimage_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/measure-preimage-smul--32303660d2d86a358e761eba.md) | 178 | `result-track:32303660d2d86a358e761eba29238b89d6d34eeef86912cdeba04ec9cb101cbe` |
| 11 | `theorem` | [measure_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/measure-smul--70d662777bd964fd8e8484cf.md) | 184 | `result-track:70d662777bd964fd8e8484cf8eaf19b505a5a037d7f9bbb7939a6aa986030974` |
| 12 | `theorem` | [NullMeasurableSet.smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/nullmeasurableset-smul--c308aaa515ab50113659231a.md) | 192 | `result-track:c308aaa515ab50113659231afeb18746a0b07e0a1e82c138c882b003ffcee71c` |
| 13 | `theorem` | [measure_smul_null](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/measure-smul-null--9ea81696629b2c0d7f99434d.md) | 200 | `result-track:9ea81696629b2c0d7f99434d9cb9b5eed145e431d1781b092a140bb5158f7dda` |
| 14 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_compact_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/measure-isopen-pos-of-smulinvariant-of-compact-ne-zero--bd2585abb1a7afcac4502cbd.md) | 212 | `result-track:bd2585abb1a7afcac4502cbd08583973d6654d766e82aee65ea2d9067871b424` |
| 15 | `theorem` | [isLocallyFiniteMeasure_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/islocallyfinitemeasure-of-smulinvariant--52bec1d9d86a1f57d9f57079.md) | 228 | `result-track:52bec1d9d86a1f57d9f570791c3de3d5eaefb4eaaeda2667b709f24f4d7cabae` |
| 16 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/measure-isopen-pos-of-smulinvariant-of-ne-zero--b5725517fc1087716f03c3a3.md) | 240 | `result-track:b5725517fc1087716f03c3a32948c7e6b1c937863b99bcbf609b6b1ede68f9ca` |
| 17 | `theorem` | [measure_pos_iff_nonempty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/measure-pos-iff-nonempty-of-smulinvariant--c22117c741e9eb1b40a48e5c.md) | 248 | `result-track:c22117c741e9eb1b40a48e5cc91f8f4ac9c0a35e269a36be34608401535d36c7` |
| 18 | `theorem` | [measure_eq_zero_iff_eq_empty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/measure-eq-zero-iff-eq-empty-of-smulinvariant--ce261f200584f0a67678a26a.md) | 256 | `result-track:ce261f200584f0a67678a26af9df0f9a24c96abfe11969a906c2aebb5691e0b8` |
| 19 | `theorem` | [smul_ae_eq_self_of_mem_zpowers](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/smul-ae-eq-self-of-mem-zpowers--029abae63247c46635a032b7.md) | 265 | `result-track:029abae63247c46635a032b78c9d82b4b84863022c0a11ce6b691bed43fc1b92` |
| 20 | `theorem` | [vadd_ae_eq_self_of_mem_zmultiples](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/vadd-ae-eq-self-of-mem-zmultiples--4fcd046a883f1169d447d5a8.md) | 277 | `result-track:4fcd046a883f1169d447d5a810267a343f32105929d57dc9624faa418b0fdc30` |
| 21 | `theorem` | [inv_smul_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant35a4b8637f043283d2e43d3b051b9d21fa38545694403244d2c25761496748b8.lean/declarations/inv-smul-ae-eq-self--98db3e528470ed2228b8d4de.md) | 296 | `result-track:98db3e528470ed2228b8d4de978bb3bae121f8fc8dd51b0e19baaf3a9d793658` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
