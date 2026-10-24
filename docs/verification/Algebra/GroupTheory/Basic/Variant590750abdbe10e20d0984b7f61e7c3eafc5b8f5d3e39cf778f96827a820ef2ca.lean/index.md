# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df1a44e6d85c46453b31f9ba2f3c3165bcd556af",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df1a44e6d85c46453b31f9ba2f3c3165bcd556af`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpowers--01741caeb874d1f654d05338.md) | 38 | `declaration-track:01741caeb874d1f654d05338a6c32bb63f97997fc28dd7d76782f75fd9792b4a` |
| 2 | `theorem` | [mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/mem-zpowers--0f766fee797f789ec3d48c4e.md) | 45 | `result-track:0f766fee797f789ec3d48c4e5f37c89cc3f20ff0c082e1701064a2e99e7a66f2` |
| 3 | `theorem` | [coe_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/coe-zpowers--e6d437c249b63c66de7624b5.md) | 49 | `result-track:e6d437c249b63c66de7624b5b57157b11782624d3b7329aafac799df96a0c007` |
| 4 | `instance` | [decidableMemZPowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/decidablememzpowers--bb902ed0b78bf361287c3636.md) | 53 | `declaration-track:bb902ed0b78bf361287c3636259dc46e53f145103a392f993b2b18aa5b2d474e` |
| 5 | `theorem` | [zpowers_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpowers-eq-closure--eba3a94771373e6289168892.md) | 57 | `result-track:eba3a94771373e62891688927a71fe2be11a06c2508926c850929f9c30c00d3a` |
| 6 | `theorem` | [mem_zpowers_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/mem-zpowers-iff--045a88130d560eb979d06cef.md) | 62 | `result-track:045a88130d560eb979d06cef42bcadb320e830909144c09786b1eff4bebae848` |
| 7 | `theorem` | [zpow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpow-mem-zpowers--92edc8d8a724af289991a628.md) | 66 | `result-track:92edc8d8a724af289991a628d6aec5be766d6882edc67f947d3c17e534c8a84f` |
| 8 | `theorem` | [npow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/npow-mem-zpowers--620e713c72aed6d151f912d2.md) | 70 | `result-track:620e713c72aed6d151f912d23ce465b6e5859250583ade3937d4644940526dc7` |
| 9 | `theorem` | [forall_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/forall-zpowers--fd52c703afa589df02522c87.md) | 75 | `result-track:fd52c703afa589df02522c87e72b116ff0ee0d283660220935e819fd232fec75` |
| 10 | `theorem` | [exists_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/exists-zpowers--fd13a26590cf7b920ec6b263.md) | 80 | `result-track:fd13a26590cf7b920ec6b263e774bc5249fd0ae401c8e01a027fef618fe2c141` |
| 11 | `theorem` | [forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/forall-mem-zpowers--5758cf1ba1d9537a2aec534b.md) | 84 | `result-track:5758cf1ba1d9537a2aec534bf9259b8ada2ae80775ea574dee5a4dd108f37468` |
| 12 | `theorem` | [exists_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/exists-mem-zpowers--4fe89919f78b53e739fab0e2.md) | 88 | `result-track:4fe89919f78b53e739fab0e2dda9399825798f90946be6a92462db2dbcc50e85` |
| 13 | `theorem` | [MonoidHom.map_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/monoidhom-map-zpowers--084fcaa2fb273e14ee3a75bb.md) | 94 | `result-track:084fcaa2fb273e14ee3a75bb8ecfd8a98e77d0ee5166a704e2c3861712c5a679` |
| 14 | `theorem` | [Int.mem_zmultiples_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/int-mem-zmultiples-iff--7432571c48aaff7f47893e7d.md) | 98 | `result-track:7432571c48aaff7f47893e7d7d657bc69d9a21b72fd7e7d2fb4cb3762eb2adcf` |
| 15 | `lemma` | [Int.zmultiples_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/int-zmultiples-one--b53664a2b18a6d55eb21a238.md) | 102 | `result-track:b53664a2b18a6d55eb21a2385e4fd1ce17818d3a380c5788ec645f127e793a53` |
| 16 | `theorem` | [ofMul_image_zpowers_eq_zmultiples_ofMul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/ofmul-image-zpowers-eq-zmultiples-ofmul--edb5a4d69c03601866cddf32.md) | 106 | `result-track:edb5a4d69c03601866cddf32e352ef8728247e34cb8822dc35a4bdecd99f02a4` |
| 17 | `theorem` | [ofAdd_image_zmultiples_eq_zpowers_ofAdd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/ofadd-image-zmultiples-eq-zpowers-ofadd--3e9fc65cac256a8d57d0ce41.md) | 111 | `result-track:3e9fc65cac256a8d57d0ce41ff557760f4db4bc6c4b5fd89cf70797523553d51` |
| 18 | `instance` | [zpowers_isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpowers-ismulcommutative--ac080cb4deec88cc167a4620.md) | 123 | `declaration-track:ac080cb4deec88cc167a46208c9bd76c438779177d8d79151549315c4abcb7ae` |
| 19 | `theorem` | [zpowers_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpowers-le--10150dddb04a9ce1bda5339b.md) | 127 | `result-track:10150dddb04a9ce1bda5339b7709665be59be39daece612c61853a66dbcb912d` |
| 20 | `theorem` | [zpowers_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpowers-eq-bot--26e4f6672fbe0194bdaacad9.md) | 134 | `result-track:26e4f6672fbe0194bdaacad9e69f1ca8080694122be516bdaae4783e1b6bc7c1` |
| 21 | `theorem` | [zpowers_ne_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpowers-ne-bot--83a36d7a5b4df4ad5d1a9e78.md) | 137 | `result-track:83a36d7a5b4df4ad5d1a9e78d3eb85214f6cdf43142762eb39765a3d4d97ded9` |
| 22 | `theorem` | [zpowers_one_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpowers-one-eq-bot--38e3854dcfe5381c80060812.md) | 141 | `result-track:38e3854dcfe5381c80060812cb32e59f287973609b5b3b37f3e12e0bcc3f9c15` |
| 23 | `theorem` | [zpowers_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpowers-inv--ccd17515a390cfdc8f6b66f7.md) | 145 | `result-track:ccd17515a390cfdc8f6b66f79ecc860ae26ce0f8617fa9b2121ba5811b5df204` |
| 24 | `theorem` | [zpowers_mul_le_sup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/zpowers-mul-le-sup--ab597aa89a965534ac96efd2.md) | 151 | `result-track:ab597aa89a965534ac96efd2ccfd3823d97a1bd4438633a5c09cb286a015d3cb` |
| 25 | `theorem` | [Int.zmultiples_le_zmultiples_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/int-zmultiples-le-zmultiples-iff--59de285a5fc6fac8773c3e60.md) | 156 | `result-track:59de285a5fc6fac8773c3e60162e0e49df3c617c0fe8df9c1a0351c4a9df7a9b` |
| 26 | `theorem` | [Int.zmultiples_natAbs](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/int-zmultiples-natabs--726f2f9082788de34a2ba97b.md) | 160 | `result-track:726f2f9082788de34a2ba97b16101e6c70b8ad5f6c3e78c602005bfd3a042935` |
| 27 | `lemma` | [Int.addSubgroupClosure_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant590750abdbe10e20d0984b7f61e7c3eafc5b8f5d3e39cf778f96827a820ef2ca.lean/declarations/int-addsubgroupclosure-one--d2ab02d789843cdaf62a174a.md) | 164 | `result-track:d2ab02d789843cdaf62a174a0b3796356efcb24f8e386320169cacb8e520613f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
