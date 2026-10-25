# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subtype.Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5e17f3b5db02235d1c1dd774689e56bc5fca67b",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5e17f3b5db02235d1c1dd774689e56bc5fca67b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/prop--3d6defb72f25ec81bcd22ab2.md) | 46 | `result-track:3d6defb72f25ec81bcd22ab2d515e7a955b4e90f617132d63d040ab7b493a5a8` |
| 2 | `theorem` | [forall'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/forall--4f496092c901ffed132a2bac.md) | 51 | `result-track:4f496092c901ffed132a2baccf1c805a06cfcb27d16ec0e8e0154a6d092f6541` |
| 3 | `theorem` | [exists'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/exists--77bac554cc7ef2ea09a00163.md) | 56 | `result-track:77bac554cc7ef2ea09a00163798643074feff66436f1b05e3b5bc0068bc4c01d` |
| 4 | `theorem` | [heq_iff_coe_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/heq-iff-coe-eq--8479f7c70137cdfc4a9dffa6.md) | 59 | `result-track:8479f7c70137cdfc4a9dffa6f129c514c73c9b499c9bfe26175446867b4774c9` |
| 5 | `lemma` | [heq_iff_coe_heq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/heq-iff-coe-heq--f3e477fc9eb03e49476afef3.md) | 65 | `result-track:f3e477fc9eb03e49476afef3c6af4c918aef23e89463ab74ba4585ebdcb271b4` |
| 6 | `theorem` | [ext_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/ext-val--1709eeb9c5648f9725bfa62b.md) | 71 | `result-track:1709eeb9c5648f9725bfa62bfd188f644e4e84c0f34807c8d1d02f4908360caf` |
| 7 | `theorem` | [ext_iff_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/ext-iff-val--be4f48b49ace424bd03dbb98.md) | 74 | `result-track:be4f48b49ace424bd03dbb98c0606b3b2d431728d22521b268dfb4837943454d` |
| 8 | `theorem` | [coe_eta](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coe-eta--4fa0abdd70800bb9f19e0fa1.md) | 78 | `result-track:4fa0abdd70800bb9f19e0fa1a08ae8e1a030847454a91db0212bc0f9ceb95aa2` |
| 9 | `theorem` | [coe_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coe-mk--0df5ffd0ecb345f540493078.md) | 81 | `result-track:0df5ffd0ecb345f5404930783501f050965c5a706e68112928ac960c683486b1` |
| 10 | `theorem` | [mk_eq_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/mk-eq-mk--67c919effa879d938719a3be.md) | 85 | `result-track:67c919effa879d938719a3be52c00ce24390bd60b9f373630817810686eeeb2f` |
| 11 | `theorem` | [coe_eq_of_eq_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coe-eq-of-eq-mk--61983a3dd84b75548f4eb087.md) | 87 | `result-track:61983a3dd84b75548f4eb08723623878d983211fd479f370e4596474c178e131` |
| 12 | `theorem` | [coe_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coe-eq-iff--cfbc60eac6a61814ddf82fbd.md) | 90 | `result-track:cfbc60eac6a61814ddf82fbd5dc033e6132b5f473571e6fef64e065e220c3c1f` |
| 13 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coe-injective--71cbee31c0b3bfaace417a5f.md) | 93 | `result-track:71cbee31c0b3bfaace417a5fe4092f35937a2d91254e283517373329ee6e75b1` |
| 14 | `theorem` | [val_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/val-injective--7ff2b2cfdd25af5f0020f97d.md) | 95 | `result-track:7ff2b2cfdd25af5f0020f97da393ee8411a85738f9ec523eeaa136fc73afa56c` |
| 15 | `theorem` | [coe_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coe-inj--db2a6b65c8a920f78e20781c.md) | 98 | `result-track:db2a6b65c8a920f78e20781c5be3bcd66d8aabc9b52d6d2ca64d220b04658e55` |
| 16 | `theorem` | [val_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/val-inj--55c64105829f18bfb05cfd0b.md) | 101 | `result-track:55c64105829f18bfb05cfd0ba0fdbc08d980f514643127ec8bac9bee10c848b9` |
| 17 | `lemma` | [coe_ne_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coe-ne-coe--bc8dfe38549f4debcb9ddff7.md) | 104 | `result-track:bc8dfe38549f4debcb9ddff71be1ddcae691ce847ebd77d4d96c1a07e401a183` |
| 18 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Prop.Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.exists_eq_subtype_mk_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-prop-variant--e443d709b57ac6dfee62dd39.md) | 107 | `result-track:e443d709b57ac6dfee62dd39ab5a056db6ca305ee4c0bcfc22be98210185da3c` |
| 19 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Prop.Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.exists_subtype_mk_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-prop-variant--6904713c78c7b9acf3db53f1.md) | 112 | `result-track:6904713c78c7b9acf3db53f1ca19def58ae7556c62a8721662d2b399fc7ee09c` |
| 20 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Prop.Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.Function.extend_val_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-prop-variant--ff414f7c9c22c011211ee9a6.md) | 116 | `result-track:ff414f7c9c22c011211ee9a68f4e1e3c18c69feaf94909e5baf48c82ef186346` |
| 21 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Prop.Variant8e6dd0f57381c7f199de86583f2f8c434f06dde2228c983a063d1d211cecad5d.Function.extend_val_apply'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-prop-variant--864822a2ff73caa0162ae3b0.md) | 120 | `result-track:864822a2ff73caa0162ae3b095bc377d027b7acba13ff6e7f3af93e07549ccba` |
| 22 | `def` | [restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/restrict--e34162a5cabd48acfb8f4a01.md) | 127 | `declaration-track:e34162a5cabd48acfb8f4a01fa688523d08bb187633c0c3fdd8c3bd0996dc1bd` |
| 23 | `theorem` | [restrict_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/restrict-apply--d2cc5133f4606b001add26e2.md) | 130 | `result-track:d2cc5133f4606b001add26e257a0f7a250cdf4adc4fee9660231e908b0a8a8af` |
| 24 | `theorem` | [restrict_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/restrict-def--54cfc535cf6414ecf93febd8.md) | 134 | `result-track:54cfc535cf6414ecf93febd8b68a5880dbe71c7e8d663720605794ed86ca0df5` |
| 25 | `theorem` | [restrict_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/restrict-injective--f6d6b152eea1ce21c43ac983.md) | 137 | `result-track:f6d6b152eea1ce21c43ac983deeefe54938383d09e6e2eca0af781d3345f52bb` |
| 26 | `theorem` | [surjective_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/surjective-restrict--ac942473e9477e33b28bad2a.md) | 141 | `result-track:ac942473e9477e33b28bad2afc506105763898984eb4e241799cc09d36eeb3dd` |
| 27 | `def` | [coind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coind--d0c6ce132b697d03a65d0d55.md) | 150 | `declaration-track:d0c6ce132b697d03a65d0d55faf7a15db5193e30622a393c5310e11d9fff8b0a` |
| 28 | `theorem` | [coind_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coind-injective--c99ac605dc7e3c242532def7.md) | 152 | `result-track:c99ac605dc7e3c242532def7c05b9c68738161a84da8ebbb5619ef6a5fb0ae8e` |
| 29 | `theorem` | [coind_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coind-surjective--95ac6c108aa2510063399528.md) | 155 | `result-track:95ac6c108aa2510063399528edb64f0c492249a0753470d07e74726b1e715e3c` |
| 30 | `theorem` | [coind_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coind-bijective--29ce4c1eaa117eb1d8c7df09.md) | 160 | `result-track:29ce4c1eaa117eb1d8c7df09a121414d12fb087f2426f08d6272c64fce7e19a7` |
| 31 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/map--8fa5bedba3baa633cdce4dfd.md) | 166 | `declaration-track:8fa5bedba3baa633cdce4dfd7b21a93b750f1389d46bdbc058487aadf11e1cd8` |
| 32 | `theorem` | [map_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/map-def--b3977cb246dd4d064d893b6a.md) | 170 | `result-track:b3977cb246dd4d064d893b6aafb5c199a9504b6391ad8ecd4e7dc1638bb5178b` |
| 33 | `theorem` | [map_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/map-comp--68c153c30fe7fef7cec9e5d2.md) | 174 | `result-track:68c153c30fe7fef7cec9e5d25f9c0e52f702167d7324d703afbe410143121fce` |
| 34 | `theorem` | [map_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/map-id--6248a8956fc5cde3f0ad0f8c.md) | 179 | `result-track:6248a8956fc5cde3f0ad0f8c7bcb1a5b481164616941bc65b40443eafc6ad8eb` |
| 35 | `theorem` | [map_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/map-injective--8814179e109cad824dbc2db3.md) | 182 | `result-track:8814179e109cad824dbc2db32f770e3b68b91b7b7f702f9cefac05a43a433797` |
| 36 | `theorem` | [map_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/map-involutive--066959e420a9ee4cae5d466b.md) | 186 | `result-track:066959e420a9ee4cae5d466bd40b9144ec7b8755ee4aa4fb65b6ed1e1adb71ed` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/instance--292b838037e76f8e0ccd9229.md) | 190 | `declaration-track:292b838037e76f8e0ccd9229c337454bcf66221d3b133ffb37b03c306f5299c2` |
| 38 | `theorem` | [equiv_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/equiv-iff--3ae8ea5730293a8408378334.md) | 193 | `result-track:3ae8ea5730293a8408378334b29d904a28992cf7296d7ebd0f36f1b721ae40b3` |
| 39 | `theorem` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/refl--4af57096d47fbade324137af.md) | 198 | `result-track:4af57096d47fbade324137af9d90e7e19ad510c881e2d9b7cd423ff83cc10d02` |
| 40 | `theorem` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/symm--7016a3aa32a0aa0a411b1c2f.md) | 201 | `result-track:7016a3aa32a0aa0a411b1c2f68b39cced6369024ce27af3d8135f82e011d2d50` |
| 41 | `theorem` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/trans--09fa673238f2768563ec280a.md) | 204 | `result-track:09fa673238f2768563ec280a325dbb7f1018fdf8d6aa7c4c9d09f626ec99e91c` |
| 42 | `theorem` | [equivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/equivalence--79ef722caa6d66b131637d94.md) | 207 | `result-track:79ef722caa6d66b131637d94482841c76507db0cb3ea1b209b57c13e269de044` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/instance--70ef47ba844adde25e6e3fac.md) | 210 | `declaration-track:70ef47ba844adde25e6e3fac8d4511f4bf9f13bd36934b4438b0f382b4a21fd8` |
| 44 | `theorem` | [coe_prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/coe-prop--36239668a6bffcd9e1c9ea05.md) | 221 | `result-track:36239668a6bffcd9e1c9ea05ca8c1b4f2f2a2534d2136f26508802ddc55f2435` |
| 45 | `theorem` | [val_prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subtype/Variant4a58bfb3c4a729b728005f5a66c1f597d9b7b72f29496d51fccfd1230469c6d5.lean/declarations/val-prop--50c173c451fd786bff8539b0.md) | 224 | `result-track:50c173c451fd786bff8539b0a8beeb68dcc3c526733951438fd36f2e3724fa41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
