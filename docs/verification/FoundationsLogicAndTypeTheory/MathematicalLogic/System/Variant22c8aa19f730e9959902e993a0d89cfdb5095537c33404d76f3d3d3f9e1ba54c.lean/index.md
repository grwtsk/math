# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.System.Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75cb8e640e0c4dcd17cc11fc5d3d28b0e451e573",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75cb8e640e0c4dcd17cc11fc5d3d28b0e451e573`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Quot` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [System](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/system--79fd8e96dab494f6aa37ef6a.md) | 23 | `declaration-track:79fd8e96dab494f6aa37ef6a52a20c25c3a18532285f22535964b1f2f26344a0` |
| 2 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/run--39ff7c72b98f8d4d6ace60db.md) | 38 | `declaration-track:39ff7c72b98f8d4d6ace60db9f6feaa431cd1fa323124224c928197e3bc9a8d8` |
| 3 | `theorem` | [run_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/run-nil--5b0d6c64e7d8c6015932eeb2.md) | 43 | `result-track:5b0d6c64e7d8c6015932eeb24cebdbb5b3aabb5b768dbf2aca277fb460f3a5f7` |
| 4 | `theorem` | [run_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/run-cons--f060818aec0835c0538afed4.md) | 47 | `result-track:f060818aec0835c0538afed477cc9e6df143ee7805d1fbc1f4dd7e4cdcee30db` |
| 5 | `theorem` | [run_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/run-append--2784c66495882b3c7ca6f7ca.md) | 55 | `result-track:2784c66495882b3c7ca6f7cab7a961a1c1976f487a07424c7a49d1960e688078` |
| 6 | `theorem` | [run_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/run-singleton--05e12e22aba2e1b1ed1c4f7b.md) | 67 | `result-track:05e12e22aba2e1b1ed1c4f7bc621bcaf1f09758ef19ce4ef4ab0e0664ff63a12` |
| 7 | `structure` | [Hom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/hom--8db1e92a9632731b046b3d61.md) | 80 | `declaration-track:8db1e92a9632731b046b3d6173142c0e25708ea4aba6b337e401c978513e54c5` |
| 8 | `def` | [id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/id--8812aa39d024a369e5c38d3b.md) | 99 | `declaration-track:8812aa39d024a369e5c38d3bc175346384cec974ff405867687b544ecc900923` |
| 9 | `def` | [comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/comp--9821ae3212f934c42720945c.md) | 108 | `declaration-track:9821ae3212f934c42720945c43b63bd0d98b775200ed62b4fe5300fbadde4e56` |
| 10 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/ext--a4615987f0d46f4fd0a40e7d.md) | 124 | `result-track:a4615987f0d46f4fd0a40e7d324158e93b92c853eab2938ed317517229ff2ebf` |
| 11 | `theorem` | [id_mapInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/id-mapinput--c6cbc5fa8a567e7e047981c6.md) | 136 | `result-track:c6cbc5fa8a567e7e047981c64d16aa99a88e89454df91af95541780fc50211f0` |
| 12 | `theorem` | [id_mapState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/id-mapstate--6f831dfdaadb87e266dd4081.md) | 140 | `result-track:6f831dfdaadb87e266dd408182e812cff39eb2b467ed1dff656b79ec80e3e4f9` |
| 13 | `theorem` | [id_pullResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/id-pullresolution--8a4d38531e30d86089c17ceb.md) | 144 | `result-track:8a4d38531e30d86089c17cebf5bc7c72ad2afe52a9e92627442e387e6901669c` |
| 14 | `theorem` | [comp_mapInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/comp-mapinput--b6dd8a2c2778ea2cbbcdc653.md) | 149 | `result-track:b6dd8a2c2778ea2cbbcdc6535f7fb55508118daf7d932c36da9e388aea998aa6` |
| 15 | `theorem` | [comp_mapState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/comp-mapstate--700ff8f47bb645a41d3973ac.md) | 154 | `result-track:700ff8f47bb645a41d3973ac8528239e0cbb4fca7f86c71e324ac99f696f56ef` |
| 16 | `theorem` | [comp_pullResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/comp-pullresolution--f0e1c838aa5f9b4ef3fef063.md) | 159 | `result-track:f0e1c838aa5f9b4ef3fef063290eaf3acddd740fbd39f181048d49734291bd42` |
| 17 | `theorem` | [map_run](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/map-run--84a348db8e26db1058e7c206.md) | 164 | `result-track:84a348db8e26db1058e7c206c5dc7489ffee76bd37a463113c99cdbe05307037` |
| 18 | `theorem` | [id_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/id-comp--03157580306b7c46294f31cc.md) | 177 | `result-track:03157580306b7c46294f31ccb9562464eab86997cff9fdb5b826f14aa3a4018f` |
| 19 | `theorem` | [comp_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/comp-id--4d2f60f8a085060951d8c88b.md) | 185 | `result-track:4d2f60f8a085060951d8c88b98010731ad094d6c2584eaff670d318d389d3e58` |
| 20 | `theorem` | [comp_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/comp-assoc--8d1d73c8d33b5301a9256b48.md) | 192 | `result-track:8d1d73c8d33b5301a9256b48b459687d9f2a0ecd77ffa2e25c9ad7a71529f6ef` |
| 21 | `structure` | [Factor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/factor--c4afedfe335b47e09193a026.md) | 208 | `declaration-track:c4afedfe335b47e09193a02624fc62de0a34f1136ab175f4ae8d8c4d757d9b45` |
| 22 | `theorem` | [toHom_mapInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/tohom-mapinput--ef3e7bcebc532110d7244d02.md) | 214 | `result-track:ef3e7bcebc532110d7244d0260e0cf91b83b4e4c557b6abb0315d35862f203a5` |
| 23 | `theorem` | [toHom_mapState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/tohom-mapstate--94e35f75caee3311f799de29.md) | 219 | `result-track:94e35f75caee3311f799de29415ab30ddbb894e4c2ea0729dc5c929f4b4dd464` |
| 24 | `structure` | [StateFactor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/statefactor--fe53da9fb2845b5cc6449404.md) | 232 | `declaration-track:fe53da9fb2845b5cc6449404460c4597340cb4510198eb5386845144784b90de` |
| 25 | `theorem` | [state_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/state-surjective--9ad482a2ab293b77e39e4f58.md) | 243 | `result-track:9ad482a2ab293b77e39e4f5838fa2961a8f277b2938b3fa36d466c7d0c878867` |
| 26 | `structure` | [Iso](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/iso--9c889a69d4b542f3c774b3ed.md) | 259 | `declaration-track:9c889a69d4b542f3c774b3ed8ad792a2ec8528923a87fa1ec170359e65a5a548` |
| 27 | `def` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/refl--6622cb9820cdffe7e631aba5.md) | 268 | `declaration-track:6622cb9820cdffe7e631aba518a25a7d70ce83fdec4d870edb61f2ce9693d158` |
| 28 | `def` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/symm--1856807faa3a2dca64a1f95b.md) | 275 | `declaration-track:1856807faa3a2dca64a1f95b70876336eeccba30fa0d244aeebd90163e51e87d` |
| 29 | `def` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/trans--0b3c3f7a76078da3fba96199.md) | 282 | `declaration-track:0b3c3f7a76078da3fba96199696d8a3feb5471d59aa63fc40bf02bf7879f9ba4` |
| 30 | `theorem` | [hom_inv_state](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/hom-inv-state--03f9fd0f7089f1f513d66e73.md) | 295 | `result-track:03f9fd0f7089f1f513d66e7366a8799c113dc83eae24b45e02fd80c7270fa4f8` |
| 31 | `theorem` | [inv_hom_state](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/inv-hom-state--90d842bdd6c1457b52401567.md) | 302 | `result-track:90d842bdd6c1457b524015676fc78fb5eaba0c1f9365008f61ab3c8e40803cf6` |
| 32 | `theorem` | [hom_inv_input](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/hom-inv-input--c35e106c6462fd0fd8abf517.md) | 308 | `result-track:c35e106c6462fd0fd8abf517ff5a7b0ba170a61c769a1f83cc76180e75ef3a8a` |
| 33 | `theorem` | [inv_hom_input](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/inv-hom-input--68aae22f47e0e6f12add2de8.md) | 314 | `result-track:68aae22f47e0e6f12add2de8c92c82cf3827d7751eac96077b1d8032a8bd3131` |
| 34 | `theorem` | [hom_inv_resolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/hom-inv-resolution--3d4281f56a86cb828035d40e.md) | 321 | `result-track:3d4281f56a86cb828035d40ed5d7f68d602cbe5aca0ba3b95b98217dcdc2399e` |
| 35 | `theorem` | [inv_hom_resolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/inv-hom-resolution--e30a3516d790106f6fc7882e.md) | 328 | `result-track:e30a3516d790106f6fc7882ee05c702c76f20e04a53c3aba1ef5085b0b23e1c5` |
| 36 | `theorem` | [hom_state_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/hom-state-bijective--b694f9fe9b60c73d0ec47331.md) | 334 | `result-track:b694f9fe9b60c73d0ec473313326c458a2f2af053cae922490e7f400221a0ad1` |
| 37 | `theorem` | [hom_input_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean/declarations/hom-input-bijective--4537e276105b0e9d66e29150.md) | 338 | `result-track:4537e276105b0e9d66e2915034b1de17790dbfc60326ae525f7a55a39327d0ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
