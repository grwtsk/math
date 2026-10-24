# Verification target: GRWTSK.Algebra.HomogeneousLocalization.Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b4865fd3fbb95a915a4df658da55c75fbfdc158",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/index.md) · [Full source](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b4865fd3fbb95a915a4df658da55c75fbfdc158`.

Source path: `GRWTSK/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NumDenSameDeg](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/numdensamedeg--ea87e813f5cdec3b748d0cc3.md) | 100 | `declaration-track:ea87e813f5cdec3b748d0cc37d04ace5a0a1194da5ab36395f16f6153b7e2c43` |
| 2 | `theorem` | [ext](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/ext--7fbb23c21b2eb7d91e71748e.md) | 115 | `result-track:7fbb23c21b2eb7d91e71748e72ee34d2b9f788f7e50d1306fe7216c831622069` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--773ed705e8ead21f15caccfd.md) | 124 | `declaration-track:773ed705e8ead21f15caccfd9b46d5ad737c45be8a3856b766486fccbcfd5e6e` |
| 4 | `theorem` | [deg_one](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/deg-one--ef3d1296fcd404b41bfd7da9.md) | 133 | `result-track:ef3d1296fcd404b41bfd7da96820131faa6eba032bc74413e1ff6ab8a9424279` |
| 5 | `theorem` | [num_one](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/num-one--1c1c35dca9d40756a3475507.md) | 138 | `result-track:1c1c35dca9d40756a34755077d239dc4f4272b8091c567683256e8bc578daa54` |
| 6 | `theorem` | [den_one](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den-one--1f846ce1811a8af2ae6b5ed5.md) | 143 | `result-track:1f846ce1811a8af2ae6b5ed595bd06028d96fd9c9482abff8ac1c8b774325854` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--1ec9c974bd243ce2d3ee8cb5.md) | 147 | `declaration-track:1ec9c974bd243ce2d3ee8cb58170a69a00baa2a5423ca446e1acef334cd141fe` |
| 8 | `theorem` | [deg_zero](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/deg-zero--9c655d0c9b6aa63bd36547b7.md) | 151 | `result-track:9c655d0c9b6aa63bd36547b781696459ac642d7f0e54c4731a96ca412a2c8fe6` |
| 9 | `theorem` | [num_zero](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/num-zero--b6c0366aa332a935c240191e.md) | 156 | `result-track:b6c0366aa332a935c240191ec29a7477ef457aa66d38cd2c709291bd8d6d25eb` |
| 10 | `theorem` | [den_zero](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den-zero--4b72aab8fde4bae79681a48d.md) | 161 | `result-track:4b72aab8fde4bae79681a48d1151549a487bd8575fca27fc811ac647ad47ce08` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--36e661331677f0e212a8bc7b.md) | 165 | `declaration-track:36e661331677f0e212a8bc7bae9d8da12abce3f025f60de4c4082f54950ccc0a` |
| 12 | `theorem` | [deg_mul](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/deg-mul--1aa3f5d7df31b2b49ceb015e.md) | 174 | `result-track:1aa3f5d7df31b2b49ceb015e9e02edb5930fc3d96ab1b74f9fff23fe4bcf9aa6` |
| 13 | `theorem` | [num_mul](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/num-mul--a01901826870600c42eeebae.md) | 179 | `result-track:a01901826870600c42eeebae1462b23ace2d1b80dba86cf8ab2ca2dbd187fddc` |
| 14 | `theorem` | [den_mul](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den-mul--dde04313d604bd7b5a64d3a6.md) | 184 | `result-track:dde04313d604bd7b5a64d3a62dbcdfa32c67d1f1f3309732e40fb5307aa25f89` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--d871fc1ab6278dedce2c45a4.md) | 188 | `declaration-track:d871fc1ab6278dedce2c45a4cfddc22cd5748645f0b2fd780649d88f4342870e` |
| 16 | `theorem` | [deg_add](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/deg-add--203c087a955197d274af38f7.md) | 198 | `result-track:203c087a955197d274af38f7f0785b04bbc7adb04402b18339f8b71fdc85d784` |
| 17 | `theorem` | [num_add](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/num-add--02ee5596e3bfecd7cdc5a54f.md) | 203 | `result-track:02ee5596e3bfecd7cdc5a54f842135c338c48d53b761097e2b195c7cbeb00c90` |
| 18 | `theorem` | [den_add](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den-add--20296af9baece99694ca36a2.md) | 209 | `result-track:20296af9baece99694ca36a2acac922321944ecb3f09e16a6d88ac080ac5503b` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--feb10621cca0b45b2342ea30.md) | 213 | `declaration-track:feb10621cca0b45b2342ea301081250960ff7f236b13174db3e41237c8fed485` |
| 20 | `theorem` | [deg_neg](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/deg-neg--8bf47b1c652ad0443ee7aa49.md) | 217 | `result-track:8bf47b1c652ad0443ee7aa49f321a25ef97f3cd25ed02af48a21cee7d2bba5b5` |
| 21 | `theorem` | [num_neg](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/num-neg--65e0aeb0487d50e13c3d1f61.md) | 222 | `result-track:65e0aeb0487d50e13c3d1f617cfe7448f63bda45a7d90fa911deb73d7ba4cb12` |
| 22 | `theorem` | [den_neg](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den-neg--6db1379f292b6fe0053b5a3c.md) | 227 | `result-track:6db1379f292b6fe0053b5a3cecbb9752546f23d155577785c72ae90914d804b6` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--b5ee34418946b9ec14e1ba5d.md) | 231 | `declaration-track:b5ee34418946b9ec14e1ba5d893f368b6ecedd708428d88b6721023f7cac1074` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--6498a02858eab293688b91f8.md) | 239 | `declaration-track:6498a02858eab293688b91f88558e55696ce72964994cdf914c2b16af87d5a7b` |
| 25 | `theorem` | [deg_pow](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/deg-pow--db53c922009e540fa748df5b.md) | 248 | `result-track:db53c922009e540fa748df5be488dbe09f4086d6bd2157eb01cc9b22378ac747` |
| 26 | `theorem` | [num_pow](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/num-pow--646a043f6e71885eda50b4df.md) | 253 | `result-track:646a043f6e71885eda50b4df752a48d2d2009df626dd406afd20abd12b96c183` |
| 27 | `theorem` | [den_pow](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den-pow--62924ae9e286ebbf7bcf29d8.md) | 258 | `result-track:62924ae9e286ebbf7bcf29d8c5445df38c6a4d81bcaa9ace8d813da2da28d630` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--233ebe2fa329d8b0163b867e.md) | 266 | `declaration-track:233ebe2fa329d8b0163b867e7c21f6281b1a42168ab7acab56b2d8d094bccc85` |
| 29 | `theorem` | [deg_smul](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/deg-smul--0a74bb8ca9bb98b72ef70ae4.md) | 270 | `result-track:0a74bb8ca9bb98b72ef70ae43451779d12bff2881325456d6fc6ada043dc9be6` |
| 30 | `theorem` | [num_smul](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/num-smul--f2dfdcfc80b05d29b410d7a9.md) | 275 | `result-track:f2dfdcfc80b05d29b410d7a92c38a3773711b6a3f440feb88723d8ae3c960fb0` |
| 31 | `theorem` | [den_smul](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den-smul--6e0ec39819701de5472d7d44.md) | 280 | `result-track:6e0ec39819701de5472d7d4497ec7eba3ff94fa3db75ef96444708ef777b648f` |
| 32 | `def` | [embedding](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/embedding--4d93a9260549e66a237b845d.md) | 291 | `declaration-track:4d93a9260549e66a237b845dea4fd15c908e5016addceacd8831a443cdaa3bb4` |
| 33 | `def` | [HomogeneousLocalization](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/homogeneouslocalization--df58f65e83f4e911f28e8503.md) | 304 | `declaration-track:df58f65e83f4e911f28e8503eed5ef72f9cf36beeda1abce8606984fbbe1d912` |
| 34 | `def` | [val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/val--253e33c49ab527c756ef4578.md) | 317 | `declaration-track:253e33c49ab527c756ef45784a40651f93b14f2c24d6aa6703178ec793d9bfc2` |
| 35 | `theorem` | [val_mk''](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/val-mk--3506bf7baf5bfc647da48c95.md) | 322 | `result-track:3506bf7baf5bfc647da48c95bd4cb119468b2a48b81b6975073593b96cd45cab` |
| 36 | `theorem` | [val_injective](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/val-injective--5404668c4f02fcc3b2d0e3a0.md) | 329 | `result-track:5404668c4f02fcc3b2d0e3a0ad6cd21b97efbb911c3c30891ceef022839ec721` |
| 37 | `instance` | [hasPow](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/haspow--63db1cab903344d61b30a053.md) | 333 | `declaration-track:63db1cab903344d61b30a053ce41b963bf57e4423bb4357e2d03412c0e28b3ff` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--39b59f384d263d009bd1b4f3.md) | 349 | `declaration-track:39b59f384d263d009bd1b4f37a4d07d3caabaa0cafed9534288b054db6d6519e` |
| 39 | `theorem` | [smul_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/smul-val--a5739ec7722c1a2c4368b9b2.md) | 356 | `result-track:a5739ec7722c1a2c4368b9b247527b1b29a81b4c0444d008992d6eb234f055f5` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--ef4d2bc12c40baf8bafb7ad3.md) | 366 | `declaration-track:ef4d2bc12c40baf8bafb7ad3da9515aac4321db20fa65b2f1f96da6782b7fb0c` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--9f9d68c4189123dfb9a8d1bf.md) | 372 | `declaration-track:9f9d68c4189123dfb9a8d1bf360469427c818c94cf401372ec96f3f83465ad5f` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--000fe653ca5bca3b9e1e1d39.md) | 381 | `declaration-track:000fe653ca5bca3b9e1e1d39bcd4617ab826879b5181595cde26e550ef833924` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--275e4c23e1e7452f436be6e2.md) | 383 | `declaration-track:275e4c23e1e7452f436be6e2614f499034e161be3edfbde348b5cb1831dac8a8` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--3bdab552ec75e6498646cd48.md) | 392 | `declaration-track:3bdab552ec75e6498646cd48fb4f6fcfa17a25cfc497f8a74aa7fea2fa70b196` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--51d997b092c81813441c68e6.md) | 394 | `declaration-track:51d997b092c81813441c68e6dd14f2d7ad110fe2e29200479ad7d034fa58fb50` |
| 46 | `theorem` | [zero_eq](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/zero-eq--aadf50d57da50a1061bea26f.md) | 396 | `result-track:aadf50d57da50a1061bea26fa808a1e00089a2a1aae7c7b5f36373dece891050` |
| 47 | `theorem` | [one_eq](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/one-eq--f21a392be0919f4303776d4e.md) | 400 | `result-track:f21a392be0919f4303776d4e1114588ed96dc93eb611181989d79353b049db40` |
| 48 | `theorem` | [zero_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/zero-val--1aaf7a83158e040ac3114be1.md) | 406 | `result-track:1aaf7a83158e040ac3114be101deec4a51ad6faf910a5d2dc95d05ad91c2aae8` |
| 49 | `theorem` | [one_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/one-val--4ccf76b38fbd2c536f6134a6.md) | 410 | `result-track:4ccf76b38fbd2c536f6134a6f57abdbbdd5d4b515d8d15054bc955e90f948118` |
| 50 | `theorem` | [add_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/add-val--fd72223b9ad1de9654827fc4.md) | 415 | `result-track:fd72223b9ad1de9654827fc484facf1dcb23727250725694cd6e75d3f9684310` |
| 51 | `theorem` | [mul_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/mul-val--c499e93781c7cae4be14669c.md) | 425 | `result-track:c499e93781c7cae4be14669c09e457524d02585591fba26505ac33ba9567ac2e` |
| 52 | `theorem` | [neg_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/neg-val--cc17ac8b04e63d8b5c7ebfec.md) | 435 | `result-track:cc17ac8b04e63d8b5c7ebfec957692ea6000a1efb7bcf002f0a02dbdd9c23fdc` |
| 53 | `theorem` | [sub_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/sub-val--ed4a7eac325971c3f83982a3.md) | 444 | `result-track:ed4a7eac325971c3f83982a3f348ecb5d4d5d7e0e20d5d9e42409ecbe866297e` |
| 54 | `theorem` | [pow_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/pow-val--2ef08c1a1238eabaa1a52f77.md) | 449 | `result-track:2ef08c1a1238eabaa1a52f77a1a7cb8fb82427f4b957e6ce334a8df1bb30234f` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--d388bb419224747af65aaa9e.md) | 457 | `declaration-track:d388bb419224747af65aaa9e380255942dba6bac10fa19537c04817c1b9d3f90` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--aae26defcc460a7e0fe4beff.md) | 460 | `declaration-track:aae26defcc460a7e0fe4beff99abe936527b1233a5e5a9604823b413e46b95e2` |
| 57 | `theorem` | [natCast_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/natcast-val--0f16800e79edd9895b900356.md) | 464 | `result-track:0f16800e79edd9895b90035690fe52cab70ad38a0066fee1e8acb250f48f5750` |
| 58 | `theorem` | [intCast_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/intcast-val--66a75295922739760c6a965a.md) | 469 | `result-track:66a75295922739760c6a965a90564e5d1f188610fbc2bbf1dd91657de9a86f51` |
| 59 | `instance` | [homogenousLocalizationCommRing](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/homogenouslocalizationcommring--cb485018cd06386c47476d6d.md) | 473 | `declaration-track:cb485018cd06386c47476d6d539bad9acdf02ffa7be907ff714b306a5addb256` |
| 60 | `instance` | [homogeneousLocalizationAlgebra](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/homogeneouslocalizationalgebra--ece86c0c1ed6fd7a2f8712e0.md) | 478 | `declaration-track:ece86c0c1ed6fd7a2f8712e03919c7aff446035bdfb63cfff4b04f1ad402a169` |
| 61 | `def` | [num](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/num--8f333a1f1fd11b0353c50db7.md) | 499 | `declaration-track:8f333a1f1fd11b0353c50db77f30c2540a29b7e6886fd6892239869a54f1c6fb` |
| 62 | `def` | [den](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den--8bbb08e739a752ba0b76f48e.md) | 504 | `declaration-track:8bbb08e739a752ba0b76f48e2b44fa9b59375bd6f7d28e99c115e12fd07779f0` |
| 63 | `def` | [deg](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/deg--8c81ffaf4d2fe6efbe1c5d1f.md) | 510 | `declaration-track:8c81ffaf4d2fe6efbe1c5d1f2aa815925eb2d62cdc9f04e018ff1f88b134f340` |
| 64 | `theorem` | [den_mem](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den-mem--795ab4162c1a93dc9317a2fe.md) | 514 | `result-track:795ab4162c1a93dc9317a2fe079fe859e7b6d7146e57667554655ad231714676` |
| 65 | `theorem` | [num_mem_deg](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/num-mem-deg--5a7ced83b18191fcb0ed9a08.md) | 518 | `result-track:5a7ced83b18191fcb0ed9a08da68b5ed08c140c5bfb1ac7c1cb9079763040b62` |
| 66 | `theorem` | [den_mem_deg](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/den-mem-deg--9218253e0a6f79bd1d97ad3b.md) | 522 | `result-track:9218253e0a6f79bd1d97ad3b6c06be7a73ac55615c6bf0268ae4ea673364a1b0` |
| 67 | `theorem` | [eq_num_div_den](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/eq-num-div-den--a66998b63b90aef21a054a47.md) | 526 | `result-track:a66998b63b90aef21a054a47d1a2ece1b7389550cb9d1d681121a2f93a7565db` |
| 68 | `theorem` | [ext_iff_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/ext-iff-val--bfafb2df995ff0210993d680.md) | 534 | `result-track:bfafb2df995ff0210993d680871d8d495f0b8e70ac579443367ba952b6a67e0a` |
| 69 | `abbrev` | [AtPrime](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/atprime--cb861528f78648bc0f60203a.md) | 548 | `declaration-track:cb861528f78648bc0f60203af971a54420d1e437778fa94cd122f52f8d0e65ca` |
| 70 | `theorem` | [isUnit_iff_isUnit_val](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/isunit-iff-isunit-val--a0774ca3db9161102a846ea5.md) | 552 | `result-track:a0774ca3db9161102a846ea5f1aa765a7fdae13e64462544c76db8cb3bc4caab` |
| 71 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/instance--fa5799b992ef1c7bfbbb6dec.md) | 586 | `declaration-track:fa5799b992ef1c7bfbbb6deca79e1a267081fb1de38c62ef7a82f450c515facc` |
| 72 | `instance` | [localRing](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/localring--f4145c9e14e9433eb0bf2e71.md) | 589 | `declaration-track:f4145c9e14e9433eb0bf2e713394b7dae4b572f24eab303e5d2026146913a28f` |
| 73 | `abbrev` | [Away](../../../../mathematics/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/declarations/away--f986b2494b40d1c46048ca2f.md) | 618 | `declaration-track:f986b2494b40d1c46048ca2f31555252390f8b2ffecea12e22766159600d5593` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
