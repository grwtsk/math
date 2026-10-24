# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d5fba1b99da404407efb85573bf4a3f2eafa102",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d5fba1b99da404407efb85573bf4a3f2eafa102`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.UnionLift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/continuousmap--a432336ad2d5115063426ad3.md) | 29 | `declaration-track:a432336ad2d5115063426ad3af618876a30cdff660b816e21e80013aad429811` |
| 2 | `class` | [ContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/continuousmapclass--f2fc5ff961b6120a9b71e4ec.md) | 44 | `declaration-track:f2fc5ff961b6120a9b71e4ec92509d09e269a8f3f9278e8c796c5928202d79bc` |
| 3 | `theorem` | [map_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/map-continuousat--1296396915e55d84345fcdde.md) | 60 | `result-track:1296396915e55d84345fcddeb0edf50bce2a378c2caa31124272cbac74f3c699` |
| 4 | `theorem` | [map_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/map-continuouswithinat--e3fcdf03dbc56204b490c8c3.md) | 64 | `result-track:e3fcdf03dbc56204b490c8c38b1b701afc31bc930bc7d974fe6c01c23ab3eded` |
| 5 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/tocontinuousmap--ccdf7868866af140d08a3ae1.md) | 69 | `declaration-track:ccdf7868866af140d08a3ae17a8bde37b5db8c1fd45678f35c7f565c40a7175c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/instance--01c9fa140b1ab2c795c21f94.md) | 71 | `declaration-track:01c9fa140b1ab2c795c21f947595f364fb730614b7bc9e716b6c52327ee21db5` |
| 7 | `instance` | [toContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/tocontinuousmapclass--2b4b599d91e4fce1f5f030ba.md) | 83 | `declaration-track:2b4b599d91e4fce1f5f030baddcb718264fe50745e393a16fe9b1ae03ebe44f2` |
| 8 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/tofun-eq-coe--e6d99a54974fc69923afb310.md) | 95 | `result-track:e6d99a54974fc69923afb3105fc7aa63b9f2e5b7436e7e90ba86648991263a3a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/instance--318518edebf8dc42a0c2940c.md) | 99 | `declaration-track:318518edebf8dc42a0c2940c73e54e40dffda905cb4181cd42eaa49ef11dcebd` |
| 10 | `def` | [Simps.apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/simps-apply--ff3a7fd680d1cad845cf9a90.md) | 102 | `declaration-track:ff3a7fd680d1cad845cf9a90f4589806055eb280d9045bcc60fafbecb742fff7` |
| 11 | `theorem` | [coe_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-coe--7a79a6692f647998e8b0cea5.md) | 108 | `result-track:7a79a6692f647998e8b0cea5d656eb82fa18bc8c7dc7e67f4a48895f356c85b8` |
| 12 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/ext--7e4d2989dba1f8683d94efaa.md) | 113 | `result-track:7e4d2989dba1f8683d94efaa18010cb0dcf29eacde864f45f62455c2d38eeb30` |
| 13 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/copy--9cbc1ea097636c19b9f5d475.md) | 119 | `declaration-track:9cbc1ea097636c19b9f5d4751947a4839a0e72d4ec15924354f8f180cfb8c3e7` |
| 14 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-copy--e5b38862d83133d61861911f.md) | 125 | `result-track:e5b38862d83133d61861911fcf49fc0519ec1bdf8956f735c6d26ff8592d16ff` |
| 15 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/copy-eq--43bc69bb63e693dc11c54eec.md) | 129 | `result-track:43bc69bb63e693dc11c54eec45c7ac9cc473ef30ed2f1111feba8979450b7781` |
| 16 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/continuous--a6ae2046e330269ef214831f.md) | 136 | `result-track:a6ae2046e330269ef214831faeeed90428ddefecad8c7bc3bb99f53d46ebd5a4` |
| 17 | `theorem` | [continuous_set_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/continuous-set-coe--22a2cc9409ec89d6324fa09a.md) | 141 | `result-track:22a2cc9409ec89d6324fa09a3d19a65051a02253e7f97ca44911c606cd0a6d65` |
| 18 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/continuousat--1c878c20efdb3c9f7bbe0ee6.md) | 146 | `result-track:1c878c20efdb3c9f7bbe0ee686d3143fc046e53d8bd0bc5b5dac3ca72fd3794a` |
| 19 | `theorem` | [congr_fun](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/congr-fun--cd467ec5f00f6fd155446611.md) | 151 | `result-track:cd467ec5f00f6fd1554466117e51c8e3cc79137f7884e94290b16e6cb16dd62f` |
| 20 | `theorem` | [congr_arg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/congr-arg--dfec549e8e46752a8575cb34.md) | 156 | `result-track:dfec549e8e46752a8575cb347f20c961354a6df93dbeeaaac46956ab71faf26b` |
| 21 | `theorem` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-injective--c7a84a8f0577056b86425f26.md) | 160 | `result-track:c7a84a8f0577056b86425f26487609c7bbacdc09bd9b979a04f9d54bd30c4ea7` |
| 22 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-mk--6cc37bdf3c474aa6108bb023.md) | 165 | `result-track:6cc37bdf3c474aa6108bb0238af34ea0e6c2281bd37427d6e968c9501ef8ac9e` |
| 23 | `theorem` | [map_specializes](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/map-specializes--b4e3babb4b099128ec302eb7.md) | 169 | `result-track:b4e3babb4b099128ec302eb7c806fd53b05dc4a84e6c1bdafc64b1bf06fafcb6` |
| 24 | `def` | [equivFnOfDiscrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/equivfnofdiscrete--bba8bc2c9ebebbfafed24e86.md) | 181 | `declaration-track:bba8bc2c9ebebbfafed24e86f2fda9e66fe274dea8726f015c72cd8784e27d34` |
| 25 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/id--f5983ab1d39d82d2707dbbc5.md) | 193 | `declaration-track:f5983ab1d39d82d2707dbbc52b47d92131ac18098ba4057532d184ca736d3fea` |
| 26 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-id--abad4adff221889c957e016d.md) | 198 | `result-track:abad4adff221889c957e016d7050daaf8a3ab68ad211b8b8bd2dcf6e271f1a28` |
| 27 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/const--633e900c186f9c899bdabfb3.md) | 203 | `declaration-track:633e900c186f9c899bdabfb3ba00cab456bc31933ce35f8a923c9921c9a77c3d` |
| 28 | `theorem` | [coe_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-const--1d5a8398ec04b429e748aa2f.md) | 208 | `result-track:1d5a8398ec04b429e748aa2f16a86b58a331ef3e9292286c256254faeee5e2de` |
| 29 | `def` | [constPi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/constpi--682de18c397605975218c2a8.md) | 214 | `declaration-track:682de18c397605975218c2a8993919860b0ba364c9f5dbd762accb1e2cd7404c` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/instance--2591f5438a2ed27f4b90b408.md) | 217 | `declaration-track:2591f5438a2ed27f4b90b4089ba73b10036049bf368ebb0a7576790cfbb87cc2` |
| 31 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/id-apply--65a60c4a96de3d3c44a2f828.md) | 223 | `result-track:65a60c4a96de3d3c44a2f828a27f32aef460648de181af1e5b577f617e51f48a` |
| 32 | `theorem` | [const_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/const-apply--43e8e311a99c66c73de2f3ef.md) | 228 | `result-track:43e8e311a99c66c73de2f3ef6a5f91539ab250bcc0737018e12c669ad2fd48e5` |
| 33 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/comp--b35860217756f75688bcc3c1.md) | 233 | `declaration-track:b35860217756f75688bcc3c1b70a428e977b178b53d9497e7bc0340f167e0593` |
| 34 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-comp--3c51b262b6f4314447042e24.md) | 238 | `result-track:3c51b262b6f4314447042e24e9190974010e1cff12643b219480c1a790a08faa` |
| 35 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/comp-apply--e4063980c61b7f79499ca2b4.md) | 243 | `result-track:e4063980c61b7f79499ca2b42da286d0b32ff9df97f67ad6c7c7bf05013b749c` |
| 36 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/comp-assoc--4a69747dd42890c141de4777.md) | 248 | `result-track:4a69747dd42890c141de47775460395bec42d368dac0363b16e9aaae69928c36` |
| 37 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/id-comp--41e5c083d0d18590796a6c63.md) | 254 | `result-track:41e5c083d0d18590796a6c630d0b63ac8f1094afd5dc7bcbee66479493805efc` |
| 38 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/comp-id--2b32e26d898b812ac37ee112.md) | 259 | `result-track:2b32e26d898b812ac37ee112471767d521de6a378ca79fa7999b06e00ccfaf9d` |
| 39 | `theorem` | [const_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/const-comp--9bfb5e0d4a9d364cf1e18034.md) | 264 | `result-track:9bfb5e0d4a9d364cf1e1803483c36ffda34e7422a59c396677470d13b62e8558` |
| 40 | `theorem` | [comp_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/comp-const--5f30344dd587d2f439972841.md) | 269 | `result-track:5f30344dd587d2f4399728411c7cf9090411fc7b9983b07f9678fd752ae0e77e` |
| 41 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/cancel-right--e058832298b7318b8f615ae7.md) | 273 | `result-track:e058832298b7318b8f615ae743984d5d5a23ad888703f76673791334f7245e71` |
| 42 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/cancel-left--9673c6c2e56b6c872bab4015.md) | 278 | `result-track:9673c6c2e56b6c872bab40158bb30f7894aef792668ef1e55782e44518ef2c00` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/instance--56e934681bc4273751c579ed.md) | 283 | `declaration-track:56e934681bc4273751c579eda9a65d627e49e5d2cccf2701f179865d3b372ce1` |
| 44 | `def` | [fst](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/fst--7803db14316c81fd809a2c33.md) | 294 | `declaration-track:7803db14316c81fd809a2c339bfcc0d6bdbf9f83a456802a490fcea32bf255c0` |
| 45 | `def` | [snd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/snd--baee782421b2ed6d3617a301.md) | 299 | `declaration-track:baee782421b2ed6d3617a30143d14225d2539fad89c292f62cb98e856e35bd17` |
| 46 | `def` | [prodMk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/prodmk--8435680621d5ee813ae33815.md) | 303 | `declaration-track:8435680621d5ee813ae338156549facf223d47c110f3b38978462c3c19b48d6c` |
| 47 | `def` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/prodmap--9f87a5f42dfbd299b2d0415a.md) | 309 | `declaration-track:9f87a5f42dfbd299b2d0415aa6068b8ac507aa9ea078bdf3fdb5b5c161091f3f` |
| 48 | `theorem` | [prod_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/prod-eval--f70755f46a626db3595ec290.md) | 316 | `result-track:f70755f46a626db3595ec29040867d65807112d58230823d8abcecc8d0575416` |
| 49 | `def` | [prodSwap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/prodswap--0cb2c5ad85d7aabe104747a4.md) | 322 | `declaration-track:0cb2c5ad85d7aabe104747a456c55351efad8acc495fd1c3d533931cedee35eb` |
| 50 | `def` | [sigmaMk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/sigmamk--22673836532ad5eca7e03f6a.md) | 328 | `declaration-track:22673836532ad5eca7e03f6a3d44c3eccf6c937f615eade05df07b8b86a23631` |
| 51 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/pi--220b3c003050f2d2a628436f.md) | 338 | `declaration-track:220b3c003050f2d2a628436f246af8062455290218649844fc608659d69dfd97` |
| 52 | `theorem` | [pi_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/pi-eval--e2b87dc4ba5486b751a86d17.md) | 343 | `result-track:e2b87dc4ba5486b751a86d176e1506f6e5cc1e944d6ab2f109d41aae5282d0fd` |
| 53 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/eval--049aff1ce6148d446967d2dd.md) | 349 | `declaration-track:049aff1ce6148d446967d2ddded7ea57a451e522f7dd2426890affd43f014ecf` |
| 54 | `def` | [piMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/pimap--d1eeef1ed0d7b7ebf6b849dd.md) | 355 | `declaration-track:d1eeef1ed0d7b7ebf6b849dd1e882da3d4398ea1d02d14095a924f1f63a1641c` |
| 55 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/restrict--3f06cbd2d4a8fbba5bfb70d5.md) | 365 | `declaration-track:3f06cbd2d4a8fbba5bfb70d5b382bba3789558f651775ac1e9fe3581c4f63f0d` |
| 56 | `theorem` | [coe_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-restrict--69b8946929ebef3be5f2de0a.md) | 370 | `result-track:69b8946929ebef3be5f2de0a01fae7ac4bac1a3126c2ee2d0354229af5de09e7` |
| 57 | `theorem` | [restrict_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/restrict-apply--1b67497b0b37d823acb2e613.md) | 375 | `result-track:1b67497b0b37d823acb2e613e8044c142964e805c32c72c072443cc7dcd8435f` |
| 58 | `theorem` | [restrict_apply_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/restrict-apply-mk--4c7a43f4b8c5646c8457dce8.md) | 380 | `result-track:4c7a43f4b8c5646c8457dce8df28d3d5b05e9ecaeba88d031ac7a657afae90c2` |
| 59 | `theorem` | [injective_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/injective-restrict--33956e1152ac0007ef881f91.md) | 385 | `result-track:33956e1152ac0007ef881f9196004dcdb50767cf39ec0bcdbf5c0f734e4a70fa` |
| 60 | `def` | [restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/restrictpreimage--92bceb900563c0cfb884f8e9.md) | 392 | `declaration-track:92bceb900563c0cfb884f8e97497e687366230b47a2f477786b7a703b13036be` |
| 61 | `def` | [liftCover](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/liftcover--174daf6c0c25520edab17166.md) | 407 | `declaration-track:174daf6c0c25520edab171661d0a36f5e2b77e886aef8d15a8c20a409dc9195c` |
| 62 | `theorem` | [liftCover_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/liftcover-coe--c71a2e37e8a4bd67bc479531.md) | 418 | `result-track:c71a2e37e8a4bd67bc479531647e61368e855395a89b7f9af17c7338c2bda9cc` |
| 63 | `theorem` | [liftCover_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/liftcover-restrict--a0638b1cdd48499b34c143d5.md) | 423 | `result-track:a0638b1cdd48499b34c143d59baa544c4418d5d05694db5b4e6ca5850cd9d8e1` |
| 64 | `def` | [liftCover'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/liftcover--5161c16cde07fc8395cae323.md) | 436 | `declaration-track:5161c16cde07fc8395cae3233b3f4474ab4c1114aba0396f672223b0f0bb7d5f` |
| 65 | `theorem` | [liftCover_coe'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/liftcover-coe--2220bdc182321333fa8a1be9.md) | 451 | `result-track:2220bdc182321333fa8a1be9ed025a0e4cb434e41ffe07aa5e02fec5786f60bf` |
| 66 | `theorem` | [liftCover_restrict'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/liftcover-restrict--02ade0e96ff847b2275dacb0.md) | 458 | `result-track:02ade0e96ff847b2275dacb0dd832c52230034761c6b21283f62f3c4a0ee2688` |
| 67 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/tocontinuousmap--a5b70bf1f57f013cf404dc80.md) | 474 | `declaration-track:a5b70bf1f57f013cf404dc804a0e6ad94e2eebb7f2dc98532ff4abec304ff5dd` |
| 68 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/instance--116260c0838a7ef4c0956f6c.md) | 480 | `declaration-track:116260c0838a7ef4c0956f6cf46cd94bf8fbff6c356aea6a29ea44e24774a682` |
| 69 | `theorem` | [coe_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-refl--61072f5fee4b2e8f8165c485.md) | 490 | `result-track:61072f5fee4b2e8f8165c4852fdf23cec9a6e950e12e9d3a40c7372e118953da` |
| 70 | `theorem` | [coe_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/coe-trans--9ddadc7ec914a0245dfd1ada.md) | 495 | `result-track:9ddadc7ec914a0245dfd1adae830a308962e44763178b5d5b821046639e21bd0` |
| 71 | `theorem` | [symm_comp_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/symm-comp-tocontinuousmap--205c45d0c28946e099b1f608.md) | 501 | `result-track:205c45d0c28946e099b1f608fa33b0144cba92aa662fa03a3d83ecedd6f1e3eb` |
| 72 | `theorem` | [toContinuousMap_comp_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/declarations/tocontinuousmap-comp-symm--9ede6136fc3bfabb0ff8c506.md) | 507 | `result-track:9ede6136fc3bfabb0ff8c5066782c7b59cce1d77062d45caa7f27044a64b2b06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
