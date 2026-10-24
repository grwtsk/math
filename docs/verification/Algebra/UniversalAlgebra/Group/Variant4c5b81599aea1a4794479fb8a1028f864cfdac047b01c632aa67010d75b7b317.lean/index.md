# Verification target: GRWTSK.Algebra.UniversalAlgebra.Group.Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53399d395a77ef1c585b8e33cc0dbadf7427ffcf",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53399d395a77ef1c585b8e33cc0dbadf7427ffcf`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_mem_Icc_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/inv-mem-icc-iff--358558d37256f880e342aef3.md) | 35 | `result-track:358558d37256f880e342aef354eb5934b83b8111b1dc59fe77f19e3498886780` |
| 2 | `theorem` | [inv_mem_Ico_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/inv-mem-ico-iff--755223f7d9c3d3bde0f36273.md) | 39 | `result-track:755223f7d9c3d3bde0f36273fe8a344a48455a61cfdd6f11358b5b5dac84f541` |
| 3 | `theorem` | [inv_mem_Ioc_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/inv-mem-ioc-iff--499218b5d5a9b69bacfdc4ec.md) | 43 | `result-track:499218b5d5a9b69bacfdc4eca8a6227ed74ffc0821dc1d768456c39286a7e387` |
| 4 | `theorem` | [inv_mem_Ioo_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/inv-mem-ioo-iff--3f45ea174e2e02f9120f2fbf.md) | 47 | `result-track:3f45ea174e2e02f9120f2fbfdbce0f7bb54a3facc091c4f4603b5836e079c058` |
| 5 | `theorem` | [add_mem_Icc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/add-mem-icc-iff-left--10accef393fe6c9b922d5311.md) | 58 | `result-track:10accef393fe6c9b922d5311a345ceca35ecc91ee335f0fb96405f62ac517398` |
| 6 | `theorem` | [add_mem_Ico_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/add-mem-ico-iff-left--faa1d492df8d2a203bd49a58.md) | 61 | `result-track:faa1d492df8d2a203bd49a58f2157000610313ea77692a2764f8ee4b82b2bf2e` |
| 7 | `theorem` | [add_mem_Ioc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/add-mem-ioc-iff-left--75576222b619306fb64c3f10.md) | 64 | `result-track:75576222b619306fb64c3f10fe8416cc41a766e4ffbc0771fd7f5d842ae82125` |
| 8 | `theorem` | [add_mem_Ioo_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/add-mem-ioo-iff-left--d02ff1d0afb86417523e8a8f.md) | 67 | `result-track:d02ff1d0afb86417523e8a8f3dc7cadfb06b763bd38469e1640df6279f013233` |
| 9 | `theorem` | [add_mem_Icc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/add-mem-icc-iff-right--78a408bc183a96e87e4e2bd9.md) | 72 | `result-track:78a408bc183a96e87e4e2bd991bdb29f40c41cec78f896cb1a1019dce7ce7a06` |
| 10 | `theorem` | [add_mem_Ico_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/add-mem-ico-iff-right--54077dfcc9a45a15777c968b.md) | 75 | `result-track:54077dfcc9a45a15777c968b924724afd1fcbe454993f3040d8b683b696c3b44` |
| 11 | `theorem` | [add_mem_Ioc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/add-mem-ioc-iff-right--fde07605f4fb518791a6b5ef.md) | 78 | `result-track:fde07605f4fb518791a6b5efd669c753ed6ec33854900b9141e2e06d20cc284a` |
| 12 | `theorem` | [add_mem_Ioo_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/add-mem-ioo-iff-right--cec3ca7d41ff119b60a36d9b.md) | 81 | `result-track:cec3ca7d41ff119b60a36d9b6e1702b50ae17b17ccb8002ebcd41bae09cd1807` |
| 13 | `theorem` | [sub_mem_Icc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-icc-iff-left--397d9adda1dd9bb494548d20.md) | 86 | `result-track:397d9adda1dd9bb494548d2071a0680e8fe01d1123b8c65092164e82b34355b2` |
| 14 | `theorem` | [sub_mem_Ico_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-ico-iff-left--7bab14f539cd1eb63ba02747.md) | 89 | `result-track:7bab14f539cd1eb63ba02747a663718d72a37c5d893c13c09fc8a8134aa00efb` |
| 15 | `theorem` | [sub_mem_Ioc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-ioc-iff-left--3a752407067716c761b727b1.md) | 92 | `result-track:3a752407067716c761b727b1ccdf5673b67092ed077f405836389180a4c283bb` |
| 16 | `theorem` | [sub_mem_Ioo_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-ioo-iff-left--4b20578fc1a3c9d0b63c1fd9.md) | 95 | `result-track:4b20578fc1a3c9d0b63c1fd9d96993601530ce3870ee84c5dd86232d217a989d` |
| 17 | `theorem` | [sub_mem_Icc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-icc-iff-right--f534871ea3270be0dbe79b61.md) | 100 | `result-track:f534871ea3270be0dbe79b61030a186d9d9559edbb968625109fc4685466aa72` |
| 18 | `theorem` | [sub_mem_Ico_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-ico-iff-right--9733463d51ce9d20e2b43845.md) | 103 | `result-track:9733463d51ce9d20e2b43845d6a3d4bd9a81b5f5dc4d90199b2f2b13efd52b6f` |
| 19 | `theorem` | [sub_mem_Ioc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-ioc-iff-right--8fbacf523ae763324d6afca7.md) | 106 | `result-track:8fbacf523ae763324d6afca7df674e37a88fd3d79513cdf30bb7ee78e402ab58` |
| 20 | `theorem` | [sub_mem_Ioo_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-ioo-iff-right--284757d1910f5717e870f96f.md) | 109 | `result-track:284757d1910f5717e870f96fbf1eae60fded4be6653526ee08ae095317dfa71c` |
| 21 | `theorem` | [mem_Icc_iff_abs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/mem-icc-iff-abs-le--595a7888172d06c24163035e.md) | 114 | `result-track:595a7888172d06c24163035e379630cb16262f0ad427aea3e807e858c6cfa518` |
| 22 | `theorem` | [sub_mem_Icc_zero_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-icc-zero-iff-right--c707299ef2427d039ce9cb13.md) | 122 | `result-track:c707299ef2427d039ce9cb131cac7ee8acaff9faf7451124f2eccd66e46cb18c` |
| 23 | `theorem` | [sub_mem_Ico_zero_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-ico-zero-iff-right--08057181b4ae1a80ab3462e4.md) | 125 | `result-track:08057181b4ae1a80ab3462e4840381cc86c810434638b33b248025e1315a24be` |
| 24 | `theorem` | [sub_mem_Ioc_zero_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-ioc-zero-iff-right--3c76fd73abdd9bfcafe77b49.md) | 128 | `result-track:3c76fd73abdd9bfcafe77b498ac68f49ff4d37f88c9de9983e39e50cb9b29f01` |
| 25 | `theorem` | [sub_mem_Ioo_zero_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/sub-mem-ioo-zero-iff-right--fd1097bce1f534e66716cbf7.md) | 131 | `result-track:fd1097bce1f534e66716cbf7e05dabd1ea4e79762dff091099e2e8327fe16732` |
| 26 | `theorem` | [nonempty_Ico_sdiff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/nonempty-ico-sdiff--0ca1a4b36da5ffe909333338.md) | 141 | `result-track:0ca1a4b36da5ffe909333338e4da74dfe892c058e6af6b350305feca2e22759f` |
| 27 | `theorem` | [pairwise_disjoint_Ioc_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ioc-mul-zpow--c502248afa12d61d38766a77.md) | 161 | `result-track:c502248afa12d61d38766a777ee9a9cd1c2601577ca57c40f252887c79289289` |
| 28 | `theorem` | [pairwise_disjoint_Ico_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ico-mul-zpow--45e0f50fe8be9e731f00afca.md) | 176 | `result-track:45e0f50fe8be9e731f00afca2e29ea97655b2801ed95a443da29c5632ce57bf6` |
| 29 | `theorem` | [pairwise_disjoint_Ioo_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ioo-mul-zpow--21243978d24a79737fc33364.md) | 191 | `result-track:21243978d24a79737fc3336403bb9b3f145b484e82c044bd368f17afce7fd78e` |
| 30 | `theorem` | [pairwise_disjoint_Ioc_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ioc-zpow--b39eeaed619919c1378dca8f.md) | 196 | `result-track:b39eeaed619919c1378dca8fca1ef13ae659cd6579bb65c095ccc2d6a3ada714` |
| 31 | `theorem` | [pairwise_disjoint_Ico_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ico-zpow--35569bb5eab523da34fd456f.md) | 201 | `result-track:35569bb5eab523da34fd456f9c9e65fecf7c213a0a55cc5d5a9aef61223b8e3b` |
| 32 | `theorem` | [pairwise_disjoint_Ioo_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ioo-zpow--e915b28af23e84bb32407b70.md) | 206 | `result-track:e915b28af23e84bb32407b7093f74bbadd4c2d5a4cd346d11f39aa1c6b46e4a1` |
| 33 | `theorem` | [pairwise_disjoint_Ioc_add_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ioc-add-intcast--08b314b465ccc4ce3b501d1d.md) | 216 | `result-track:08b314b465ccc4ce3b501d1dc2f702e8768b594d488e7f5b03683f982f3274cb` |
| 34 | `theorem` | [pairwise_disjoint_Ico_add_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ico-add-intcast--10f6c63a4c7af8fe9d9e454e.md) | 221 | `result-track:10f6c63a4c7af8fe9d9e454efc1e84832bfd27886712ea69f79eefef58a5a605` |
| 35 | `theorem` | [pairwise_disjoint_Ioo_add_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ioo-add-intcast--47dde92ba026c2ad1fcd7b66.md) | 226 | `result-track:47dde92ba026c2ad1fcd7b660b7c01dcfdb90d066a0dbe652632e82e1966af48` |
| 36 | `theorem` | [pairwise_disjoint_Ico_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ico-intcast--c563ee6846c04d7e907296b0.md) | 233 | `result-track:c563ee6846c04d7e907296b06e3300327e35e1691bc47d2ee9fd96f9535e26fa` |
| 37 | `theorem` | [pairwise_disjoint_Ioo_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ioo-intcast--0a94af4188e05d168e480d07.md) | 237 | `result-track:0a94af4188e05d168e480d079c5704a5b6bf9e5b209eb44202c5428b3f19055d` |
| 38 | `theorem` | [pairwise_disjoint_Ioc_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4c5b81599aea1a4794479fb8a1028f864cfdac047b01c632aa67010d75b7b317.lean/declarations/pairwise-disjoint-ioc-intcast--b4cc830a907c935fe803fd56.md) | 240 | `result-track:b4cc830a907c935fe803fd563a2457201f368bbda9aac3f788fea1cfaa6b93bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
