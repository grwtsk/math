# Verification target: GRWTSK.Algebra.Defs.Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0574464fd9edf6965ebf6887ae3c3c9ac02b238",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0574464fd9edf6965ebf6887ae3c3c9ac02b238`.

Source path: `GRWTSK/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Hom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Opposite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SMulZeroClass](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smulzeroclass--a28118080f4c60ade418931c.md) | 54 | `declaration-track:a28118080f4c60ade418931c25ab33a39e0a07f27690f067bad161ffe48d5a1c` |
| 2 | `theorem` | [smul_zero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-zero--e1099fe03b5ae45aa3b1f7c5.md) | 63 | `result-track:e1099fe03b5ae45aa3b1f7c5358ec02f66e25ac2bb26290fdcace4e567160379` |
| 3 | `lemma` | [smul_ite_zero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-ite-zero--8584657fa267f9d9ca79bdf7.md) | 66 | `result-track:8584657fa267f9d9ca79bdf71f969e57dc9392be7a45aab2598c6a2e694a74fd` |
| 4 | `lemma` | [smul_eq_zero_of_right](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-eq-zero-of-right--81fd49be90dd7eb3870a20de.md) | 69 | `result-track:81fd49be90dd7eb3870a20de9c27d33236bdfff0192e4250edd0ef843eacd854` |
| 5 | `lemma` | [right_ne_zero_of_smul](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/right-ne-zero-of-smul--42e808470c29b52a5cc9c714.md) | 70 | `result-track:42e808470c29b52a5cc9c714b713da2b6f2275fe0ab7bbccc7de349eb1505071` |
| 6 | `abbrev` | [Function.Injective.smulZeroClass](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-injective-smulzeroclass--0cce3672a9ff2224f3ad9e50.md) | 74 | `declaration-track:0cce3672a9ff2224f3ad9e50d57e01ba7bd1d9b94c54f48807bd31793636212a` |
| 7 | `abbrev` | [ZeroHom.smulZeroClass](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/zerohom-smulzeroclass--04b14f80775f4f85cc3e0c85.md) | 82 | `declaration-track:04b14f80775f4f85cc3e0c854f81e35ed95e0216ac271fc7b3134047ae190850` |
| 8 | `abbrev` | [Function.Surjective.smulZeroClassLeft](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-surjective-smulzeroclassleft--95b4e09fa40f44c5ecd2eb96.md) | 92 | `declaration-track:95b4e09fa40f44c5ecd2eb965e96baf6467eb9c0d55230b3462aa981622679e8` |
| 9 | `abbrev` | [SMulZeroClass.compFun](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smulzeroclass-compfun--de5e8fa81bfeea8059a5f162.md) | 103 | `declaration-track:de5e8fa81bfeea8059a5f16268a98802eb6e12e2e86f994be8aec489fc0e669a` |
| 10 | `def` | [SMulZeroClass.toZeroHom](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smulzeroclass-tozerohom--b28e8de9e1258ed94c270707.md) | 110 | `declaration-track:b28e8de9e1258ed94c2707078b5152bb2f6f55c076902bc085e1b7de356ef6eb` |
| 11 | `class` | [SMulWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smulwithzero--3f60a542ee33133f07fada16.md) | 123 | `declaration-track:3f60a542ee33133f07fada16cddea973977b273c35b60e046a0f5f7c3d019de8` |
| 12 | `instance` | [MulZeroClass.toSMulWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/mulzeroclass-tosmulwithzero--080abf822d76370b1dbbedb0.md) | 127 | `declaration-track:080abf822d76370b1dbbedb0f9465a7644e0308310dd0048996dec205e8351c1` |
| 13 | `instance` | [MulZeroClass.toOppositeSMulWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/mulzeroclass-tooppositesmulwithzero--76188411e97b544e25a190cb.md) | 133 | `declaration-track:76188411e97b544e25a190cbc270495455d1413a195ce244b6f6da731e954ee5` |
| 14 | `theorem` | [zero_smul](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/zero-smul--f801db76807677a2c0e8a48b.md) | 141 | `result-track:f801db76807677a2c0e8a48b8c7f6b673ce4d2142e64fafd5552bfcb98ab5bc1` |
| 15 | `lemma` | [smul_eq_zero_of_left](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-eq-zero-of-left--2a1c2cc5ef6947dcba38e7d3.md) | 146 | `result-track:2a1c2cc5ef6947dcba38e7d3076eb6d2595b0bd1017c8963e5621c306ee95863` |
| 16 | `lemma` | [left_ne_zero_of_smul](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/left-ne-zero-of-smul--a861766ad66d0b09b7387312.md) | 147 | `result-track:a861766ad66d0b09b73873120d611e4928ff154719fcb67ec3260e60bbc38457` |
| 17 | `abbrev` | [Function.Injective.smulWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-injective-smulwithzero--ca5b456db0add351676eab37.md) | 153 | `declaration-track:ca5b456db0add351676eab37d1302e2247f9d89da9942c870038509c177219a5` |
| 18 | `abbrev` | [Function.Surjective.smulWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-surjective-smulwithzero--230c1b1fdc434eb851d6d9f2.md) | 161 | `declaration-track:230c1b1fdc434eb851d6d9f249c5a168fa3089fa5e9e5cd40518af0eff7385ba` |
| 19 | `def` | [SMulWithZero.compHom](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smulwithzero-comphom--6e4f7f5a62e64ecb85564db1.md) | 172 | `declaration-track:6e4f7f5a62e64ecb85564db14662392a93db3ff6823ff5a6b03c372d8121515a` |
| 20 | `instance` | [AddMonoid.natSMulWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/addmonoid-natsmulwithzero--8094b5e5d80393b3c145ec9d.md) | 179 | `declaration-track:8094b5e5d80393b3c145ec9d84bb5c22cc6a7ed41e0f69887b6c8ba391758340` |
| 21 | `instance` | [AddGroup.intSMulWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/addgroup-intsmulwithzero--4b8aa510c10a89785a0c96b6.md) | 183 | `declaration-track:4b8aa510c10a89785a0c96b6e87ba75248835a1eba4b9f3d585ddc55159592b3` |
| 22 | `class` | [MulActionWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/mulactionwithzero--fce04cd5ba49099327b0de5c.md) | 193 | `declaration-track:fce04cd5ba49099327b0de5cad8e77df012fd34dcbf933d8e0b78a98774db258` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/instance--cedef6f5b85512e646971ff3.md) | 201 | `declaration-track:cedef6f5b85512e646971ff3c1a9fb8ff7d739b0a18f0ab06229735d293ac04b` |
| 24 | `instance` | [MonoidWithZero.toMulActionWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/monoidwithzero-tomulactionwithzero--8b018b40d7896b31c6dbdbdf.md) | 206 | `declaration-track:8b018b40d7896b31c6dbdbdf13076ba6ed4bf36b4e77e8279d7888b9519ef47d` |
| 25 | `instance` | [MonoidWithZero.toOppositeMulActionWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/monoidwithzero-tooppositemulactionwithzero--3084655947dc395c21d4c26f.md) | 211 | `declaration-track:3084655947dc395c21d4c26f1bc6c8f91e412c6a6b0f03dabfa7a8da6308abb8` |
| 26 | `lemma` | [MulActionWithZero.subsingleton](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/mulactionwithzero-subsingleton--db9f0ec4c5c388226cf71886.md) | 214 | `result-track:db9f0ec4c5c388226cf718861e0ad4d69e0aa7b4c3e99f9b7838c444e982893d` |
| 27 | `lemma` | [MulActionWithZero.nontrivial](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/mulactionwithzero-nontrivial--a356e44419a3f99a3b98f64b.md) | 219 | `result-track:a356e44419a3f99a3b98f64b0f68579cb35e939d601d2ba6c2947d597fe16dbc` |
| 28 | `lemma` | [ite_zero_smul](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/ite-zero-smul--037fe09a5592fcea985913b9.md) | 226 | `result-track:037fe09a5592fcea985913b9da463319e38e9d6d8c5a8e93aaa60c2416d34e62` |
| 29 | `lemma` | [boole_smul](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/boole-smul--20d01142299866092c9b1ca8.md) | 229 | `result-track:20d01142299866092c9b1ca8078c63242d9916d03b87159644bcbbfe080cc7bc` |
| 30 | `lemma` | [Pi.single_apply_smul](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/pi-single-apply-smul--9a4e7bf2ac51b4ae52c896c7.md) | 231 | `result-track:9a4e7bf2ac51b4ae52c896c775e361118861d04e248215a51f464dfdd91d29fd` |
| 31 | `abbrev` | [Function.Injective.mulActionWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-injective-mulactionwithzero--5427805ee262f0b2611df5bd.md) | 237 | `declaration-track:5427805ee262f0b2611df5bd7ad46d7d5d8a08a6cafceaf58082fb9a5d208cb4` |
| 32 | `abbrev` | [Function.Surjective.mulActionWithZero](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-surjective-mulactionwithzero--ba564b05e3b8d29c241f3377.md) | 243 | `declaration-track:ba564b05e3b8d29c241f3377f23bcebdf89d1f8e4de1c3fa43523518824ce1fb` |
| 33 | `def` | [MulActionWithZero.compHom](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/mulactionwithzero-comphom--72d4fdb60f651b9d396b924b.md) | 250 | `declaration-track:72d4fdb60f651b9d396b924b9aa0e6bfb9c884ec29e71b91723926a269076e9d` |
| 34 | `lemma` | [smul_inv₀](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-inv--4bd6c38877e07eb4dab303e0.md) | 261 | `result-track:4bd6c38877e07eb4dab303e020d1fcb2c32cb7156fd28a45f063cd612f7e7c86` |
| 35 | `class` | [DistribSMul](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/distribsmul--9dba084d5c032f208107c8c7.md) | 276 | `declaration-track:9dba084d5c032f208107c8c765a49bd70d040cbcf088167c0b820f09f23e8f24` |
| 36 | `theorem` | [smul_add](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-add--a822e4214e392173155160fc.md) | 284 | `result-track:a822e4214e392173155160fc74e49c9a98f4ef3b60114242cbf339ae3de50541` |
| 37 | `instance` | [AddMonoidHom.smulZeroClass](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/addmonoidhom-smulzeroclass--ded2ea49c0348c04d39142ad.md) | 287 | `declaration-track:ded2ea49c0348c04d39142ad5bd2bf4d38efe2d416ce4e41489de93d6bbd3081` |
| 38 | `abbrev` | [Function.Injective.distribSMul](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-injective-distribsmul--27823b69f8dc69b0ec46a0ad.md) | 297 | `declaration-track:27823b69f8dc69b0ec46a0ad19a919b545e4df33af1190e5b63ea88e14f2873d` |
| 39 | `abbrev` | [Function.Surjective.distribSMul](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-surjective-distribsmul--be97b4fc264f7dd2a1f36faa.md) | 305 | `declaration-track:be97b4fc264f7dd2a1f36faae5442d370af9d926c18ca93720cf5624d10a3037` |
| 40 | `abbrev` | [Function.Surjective.distribSMulLeft](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-surjective-distribsmulleft--a303619fb7dc8ac5c266a154.md) | 317 | `declaration-track:a303619fb7dc8ac5c266a154d92036e810970ffd95f658a4811f5031b43e198c` |
| 41 | `abbrev` | [DistribSMul.compFun](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/distribsmul-compfun--ec577ce13274894efc8d1c80.md) | 327 | `declaration-track:ec577ce13274894efc8d1c803773934e6af36a3e5657ccec47edb01109b23382` |
| 42 | `def` | [DistribSMul.toAddMonoidHom](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/distribsmul-toaddmonoidhom--3db6aa2716bc7665d3fd9aca.md) | 333 | `declaration-track:3db6aa2716bc7665d3fd9acab3a28e1ced00333fcb0b0fbf0ad78e53d62df69c` |
| 43 | `instance` | [AddMonoid.nat_smulCommClass](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/addmonoid-nat-smulcommclass--44f511f22347d210a463eff5.md) | 336 | `declaration-track:44f511f22347d210a463eff512465786ea9aa9fdf1a06d1ffcdf4db20d00dc24` |
| 44 | `instance` | [AddMonoid.nat_smulCommClass'](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/addmonoid-nat-smulcommclass--58b7ff56bb3e70d05c35aafd.md) | 341 | `declaration-track:58b7ff56bb3e70d05c35aafde081b22a1c5597624a8de03f02336d93cdce61ea` |
| 45 | `class` | [DistribMulAction](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/distribmulaction--0c49f4c037e588969f0c6ac3.md) | 349 | `declaration-track:0c49f4c037e588969f0c6ac3cea04099cdcd6ad75722765690a7dc02eda077bf` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/instance--eee789d0b7b19d909da0ed0f.md) | 360 | `declaration-track:eee789d0b7b19d909da0ed0f83691fd663ce265212509331609f402cafed6c01` |
| 47 | `example` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/example--0c819a359ff2c9c46dab6872.md) | 367 | `declaration-track:0c819a359ff2c9c46dab6872b8fa0d33c2baa2aa8e6eab1a542fb44ed6ba7db4` |
| 48 | `abbrev` | [Function.Injective.distribMulAction](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-injective-distribmulaction--6c7bf128c839af8f6629bdaa.md) | 375 | `declaration-track:6c7bf128c839af8f6629bdaabdc34e2fe7c539852633eb9f81748c297df48262` |
| 49 | `abbrev` | [Function.Surjective.distribMulAction](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/function-surjective-distribmulaction--ac1ae2f891c58a290de9e92c.md) | 382 | `declaration-track:ac1ae2f891c58a290de9e92c7b6d39f6782bb2d0c68afdfa0b343b328b7f2314` |
| 50 | `def` | [DistribMulAction.toAddMonoidHom](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/distribmulaction-toaddmonoidhom--c36c1fb6b892a0cfa40c3105.md) | 390 | `declaration-track:c36c1fb6b892a0cfa40c310593d966c150a53ea9d60474675dfe09554d6e5b44` |
| 51 | `def` | [DistribMulAction.toAddMonoidEnd](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/distribmulaction-toaddmonoidend--679a3409c209f58d0bf03a43.md) | 397 | `declaration-track:679a3409c209f58d0bf03a432a823bf30d3bd4ec8679b087d279e04479b1f2a4` |
| 52 | `instance` | [AddGroup.int_smulCommClass](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/addgroup-int-smulcommclass--9adde38a112032ac841eb421.md) | 409 | `declaration-track:9adde38a112032ac841eb421f0581a815f3d42abb8f9994b866f1c132cb810ee` |
| 53 | `instance` | [AddGroup.int_smulCommClass'](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/addgroup-int-smulcommclass--2a56a0a526701a3674c4fc3d.md) | 413 | `declaration-track:2a56a0a526701a3674c4fc3d319fc87f6dfe78ddc2debd4e72d94ce7cd6a3505` |
| 54 | `theorem` | [smul_neg](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-neg--beca5b3684690b2a03aca436.md) | 417 | `result-track:beca5b3684690b2a03aca43674ee0d16436a8b8adf1b58c004e58fc0b0121472` |
| 55 | `theorem` | [smul_sub](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-sub--b31a6a407582632b97f66dfa.md) | 420 | `result-track:b31a6a407582632b97f66dfa2a4b0b254784361d171d0096af023dc441669b3e` |
| 56 | `lemma` | [smul_eq_zero_iff_eq](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-eq-zero-iff-eq--ee317731c61aa73ab4d3a067.md) | 428 | `result-track:ee317731c61aa73ab4d3a067574375ca7c34d73bac700bc813c52afed5816cb5` |
| 57 | `lemma` | [smul_ne_zero_iff_ne](../../../../mathematics/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/declarations/smul-ne-zero-iff-ne--87678b4f91aca82320d1119a.md) | 431 | `result-track:87678b4f91aca82320d1119a02398c3817da2931e7e39f8b95f74cfcf161bb5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
