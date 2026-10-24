# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Map2.Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d97aa0cf77c862de4bf8940ffb391ca61e19f52",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d97aa0cf77c862de4bf8940ffb391ca61e19f52`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map₂Left'_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-left-nil-right--0db8531b0aba980a2869f3bf.md) | 54 | `result-track:0db8531b0aba980a2869f3bfc9eb0a7fcb6a11100f1b26ec8df528c356c2d27b` |
| 2 | `theorem` | [map₂Right'_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-nil-left--28f7da0c9e0df4c88347ccc7.md) | 66 | `result-track:28f7da0c9e0df4c88347ccc728a2959fd05e9d31386015f75bab0cf3e051f91a` |
| 3 | `theorem` | [map₂Right'_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-nil-right--9e7e31d93a30accb307cb0e4.md) | 69 | `result-track:9e7e31d93a30accb307cb0e47e540cd0b554278218a806ea134e0c2c2f8a66fa` |
| 4 | `theorem` | [map₂Right'_nil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-nil-cons--06223ed71e41a799e264208a.md) | 73 | `result-track:06223ed71e41a799e264208a5745f5714b7e713ca5901c4f1376dd5b2729c32f` |
| 5 | `theorem` | [map₂Right'_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-cons-cons--a79f8a550b8f4df79e3e25a7.md) | 77 | `result-track:a79f8a550b8f4df79e3e25a7ecd6e45fa2abfb80e37863cbe3114507c05a6b27` |
| 6 | `theorem` | [nil_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/nil-zipwith--2fe4ebc000f3b63f745507dd.md) | 87 | `result-track:2fe4ebc000f3b63f745507dd113bf926e11cdbb3308f1550dc9292945cb4714b` |
| 7 | `theorem` | [zipWith_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipwith-nil--2cd2427c89e16ee6cf841806.md) | 89 | `result-track:2cd2427c89e16ee6cf84180671c0baa114228f7d27f554604fbab2bef8002494` |
| 8 | `theorem` | [zipWith_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipwith-flip--1ab50c2f743673dbc6aca982.md) | 92 | `result-track:1ab50c2f743673dbc6aca98242ca1e8b22fa7368696b035d8e6270b0dc20725b` |
| 9 | `theorem` | [zipLeft'_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipleft-nil-right--f396904cafc8cc34bfd73d01.md) | 108 | `result-track:f396904cafc8cc34bfd73d01e1e9be7caf264d04ddcc56a97028e36c178973e5` |
| 10 | `theorem` | [zipLeft'_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipleft-nil-left--ec1fe56f9bd4015f08baae46.md) | 112 | `result-track:ec1fe56f9bd4015f08baae46110137b15fe4c102a8510c52a7ff0408c625f544` |
| 11 | `theorem` | [zipLeft'_cons_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipleft-cons-nil--953a37fc468464d381267cce.md) | 116 | `result-track:953a37fc468464d381267cce41697aca16f5931583d7d78aa7ff9ae472a1630b` |
| 12 | `theorem` | [zipLeft'_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipleft-cons-cons--4ceffdd13f5fe46daf012c0f.md) | 121 | `result-track:4ceffdd13f5fe46daf012c0fee92e312146b21369d2f2a082bebedcdc9e7d769` |
| 13 | `theorem` | [zipRight'_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipright-nil-left--d9684e3c144de99039a0c3fd.md) | 136 | `result-track:d9684e3c144de99039a0c3fd4dce3f92dd97e6032dc46cd531557f5819ac1424` |
| 14 | `theorem` | [zipRight'_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipright-nil-right--b791f6e7972e0fd00f1acf66.md) | 140 | `result-track:b791f6e7972e0fd00f1acf66349557e217881cad415c1265ad2ad500f73d1cc0` |
| 15 | `theorem` | [zipRight'_nil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipright-nil-cons--5ad323f5b48ced1b60a04a02.md) | 144 | `result-track:5ad323f5b48ced1b60a04a02d16b99bd8e41b6780c10312db6e26289966b32b9` |
| 16 | `theorem` | [zipRight'_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipright-cons-cons--858fe5779005fb6504e96c14.md) | 149 | `result-track:858fe5779005fb6504e96c14c4335b8af3395d90ac65ea6b754e6601fc65a613` |
| 17 | `theorem` | [map₂Left_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-left-nil-right--e9ee83fb549634202ac7e557.md) | 166 | `result-track:e9ee83fb549634202ac7e557bf634ff413c8e747cd9ffb00d4d2609fef37c4ea` |
| 18 | `theorem` | [map₂Left_eq_map₂Left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-left-eq-map-left--7e584a9014b6e576e4f0ee14.md) | 168 | `result-track:7e584a9014b6e576e4f0ee14be4d35fe3198c79204ddcb1fb7fba7ba1cf21b2b` |
| 19 | `theorem` | [map₂Left_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-left-eq-zipwith--01fae61ab0704996281ca7ca.md) | 173 | `result-track:01fae61ab0704996281ca7caf2703f613b62bbb5a27434942528dd381c02f761` |
| 20 | `theorem` | [map₂Right_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-nil-left--d0a0955aa3c518ce88bef275.md) | 192 | `result-track:d0a0955aa3c518ce88bef275214652b48f1e1985e64d9f4e630947e9df6b5bd1` |
| 21 | `theorem` | [map₂Right_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-nil-right--4897d2fc8a864c9167e2a146.md) | 195 | `result-track:4897d2fc8a864c9167e2a1469e8a64723bcfe0a6b2430c43dcc3876825efc43b` |
| 22 | `theorem` | [map₂Right_nil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-nil-cons--4194e7d55d19dbc53d4632a6.md) | 199 | `result-track:4194e7d55d19dbc53d4632a6550fce315ab16a918f2ff8032bc01f0f1326947f` |
| 23 | `theorem` | [map₂Right_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-cons-cons--bdcad3d9eff7347c4d91748a.md) | 203 | `result-track:bdcad3d9eff7347c4d91748ae8cf7b9eb964f739b62ff520f8bba09e22447619` |
| 24 | `theorem` | [map₂Right_eq_map₂Right'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-eq-map-right--489c8a9aaec08a0895b2e725.md) | 207 | `result-track:489c8a9aaec08a0895b2e725ebd00de41f676fa50e441da18e02683f3ab71381` |
| 25 | `theorem` | [map₂Right_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/map-right-eq-zipwith--32146fce9ba2f85d262142ee.md) | 210 | `result-track:32146fce9ba2f85d262142ee542a1693175400feea8a1390dcedfa44c905fab9` |
| 26 | `theorem` | [zipLeft_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipleft-nil-right--21d040e68e75108fb9c92214.md) | 224 | `result-track:21d040e68e75108fb9c922149b1e89c723416f4ef7887720a0f38e96c42d9461` |
| 27 | `theorem` | [zipLeft_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipleft-nil-left--8d54bc835aacbcaea0219719.md) | 228 | `result-track:8d54bc835aacbcaea021971998861ee94ae31538b824735054f10df4aa61bbde` |
| 28 | `theorem` | [zipLeft_cons_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipleft-cons-nil--7425bebae6779af741b6a725.md) | 232 | `result-track:7425bebae6779af741b6a7255739d788e6eff9ef31e8542085ea4f649c708c75` |
| 29 | `theorem` | [zipLeft_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipleft-cons-cons--12ebd3ac9cd5968dde417c6a.md) | 237 | `result-track:12ebd3ac9cd5968dde417c6abc93b3eb74b02e80d3f53513fe5e9d1b7b4ab90d` |
| 30 | `theorem` | [zipLeft_eq_zipLeft'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipleft-eq-zipleft--e322c0ca02c56ef0685d46f6.md) | 240 | `result-track:e322c0ca02c56ef0685d46f654176e75902dae82fa1ccb58a58a6f6da1f9c046` |
| 31 | `theorem` | [zipRight_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipright-nil-left--c0d6a60c1009ea59a781c53c.md) | 260 | `result-track:c0d6a60c1009ea59a781c53c30387b8fc503534884d72de26ba9aaa0377801dd` |
| 32 | `theorem` | [zipRight_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipright-nil-right--08c4807bc564b77a20c00621.md) | 264 | `result-track:08c4807bc564b77a20c0062139857adb8fd011a791924bdbec08d57479408e62` |
| 33 | `theorem` | [zipRight_nil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipright-nil-cons--a4626e0f0a8d3e1e65cc54a2.md) | 268 | `result-track:a4626e0f0a8d3e1e65cc54a2ca5bea74bfacd8cad8977a50508c70de8e3c30b8` |
| 34 | `theorem` | [zipRight_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipright-cons-cons--ac51a420402161c90781f8ff.md) | 273 | `result-track:ac51a420402161c90781f8ff4890997175d638fda3be764242ed55f375dc09fe` |
| 35 | `theorem` | [zipRight_eq_zipRight'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Map2/Variantfa9d9b3272e4373c3f665c5bb7479439f6a6b12b14b9a1bd170238f3daa830e8.lean/declarations/zipright-eq-zipright--ddf750f86db18c11fbfcc8ed.md) | 276 | `result-track:ddf750f86db18c11fbfcc8edba29da5a9db22cfb30ecbcb0f26f15be392aa588` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
