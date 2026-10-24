# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "748bf80f01b4d8819a404e0b1da077c8aa265873",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `748bf80f01b4d8819a404e0b1da077c8aa265873`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulMemClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/mulmemclass--6a0217526e65c60278a2a48f.md) | 58 | `declaration-track:6a0217526e65c60278a2a48f14eb2d52069563feef81a1d2863383928851b9a4` |
| 2 | `class` | [AddMemClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/addmemclass--d7558d7cf2d3f2919a4ca621.md) | 65 | `declaration-track:d7558d7cf2d3f2919a4ca621e5984f53416635fab0528e342b74da7a8b63d7a6` |
| 3 | `structure` | [Subsemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/subsemigroup--693d338b2afb91a637f9a5d3.md) | 76 | `declaration-track:693d338b2afb91a637f9a5d383f8a62f482197a64928c8f6c91933bd6df38ecc` |
| 4 | `structure` | [AddSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/addsubsemigroup--636a90d5fe90b71dc5e2349a.md) | 83 | `declaration-track:636a90d5fe90b71dc5e2349ad488a9253800c943df3bbc07580fdd224b10b2a1` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/instance--96f45fb670c6a72991af209f.md) | 94 | `declaration-track:96f45fb670c6a72991af209f6b59d0a80eda1c45e3ad7e8335c19e4c103d5c7a` |
| 6 | `def` | [ofClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/ofclass--c04e2bd0c80aa880e229ecdb.md) | 103 | `declaration-track:c04e2bd0c80aa880e229ecdb94159e5adee7bab485ac1f6c77cf118189472c24` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/instance--a7e866df93727bce33913eab.md) | 107 | `declaration-track:a7e866df93727bce33913eab67f8e84e2aafdc74d8290e5f30e9612824de733f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/instance--bb7612e30b03430505c5988d.md) | 112 | `declaration-track:bb7612e30b03430505c5988d9938d7925f6654b940b1933fdd35a67c64803b8d` |
| 9 | `theorem` | [mem_carrier](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/mem-carrier--28acf8e7fcb0780254ea9756.md) | 115 | `result-track:28acf8e7fcb0780254ea975622dadceee7dbabde7e0f0ee62345ff0cc8004e54` |
| 10 | `theorem` | [mem_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/mem-mk--8c8c78bdcc196d4dc6fec2a0.md) | 119 | `result-track:8c8c78bdcc196d4dc6fec2a07c1915df5221a073339f5537e19942b2d7323957` |
| 11 | `theorem` | [coe_set_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/coe-set-mk--d5f0c0c88fefffa26fccd2b9.md) | 123 | `result-track:d5f0c0c88fefffa26fccd2b9ce2b393d2e5201aad242334874d97a2d09961918` |
| 12 | `theorem` | [mk_le_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/mk-le-mk--84d04a0c18a6e474a73f8004.md) | 127 | `result-track:84d04a0c18a6e474a73f80045f86245eb041a38f23748181fb337156d5f09268` |
| 13 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/ext--bd4f123c8cde66f437ddaabe.md) | 132 | `result-track:bd4f123c8cde66f437ddaabe19a748d95e31f8e170dccb821e9de53fc39d2e3b` |
| 14 | `def` | [copy](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/copy--3e1bd08246b94b82c15204ed.md) | 137 | `declaration-track:3e1bd08246b94b82c15204ed8248f3ca7b1b1787acb8470fde024604d6fd4481` |
| 15 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/coe-copy--ca9bec6824527186e93b99a3.md) | 145 | `result-track:ca9bec6824527186e93b99a3389f2a6d97513bbf670e93167184b5b02e213bc9` |
| 16 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/copy-eq--d16ee76715bd988d328d712b.md) | 149 | `result-track:d16ee76715bd988d328d712bb7eaf2683990cbf1e973cd0b3e668e1a54f08844` |
| 17 | `theorem` | [mul_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/mul-mem--2c0d230125cb8f42096fe262.md) | 156 | `result-track:2c0d230125cb8f42096fe262ca1f67e49609d522ff959902e541999ecd8983be` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/instance--4d38176344d585d61f8fbe9c.md) | 161 | `declaration-track:4d38176344d585d61f8fbe9c98899d5548fc3240ae1948eb926e2461cb67d5eb` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/instance--641259ee6e752253c7df1c49.md) | 167 | `declaration-track:641259ee6e752253c7df1c493a4a65944d5aabad746c725ad3b3fabdb37d4254` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/instance--d87d0094d4ad03cbccbde9eb.md) | 172 | `declaration-track:d87d0094d4ad03cbccbde9eb8c24159fd0fd72ac8d01461239d3b5bb4a2ef19f` |
| 21 | `theorem` | [notMem_bot](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/notmem-bot--488be23518d2faa5c62b1941.md) | 176 | `result-track:488be23518d2faa5c62b1941453751c09e7b726fdee9ee9837116516c42f974f` |
| 22 | `theorem` | [mem_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/mem-top--ce307d90fd0a543006b9c1e8.md) | 185 | `result-track:ce307d90fd0a543006b9c1e87ff558a48b2fe0c4c3eaaa3b872c043a799c572b` |
| 23 | `theorem` | [coe_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/coe-top--b290aacab8f3612e4d9b16da.md) | 189 | `result-track:b290aacab8f3612e4d9b16da47c30df2359139357b0c504a0643091cf9348613` |
| 24 | `theorem` | [coe_bot](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/coe-bot--f3a746e1c853046adb7eecf4.md) | 193 | `result-track:f3a746e1c853046adb7eecf4eade2a9305926fdd75834bb747a6d047b171f0f5` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/instance--1c88d87322c1ecd270c9f2c9.md) | 198 | `declaration-track:1c88d87322c1ecd270c9f2c9bf8c5718bfcd7f2b388cc117c9403c3308d5fade` |
| 26 | `theorem` | [coe_inf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/coe-inf--6d2873e9d9a7415992dc8ca4.md) | 204 | `result-track:6d2873e9d9a7415992dc8ca40bde3e54771e9703ab4efa45baed5e6209d88dd2` |
| 27 | `theorem` | [mem_inf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/mem-inf--5a6ea747fd838fcaa754f888.md) | 208 | `result-track:5a6ea747fd838fcaa754f8886fbf8343f1474e13f1f4723e6e1c8e309b5e1dd0` |
| 28 | `theorem` | [subsingleton_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/subsingleton-of-subsingleton--c859ce0f4dc63d4019e65e48.md) | 212 | `result-track:c859ce0f4dc63d4019e65e484ef6d4c915397711f379b06f62d75f436ea8dc41` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/instance--2ef380a74f4f03f51fb13f80.md) | 218 | `declaration-track:2ef380a74f4f03f51fb13f804a4aa70e9dd03bc5ef8f62fb5d59ce6f0bd9b62e` |
| 30 | `def` | [eqLocus](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/eqlocus--fed0de192e1054d282ca3c32.md) | 234 | `declaration-track:fed0de192e1054d282ca3c32b0e27a0c4559a19335dc4ba8dbd3866a0e96d026` |
| 31 | `theorem` | [eq_of_eqOn_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/eq-of-eqon-top--6e743eacc6730b1ac9b878c1.md) | 239 | `result-track:6e743eacc6730b1ac9b878c186d5c32f572dca9a1651d560243646f1063e9e9d` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/instance--a0b08af68268a921f221ca51.md) | 253 | `declaration-track:a0b08af68268a921f221ca5171b9d9d455791b23cb94b6b1e405dc659ff775c4` |
| 33 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/coe-mul--4cd91273860c6d0c95fffdc8.md) | 258 | `result-track:4cd91273860c6d0c95fffdc826427a686f712a7a63fa2adc57a94083cc4b386b` |
| 34 | `theorem` | [mk_mul_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/mk-mul-mk--76e119597abaef654ae89969.md) | 263 | `result-track:76e119597abaef654ae8996957f22da7c29d2a3a099ed6d56dbc7f35d8d0e878` |
| 35 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/mul-def--8e0ecde2332e10be3b6825c0.md) | 268 | `result-track:8e0ecde2332e10be3b6825c066914ed5532d7e349c7dc0c0b892d4ef7ffbc2e9` |
| 36 | `instance` | [toSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/tosemigroup--6232554121839026fb837f68.md) | 273 | `declaration-track:6232554121839026fb837f683b34455b2c986036e2d4e0e5a7e02a190efb3d01` |
| 37 | `instance` | [toCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/tocommsemigroup--18943b651887e2214f9045df.md) | 279 | `declaration-track:18943b651887e2214f9045df024344d978cbef4a079694e4cefed4b0e56856c7` |
| 38 | `def` | [subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/subtype--10d5d57a0cbdd7e6087763b1.md) | 286 | `declaration-track:10d5d57a0cbdd7e6087763b11054a079f554e34d9b59a1263fec91db9d79ecf5` |
| 39 | `lemma` | [subtype_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/subtype-apply--79d576a7c6d8d07e441febf0.md) | 291 | `result-track:79d576a7c6d8d07e441febf08bf3110c8e89779503789845d8149fa8498ccbf1` |
| 40 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/subtype-injective--d94100e3fad6442226b0e6f6.md) | 295 | `result-track:d94100e3fad6442226b0e6f69eb2fed0e62e235714e416673d2acb7d400b3d76` |
| 41 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant181d569ded7b3aafd022a5a40425e3522f573af21ed7c7d244fb0687597fbf37.lean/declarations/coe-subtype--dc5fb3b8b6e46b4626fdb532.md) | 300 | `result-track:dc5fb3b8b6e46b4626fdb53265515a747084d2a137a30df831ae4e29b17120d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
