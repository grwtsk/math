# Verification target: GRWTSK.Algebra.GroupTheory.Commute.Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4b5c45e808516ee1335b4c49161c09005cf5c9c",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4b5c45e808516ee1335b4c49161c09005cf5c9c`.

Source path: `GRWTSK/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Commute](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/commute--e5de1dfd48b0dea861e35922.md) | 42 | `declaration-track:e5de1dfd48b0dea861e3592222ecf6993c11f75b8d30e0431acd372b4c35b444` |
| 2 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/eq--4159d16bd45c0f072a76620a.md) | 55 | `result-track:4159d16bd45c0f072a76620ae6745785b054a17dce379939bb8288a47bb28c16` |
| 3 | `theorem` | [refl](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/refl--8af57e479b577e2f550240aa.md) | 62 | `result-track:8af57e479b577e2f550240aa3705930d5831d06ae40b7425b40d155db43ed718` |
| 4 | `theorem` | [symm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/symm--5580b2e229b6b1d43849ad1b.md) | 69 | `result-track:5580b2e229b6b1d43849ad1bf906980d7065e17ec5ee32d2a2c880f62ce2c5cd` |
| 5 | `theorem` | [semiconjBy](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/semiconjby--4ff7ade0a28f0528eb1759f0.md) | 75 | `result-track:4ff7ade0a28f0528eb1759f0b5bdeb7b6c844f46668bbce22cd9150337b1b288` |
| 6 | `theorem` | [symm_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/symm-iff--bfd12782530271ad50817843.md) | 81 | `result-track:bfd12782530271ad50817843db1f1e4a646e61d6ee2eee04dba41b1dcc447ebb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/instance--1f86d2d1f1e1dadce78467a8.md) | 87 | `declaration-track:1f86d2d1f1e1dadce78467a8322ea8eebf4e6cce605a9b123f05693df5bfbfa6` |
| 8 | `instance` | [on_isRefl](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/on-isrefl--a1270e4e946f3ca509eac485.md) | 92 | `declaration-track:a1270e4e946f3ca509eac485455ec587f25a9a69da11e86db2d922f6b6493411` |
| 9 | `theorem` | [mul_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/mul-right--b2c888bab543f885c67e4123.md) | 106 | `result-track:b2c888bab543f885c67e41237fd9505eafd1f528ab81ecdfcf9f7ea140e23aea` |
| 10 | `theorem` | [mul_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/mul-left--731d9ba8e7700112c2faee6c.md) | 115 | `result-track:731d9ba8e7700112c2faee6c3bc9cb4fa0318929d03221bc1e88879a96649db5` |
| 11 | `theorem` | [right_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/right-comm--2e3f08c92fa41b6adf6a39a2.md) | 122 | `result-track:2e3f08c92fa41b6adf6a39a2ef1df3a69dc02fedc3f60ea9a677b09ee3a15e1c` |
| 12 | `theorem` | [left_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/left-comm--4b17fa9efb68265044fdf52a.md) | 129 | `result-track:4b17fa9efb68265044fdf52ae429203770d4c3fbd368688fcffc8c3304de84cc` |
| 13 | `theorem` | [mul_mul_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/mul-mul-mul-comm--e3f9dc102f05d6c44a5e9ef5.md) | 136 | `result-track:e3f9dc102f05d6c44a5e9ef572aef3a487c32784c5ba95b24ab7bcb4639b2992` |
| 14 | `theorem` | [all](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/all--80bd260642da2efa9a794de1.md) | 144 | `result-track:80bd260642da2efa9a794de15a4cbdbacb7eb7192620ae2c429126f940fe9c38` |
| 15 | `theorem` | [one_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/one-right--953baca54c996dd4ddc9f4b1.md) | 155 | `result-track:953baca54c996dd4ddc9f4b1582c0cf73c4a2dc30fa6d23516ae1ce669daee75` |
| 16 | `theorem` | [one_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/one-left--9d97e0c022266beeedfe70c0.md) | 162 | `result-track:9d97e0c022266beeedfe70c02d99b921339ba9e8c511dea3625e2b1d6296da6f` |
| 17 | `theorem` | [pow_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/pow-right--27fe4c0d4a55cf3768fb4d82.md) | 175 | `result-track:27fe4c0d4a55cf3768fb4d82cd4571eea9d8b0ad147d58c78125e3c6ca96da1c` |
| 18 | `theorem` | [pow_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/pow-left--96e7c0949b96a0946d9a6d56.md) | 182 | `result-track:96e7c0949b96a0946d9a6d56b70ed8eadea714f0144720d822e8c09c5449d6a4` |
| 19 | `theorem` | [pow_pow](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/pow-pow--36601d92db33a67d8c0494ee.md) | 190 | `result-track:36601d92db33a67d8c0494ee94265cb045a21084d234fe5728549d0901e5865a` |
| 20 | `theorem` | [self_pow](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/self-pow--1f0131e90565bed7fd37489b.md) | 198 | `result-track:1f0131e90565bed7fd37489b7dc3a195485de31e571632912bca4e37f999e57a` |
| 21 | `theorem` | [pow_self](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/pow-self--f7b095d3b2d2f8949381472e.md) | 206 | `result-track:f7b095d3b2d2f8949381472e117d5d33eb0cfc55ce43d29111cb8b7207deb12b` |
| 22 | `theorem` | [pow_pow_self](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/pow-pow-self--1c38cf0d080ace8874f7cd9e.md) | 214 | `result-track:1c38cf0d080ace8874f7cd9e7a864ed840c6d20913618cf971dab9aee95c0a6a` |
| 23 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Commute.Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.pow_succ'](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/root-grwtsk-algebra-grouptheory-commute-variantb901cab3487e3546b85e673ab--fe2ec17f29637d842961a3b8.md) | 221 | `result-track:fe2ec17f29637d842961a3b8caff2f20e6ab80254ac4603a2ba97e9d51b8a61d` |
| 24 | `theorem` | [units_inv_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/units-inv-right--c30b83dee5459dfafb3e5a5f.md) | 227 | `result-track:c30b83dee5459dfafb3e5a5f1003a87f5488f08556ee0e7fef7f962e59299823` |
| 25 | `theorem` | [units_inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/units-inv-right-iff--6b0231961ef3ee32db3ec24a.md) | 233 | `result-track:6b0231961ef3ee32db3ec24ad5eb5c6656852500929da1d81ca09533a3f9fa81` |
| 26 | `theorem` | [units_inv_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/units-inv-left--ee4672ce2bbaeed97cc232a4.md) | 239 | `result-track:ee4672ce2bbaeed97cc232a463759968abe2b037c85ee507e1933bf0fdb9ac0f` |
| 27 | `theorem` | [units_inv_left_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/units-inv-left-iff--5ec8bc5d3fcd81f1e2c31e76.md) | 245 | `result-track:5ec8bc5d3fcd81f1e2c31e76e507811737b205d476e0ab72039f13140d124b9e` |
| 28 | `theorem` | [units_val](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/units-val--2df061b8ec21ae5720d55acc.md) | 251 | `result-track:2df061b8ec21ae5720d55acc014de789c0d7a62069bf89742b02870516f3788e` |
| 29 | `theorem` | [units_of_val](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/units-of-val--247831c9cfe3948ffc87858f.md) | 257 | `result-track:247831c9cfe3948ffc87858f4434a7d69614d6a256538e148e5f4e5691118804` |
| 30 | `theorem` | [units_val_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/units-val-iff--aeeff51f3add0cd335e6ac70.md) | 263 | `result-track:aeeff51f3add0cd335e6ac70b90981664367b7778be570b6f2b9bbd257d08457` |
| 31 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.Commute.Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.Units.leftOfMul](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/root-grwtsk-algebra-grouptheory-commute-variantb901cab3487e3546b85e673ab--4691ebefaf8656d29e99a2d6.md) | 271 | `declaration-track:4691ebefaf8656d29e99a2d63bbfdbe4f88d4cae483c71d5db721d03c5921d79` |
| 32 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.Commute.Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.Units.rightOfMul](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/root-grwtsk-algebra-grouptheory-commute-variantb901cab3487e3546b85e673ab--ff8cc1f6c05e15df559f0783.md) | 284 | `declaration-track:ff8cc1f6c05e15df559f0783e713dd7c73eb3f5f61d0872a87e815056f9aa3f0` |
| 33 | `theorem` | [isUnit_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/isunit-mul-iff--41d46431ef9c3c2937d11448.md) | 290 | `result-track:41d46431ef9c3c2937d114488d1182c8132eef193da01deff4e29ef16bf10978` |
| 34 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Commute.Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.isUnit_mul_self_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/root-grwtsk-algebra-grouptheory-commute-variantb901cab3487e3546b85e673ab--f5555a218853b0977411a1d9.md) | 297 | `result-track:f5555a218853b0977411a1d94bdad0fa5e8579af26621da8bc99fcbc8ad4f093` |
| 35 | `theorem` | [inv_inv](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-inv--9a390c8e572b61f86db4e4de.md) | 310 | `result-track:9a390c8e572b61f86db4e4deb03a46f693c428dcfdcf80ae3bc8809402dc602b` |
| 36 | `theorem` | [inv_inv_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-inv-iff--494afe46281825fa3fdc1e9e.md) | 316 | `result-track:494afe46281825fa3fdc1e9e0959dfae10edc1617404d2de840628f6b42ea826` |
| 37 | `theorem` | [mul_inv](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/mul-inv--472fdddf24030131b2bb5b14.md) | 322 | `result-track:472fdddf24030131b2bb5b14c4bb12b4ab194bbfeebeff7eaec12557983e7f9c` |
| 38 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv--aa1a3bc09ead340394299d38.md) | 327 | `result-track:aa1a3bc09ead340394299d381162652a7b69af52f4a70573ac3ea1849d0fcea4` |
| 39 | `theorem` | [div_mul_div_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/div-mul-div-comm--a7943b15722ccc122049f050.md) | 332 | `result-track:a7943b15722ccc122049f050dcb7c18201c00f0eab02256a3b2b7e75e79405e3` |
| 40 | `theorem` | [mul_div_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/mul-div-mul-comm--0b4088ee9316481322e20962.md) | 339 | `result-track:0b4088ee9316481322e209624d957547b788257bb51a09e1b2a385eec5be98df` |
| 41 | `theorem` | [div_div_div_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/div-div-div-comm--6489cb8a9c8a0d7d5c825d05.md) | 346 | `result-track:6489cb8a9c8a0d7d5c825d052ce8edc7c03e0bda89b2038c40ee4d35a3ae2089` |
| 42 | `theorem` | [inv_right](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-right--b0e0be9cd905df4224850208.md) | 360 | `result-track:b0e0be9cd905df4224850208c7f2f5ec227b89d7c1244d44967512b80ea9447f` |
| 43 | `theorem` | [inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-right-iff--6fde0b918c047aa27ada1ac6.md) | 366 | `result-track:6fde0b918c047aa27ada1ac64297f98406476a2b8c36bb383272e23ac4f146ad` |
| 44 | `theorem` | [inv_left](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-left--d328df4812347358e5bf75f7.md) | 372 | `result-track:d328df4812347358e5bf75f74b545923aa8f76cccf1cfa31a626205b4fefef38` |
| 45 | `theorem` | [inv_left_iff](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-left-iff--c2bee786e870902d9679065c.md) | 378 | `result-track:c2bee786e870902d9679065cfb9bdf9ea250a13f23123d643649c08757b9c4d2` |
| 46 | `theorem` | [inv_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-mul-cancel--5af4ff1e2f5cb575730b8f16.md) | 384 | `result-track:5af4ff1e2f5cb575730b8f160a4f29cbd089fdf2598c198ad7e5b1d4e6881a5e` |
| 47 | `theorem` | [inv_mul_cancel_assoc](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-mul-cancel-assoc--92e29e1fec034a2a3bddf0aa.md) | 390 | `result-track:92e29e1fec034a2a3bddf0aacf612e64970be427600bcf0736b7c04f18c60da0` |
| 48 | `theorem` | [mul_inv_cancel](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/mul-inv-cancel--34866faa769a8baecb170589.md) | 396 | `result-track:34866faa769a8baecb170589d7a5e1083d1f84c75d4997953e25794c50dc7f1a` |
| 49 | `theorem` | [mul_inv_cancel_assoc](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/mul-inv-cancel-assoc--e71315be9ca1bef5a0cc61c5.md) | 402 | `result-track:e71315be9ca1bef5a0cc61c544321aa9f9a6c59a2f2a7e6813e2f45f696c2b2b` |
| 50 | `theorem` | [mul_inv_cancel_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/mul-inv-cancel-comm--4bda8a337f1d4448a1fc2085.md) | 416 | `result-track:4bda8a337f1d4448a1fc2085cafa3a371880722de4d0542dd2fb553c503a104c` |
| 51 | `theorem` | [mul_inv_cancel_comm_assoc](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/mul-inv-cancel-comm-assoc--2af57507bdeb4f4edf543d83.md) | 422 | `result-track:2af57507bdeb4f4edf543d83124a84e10a5dc43845137ce194cdab55cde027a6` |
| 52 | `theorem` | [inv_mul_cancel_comm](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-mul-cancel-comm--1dc94b442121467b63d760ef.md) | 428 | `result-track:1dc94b442121467b63d760ef85954b3fc98187c79fbe4f2119e772cfc4d52315` |
| 53 | `theorem` | [inv_mul_cancel_comm_assoc](../../../../../mathematics/Algebra/GroupTheory/Commute/Variant2c8ddfd450b7098cba607f8e66ae12cc5e740dd260ca4b9764d36da5b8a6264c.lean/declarations/inv-mul-cancel-comm-assoc--6dc00a8e70d22c7922df1acb.md) | 434 | `result-track:6dc00a8e70d22c7922df1acb0fb00e8d8b70b4b326ca8a7cef64ce87e19bba4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
