# Verification target: GRWTSK.Topology.GeneralTopology.LiouvilleWith.Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8eaa0268978e44ebd8e6dff557bcde313a85b349",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8eaa0268978e44ebd8e6dff557bcde313a85b349`.

Source path: `GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Liouville.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Irrational` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LiouvilleWith](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/liouvillewith--b4285b7d6e86fc0296637566.md) | 57 | `declaration-track:b4285b7d6e86fc029663756642cc8d2d51b1abd3b69d2580842c6a9ae3bde1b8` |
| 2 | `theorem` | [liouvilleWith_one](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/liouvillewith-one--cd98be0310c243ebc7fd15e9.md) | 62 | `result-track:cd98be0310c243ebc7fd15e9b62ce63de42a6b82162d269d6501c52c78cc94a2` |
| 3 | `theorem` | [exists_pos](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/exists-pos--346a69b00b934e4b5b975dc8.md) | 83 | `result-track:346a69b00b934e4b5b975dc8bc5d863c59ced8b1fea7abb152e0f520002c63b1` |
| 4 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/mono--84a4dba44b980fb0b3df1e35.md) | 95 | `result-track:84a4dba44b980fb0b3df1e357b14d163e2d75978284afedcbd08e44cec87cd30` |
| 5 | `theorem` | [frequently_lt_rpow_neg](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/frequently-lt-rpow-neg--67ab97c58c18dd5454638fe7.md) | 105 | `result-track:67ab97c58c18dd5454638fe744ef2721a475df56690a2657d9bb0ad6c2a6cbbf` |
| 6 | `theorem` | [mul_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/mul-rat--ab55fedc526605d89eb5450c.md) | 120 | `result-track:ab55fedc526605d89eb5450c150f0cf93c3e7fa534744a81cb7b3a91414cd19f` |
| 7 | `theorem` | [mul_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/mul-rat-iff--b6f62ddb9843cbd11941e3a1.md) | 140 | `result-track:b6f62ddb9843cbd11941e3a16087dc760ce4e486ab00404c4474f37b44f6a9ee` |
| 8 | `theorem` | [rat_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/rat-mul-iff--77e96ccdb12bde596d5e00af.md) | 149 | `result-track:77e96ccdb12bde596d5e00af4b484d4da7af75dd4d31c911903d3da115b7a5a9` |
| 9 | `theorem` | [rat_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/rat-mul--df244bab275c4dfbcaf9f11c.md) | 153 | `result-track:df244bab275c4dfbcaf9f11c58b196d2f8291fed3f77f89429a9cf7b28bc30b3` |
| 10 | `theorem` | [mul_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/mul-int-iff--3f993797d01fe136d4bbb6a7.md) | 157 | `result-track:3f993797d01fe136d4bbb6a7ab01a44548bb070c1924ddde2d0630cfff77c753` |
| 11 | `theorem` | [mul_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/mul-int--1e1c4db108d58bcefaa6460d.md) | 161 | `result-track:1e1c4db108d58bcefaa6460d7e60b7792904e7e57d66e3d56c9e7fdfb9d67b2e` |
| 12 | `theorem` | [int_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/int-mul-iff--a2b9773d38b2b81320e9da31.md) | 165 | `result-track:a2b9773d38b2b81320e9da31972addccb3d3e3df1200a551a2bb9dccf3b925ad` |
| 13 | `theorem` | [int_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/int-mul--89fbdaca94d79cfb0310a448.md) | 169 | `result-track:89fbdaca94d79cfb0310a44848d5690504bdc8990d6498a37ffea958d7380000` |
| 14 | `theorem` | [mul_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/mul-nat-iff--60c5df33f9df03b50ac96553.md) | 173 | `result-track:60c5df33f9df03b50ac9655329938ca68afa30ecad5395f5f3c08fc26cc9473f` |
| 15 | `theorem` | [mul_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/mul-nat--66bba6f2f1e2a0a7f680e935.md) | 177 | `result-track:66bba6f2f1e2a0a7f680e935bcbf9533489f0092cf6912cd9d28ed8079e23ad8` |
| 16 | `theorem` | [nat_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/nat-mul-iff--8b559d01cfabe2291b3b27b5.md) | 181 | `result-track:8b559d01cfabe2291b3b27b5fb8e3f229219548c8de9ef3a5234b9dc93f954fa` |
| 17 | `theorem` | [nat_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/nat-mul--fe5fa16dc18ca506b48fec17.md) | 185 | `result-track:fe5fa16dc18ca506b48fec174a4b2797f5b3b27e20062610fc8f05cdd5dc3231` |
| 18 | `theorem` | [add_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/add-rat--bd6ad5e45b01e70f963f13dc.md) | 189 | `result-track:bd6ad5e45b01e70f963f13dcd0adc1961f22a0118364ad4cc96ac5d67681a429` |
| 19 | `theorem` | [add_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/add-rat-iff--587955844fca8cf79f61ba1d.md) | 207 | `result-track:587955844fca8cf79f61ba1d5695453d3039228f01024dfd9c309fb1f7efdb6e` |
| 20 | `theorem` | [rat_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/rat-add-iff--c32a51dcc22d3b1d5eb81022.md) | 212 | `result-track:c32a51dcc22d3b1d5eb810223e84b4c7c476a93d9c92d52efbaf091f3c439a39` |
| 21 | `theorem` | [rat_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/rat-add--8aa5d26ace4a3e01169be208.md) | 215 | `result-track:8aa5d26ace4a3e01169be208f98ca6e4c981bcbe7852dffe968bc8709d3f4c2e` |
| 22 | `theorem` | [add_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/add-int-iff--c773cbb37b79b00432fefe42.md) | 220 | `result-track:c773cbb37b79b00432fefe42771241a2aab4e085813b2460a85328374e1a722e` |
| 23 | `theorem` | [int_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/int-add-iff--9061b00fae87f1c3465c1f17.md) | 225 | `result-track:9061b00fae87f1c3465c1f177be2bc18873b352d703490ed044694f3527ac574` |
| 24 | `theorem` | [add_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/add-nat-iff--2501e1c5c4a754fe36ab7325.md) | 229 | `result-track:2501e1c5c4a754fe36ab73252921000bccfb4aca708276ed223eb922e27491d5` |
| 25 | `theorem` | [nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/nat-add-iff--359a2557ed64ae91e731d9cc.md) | 234 | `result-track:359a2557ed64ae91e731d9cc7ac10d3522108ae8ef32cde97f1d1be853d5795d` |
| 26 | `theorem` | [add_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/add-int--3cad2ce168103aa03acd5256.md) | 237 | `result-track:3cad2ce168103aa03acd52563adbdaf09e6234cfcea6204551bc98460717dcf6` |
| 27 | `theorem` | [int_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/int-add--74c0886bc6967544244e6b57.md) | 241 | `result-track:74c0886bc6967544244e6b57ed8a80573e111ad70cd2d3089bc8de8516d7cc2b` |
| 28 | `theorem` | [add_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/add-nat--7ed9c329cf67ca5ce0ce5241.md) | 245 | `result-track:7ed9c329cf67ca5ce0ce524173fb3c672056ef66d0011ce40f6bfb78a734af68` |
| 29 | `theorem` | [nat_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/nat-add--032c5fc8ca9cb75752e85ec7.md) | 249 | `result-track:032c5fc8ca9cb75752e85ec77e5f7b5b0adb3cda4de2033f3493711c004d091f` |
| 30 | `theorem` | [neg](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/neg--a0ec39e61ac90c8223a83bca.md) | 253 | `result-track:a0ec39e61ac90c8223a83bcac1947711685d2593d9613cb16e582a49c86490c5` |
| 31 | `theorem` | [neg_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/neg-iff--525887151214271e0c85f9e4.md) | 264 | `result-track:525887151214271e0c85f9e459a19ffcabb261705d57bfa104be62493944daa4` |
| 32 | `theorem` | [sub_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/sub-rat-iff--c7602374862454e5bedabe4a.md) | 269 | `result-track:c7602374862454e5bedabe4a8dba448cff0e39d8306ffe2a99ca33f7a4383b54` |
| 33 | `theorem` | [sub_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/sub-rat--016b7f56b361faf53e38828a.md) | 273 | `result-track:016b7f56b361faf53e38828af50e82694a58152aa7ccd1b7410539b32c0c7b55` |
| 34 | `theorem` | [sub_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/sub-int-iff--8246e349cd1c37a2fac8a018.md) | 278 | `result-track:8246e349cd1c37a2fac8a01819bba423463537e720ef4be2e64dcc5f6866d942` |
| 35 | `theorem` | [sub_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/sub-int--2ce5b5ea702a495a7c212eed.md) | 282 | `result-track:2ce5b5ea702a495a7c212eed1715128ad63b2594589731275ac2c124f501e2c8` |
| 36 | `theorem` | [sub_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/sub-nat-iff--5351ab07b794ef0251e0a9e4.md) | 287 | `result-track:5351ab07b794ef0251e0a9e44deadda195238dc1a35304d5d36890afedcfa0a7` |
| 37 | `theorem` | [sub_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/sub-nat--4c293ed82dabde2d1d8ce38e.md) | 291 | `result-track:4c293ed82dabde2d1d8ce38eee4208c9d9f29a6ef36ab6d52da6fbfaca2dbc30` |
| 38 | `theorem` | [rat_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/rat-sub-iff--7d698f079911617b39df56b2.md) | 296 | `result-track:7d698f079911617b39df56b23e579624da7dd7ccd68d5a2cbec77315c2e79223` |
| 39 | `theorem` | [rat_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/rat-sub--c23394a5bcf4c2fa4a642f72.md) | 299 | `result-track:c23394a5bcf4c2fa4a642f720295d134e97e7f05dc19731a767b5a296ae656c8` |
| 40 | `theorem` | [int_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/int-sub-iff--4c52748da31e7da570197700.md) | 304 | `result-track:4c52748da31e7da5701977003025fd8aa4ce80fc6d6f6f70a2ffc02fbcc0f9e6` |
| 41 | `theorem` | [int_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/int-sub--83ad680b9df634e6ae192b28.md) | 307 | `result-track:83ad680b9df634e6ae192b28be04eedd98ee66627c46cf11bcfc311e12821c56` |
| 42 | `theorem` | [nat_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/nat-sub-iff--8f2223ad5c0958ec6f27feb0.md) | 312 | `result-track:8f2223ad5c0958ec6f27feb0a581f5b6001584f9054059ba4fcf21098d4612aa` |
| 43 | `theorem` | [nat_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/nat-sub--3e3283227c73025e525701df.md) | 315 | `result-track:3e3283227c73025e525701dfece2243c5df31aebf96e54d9efdec0ec6f1ab0af` |
| 44 | `theorem` | [ne_cast_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/ne-cast-int--e94ae1b1c9f99f6b0dc6c469.md) | 319 | `result-track:e94ae1b1c9f99f6b0dc6c469a3bf40a0ce36547c14874532215acad44a9bc998` |
| 45 | `theorem` | [irrational](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/irrational--6dc15ce3bb614b92049835ea.md) | 333 | `result-track:6dc15ce3bb614b92049835eaec6293075319e8081d17fd561e0e42f06886c33a` |
| 46 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/macro-rules--35419928797adb7aced5f6b1.md) | 348 | `declaration-track:35419928797adb7aced5f6b13f927afce884bed06a769f1d9949daf5e1ad65b1` |
| 47 | `theorem` | [frequently_exists_num](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/frequently-exists-num--c375b14169e1c77e68be376d.md) | 352 | `result-track:c375b14169e1c77e68be376d1bd07d9ed5f200e3638b991503c88a804822728c` |
| 48 | `theorem` | [liouvilleWith](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/liouvillewith--1a5fd0ddcd2b94e3f8e2d48d.md) | 380 | `result-track:1a5fd0ddcd2b94e3f8e2d48d376924c7124d3fc61a944b0ba55c2bf675f9460a` |
| 49 | `theorem` | [forall_liouvilleWith_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/declarations/forall-liouvillewith-iff--532aa28f7860401b9d927f0e.md) | 392 | `result-track:532aa28f7860401b9d927f0e51f0758ee15e7725b3f7264bd4efdb6d34f31350` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
