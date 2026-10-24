# Verification target: GRWTSK.Algebra.Symmetry.Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "019fd503b86f32b87105f7a34ddb803ec66b9341",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `019fd503b86f32b87105f7a34ddb803ec66b9341`.

Source path: `GRWTSK/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitPerm](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/bitperm--385b7cc19c8dcc2f674af004.md) | 31 | `declaration-track:385b7cc19c8dcc2f674af004b102fbf21cd9a652156684963dd65bb4746e0792` |
| 2 | `def` | [BitPerm.ofBijective](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/bitperm-ofbijective--a8567cd7d6c3b1da4269203d.md) | 34 | `declaration-track:a8567cd7d6c3b1da4269203de7b19b877b77ad1b0bb3375248a5440532299e9e` |
| 3 | `theorem` | [BitPerm.ofBijective_apply](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/bitperm-ofbijective-apply--32bf4d00cc427d6056e8a453.md) | 41 | `result-track:32bf4d00cc427d6056e8a4533b9724b4c11981a165ff3a9c9b0dc315500e9de6` |
| 4 | `def` | [XorGroup](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/xorgroup--590d66b5937a7a702ec55f08.md) | 56 | `declaration-track:590d66b5937a7a702ec55f08ccd0434fe5b4a169d63d360e95c89f5f0e59e74f` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/instance--9ee8f0600c327c5971c0a2dc.md) | 60 | `declaration-track:9ee8f0600c327c5971c0a2dc3197cc560beea6b31d505cfc1db1bbbd0b2d759c` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/instance--66daaa3a78da9af895c7235a.md) | 63 | `declaration-track:66daaa3a78da9af895c7235ac389ffe69bfcddc1e4128ab79f7790c243db3c22` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/instance--c642d0d3b978c8f9d9e79576.md) | 66 | `declaration-track:c642d0d3b978c8f9d9e79576c01abf9c7dcc4e78f68d5e51a8221040515c7d43` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/instance--62cd97c8a4e5c88a33f7a546.md) | 69 | `declaration-track:62cd97c8a4e5c88a33f7a546644df9947c69aa1de489e6903b11e3c509fc43ca` |
| 9 | `def` | [toBits](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/tobits--55559da64eecd597beb24e47.md) | 77 | `declaration-track:55559da64eecd597beb24e4766f34c3069f0372f6f27ec0b028983296dd82310` |
| 10 | `theorem` | [one_toBits](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/one-tobits--20ec6db216fd3cb1f7b3e078.md) | 81 | `result-track:20ec6db216fd3cb1f7b3e078dcb9ad791edfe2f114181fc4afe94fd1f23d8f4e` |
| 11 | `theorem` | [mul_toBits](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/mul-tobits--41fb53a2f876f8706fd5a804.md) | 86 | `result-track:41fb53a2f876f8706fd5a804340f7346a76b179b45cbdbd93c280acc23c0eacc` |
| 12 | `theorem` | [inv_eq](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/inv-eq--4b97430d5cb119ed7c0315d4.md) | 91 | `result-track:4b97430d5cb119ed7c0315d47955edbc9287a423d1d98ca0edee08bf43242411` |
| 13 | `structure` | [MonoidEmbedding](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/monoidembedding--baa5b0f99c32a37f2354ec6c.md) | 102 | `declaration-track:baa5b0f99c32a37f2354ec6cb903ff4b5b51f16f7420fd9a2e1f39bb2e1ba59a` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/instance--48ddc47807b71d1d7cbaa3f4.md) | 110 | `declaration-track:48ddc47807b71d1d7cbaa3f4221c714493d9232ad3348cc14b53270bcb48e860` |
| 15 | `theorem` | [injective](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/injective--12fcc32f225fd0601d480128.md) | 115 | `result-track:12fcc32f225fd0601d480128771e1893770cf70600ffee8b5ad7991bde25c724` |
| 16 | `theorem` | [translation_mul_apply](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/translation-mul-apply--ec328985e4b7116822837a56.md) | 124 | `result-track:ec328985e4b7116822837a56f63a31b67d1321dbaa15808079fe5f919f9a3425` |
| 17 | `def` | [translationHom](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/translationhom--1ce7f91d533065cacb95b40c.md) | 135 | `declaration-track:1ce7f91d533065cacb95b40c0cd7b2ad7bb6708cdb468fae7c10022f9fb0ce22` |
| 18 | `theorem` | [translationHom_apply](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/translationhom-apply--fbf8ed3c06c2e2bf4d12b1fe.md) | 144 | `result-track:fbf8ed3c06c2e2bf4d12b1fed8fb6c9af6666ad47738288f94ee3c829ada5221` |
| 19 | `theorem` | [translationHom_injective](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/translationhom-injective--2ef5fa6405c28d42a5d5903f.md) | 151 | `result-track:2ef5fa6405c28d42a5d5903f944dfa9d2d1ad5b4fcfaec8a7c25eb2a49a7923a` |
| 20 | `def` | [translationEmbedding](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/translationembedding--e2e6434115d86b5839815362.md) | 159 | `declaration-track:e2e6434115d86b58398153629f1cb21861367e7fb1307ca91c7a929c3a3c72a8` |
| 21 | `theorem` | [translationHom_one](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/translationhom-one--912ba43bc859858c71277f9b.md) | 164 | `result-track:912ba43bc859858c71277f9b96724c1646eb13818d20dd1dfd7bdc287cf1b36b` |
| 22 | `theorem` | [translation_comm](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/translation-comm--9352075ffe662e8f5c2dc6e8.md) | 168 | `result-track:9352075ffe662e8f5c2dc6e8891a92d78d0bc7198866b973f69a585983188060` |
| 23 | `theorem` | [translation_order_two](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/translation-order-two--3a2e5ea648071ef03072296f.md) | 173 | `result-track:3a2e5ea648071ef03072296ffc91ed85165eda703c7a6b3249198f30833055f7` |
| 24 | `def` | [coordinatePermutationHom](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/coordinatepermutationhom--ac91709be4e5fb1dbe2279e4.md) | 184 | `declaration-track:ac91709be4e5fb1dbe2279e4f21908cc3499051855a9254c15762d701757ace7` |
| 25 | `theorem` | [coordinatePermutationHom_apply](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/coordinatepermutationhom-apply--3876ab97b8a8367c94208b4e.md) | 193 | `result-track:3876ab97b8a8367c94208b4e461d78d7ba2709fe30f71ab9590eb3c88aff52fd` |
| 26 | `theorem` | [coordinatePermutation_basisBit](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/coordinatepermutation-basisbit--f4d4ad07d63b01f0e0e9ba70.md) | 200 | `result-track:f4d4ad07d63b01f0e0e9ba70221ff9980f88b6ca6fae01d95660c8b9a58bc14f` |
| 27 | `theorem` | [basisBit_injective](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/basisbit-injective--cdc57ecfcb01801bdbe6e52e.md) | 209 | `result-track:cdc57ecfcb01801bdbe6e52e2e609e643147fa6b77954ea4c5fce58f7967c496` |
| 28 | `theorem` | [coordinatePermutationHom_injective](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/coordinatepermutationhom-injective--5ec95f0d3e17a39cc461cbc9.md) | 217 | `result-track:5ec95f0d3e17a39cc461cbc9e819037eddc9902d102638cdf533c7edb58bb896` |
| 29 | `def` | [coordinatePermutationEmbedding](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/coordinatepermutationembedding--06b876117f2a670cea23b998.md) | 231 | `declaration-track:06b876117f2a670cea23b99820cd1bd9df1326ee97da16f8a0d8314c93d89f2b` |
| 30 | `def` | [hammingDistance](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingdistance--1f46c80315607fbb9704733d.md) | 239 | `declaration-track:1f46c80315607fbb9704733d9c2888cd52ac49d9449d7e1724856bc477033c18` |
| 31 | `theorem` | [hammingDistance_self](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingdistance-self--bdb37253c53dc0e1bae1afd7.md) | 243 | `result-track:bdb37253c53dc0e1bae1afd71525b302f2710f219acb391f038ee8c6400ae640` |
| 32 | `theorem` | [hammingDistance_comm](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingdistance-comm--cd86449d4aa231c19a791038.md) | 247 | `result-track:cd86449d4aa231c19a7910383a2f32e54a60fe29965c5177b8d0b982c3a82176` |
| 33 | `theorem` | [hammingDistance_eq_zero_iff](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingdistance-eq-zero-iff--6bc5f1221a62bcd6e6ef28f2.md) | 251 | `result-track:6bc5f1221a62bcd6e6ef28f28a28dc5baf040b17f2f31613df1fa1f5b59d40fa` |
| 34 | `structure` | [HammingIso](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingiso--4392f65bc0bc2fa51d4c9a2c.md) | 257 | `declaration-track:4392f65bc0bc2fa51d4c9a2c45a15c9eea77f32002674a48351f934bb5315fbe` |
| 35 | `def` | [HammingIso.toPerm](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingiso-toperm--ab52a6dd056fa222d33cd77d.md) | 262 | `declaration-track:ab52a6dd056fa222d33cd77d50aa78edf7ffe70f26cf0083af281ed26955b236` |
| 36 | `theorem` | [HammingIso.toPerm_apply](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingiso-toperm-apply--937e0abfa59c6d9753312937.md) | 266 | `result-track:937e0abfa59c6d97533129374a60fd366b3d95fa97a12d97fbeccbaefec301d6` |
| 37 | `theorem` | [xorBits_cancel_both_right](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/xorbits-cancel-both-right--98d3643bfcde0f2eb45fcb6c.md) | 273 | `result-track:98d3643bfcde0f2eb45fcb6c0f1db0af85240241dea419c6552cb1e87d8ab4d2` |
| 38 | `theorem` | [coordinatePermutation_zero](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/coordinatepermutation-zero--b92da94b205e5d0dca476c04.md) | 280 | `result-track:b92da94b205e5d0dca476c049b6be684d866885d6ebcb030ed80b4f71d724e92` |
| 39 | `theorem` | [HammingIso.hammingDistance_toPerm](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingiso-hammingdistance-toperm--32cac157611c946ea9fc6e99.md) | 287 | `result-track:32cac157611c946ea9fc6e993bd236551ef88c5d2a11345e7773586b728ffa16` |
| 40 | `theorem` | [HammingIso.toPerm_injective](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingiso-toperm-injective--15dec6a2daa228a64a818988.md) | 298 | `result-track:15dec6a2daa228a64a81898873488de78fa76ada71cfa4af54477fb1161fac8c` |
| 41 | `def` | [conjugate](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/conjugate--d182e825b72b53036ae49580.md) | 317 | `declaration-track:d182e825b72b53036ae495801079f8e3539e66d60e1019d712feea0577907a23` |
| 42 | `theorem` | [conjugate_apply](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/conjugate-apply--54d1542db4ccc48083c3e288.md) | 321 | `result-track:54d1542db4ccc48083c3e288079dfa96edebe9f0f1fc3145b51047f263f2fc7c` |
| 43 | `theorem` | [conjugate_one](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/conjugate-one--efd46bf0e3de989da3ce0119.md) | 328 | `result-track:efd46bf0e3de989da3ce01198087f801c0cc28c9262a3f280bd38ea8933d7392` |
| 44 | `theorem` | [conjugate_self](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/conjugate-self--1463074710fe286d951fb3cf.md) | 334 | `result-track:1463074710fe286d951fb3cf8dcca3babe6f464fca942715daed0da6b9bbba72` |
| 45 | `theorem` | [conjugate_pow](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/conjugate-pow--00472b1b707e427da1c143e8.md) | 341 | `result-track:00472b1b707e427da1c143e82ccec1606f52d56e8e7e48f12528aef8f2859326` |
| 46 | `theorem` | [HammingIso.toPerm_symm_apply](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingiso-toperm-symm-apply--42afcff0206d53ec9831ef14.md) | 360 | `result-track:42afcff0206d53ec9831ef14a7543faa3d5cd3fdb6be9cf5e5d7fe4dd3191b03` |
| 47 | `theorem` | [HammingIso.toPerm_symm_xor_basis](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingiso-toperm-symm-xor-basis--7880210f74df6d766cae648b.md) | 367 | `result-track:7880210f74df6d766cae648b703161c01e4dd3d49548d04e0711c5c6b6ebd878` |
| 48 | `theorem` | [HammingIso.toPerm_xor_cancel](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/hammingiso-toperm-xor-cancel--0f8ea677dc249aa7ba1c7c91.md) | 379 | `result-track:0f8ea677dc249aa7ba1c7c91af430d8697a157bcbee2a3981e5e6eec5148e281` |
| 49 | `theorem` | [bitDerivative_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/bitderivative-conjugate-hammingiso--ace5b5b399aa2e2c93dd7225.md) | 391 | `result-track:ace5b5b399aa2e2c93dd7225769175b37ea7b6e2cd0e9a79d3a09be6a4e03835` |
| 50 | `theorem` | [derivativeBit_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/derivativebit-conjugate-hammingiso--02d22e43b36669a3bee05f54.md) | 405 | `result-track:02d22e43b36669a3bee05f541ebc513962682ed57f8ae1228c1ff57bc365356c` |
| 51 | `theorem` | [sacCount_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/saccount-conjugate-hammingiso--a1065f1ff2a232e9a5e01fa0.md) | 417 | `result-track:a1065f1ff2a232e9a5e01fa0c200cc0a22a4d651e81e54e442e63f621c168b71` |
| 52 | `theorem` | [strictSAC_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/strictsac-conjugate-hammingiso--afc89cf81396bf4be6c40f4e.md) | 431 | `result-track:afc89cf81396bf4be6c40f4e56c9810b48714036eaf84a8ef75d4b2619981e62` |
| 53 | `theorem` | [sacEntry_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/sacentry-conjugate-hammingiso--12dcbe328e2d453569f603fb.md) | 443 | `result-track:12dcbe328e2d453569f603fb541df35de221f20aac523d521653a4c57311b7ca` |
| 54 | `theorem` | [sum_sacEntry_relabel](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/sum-sacentry-relabel--33f037edbba1341f5f7322dd.md) | 451 | `result-track:33f037edbba1341f5f7322dd54ef105fc1d4b190735ac250ab09acc8da66c2cb` |
| 55 | `theorem` | [sacScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/sacscore-conjugate-hammingiso--0d90154dbce273eac8710712.md) | 478 | `result-track:0d90154dbce273eac87107122205cbf6681bc00bfab6013aa4697ee7b323bc24` |
| 56 | `theorem` | [varianceScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/variancescore-conjugate-hammingiso--3ecf525aad9c0b4567159ae3.md) | 488 | `result-track:3ecf525aad9c0b4567159ae38ed067172bd20a2863067a43461a37bff547de2a` |
| 57 | `def` | [fixedPoints](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/fixedpoints--6f5dbfdfa33b09206dff356e.md) | 505 | `declaration-track:6f5dbfdfa33b09206dff356e79120c6fc1e6558b8b458622e92d099ff545399b` |
| 58 | `def` | [fixedPointCount](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/fixedpointcount--9f9874ff885bd70f3c94c20d.md) | 509 | `declaration-track:9f9874ff885bd70f3c94c20d01d1a7fb9f24f1a11d1857e0762ecaf2395cceae` |
| 59 | `theorem` | [mem_fixedPoints_iff](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/mem-fixedpoints-iff--b2ca90341faee20a114a3e9d.md) | 512 | `result-track:b2ca90341faee20a114a3e9dae1e3e1e1ea5883072f577ae75ffcce97e489e32` |
| 60 | `theorem` | [fixedPoints_zero](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/fixedpoints-zero--6ee24313872179ee218d5df3.md) | 520 | `result-track:6ee24313872179ee218d5df3175475015bffb7666548a1ce42a6c1620554c878` |
| 61 | `theorem` | [fixedPointCount_zero](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/fixedpointcount-zero--ba1cee6dbee8ff835d6f0222.md) | 526 | `result-track:ba1cee6dbee8ff835d6f0222accb0247c528e048515663906270be40153fb91a` |
| 62 | `theorem` | [fixedPointCount_le](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/fixedpointcount-le--b7d73831914d8ed36322d333.md) | 531 | `result-track:b7d73831914d8ed36322d333e54af657d04ad2489a55fd35ce4a0aeeafbb3d81` |
| 63 | `theorem` | [fixedPointCount_conjugate](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/fixedpointcount-conjugate--f1b5b4077e8581595a55bd63.md) | 537 | `result-track:f1b5b4077e8581595a55bd63300934b8128e18bc36aed32716a58c12382cb6d0` |
| 64 | `theorem` | [fixedPointCount_identity](../../../../mathematics/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/declarations/fixedpointcount-identity--678900681f462aab765c8893.md) | 555 | `result-track:678900681f462aab765c8893389c70c76c6c28f9e27dc3ce1a87749161381a5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
