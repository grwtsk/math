# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f91e53e384f725fc9cbfcaac28230c900d4f34ba",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f91e53e384f725fc9cbfcaac28230c900d4f34ba`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddConstMap](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/addconstmap--9c6f4272d5e805efbb7215a2.md) | 42 | `declaration-track:9c6f4272d5e805efbb7215a2f5d9d8a23073479265fee50f7bb57e363118b844` |
| 2 | `class` | [AddConstMapClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/addconstmapclass--4af24959588c3c764520cc59.md) | 57 | `declaration-track:4af24959588c3c764520cc59c659d0fa07fa54608e7b8b1e03d48ddddcfa30dd` |
| 3 | `theorem` | [semiconj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/semiconj--39b3d11ba049107797166bb1.md) | 75 | `result-track:39b3d11ba049107797166bb10e1baf1dc12a25dfa1c950042a1ed6fd3581daa5` |
| 4 | `theorem` | [map_add_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-add-nsmul--e80326c826e5eb5f02d74de2.md) | 80 | `result-track:e80326c826e5eb5f02d74de28ab08b809af9b9b49809ae2e7e7f9c96c75d7fb7` |
| 5 | `theorem` | [map_add_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-add-nat--64bd856a037cb9f2b93aa70e.md) | 85 | `result-track:64bd856a037cb9f2b93aa70e37ff18b5ee92e9f7f1ea1991482bc739a99d1e44` |
| 6 | `theorem` | [map_add_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-add-one--1fe1ecc75ccb8c636d8a3bc7.md) | 88 | `result-track:1fe1ecc75ccb8c636d8a3bc7061671812f2fa0a885b84dceb9fd68db639deaaa` |
| 7 | `theorem` | [map_add_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-add-ofnat--a839e7603b7e322f808d8d60.md) | 92 | `result-track:a839e7603b7e322f808d8d60662f771957e38c0d98f5dadd98c3f7af1ae3fed0` |
| 8 | `theorem` | [map_add_nat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-add-nat--1091042795d333e1db39b69a.md) | 97 | `result-track:1091042795d333e1db39b69a0f5370ef27eeb2ee5b9d25c5416390f83399296f` |
| 9 | `theorem` | [map_add_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-add-ofnat--3853b84513ca0dce691f6072.md) | 100 | `result-track:3853b84513ca0dce691f6072ffc2a9a13600429e2649ff935cfd24dd2f3043e9` |
| 10 | `theorem` | [map_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-const--1b578e4dee2bf1a1cd6dbefa.md) | 105 | `result-track:1b578e4dee2bf1a1cd6dbefadb383ec168e51b02883eb942a0aa2d1143e87d96` |
| 11 | `theorem` | [map_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-one--7820ba6b59b8c7efd0d664c5.md) | 109 | `result-track:7820ba6b59b8c7efd0d664c55ee8a98f171001ea8a26c94a45aaa6c19fdf8a84` |
| 12 | `theorem` | [map_nsmul_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-nsmul-const--f8e7ca7b5a2960d4e631d167.md) | 114 | `result-track:f8e7ca7b5a2960d4e631d16725a1de077a75b63777a2b8603682acf1a0262c3f` |
| 13 | `theorem` | [map_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-nat--9f5a828fd512d1387305d60b.md) | 119 | `result-track:9f5a828fd512d1387305d60b71976c52be6e29aa594b95f5fb84b0ba681fc5b7` |
| 14 | `theorem` | [map_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-ofnat--6b5b0c49d3861c9b43d50bde.md) | 123 | `result-track:6b5b0c49d3861c9b43d50bde77584a8c12e1498a64d4b2bf6ff562f1517fe86f` |
| 15 | `theorem` | [map_nat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-nat--38e38f7a3136c32a97591308.md) | 128 | `result-track:38e38f7a3136c32a975913080bdcc26ea568fdd4ae37e9d1310f3dc8be091f74` |
| 16 | `theorem` | [map_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-ofnat--d606d947c156e528e4c22f19.md) | 131 | `result-track:d606d947c156e528e4c22f190511b56d658b884294b4a7306b73ef63a19cd6b6` |
| 17 | `theorem` | [map_const_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-const-add--93fcdf4b60dab99cb8e2e2b0.md) | 136 | `result-track:93fcdf4b60dab99cb8e2e2b0947b87875b9929ae02a5339ef0b1d2274be49ef4` |
| 18 | `theorem` | [map_one_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-one-add--6c9c0faab07977d64db1ad33.md) | 140 | `result-track:6c9c0faab07977d64db1ad33b2ae49b57a3a901d3504b0aa4c97ddee48d660ee` |
| 19 | `theorem` | [map_nsmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-nsmul-add--eeb5f5ec17f111ca3716774f.md) | 144 | `result-track:eeb5f5ec17f111ca3716774fc6a5fc7c2cb340874662055794ce01fc3b17c24d` |
| 20 | `theorem` | [map_nat_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-nat-add--1ac940b58ab289a9697e5b60.md) | 149 | `result-track:1ac940b58ab289a9697e5b60cc58a7b95469a19b4ef19cf8b1599de0e65abb2c` |
| 21 | `theorem` | [map_ofNat_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-ofnat-add--06c26ee882f6dc443bba9a03.md) | 153 | `result-track:06c26ee882f6dc443bba9a0308637236a146667838fc2d1acc4c476e777af8a8` |
| 22 | `theorem` | [map_nat_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-nat-add--a0997c7ebad99635ace529ea.md) | 158 | `result-track:a0997c7ebad99635ace529eaac016e0f49082753f524cadb5172fa13a30bc4df` |
| 23 | `theorem` | [map_ofNat_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-ofnat-add--2f179d51dacddafb90076701.md) | 161 | `result-track:2f179d51dacddafb9007670179f5e7748eb3f3a2fbf07fd6c2d76477e33c51e8` |
| 24 | `theorem` | [map_sub_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-sub-nsmul--5809e6c25cc872df4cd9ee9d.md) | 167 | `result-track:5809e6c25cc872df4cd9ee9d8e7bda1c3250bb3509b0a609c719ae45e335caec` |
| 25 | `theorem` | [map_sub_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-sub-const--4ae98f613cdd7c945d509061.md) | 172 | `result-track:4ae98f613cdd7c945d509061065e99150889b1265ea2434a3414a80c2666b0e6` |
| 26 | `theorem` | [map_sub_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-sub-one--ab8bfa62ad0f40e5b09f337f.md) | 176 | `result-track:ab8bfa62ad0f40e5b09f337fa7ab0ad8177917bce8b72b73949b6cec258bc986` |
| 27 | `theorem` | [map_sub_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-sub-nat--8838fcb4a383373b7e942fa2.md) | 181 | `result-track:8838fcb4a383373b7e942fa2973454bb9fa01dadc3ac92c31df41e4b3aaca15d` |
| 28 | `theorem` | [map_sub_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-sub-ofnat--2840a863ce87329c8173abf8.md) | 186 | `result-track:2840a863ce87329c8173abf80f3f5bd53f5445e602e6d3bb74493cfd941759ce` |
| 29 | `theorem` | [map_add_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-add-zsmul--e1ea42ab49726235524f11d5.md) | 192 | `result-track:e1ea42ab49726235524f11d5ab66a77f60f0e6d153c3c76803b06602ad01970c` |
| 30 | `theorem` | [map_zsmul_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-zsmul-const--e28fd39e7e5f4695f4bb0d1d.md) | 198 | `result-track:e28fd39e7e5f4695f4bb0d1dbdc575c8487c18383af8014f9a9b68f65863cee6` |
| 31 | `theorem` | [map_add_int'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-add-int--d76ffe477c293222ea5d895b.md) | 203 | `result-track:d76ffe477c293222ea5d895b0b904491cf3ffa665faafb4dbdc8202555dc5371` |
| 32 | `theorem` | [map_add_int](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-add-int--ee136e824dbe600ab8c1c58c.md) | 207 | `result-track:ee136e824dbe600ab8c1c58c486a41689c78f5258c99fe9e912aeaf6696c152f` |
| 33 | `theorem` | [map_sub_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-sub-zsmul--05fe883b0d64b0d129db96c5.md) | 211 | `result-track:05fe883b0d64b0d129db96c5d38bd2e254a50330a031d81a723bb9b4d20a5d3e` |
| 34 | `theorem` | [map_sub_int'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-sub-int--5a180a2eb7051ef1087a7be2.md) | 216 | `result-track:5a180a2eb7051ef1087a7be206ec87b78bf20a107e51ceabc21c7391e8f7ccbd` |
| 35 | `theorem` | [map_sub_int](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-sub-int--d87f187ff0c4c6edb035a6b2.md) | 220 | `result-track:d87f187ff0c4c6edb035a6b2178769e199fc79477711d5cb438ee36340390430` |
| 36 | `theorem` | [map_zsmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-zsmul-add--7edb70601d2aca2e5186eb26.md) | 224 | `result-track:7edb70601d2aca2e5186eb26bdba51e3309e003d351fa4debe3505d0c522519f` |
| 37 | `theorem` | [map_int_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-int-add--45d134846138e2912ec5119f.md) | 229 | `result-track:45d134846138e2912ec5119f77d19c403637a32986f1e540927e57f3d409c40e` |
| 38 | `theorem` | [map_int_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-int-add--c317f787999b282ddecaf246.md) | 233 | `result-track:c317f787999b282ddecaf246b33ecfab5e7be921e2f8284adc6b28237809f5cc` |
| 39 | `theorem` | [map_fract](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/map-fract--456f048def7f997182114cb9.md) | 236 | `result-track:456f048def7f997182114cb9e03c7583f1b23995d26c3875eccb109fcd6636cb` |
| 40 | `theorem` | [rel_map_of_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/rel-map-of-icc--52acc4969f83a49ad847b0e2.md) | 244 | `result-track:52acc4969f83a49ad847b0e2a67326735f0b947c52a87262dcbc97d547cdc690` |
| 41 | `theorem` | [monotone_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/monotone-iff-icc--05a06b02d80688e07ce896d4.md) | 285 | `result-track:05a06b02d80688e07ce896d49e8105a3a380269a60ceac38de0c5d0a5d2bdf8f` |
| 42 | `theorem` | [antitone_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/antitone-iff-icc--ef464c522578ec9d019cb61b.md) | 292 | `result-track:ef464c522578ec9d019cb61b38dc9c49bde93708aa0eaeb22fe28dc45176e18a` |
| 43 | `theorem` | [strictMono_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/strictmono-iff-icc--fedd07ace40b1a27b400095f.md) | 298 | `result-track:fedd07ace40b1a27b400095ff426db6b5e85e9a451838b8d093310fe9e8c66e1` |
| 44 | `theorem` | [strictAnti_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/strictanti-iff-icc--a5290ac0c65e13510134d1a5.md) | 304 | `result-track:a5290ac0c65e13510134d1a5d1a0cb1aea3921f8d1091be37d3ec7bf63b2022a` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/instance--856304a75c3a68737560d167.md) | 325 | `declaration-track:856304a75c3a68737560d167c1c28f4252162a10aa92ef73d11bda10305dfd30` |
| 46 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/coe-mk--db1392db5ae0390f6b258af5.md) | 329 | `result-track:db1392db5ae0390f6b258af564acea1cdb43189d69ca576e03ce3e786086c588` |
| 47 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/mk-coe--dfad6284ce83107d849b3ce9.md) | 330 | `result-track:dfad6284ce83107d849b3ce94e8d44eaf4992b6702b6a921b20723029044bee4` |
| 48 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/tofun-eq-coe--76e1e277922d803704e65b98.md) | 331 | `result-track:76e1e277922d803704e65b984f22faf79874c2aa4a8addacdfc65226dfbd1d39` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/instance--125371efa53761c2631d0e39.md) | 333 | `declaration-track:125371efa53761c2631d0e3919385c92ad5a4a4a99c53127b63839682c7dbaa4` |
| 50 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/ext--aee58c2289eeb38242268cc1.md) | 336 | `result-track:aee58c2289eeb38242268cc17a489e4460616476bb35d6f42803cd627fb4a565` |
| 51 | `def` | [id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/id--d1a077695457a211c80e27fa.md) | 347 | `declaration-track:d1a077695457a211c80e27fae40c52bfe718d7cb6387156e76cbd494e1c2e1a0` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/instance--d89d8bf5fd12871dcfd0f6c7.md) | 349 | `declaration-track:d89d8bf5fd12871dcfd0f6c70ba575b5134b70b1642dd92ca1377113ab228b2d` |
| 53 | `def` | [comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/comp--817c84995491c4661f062330.md) | 353 | `declaration-track:817c84995491c4661f0623303fa01c95f459ad7aea425444554a98ce70545123` |
| 54 | `theorem` | [comp_id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/comp-id--fc71887440450830744d7d51.md) | 357 | `result-track:fc71887440450830744d7d5150e0501245740dc7e5495cef936a0e9ea5c5eae3` |
| 55 | `theorem` | [id_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/id-comp--78e0f4d809617afb2ffedbd2.md) | 358 | `result-track:78e0f4d809617afb2ffedbd271bc3906bf515caff5f1ed264e1fb2c160ce7cd7` |
| 56 | `def` | [replaceConsts](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/replaceconsts--527cc4ea21ee249d6d3adcad.md) | 362 | `declaration-track:527cc4ea21ee249d6d3adcade65f17bedc470f98bf7c9e20ea012b38b422082d` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/instance--68c8c1e7f21f6a9c10a52847.md) | 372 | `declaration-track:68c8c1e7f21f6a9c10a5284789328060b4c9000ea401d4ebfd172a6e46ced2fa` |
| 58 | `theorem` | [coe_vadd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/coe-vadd--9d95e41829c31394bcba8394.md) | 376 | `result-track:9d95e41829c31394bcba839491501a3fa4fdc66f0b19cf45fe65a6fce0d6a23b` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/instance--f5c3a8f464194e280baa3dd0.md) | 380 | `declaration-track:f5c3a8f464194e280baa3dd0b13a275e9d1eb81a714f116fe44df0fcc5b60181` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/instance--8bf51e5cd6009686946ff70f.md) | 388 | `declaration-track:8bf51e5cd6009686946ff70f168a9077bc1efc072d07d82d93e08880d3116c25` |
| 61 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/instance--49e56a356bf1157ec79ee123.md) | 389 | `declaration-track:49e56a356bf1157ec79ee1237aa70d308431153791796aa5856a286194ccec61` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/instance--6a17f802aa451cf4bfa96c5d.md) | 391 | `declaration-track:6a17f802aa451cf4bfa96c5d62937e8a05c059a244c515894bb94b009b774ca8` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/instance--46d91aa340565316b73280e5.md) | 394 | `declaration-track:46d91aa340565316b73280e57953ed5da8adb7a34132ebc067552d631e70979a` |
| 64 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/mul-def--3f957f8adb859cd0f3875997.md) | 397 | `result-track:3f957f8adb859cd0f3875997ed7705292a3d83cf18d89252f8b3309a1f91b89d` |
| 65 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/coe-mul--a546f917e6dc050c1208af58.md) | 398 | `result-track:a546f917e6dc050c1208af5812aaa77f5582b8b73ac0c827c6046e9d41ec3836` |
| 66 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/one-def--7ac1a27fd6d4fc1f6d7f81db.md) | 400 | `result-track:7ac1a27fd6d4fc1f6d7f81dbde9913ccf64032fcde8619cd7e1c01f0a91ccb26` |
| 67 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/coe-one--e4afe4e1cecad4e2f9292963.md) | 401 | `result-track:e4afe4e1cecad4e2f9292963bc52223174c7eb06d5db45f51a64d9543fc7610e` |
| 68 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/coe-pow--0d799ed042893e214d7c0cf3.md) | 403 | `result-track:0d799ed042893e214d7c0cf38f64f73888184e5b92ca4c340d80c967518f1fe5` |
| 69 | `theorem` | [pow_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/pow-apply--e52ef4f143e9a4a729fd9496.md) | 405 | `result-track:e52ef4f143e9a4a729fd9496b74d4c686ecb4b8decc2e62cfdb4affebe7cb5c1` |
| 70 | `def` | [toEnd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/toend--d7f2ce2ca8cc92ebb8eb2c99.md) | 409 | `declaration-track:d7f2ce2ca8cc92ebb8eb2c990aa038600b131aeeed3844e7e21f7d9c8f43a256` |
| 71 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/smul--792b041a1238bb8dbe739aea.md) | 432 | `declaration-track:792b041a1238bb8dbe739aea221380059f59aa074f78f8bfdcaf3697b021f9d0` |
| 72 | `def` | [addLeftHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/addlefthom--aeef1f82e74c82dd56119ea9.md) | 445 | `declaration-track:aeef1f82e74c82dd56119ea96366f651eb9bed3dcaafe2e59d2b15ed32a35242` |
| 73 | `def` | [conjNeg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/conjneg--6fc9f4e00999a4b953e310e6.md) | 458 | `declaration-track:6fc9f4e00999a4b953e310e617ce1f1198b01546cdb9cf56bf36efb46f7e6707` |
| 74 | `theorem` | [conjNeg_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/conjneg-symm--b0ebe92bc58da613f159b190.md) | 462 | `result-track:b0ebe92bc58da613f159b19000c1349abb2dfbb09b564aab3de39dca7c2802e0` |
| 75 | `def` | [mkFract](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant252add1bba7ec8949b68eb742f97f89ae50086b67d6a86c49019bcd87264b96c.lean/declarations/mkfract--0fd8dfdaaf83ecd23b4af59c.md) | 472 | `declaration-track:0fd8dfdaaf83ecd23b4af59ca468aede77d49f786b90630bd5d839202c38ae8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
