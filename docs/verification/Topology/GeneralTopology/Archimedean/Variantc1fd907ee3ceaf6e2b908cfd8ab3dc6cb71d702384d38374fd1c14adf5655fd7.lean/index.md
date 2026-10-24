# Verification target: GRWTSK.Topology.GeneralTopology.Archimedean.Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a96bc3ccad91f8eec4add530818835d75c33933c",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a96bc3ccad91f8eec4add530818835d75c33933c`.

Source path: `GRWTSK/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/nat-comap-cast-attop--24aaf23b31464430f1431812.md) | 39 | `result-track:24aaf23b31464430f14318127cecac5e85f613b6a4e1125f20f23a34e15b3f11` |
| 2 | `theorem` | [tendsto_natCast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-natcast-attop-iff--81ce735f622eb915bf221875.md) | 43 | `result-track:81ce735f622eb915bf221875b736476faff411c3e92c0d69bd217417b14bf8de` |
| 3 | `theorem` | [PNat.tendsto_comp_val_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/pnat-tendsto-comp-val-iff--ff6edd17be3bcda2d4a0c738.md) | 48 | `result-track:ff6edd17be3bcda2d4a0c7384312dffb63337e74d73a207de317d9be85039bcf` |
| 4 | `theorem` | [tendsto_natCast_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-natcast-attop-attop--c3a05c5bcf11b7df68193f49.md) | 52 | `result-track:c3a05c5bcf11b7df68193f4902117c79827edab024ef436bc5dd9c92615d1237` |
| 5 | `lemma` | [tendsto_PNat_val_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-pnat-val-attop-attop--63a945c5e9996eb2368bb626.md) | 57 | `result-track:63a945c5e9996eb2368bb626abb12f4594dbe9c7e2443098cece5122ee6d53dc` |
| 6 | `theorem` | [Filter.Eventually.natCast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/filter-eventually-natcast-attop--a2a0d7068d920cd5b7ad7fcb.md) | 60 | `result-track:a2a0d7068d920cd5b7ad7fcb61612109a39bde36b614ef015ba0911267373722` |
| 7 | `theorem` | [Int.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/int-comap-cast-attop--fc4f21c8a99465dd8fd2e351.md) | 65 | `result-track:fc4f21c8a99465dd8fd2e351195ba5c730b41d446d69990a9a70f6f7062b8ba4` |
| 8 | `theorem` | [Int.comap_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/int-comap-cast-atbot--1de0cebed80fd8cee9012437.md) | 72 | `result-track:1de0cebed80fd8cee9012437ba701f1690fc70a26ea5d014b2eafa8f637dbdec` |
| 9 | `theorem` | [tendsto_intCast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-intcast-attop-iff--e3969021ee11c6f7e9376283.md) | 78 | `result-track:e3969021ee11c6f7e937628386615f44d38b7a1cbb252e42fdd5483f55022cd5` |
| 10 | `theorem` | [tendsto_intCast_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-intcast-atbot-iff--f70dfdd690c122191e98785b.md) | 83 | `result-track:f70dfdd690c122191e98785b9fddb8d0d8a79bf951f19ac9cb3b05b7a416ca3f` |
| 11 | `theorem` | [tendsto_intCast_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-intcast-attop-attop--b96be50e0f4b97287222e169.md) | 88 | `result-track:b96be50e0f4b97287222e169a6a60cb4ba17c8266ef43d42dae3fd59cff26bb7` |
| 12 | `theorem` | [Filter.Eventually.intCast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/filter-eventually-intcast-attop--e4eb4b71015bd5223c711cc4.md) | 93 | `result-track:e4eb4b71015bd5223c711cc49d94a864b02a0cf8a774bb090e93cf4f5894d622` |
| 13 | `theorem` | [Filter.Eventually.intCast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/filter-eventually-intcast-atbot--d28bb84afcda90107c4cd889.md) | 98 | `result-track:d28bb84afcda90107c4cd889c8db719bce2678d5a0ed0651c8244961644dcd6b` |
| 14 | `theorem` | [Rat.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/rat-comap-cast-attop--6dd9d011ffdf9a680636c9f5.md) | 104 | `result-track:6dd9d011ffdf9a680636c9f5f21fa9bc9f66ea1482b34193af8316759f345cbd` |
| 15 | `theorem` | [Rat.comap_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/rat-comap-cast-atbot--917ae5ec6f18f0e2f7d95196.md) | 109 | `result-track:917ae5ec6f18f0e2f7d9519687452ad06e0cdbcc587a4fff2c3e3d9d3638464d` |
| 16 | `theorem` | [tendsto_ratCast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-ratcast-attop-iff--3b8a86ff44139ed135c1751a.md) | 116 | `result-track:3b8a86ff44139ed135c1751a547603d2ad8834feb814ebcab522058f7f0487c4` |
| 17 | `theorem` | [tendsto_ratCast_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-ratcast-atbot-iff--204c515a8607dfae53ea86cf.md) | 121 | `result-track:204c515a8607dfae53ea86cffb72a4fee9a431ecc428b4796c97b02c08128b6c` |
| 18 | `theorem` | [Filter.Eventually.ratCast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/filter-eventually-ratcast-attop--879ab5c779c2b2c4cfbeb48e.md) | 126 | `result-track:879ab5c779c2b2c4cfbeb48e29e5f6b2e5ab7da7cefdea2d4a4357d7699d0ea5` |
| 19 | `theorem` | [Filter.Eventually.ratCast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/filter-eventually-ratcast-atbot--7f649f45e9e51a48075d58ab.md) | 131 | `result-track:7f649f45e9e51a48075d58abbb5ca090f7c2cb024d18e4baebe7614dd1e15911` |
| 20 | `theorem` | [atTop_hasAntitoneBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/attop-hasantitonebasis-of-archimedean--e8faf7ed10eb2ccff5aaef3b.md) | 136 | `result-track:e8faf7ed10eb2ccff5aaef3b688518db5cfd476157cba85845e8b565a59c29f1` |
| 21 | `theorem` | [atTop_hasCountableBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/attop-hascountablebasis-of-archimedean--f3ffd0898d0a8a42f49c7f07.md) | 141 | `result-track:f3ffd0898d0a8a42f49c7f075bc18312ced6cea75325893ce08dc02f2a6182ac` |
| 22 | `theorem` | [atBot_hasCountableBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/atbot-hascountablebasis-of-archimedean--5c8b943563cf208f303024c0.md) | 146 | `result-track:5c8b943563cf208f303024c0b7a84b2417e357c847b871990eb33f68122ecc30` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/instance--735c3bb94a8328fe58f8eb23.md) | 155 | `declaration-track:735c3bb94a8328fe58f8eb23ba02a1384eff48b20441d46097ac1d8ad79edfd7` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/instance--14dacc99e21c577c03fb0fe2.md) | 160 | `declaration-track:14dacc99e21c577c03fb0fe2378fcbcfa3f4bcd092f4e316b98cfb2717b425c7` |
| 25 | `theorem` | [map_add_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/map-add-attop-eq--50b5c3fbb8d5563e5b675d29.md) | 169 | `result-track:50b5c3fbb8d5563e5b675d293c0384f8e94c3994213234cfa6cf5c98569e348a` |
| 26 | `theorem` | [map_sub_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/map-sub-attop-eq--fa24f6b1a4cb2939017573f0.md) | 173 | `result-track:fa24f6b1a4cb2939017573f05e35b692424d6056cf358982bbe858278f5a4bfa` |
| 27 | `theorem` | [Tendsto.const_mul_atTop'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-const-mul-attop--b3fca2c784bd3411364d1ce1.md) | 186 | `result-track:b3fca2c784bd3411364d1ce1e741fdfbd24ab2c9201c80756e2a1ed7c28ee7f0` |
| 28 | `theorem` | [Tendsto.atTop_mul_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-attop-mul-const--e1d2e57c7bd9bc4b1c43bea1.md) | 204 | `result-track:e1d2e57c7bd9bc4b1c43bea173dec5b71610d2960c660b320ec07ea7ab361248` |
| 29 | `theorem` | [Tendsto.atTop_mul_const_of_neg'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-attop-mul-const-of-neg--4d3986d90053998edc2adce3.md) | 226 | `result-track:4d3986d90053998edc2adce379895d1e7f4ebc489550fc06c4830628087200f2` |
| 30 | `theorem` | [Tendsto.atBot_mul_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-atbot-mul-const--a5879f8411c6f540aa004fa5.md) | 232 | `result-track:a5879f8411c6f540aa004fa5905dc28e21f457e8cb4f875154495f8c9fb980b4` |
| 31 | `theorem` | [Tendsto.atBot_mul_const_of_neg'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-atbot-mul-const-of-neg--2e2ea48158ee146b4e410237.md) | 239 | `result-track:2e2ea48158ee146b4e410237d353555e4684ce38809b9eccda3ac8419878addf` |
| 32 | `theorem` | [Tendsto.atTop_nsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-attop-nsmul-const--c90fc38730db8303d8551798.md) | 249 | `result-track:c90fc38730db8303d85517987bbae400289c6a8f37fe1c83ab8a6ab22eb7c169` |
| 33 | `theorem` | [Tendsto.atTop_nsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-attop-nsmul-neg-const--c0f8d3223aaa0cb34c95934a.md) | 261 | `result-track:c0f8d3223aaa0cb34c95934aa2457dce03b64373b3e5722e5916a974e05736d3` |
| 34 | `theorem` | [Tendsto.atTop_zsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-attop-zsmul-const--d30193ba0b1bf955e168d77f.md) | 264 | `result-track:d30193ba0b1bf955e168d77f1d175b0b6c730c52ed3c0d8141a5e898ce9b3388` |
| 35 | `theorem` | [Tendsto.atTop_zsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-attop-zsmul-neg-const--da8155ea60bced2748a01df4.md) | 271 | `result-track:da8155ea60bced2748a01df4977c01fdfb6fef14f19361acb705c38580a4d11e` |
| 36 | `theorem` | [Tendsto.atBot_zsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-atbot-zsmul-const--bfac878ea34786e9793ca17c.md) | 274 | `result-track:bfac878ea34786e9793ca17ca1f8d0c666ecf858dd66698e54659b9cdc3aec53` |
| 37 | `theorem` | [Tendsto.atBot_zsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variantc1fd907ee3ceaf6e2b908cfd8ab3dc6cb71d702384d38374fd1c14adf5655fd7.lean/declarations/tendsto-atbot-zsmul-neg-const--21379ea87fd0158eb9e452cb.md) | 279 | `result-track:21379ea87fd0158eb9e452cb27fd05ad147e30519ee18c6e0fd71c745ddebc63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
