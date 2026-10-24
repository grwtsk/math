# Verification target: GRWTSK.Algebra.GroupTheory.Unitary.Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "509cb209d3e8fcdbcb892858aa0ff22c842ba25c",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `509cb209d3e8fcdbcb892858aa0ff22c842ba25c`.

Source path: `GRWTSK/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.SelfAdjoint` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Spectrum.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ContinuousFunctionalCalculus` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/unitary--a9fe6d35189de45aede98ab9.md) | 37 | `declaration-track:a9fe6d35189de45aede98ab912093d6f6007273210cb040089d70ac0e5d16114` |
| 2 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/mem-iff--58a170ce507349057ec83879.md) | 59 | `result-track:58a170ce507349057ec8387955e2baf0713ea0a4205b79cf45901ae9ae22122a` |
| 3 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/star-mul-self-of-mem--ccd6c241f3add61c8faf7d44.md) | 63 | `result-track:ccd6c241f3add61c8faf7d4441aca060081a08d085d84dc8be66e1f9e6acf0c4` |
| 4 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/mul-star-self-of-mem--9aa5af51cb47d3f84ab01179.md) | 67 | `result-track:9aa5af51cb47d3f84ab011791b4eb2dc18ade1cc0594ce42be864fab5024692a` |
| 5 | `theorem` | [star_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/star-mem--6dbd4b4f2eb23cfdd3a4f45e.md) | 70 | `result-track:6dbd4b4f2eb23cfdd3a4f45eaf424d5fc9e2ee5a97698866a766e2b83b8c8dd7` |
| 6 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/star-mem-iff--623f688804cbe0d3404a14a7.md) | 74 | `result-track:623f688804cbe0d3404a14a76dc1f928e8bb515c5c1ca7d32a90678cb6a9ab11` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/instance--c67c9812d98b405e5fdd2ea0.md) | 77 | `declaration-track:c67c9812d98b405e5fdd2ea0877f7eee25b4e088c1045a1a7b3ebec4c1788b22` |
| 8 | `theorem` | [coe_star](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/coe-star--0a1b52175aaf6f395c70a300.md) | 81 | `result-track:0a1b52175aaf6f395c70a300308d484dbf92e27cbbf01ace53ab9612076a5667` |
| 9 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/coe-star-mul-self--23981403cd7f876c8e793097.md) | 84 | `result-track:23981403cd7f876c8e79309707cecba806697808a1a873448ccfd901ee819466` |
| 10 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/coe-mul-star-self--9cb16486f962589ae61f8ebd.md) | 87 | `result-track:9cb16486f962589ae61f8ebd127b7cf16174df6a00b83a47920792ea8ede56e1` |
| 11 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/star-mul-self--98e68b72a51196c6d0b5bf08.md) | 91 | `result-track:98e68b72a51196c6d0b5bf087827ef3619a1cb8810413a23e933bdef38772efa` |
| 12 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/mul-star-self--1b844ccfda17fa84744c65f0.md) | 95 | `result-track:1b844ccfda17fa84744c65f0648ebe739376aa3e65faada833985481cb32085e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/instance--5487335ce44b04bb3f2f691e.md) | 98 | `declaration-track:5487335ce44b04bb3f2f691e001da034c12ba39ae9607c3a1c935f1bd2ec15b5` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/instance--89a320ffe98205d9a73ce586.md) | 103 | `declaration-track:89a320ffe98205d9a73ce58677371024986789eeb7b92b493cc4ab109d740322` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/instance--ced97ef03691afb8b0369d29.md) | 109 | `declaration-track:ced97ef03691afb8b0369d29cd9eea6c5dec082c5d6c85f69cdc80069f7605a5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/instance--5056b147cbb49d7136fcd423.md) | 115 | `declaration-track:5056b147cbb49d7136fcd423f64f2758197ea22b9c9563452ca2f09c070949c2` |
| 17 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/star-eq-inv--847788e7d7ea81c5897ce906.md) | 118 | `result-track:847788e7d7ea81c5897ce9060bd19a42125b677efbb0ed7e7d047155c825883c` |
| 18 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/star-eq-inv--3a8a9dd389156966ad4a9233.md) | 121 | `result-track:3a8a9dd389156966ad4a92331e3a03dcb11694c4439ddf505ee466b149d04bbb` |
| 19 | `def` | [toUnits](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/tounits--b7305ba75e9df5fdda386991.md) | 126 | `declaration-track:b7305ba75e9df5fdda386991fd317532de6d93c594652a8932b7ddb6509ae976` |
| 20 | `theorem` | [toUnits_injective](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/tounits-injective--03fe4cc9969dad152d4825f0.md) | 131 | `result-track:03fe4cc9969dad152d4825f0a90f206c06c05d386c06f5d490f5fac7ffb46432` |
| 21 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Unitary.Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.IsUnit.mem_unitary_iff_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/root-grwtsk-algebra-grouptheory-unitary-variant02b4c1653651e808f59c5e907--068334f8bedae6eb9b517781.md) | 134 | `result-track:068334f8bedae6eb9b5177814441e07197b10918bc0f55fa84af065782e5db93` |
| 22 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Unitary.Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.IsUnit.mem_unitary_iff_mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/root-grwtsk-algebra-grouptheory-unitary-variant02b4c1653651e808f59c5e907--72f517793476bf9987d7e93d.md) | 140 | `result-track:72f517793476bf9987d7e93daf84a1c65f6a1f3a970c4e8bc4f20efa21ca879d` |
| 23 | `lemma` | [mul_inv_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/mul-inv-mem-iff--a23a14dfa2cc35831e572aa1.md) | 147 | `result-track:a23a14dfa2cc35831e572aa1a543b75fe6b37224db3d8af445d1b10190cdda38` |
| 24 | `lemma` | [inv_mul_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/inv-mul-mem-iff--30bc147a4e500c7a6319d699.md) | 152 | `result-track:30bc147a4e500c7a6319d6997f782bca1c8f3073269f8d9b4904845f551923bf` |
| 25 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Unitary.Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.Units.unitary_eq](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/root-grwtsk-algebra-grouptheory-unitary-variant02b4c1653651e808f59c5e907--c0a22ef17b87abac69dd5523.md) | 156 | `result-track:c0a22ef17b87abac69dd552392b7a9097f44fa819e4166f68dbe3db8211ea1b6` |
| 26 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.Unitary.Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.Units.mul_inv_mem_unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/root-grwtsk-algebra-grouptheory-unitary-variant02b4c1653651e808f59c5e907--09cd5b6eef32dc97ff5627af.md) | 161 | `result-track:09cd5b6eef32dc97ff5627af655e905dc925e979440d5df68b863b1e1f65c3bc` |
| 27 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.Unitary.Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.Units.inv_mul_mem_unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/root-grwtsk-algebra-grouptheory-unitary-variant02b4c1653651e808f59c5e907--4c13a9ce4da022fce01efda4.md) | 166 | `result-track:4c13a9ce4da022fce01efda453dd8fbbb98c33e038e5884ff8c446e68b94d977` |
| 28 | `instance` | [instIsStarNormal](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/instisstarnormal--7e30bcf9dbba9fb05d9490ee.md) | 170 | `declaration-track:7e30bcf9dbba9fb05d9490ee438bfb0b705f4d70ec521f8655609a51ed641ae5` |
| 29 | `instance` | [coe_isStarNormal](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/coe-isstarnormal--a96131ad89c9fbc986196550.md) | 173 | `declaration-track:a96131ad89c9fbc9861965503bdb1bd5cc100038b691ae613a0fcc29330cca8b` |
| 30 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.Unitary.Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.isStarNormal_of_mem_unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/root-grwtsk-algebra-grouptheory-unitary-variant02b4c1653651e808f59c5e907--ae2ace3fc85fa7d970220042.md) | 177 | `result-track:ae2ace3fc85fa7d9702200423fdd7ecb364cb63feaa6126b8c815d5e9d1fb0fb` |
| 31 | `lemma` | [map_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/map-mem--f64a00372e06cf07ba777928.md) | 187 | `result-track:f64a00372e06cf07ba777928c91e09b069487786ba033beea500213147b0f537` |
| 32 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/map--ee4cf01092c357b323c19bd5.md) | 194 | `declaration-track:ee4cf01092c357b323c19bd56c24c79a2f244fcd6bfb7bdba0e7afcfa99cf24d` |
| 33 | `lemma` | [toUnits_comp_map](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/tounits-comp-map--11b99322c156fcc52c9066bf.md) | 199 | `result-track:11b99322c156fcc52c9066bfff8a636eaef4debb9871dd98cbce9760d2d9be5b` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/instance--58d5fd9d3677b8635bef35b0.md) | 207 | `declaration-track:58d5fd9d3677b8635bef35b0df05de8a2b8ebf9f50dc4ef0b0c6df357106ac96` |
| 35 | `theorem` | [mem_iff_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/mem-iff-star-mul-self--66fbba506d9f120c1390368f.md) | 210 | `result-track:66fbba506d9f120c1390368f29589a95e3bb6a7b2f300a2a7337ac0b439f43e8` |
| 36 | `theorem` | [mem_iff_self_mul_star](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/mem-iff-self-mul-star--a0f653565264e32578be105b.md) | 213 | `result-track:a0f653565264e32578be105b38c9c5c2256362fe204ef3495fec8f719f13ed55` |
| 37 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/coe-inv--901e57497e66364b92c09c02.md) | 223 | `result-track:901e57497e66364b92c09c02d9848c0096f224e224f59dbbe996175312f32454` |
| 38 | `theorem` | [coe_div](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/coe-div--430c41c1a691bfdc6183b6a4.md) | 227 | `result-track:430c41c1a691bfdc6183b6a404d94c09b857c62dfb94e98c5129428eab7c4629` |
| 39 | `theorem` | [coe_zpow](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/coe-zpow--7ed47a3bd8b3012afb9cf146.md) | 231 | `result-track:7ed47a3bd8b3012afb9cf146c5fb80f65436b52f73bc3b89012bc1285c1dbf2e` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/instance--9c9717132789bc5fa98fc0ae.md) | 242 | `declaration-track:9c9717132789bc5fa98fc0ae00d2014cb80d07e017bd35ecc34ba45d62154e7c` |
| 41 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/coe-neg--cb0596e983bd742daa108ca3.md) | 247 | `result-track:cb0596e983bd742daa108ca3141ea9101df89f0dee7288dd144325743766a3ab` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/instance--278015be50e7f57279b1b460.md) | 250 | `declaration-track:278015be50e7f57279b1b460035fb1f212f84e02c31706abad3f8461a6dff21d` |
| 43 | `lemma` | [spectrum.unitary_conjugate](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/spectrum-unitary-conjugate--39bea7c2070c1a25ade288cb.md) | 263 | `result-track:39bea7c2070c1a25ade288cbc9d69eee2e730bc7693e90545d3639c72cd91ab0` |
| 44 | `lemma` | [spectrum.unitary_conjugate'](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant3112f683ee5733372b33b2378cd736949874b4b795c6f53c3716203d0162362f.lean/declarations/spectrum-unitary-conjugate--afff4111df2da77f7e261dee.md) | 269 | `result-track:afff4111df2da77f7e261dee6a8202c35ad7a11e806f210d8e1d1fcfe9063149` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
