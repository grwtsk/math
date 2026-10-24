# Verification target: GRWTSK.Algebra.Rearrangement.Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3304723ddbfd50f92976a5b4ba163534ba3cc337",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/index.md) · [Full source](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3304723ddbfd50f92976a5b4ba163534ba3cc337`.

Source path: `GRWTSK/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Synonym` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Monovary` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonovaryOn.sum_smul_comp_perm_le_sum_smul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-smul-comp-perm-le-sum-smul--d1b163f2c4d94861b788c205.md) | 75 | `result-track:d1b163f2c4d94861b788c205727dd79c0186f20e72755d38fbcfd86ed3632787` |
| 2 | `theorem` | [AntivaryOn.sum_smul_le_sum_smul_comp_perm](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-smul-le-sum-smul-comp-perm--e2727acd60fd61ecc3acce5e.md) | 124 | `result-track:e2727acd60fd61ecc3acce5eff6df5ba088bd1f2f20e3ea9081d7049e9f15f7e` |
| 3 | `theorem` | [MonovaryOn.sum_comp_perm_smul_le_sum_smul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-comp-perm-smul-le-sum-smul--1847ce70f6c77ba41e0235c6.md) | 130 | `result-track:1847ce70f6c77ba41e0235c68fdf1d8dbf830151547a8f4cfef9f62b2be8973c` |
| 4 | `theorem` | [AntivaryOn.sum_smul_le_sum_comp_perm_smul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-smul-le-sum-comp-perm-smul--7c57e0b1f04bb11e76146bde.md) | 138 | `result-track:7c57e0b1f04bb11e76146bde5845e1eb6f8bddef7e1b5d9e29c02532b0a2541c` |
| 5 | `theorem` | [Monovary.sum_smul_comp_perm_le_sum_smul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-smul-comp-perm-le-sum-smul--46068b9a2908806758f7bcfb.md) | 146 | `result-track:46068b9a2908806758f7bcfb032dcb7a1810ede68499538cc1bd9053bd84d795` |
| 6 | `theorem` | [Antivary.sum_smul_le_sum_smul_comp_perm](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-smul-le-sum-smul-comp-perm--05a73938e7122f0be10fb128.md) | 152 | `result-track:05a73938e7122f0be10fb128810751df3f20d295ae334a2e26657417be85356a` |
| 7 | `theorem` | [Monovary.sum_comp_perm_smul_le_sum_smul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-comp-perm-smul-le-sum-smul--36019c2a8f2b7c5acb6e423b.md) | 158 | `result-track:36019c2a8f2b7c5acb6e423b10771875fec21be21b67f087432b835ade3dce6c` |
| 8 | `theorem` | [Antivary.sum_smul_le_sum_comp_perm_smul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-smul-le-sum-comp-perm-smul--fcb7d23d1ef3d3a8a86e133b.md) | 164 | `result-track:fcb7d23d1ef3d3a8a86e133b18f2cbaab3282c1df962e109511b51439fb09cc9` |
| 9 | `theorem` | [MonovaryOn.sum_smul_comp_perm_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-smul-comp-perm-eq-sum-smul-iff--d61363b58fd0466b1b7e8c77.md) | 178 | `result-track:d61363b58fd0466b1b7e8c77f70daa08cb33a870333bf586f5a2da806d7e70d5` |
| 10 | `theorem` | [AntivaryOn.sum_smul_comp_perm_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-smul-comp-perm-eq-sum-smul-iff--dedb13f957c28d65d2a0d0be.md) | 206 | `result-track:dedb13f957c28d65d2a0d0be8ab0042dbdb67aa2499a6ec28bbc8a5a81658c75` |
| 11 | `theorem` | [MonovaryOn.sum_comp_perm_smul_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-comp-perm-smul-eq-sum-smul-iff--8e0a99a8731618597194b53b.md) | 214 | `result-track:8e0a99a8731618597194b53bc7554c037a13bfe3c61c40b75b7450cf14773909` |
| 12 | `theorem` | [AntivaryOn.sum_comp_perm_smul_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-comp-perm-smul-eq-sum-smul-iff--51cbd8f73b2f862121e59160.md) | 234 | `result-track:51cbd8f73b2f862121e591602696d80185b0362bee7f62bfa83f6dd2b0c51b98` |
| 13 | `theorem` | [Monovary.sum_smul_comp_perm_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-smul-comp-perm-eq-sum-smul-iff--ad46a50fcababb4a221f9307.md) | 244 | `result-track:ad46a50fcababb4a221f93072b3f87f01cd19e5b23b3b4087f241943119e2967` |
| 14 | `theorem` | [Monovary.sum_comp_perm_smul_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-comp-perm-smul-eq-sum-smul-iff--e5cbcae5812329fdb93006f6.md) | 251 | `result-track:e5cbcae5812329fdb93006f6fcf959ee0bd6a656ad92e702865584ab1183deb3` |
| 15 | `theorem` | [Antivary.sum_smul_comp_perm_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-smul-comp-perm-eq-sum-smul-iff--32b8ce5d3d7fbbeb3fa4e657.md) | 258 | `result-track:32b8ce5d3d7fbbeb3fa4e657e7468ea606412526a19e0e63f555e9a5c14f3368` |
| 16 | `theorem` | [Antivary.sum_comp_perm_smul_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-comp-perm-smul-eq-sum-smul-iff--30b01d9580bb8aff851be1da.md) | 265 | `result-track:30b01d9580bb8aff851be1dae37bf1d22d367edc531d0ee8f0972a5be8abc45b` |
| 17 | `theorem` | [MonovaryOn.sum_smul_comp_perm_lt_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-smul-comp-perm-lt-sum-smul-iff--767e0b903c60f39cd6eceb83.md) | 279 | `result-track:767e0b903c60f39cd6eceb8319edf5e4c45e7f46ce54b5f6c625120fa659cf6c` |
| 18 | `theorem` | [AntivaryOn.sum_smul_lt_sum_smul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-smul-lt-sum-smul-comp-perm-iff--0221c4c9bfdf49705896f118.md) | 288 | `result-track:0221c4c9bfdf49705896f1180f8c3e1d7fe41a39f73eda222cb4f14fa96dc175` |
| 19 | `theorem` | [MonovaryOn.sum_comp_perm_smul_lt_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-comp-perm-smul-lt-sum-smul-iff--79faad6d055c987a90269e88.md) | 297 | `result-track:79faad6d055c987a90269e88e1785b458cf6c2a64cc0157663fb0e700bde10fe` |
| 20 | `theorem` | [AntivaryOn.sum_smul_lt_sum_comp_perm_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-smul-lt-sum-comp-perm-smul-iff--6f9e46665cb779ee80a980e5.md) | 306 | `result-track:6f9e46665cb779ee80a980e52c6c18f9a273eb48bf8a1bfd00052936afa95860` |
| 21 | `theorem` | [Monovary.sum_smul_comp_perm_lt_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-smul-comp-perm-lt-sum-smul-iff--ef21df2fa97cbad967db34c2.md) | 317 | `result-track:ef21df2fa97cbad967db34c28645ed4b93dd074d58f28ecb305c2470b832c8c8` |
| 22 | `theorem` | [Monovary.sum_comp_perm_smul_lt_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-comp-perm-smul-lt-sum-smul-iff--7f009652d202bb01a46c81f6.md) | 324 | `result-track:7f009652d202bb01a46c81f656c119f775459aef536f8c5ebdcb08099d1f427a` |
| 23 | `theorem` | [Antivary.sum_smul_lt_sum_smul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-smul-lt-sum-smul-comp-perm-iff--267bbedfc5b460a144d9b894.md) | 331 | `result-track:267bbedfc5b460a144d9b894492df8c9a342635545435effe0b1609468770562` |
| 24 | `theorem` | [Antivary.sum_smul_lt_sum_comp_perm_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-smul-lt-sum-comp-perm-smul-iff--4b230c1da1e79554443c2e70.md) | 338 | `result-track:4b230c1da1e79554443c2e70797f8fd84a2c1e0be62fc30c1d48d1222fd49954` |
| 25 | `theorem` | [MonovaryOn.sum_mul_comp_perm_le_sum_mul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-mul-comp-perm-le-sum-mul--062bd85196e7a6366d5d72cc.md) | 356 | `result-track:062bd85196e7a6366d5d72cc5153bb69d02309b81263b56d5605a47d187088ab` |
| 26 | `theorem` | [MonovaryOn.sum_mul_comp_perm_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-mul-comp-perm-eq-sum-mul-iff--2226e5781390b164cb11d12e.md) | 363 | `result-track:2226e5781390b164cb11d12e73803199bd3c478105bcfb1e7bfadaa68d04d696` |
| 27 | `theorem` | [MonovaryOn.sum_mul_comp_perm_lt_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-mul-comp-perm-lt-sum-mul-iff--ec919f7231cd91fa1be1cbe2.md) | 371 | `result-track:ec919f7231cd91fa1be1cbe2fb808c2ea3dbe9751fb6430ee5b4a85f642dc585` |
| 28 | `theorem` | [MonovaryOn.sum_comp_perm_mul_le_sum_mul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-comp-perm-mul-le-sum-mul--d908165e21c6edc29cebfe70.md) | 378 | `result-track:d908165e21c6edc29cebfe70999c2abb4401647be23592b50c5c015d31e312c8` |
| 29 | `theorem` | [MonovaryOn.sum_comp_perm_mul_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-comp-perm-mul-eq-sum-mul-iff--52c0ffd20b850573ee044c4f.md) | 385 | `result-track:52c0ffd20b850573ee044c4f0aecb028899895d66f241e4b86725841dd8b6b4f` |
| 30 | `theorem` | [MonovaryOn.sum_comp_perm_mul_lt_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovaryon-sum-comp-perm-mul-lt-sum-mul-iff--fdf04c064b16264c66719293.md) | 393 | `result-track:fdf04c064b16264c66719293d709e0673b764d9d13f1dc325cfefe97618a3aaf` |
| 31 | `theorem` | [AntivaryOn.sum_mul_le_sum_mul_comp_perm](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-mul-le-sum-mul-comp-perm--f0f51f4c0b23881ffe2f441b.md) | 400 | `result-track:f0f51f4c0b23881ffe2f441bb3746bae761e641dcfa9e50a166cefe66022e9a7` |
| 32 | `theorem` | [AntivaryOn.sum_mul_eq_sum_mul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-mul-eq-sum-mul-comp-perm-iff--426e6d26a982f3b1af73fcf3.md) | 407 | `result-track:426e6d26a982f3b1af73fcf32d8e836e4b2ff6d54637bd303aaad85d19887c34` |
| 33 | `theorem` | [AntivaryOn.sum_mul_lt_sum_mul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-mul-lt-sum-mul-comp-perm-iff--5e361aba9aa28471bc0bbe6b.md) | 415 | `result-track:5e361aba9aa28471bc0bbe6bcf3740344b3fcdba647b209002388ee401efbd46` |
| 34 | `theorem` | [AntivaryOn.sum_mul_le_sum_comp_perm_mul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-mul-le-sum-comp-perm-mul--a33bbfa7430bf88735f18e11.md) | 422 | `result-track:a33bbfa7430bf88735f18e11ddce0b57a61c96f38b9d0397478ec9518b881481` |
| 35 | `theorem` | [AntivaryOn.sum_comp_perm_mul_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-comp-perm-mul-eq-sum-mul-iff--7417d269b9b6e39cac987a67.md) | 429 | `result-track:7417d269b9b6e39cac987a67db8d54024c63c71012716ff4174d8d8766274d02` |
| 36 | `theorem` | [AntivaryOn.sum_mul_lt_sum_comp_perm_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivaryon-sum-mul-lt-sum-comp-perm-mul-iff--58e1120e0c5dddaf4daf5de8.md) | 437 | `result-track:58e1120e0c5dddaf4daf5de895944078a78fab2dd9ec955578d6d4645e59554a` |
| 37 | `theorem` | [Monovary.sum_mul_comp_perm_le_sum_mul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-mul-comp-perm-le-sum-mul--068aa3c9d2318c51ee4d9297.md) | 446 | `result-track:068aa3c9d2318c51ee4d92973e565bffb451da7d586c98be52646bad4565fa21` |
| 38 | `theorem` | [Monovary.sum_mul_comp_perm_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-mul-comp-perm-eq-sum-mul-iff--d21d16a5f448c1bdb2491515.md) | 453 | `result-track:d21d16a5f448c1bdb2491515d1107a07881495f9883cc1353043a21449e82bda` |
| 39 | `theorem` | [Monovary.sum_mul_comp_perm_lt_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-mul-comp-perm-lt-sum-mul-iff--673ad12b68b9b58596d73037.md) | 460 | `result-track:673ad12b68b9b58596d730378196b015dfaff6f4e7a2595718d0d3ad4ba4038a` |
| 40 | `theorem` | [Monovary.sum_comp_perm_mul_le_sum_mul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-comp-perm-mul-le-sum-mul--d272213a61993af055545198.md) | 466 | `result-track:d272213a61993af055545198b9b08021580fd4338c3d92f08b8f0b00feabd2d2` |
| 41 | `theorem` | [Monovary.sum_comp_perm_mul_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-comp-perm-mul-eq-sum-mul-iff--cb714b25a3ef9eafd1554a64.md) | 473 | `result-track:cb714b25a3ef9eafd1554a64802dc14199114cfdeba05f49fbae99d5e9aba4ab` |
| 42 | `theorem` | [Monovary.sum_comp_perm_mul_lt_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/monovary-sum-comp-perm-mul-lt-sum-mul-iff--177a25d906eebba83f6ef8c4.md) | 480 | `result-track:177a25d906eebba83f6ef8c4c4a59daacf2859af5b9e09ea0c7df607e5145cf4` |
| 43 | `theorem` | [Antivary.sum_mul_le_sum_mul_comp_perm](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-mul-le-sum-mul-comp-perm--cfbe92668777bcd0fb0b767b.md) | 486 | `result-track:cfbe92668777bcd0fb0b767b560a9072a1cce5b26b32d2d3ab6445083bbb165f` |
| 44 | `theorem` | [Antivary.sum_mul_eq_sum_mul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-mul-eq-sum-mul-comp-perm-iff--4ff6c265f5f760c6e3bcbb88.md) | 493 | `result-track:4ff6c265f5f760c6e3bcbb88562f822efd221f8c7b21787323800e08f7657775` |
| 45 | `theorem` | [Antivary.sum_mul_lt_sum_mul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-mul-lt-sum-mul-comp-perm-iff--33790af1ad3cc5452e375cec.md) | 500 | `result-track:33790af1ad3cc5452e375cec857b68b5cacbe0e4fdb11c52433fc44717d7dc8a` |
| 46 | `theorem` | [Antivary.sum_mul_le_sum_comp_perm_mul](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-mul-le-sum-comp-perm-mul--5d822a667aea762c0f687392.md) | 506 | `result-track:5d822a667aea762c0f687392fa4d936f57a071964834fa45ce2fcffb901a3889` |
| 47 | `theorem` | [Antivary.sum_comp_perm_mul_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-comp-perm-mul-eq-sum-mul-iff--afdaa45cf0c8c8d033c77a76.md) | 513 | `result-track:afdaa45cf0c8c8d033c77a76d3cd80d06c5e21cd30dd32fd3ec4ef0288a8902f` |
| 48 | `theorem` | [Antivary.sum_mul_lt_sum_comp_perm_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/declarations/antivary-sum-mul-lt-sum-comp-perm-mul-iff--208a3d296649cbef249f3f49.md) | 520 | `result-track:208a3d296649cbef249f3f4920da84a3f86f07dfeb84c2b342ec74c221e7738b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
