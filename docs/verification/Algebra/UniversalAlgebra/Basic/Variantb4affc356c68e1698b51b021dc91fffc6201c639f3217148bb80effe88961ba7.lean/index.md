# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a15c5282dbc28247f9e08474b4e25b165731e40",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a15c5282dbc28247f9e08474b4e25b165731e40`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean.json)

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
| 1 | `class` | [NonnegHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/nonneghomclass--c04517fef1553c90aecdbf2a.md) | 81 | `declaration-track:c04517fef1553c90aecdbf2a242c77da2a8248af587599b2d87330708d7cf0b3` |
| 2 | `class` | [SubadditiveHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/subadditivehomclass--66109d7172e4fd5d5f79623d.md) | 86 | `declaration-track:66109d7172e4fd5d5f79623de97b625875bf436314dcd085bcb254ecef8c7612` |
| 3 | `class` | [SubmultiplicativeHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/submultiplicativehomclass--d5c915507bcc4cf899ec2747.md) | 93 | `declaration-track:d5c915507bcc4cf899ec2747b375274b256dc754a90572e454c059c20f55d226` |
| 4 | `class` | [MulLEAddHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/mulleaddhomclass--a62cf34e914e46f20229821f.md) | 100 | `declaration-track:a62cf34e914e46f20229821fbcd5d4b139cf9b5df4155a6f5342d25bd132ccb6` |
| 5 | `class` | [NonarchimedeanHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/nonarchimedeanhomclass--375966d1d14b8405884ffba4.md) | 106 | `declaration-track:375966d1d14b8405884ffba464737fea8ccea17514871b932ab25b57858036c4` |
| 6 | `theorem` | [map_zero_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/map-zero-le--3187100c21256f282a13a265.md) | 126 | `result-track:3187100c21256f282a13a265504e694be10989a20f9eae767615fa5c52d51550` |
| 7 | `theorem` | [le_map_mul_map_div](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/le-map-mul-map-div--5ce6bf4ed5baa8817de5b3be.md) | 132 | `result-track:5ce6bf4ed5baa8817de5b3be1a5d152202bbd07ffa955d3da4e10461bef77984` |
| 8 | `theorem` | [le_map_add_map_div](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/le-map-add-map-div--1dd1811e4b64b9b7db1d1c54.md) | 137 | `result-track:1dd1811e4b64b9b7db1d1c542e21f0cf96595db9d1c17a750656a45729abb111` |
| 9 | `theorem` | [le_map_div_mul_map_div](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/le-map-div-mul-map-div--d4d154852f81e0fa9ce82029.md) | 142 | `result-track:d4d154852f81e0fa9ce8202932166f17dbc5673f19c7ae8a37da22438a969fbd` |
| 10 | `theorem` | [le_map_div_add_map_div](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/le-map-div-add-map-div--5fb32c2ce87532d94b3e3c4c.md) | 147 | `result-track:5fb32c2ce87532d94b3e3c4c2a57f3f00cadf085bb7c0488fb2f61689c8e3f25` |
| 11 | `class` | [AddGroupSeminormClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/addgroupseminormclass--4dffda82a643920597e4c41d.md) | 158 | `declaration-track:4dffda82a643920597e4c41df755d361046e132432c44b957bdae546162858eb` |
| 12 | `class` | [GroupSeminormClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/groupseminormclass--ffde29a93b749bd1cc64b0f2.md) | 170 | `declaration-track:ffde29a93b749bd1cc64b0f2af704ed89a0674f38a76a01cb1e6dfc8468c2958` |
| 13 | `class` | [AddGroupNormClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/addgroupnormclass--37f6fac1519598eafad903a5.md) | 182 | `declaration-track:37f6fac1519598eafad903a560b7563e98f57a622fb97f1963fcdf99424a550d` |
| 14 | `class` | [GroupNormClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/groupnormclass--52214807557a0fa0a088b0d0.md) | 192 | `declaration-track:52214807557a0fa0a088b0d0c7114104d2262b5300d7a8cc2c7c623f485ab499` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/instance--29666359fe2c501dd358e2a2.md) | 209 | `declaration-track:29666359fe2c501dd358e2a2727474312fede4af98af580fcc5b2a4aa409e116` |
| 16 | `theorem` | [map_div_le_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/map-div-le-add--facbcced77e7638a546f46b2.md) | 218 | `result-track:facbcced77e7638a546f46b2759991c5710e01faa607ea5874f19259f1b5ea48` |
| 17 | `theorem` | [map_div_rev](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/map-div-rev--19f64f170b522fc19ca020ce.md) | 223 | `result-track:19f64f170b522fc19ca020cea3f63c5e9c86fd6feb2e6693ff0299acf3945ce1` |
| 18 | `theorem` | [map_inv_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/map-inv-mul--e92436d9ce8d728fea784d1d.md) | 226 | `result-track:e92436d9ce8d728fea784d1d0035bbefe44b0506d6394fe3cd90bbc92df33007` |
| 19 | `theorem` | [le_map_add_map_div'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/le-map-add-map-div--b97396b904c9e8471a64a10d.md) | 231 | `result-track:b97396b904c9e8471a64a10dde8babe0da1af6c71bc4c5555ffa38032b342550` |
| 20 | `theorem` | [abs_sub_map_le_div](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/abs-sub-map-le-div--32a951918313fe870c58bfb0.md) | 237 | `result-track:32a951918313fe870c58bfb045f9080ea0ac2ebc6570b851bda520be5fa3ee4d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/instance--13facb09684f167f9f1845d8.md) | 245 | `declaration-track:13facb09684f167f9f1845d8f580f8f37715306d3d89134b32187edd0a729ad5` |
| 22 | `theorem` | [map_eq_zero_iff_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/map-eq-zero-iff-eq-one--1f56aa157ce6d2256eb3c502.md) | 259 | `result-track:1f56aa157ce6d2256eb3c502024dce0ee479ebd8f228d037d00ac4213d87e753` |
| 23 | `theorem` | [map_ne_zero_iff_ne_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/map-ne-zero-iff-ne-one--ec7c228b799e0cfbdf0edfa3.md) | 265 | `result-track:ec7c228b799e0cfbdf0edfa320184f0257453fc6cb037daadfca98dc74b5dfde` |
| 24 | `theorem` | [map_pos_of_ne_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/map-pos-of-ne-one--1fb6dd3a645adc3bf8307cd4.md) | 271 | `result-track:1fb6dd3a645adc3bf8307cd497e58f22394eb1cf43dc969ad2498570a4c26379` |
| 25 | `class` | [RingSeminormClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/ringseminormclass--5a751e5c6176c16978cf516a.md) | 282 | `declaration-track:5a751e5c6176c16978cf516a03093e4f0b85aa94c17f763dfc600ed2fbb21b4d` |
| 26 | `class` | [RingNormClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/ringnormclass--929b60d928e4d1e7884fc9c4.md) | 289 | `declaration-track:929b60d928e4d1e7884fc9c4db0affdcad6f66ec6d4110e0cac9ad28df72c5a6` |
| 27 | `class` | [MulRingSeminormClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/mulringseminormclass--279e6e00e7155bbf13b5f46c.md) | 297 | `declaration-track:279e6e00e7155bbf13b5f46cb96afb66c25310a070fa81efcf0b9cf3c4a5f55d` |
| 28 | `class` | [MulRingNormClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/mulringnormclass--64220fbba7d0fcb733044848.md) | 309 | `declaration-track:64220fbba7d0fcb7330448486c78f0eb69ab7b91d6d0dd3503387152523ab0d1` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/instance--7827710ef0f8d128067fe792.md) | 315 | `declaration-track:7827710ef0f8d128067fe7926cd43399e85083cde0912309312c38f975e8bf0b` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/instance--053f7258a0bec853c28153c2.md) | 321 | `declaration-track:053f7258a0bec853c28153c2421f7ee8dc237706c4028d9e5f3ffd35cf1833b9` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantb4affc356c68e1698b51b021dc91fffc6201c639f3217148bb80effe88961ba7.lean/declarations/instance--b4a74d84186b4e3c76501676.md) | 326 | `declaration-track:b4a74d84186b4e3c765016763201d55a3715f4b62aa2b71bef81d9632f62249b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
