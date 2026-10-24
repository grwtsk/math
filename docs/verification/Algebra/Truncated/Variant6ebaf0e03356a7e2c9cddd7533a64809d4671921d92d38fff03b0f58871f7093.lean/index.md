# Verification target: GRWTSK.Algebra.Truncated.Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1a34c8069266f077f885f9399835f787de854b6",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/index.md) · [Full source](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1a34c8069266f077f885f9399835f787de854b6`.

Source path: `GRWTSK/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.InitTail` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TruncatedWittVector](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatedwittvector--a1b4fd24004c4db2531c7a46.md) | 66 | `declaration-track:a1b4fd24004c4db2531c7a46b5fcb4d00d986d948d165f7cff394297ff06d7fa` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--21993c6a0fa3f536ed9928a1.md) | 69 | `declaration-track:21993c6a0fa3f536ed9928a17a8191caab1824231f1574e2aefef2ef54e33c03` |
| 3 | `def` | [mk](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/mk--9f05cf0fc9f81e749eacf338.md) | 78 | `declaration-track:9f05cf0fc9f81e749eacf33884f9ed455e0311ae6a57a86b1a2d569cb5f40d12` |
| 4 | `def` | [coeff](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/coeff--173689ddf5a93c901fe7bc42.md) | 82 | `declaration-track:173689ddf5a93c901fe7bc421d7580b7ac7f2a43beb0b37800ed1393c618fa8d` |
| 5 | `theorem` | [ext](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/ext--44e5c43eef64a5f0f11e4a5f.md) | 86 | `result-track:44e5c43eef64a5f0f11e4a5fff771ffb06d615137bbb282a2e7dd96da81d2675` |
| 6 | `theorem` | [coeff_mk](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/coeff-mk--3e396611de4f51b6fb99c8df.md) | 90 | `result-track:3e396611de4f51b6fb99c8dfe53483a642ac25e144234f61632be3e498fd99cd` |
| 7 | `theorem` | [mk_coeff](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/mk-coeff--15b37b2d6c8d5c06e5fefd78.md) | 94 | `result-track:15b37b2d6c8d5c06e5fefd781d4aced20fc5163180e7e6306e944b0ce397313a` |
| 8 | `def` | [out](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/out--11c318b65eca15983ed41a08.md) | 102 | `declaration-track:11c318b65eca15983ed41a0837d5e28374b01f90622c5eeeca488446de723b4d` |
| 9 | `theorem` | [coeff_out](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/coeff-out--6de26f522520382cddce16d5.md) | 106 | `result-track:6de26f522520382cddce16d5a385cda7d9ca2fc2b3e711ebaac3426f26af7fc6` |
| 10 | `theorem` | [out_injective](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/out-injective--ead9433184b659eade2fed37.md) | 109 | `result-track:ead9433184b659eade2fed37a5a96356db70fd979f07f6e2455cc7964c097e2a` |
| 11 | `def` | [truncateFun](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun--5d85c47b56b27289a2564c1d.md) | 126 | `declaration-track:5d85c47b56b27289a2564c1dd863d6b04dc58d1ec97098f74b88c4a39ec85b5f` |
| 12 | `theorem` | [coeff_truncateFun](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/coeff-truncatefun--094bab893fa4f08200c32289.md) | 134 | `result-track:094bab893fa4f08200c3228942a1cc4d02cc4002ccd6a7d153a5743c99e1b2e2` |
| 13 | `theorem` | [out_truncateFun](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/out-truncatefun--09a76f73644179accc1ade59.md) | 140 | `result-track:09a76f73644179accc1ade599a9f6e03f9040f184e749e6575a5668fd34b4dc9` |
| 14 | `theorem` | [truncateFun_out](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-out--c527aeeecb73c2c52099a095.md) | 153 | `result-track:c527aeeecb73c2c52099a0959e4d50f1c134e05e8c37672aafaff1b886259a97` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--791bfd99ac4c638d6afa58b1.md) | 161 | `declaration-track:791bfd99ac4c638d6afa58b1cd6ef100b8bffcf4dfb0c730c2e681bee78248eb` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--7ed72e704863a9ea0627204a.md) | 164 | `declaration-track:7ed72e704863a9ea0627204a1c0d03888659aee59348887065ec8ad7e4f649bb` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--126d3e5efa508a286b047b4e.md) | 167 | `declaration-track:126d3e5efa508a286b047b4e631717ae09786e865d3cffb7cc5d46c9be6c342f` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--dc22e266b4738c48b1fa4d78.md) | 170 | `declaration-track:dc22e266b4738c48b1fa4d7872bb73191b9911f164f26abb77ad24a3cae2e405` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--fe3229158ac4adf8e4db1266.md) | 173 | `declaration-track:fe3229158ac4adf8e4db1266f2ce6a37c50e3e2d69254ac996dfc8a433792b18` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--731ae2b7c171939870d4befa.md) | 176 | `declaration-track:731ae2b7c171939870d4befa704966cbf29d632bf7b15d2910d7d298dccb3828` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--ad9a7ac7ec9a3722108b1c6a.md) | 179 | `declaration-track:ad9a7ac7ec9a3722108b1c6aa31d4f622de329cdf345b95a5527ad8b7a4f4889` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--edaaf70ee9ed82d91bf9fafa.md) | 182 | `declaration-track:edaaf70ee9ed82d91bf9fafa049b0eb3f1f860b153cf6b1c6566ec9334cb1adf` |
| 23 | `instance` | [hasNatScalar](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/hasnatscalar--3a971608ae3b28cbf6d7a6fc.md) | 185 | `declaration-track:3a971608ae3b28cbf6d7a6fcafa68342ee2d7277af1ab090963aa6df8ed93982` |
| 24 | `instance` | [hasIntScalar](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/hasintscalar--e43f23cc79c3e6f8e9da2299.md) | 188 | `declaration-track:e43f23cc79c3e6f8e9da2299096e3a57fa87d9868b9e31fe7cbda2b8e3eebc74` |
| 25 | `instance` | [hasNatPow](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/hasnatpow--20ca35a20e6282280298f5bc.md) | 191 | `declaration-track:20ca35a20e6282280298f5bc476a1c112e84fa23f2a7fd8d6864041a6d71a88b` |
| 26 | `theorem` | [coeff_zero](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/coeff-zero--8bc74f0d8a1ba6dc1f3b2936.md) | 195 | `result-track:8bc74f0d8a1ba6dc1f3b2936dd58970ab6bfc753f1507ec486c098859f963219` |
| 27 | `macro` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/macro--36503609b975c24355a191d6.md) | 202 | `declaration-track:36503609b975c24355a191d6a26c60451b51d5b2395fd7f45bae2799271d8db7` |
| 28 | `theorem` | [truncateFun_surjective](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-surjective--45fccaa22d4d5302a7e74986.md) | 221 | `result-track:45fccaa22d4d5302a7e749868b4613d0d83a8fb5bd11e4183b89fe30c869f10f` |
| 29 | `theorem` | [truncateFun_zero](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-zero--81ca4eaf7568bcd06df26dd1.md) | 227 | `result-track:81ca4eaf7568bcd06df26dd1c3d364c7bdb62a0c14fb86a7ee82450e75e5700c` |
| 30 | `theorem` | [truncateFun_one](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-one--be78606d7e01cf24e68e09be.md) | 230 | `result-track:be78606d7e01cf24e68e09bea9fce6842c8600bf31fb544a9ae525d283a1dabc` |
| 31 | `theorem` | [truncateFun_add](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-add--8e70d6bbabf44ee91e38bba2.md) | 235 | `result-track:8e70d6bbabf44ee91e38bba2c264275bab7b6675e5aacb847b150dce2b2ffd48` |
| 32 | `theorem` | [truncateFun_mul](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-mul--e315f13b614958c0e955df0c.md) | 240 | `result-track:e315f13b614958c0e955df0c035fc22c1bac1ebcbbde3bae28498b14e6fed5a4` |
| 33 | `theorem` | [truncateFun_neg](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-neg--8f507da482111e4bcd91fca3.md) | 244 | `result-track:8f507da482111e4bcd91fca3a5193bda6a775f9f98271fccc8220f6fa5e639d8` |
| 34 | `theorem` | [truncateFun_sub](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-sub--4cbdf6ef16636950487df2e8.md) | 247 | `result-track:4cbdf6ef16636950487df2e8916e64f06f77eae495ed93bdd92d9f979c0722d4` |
| 35 | `theorem` | [truncateFun_nsmul](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-nsmul--a13bb09ae8fcbe8e6be37d11.md) | 251 | `result-track:a13bb09ae8fcbe8e6be37d11fbba23639d217253b262c503a308b737cf731b60` |
| 36 | `theorem` | [truncateFun_zsmul](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-zsmul--bf5ad53751df63ddfa6e85ca.md) | 254 | `result-track:bf5ad53751df63ddfa6e85ca83605d7c506d58763d853874427fe781b1d342a4` |
| 37 | `theorem` | [truncateFun_pow](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-pow--23ca45ad925e2d16ec8ad36a.md) | 257 | `result-track:23ca45ad925e2d16ec8ad36a3ffec5830599d146f8a8e7210ab7b581bec72ca3` |
| 38 | `theorem` | [truncateFun_natCast](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-natcast--bf0f6b32a3ecb910d2213cf9.md) | 260 | `result-track:bf0f6b32a3ecb910d2213cf915ef279179dfde29a609189fec8320f82ff9e096` |
| 39 | `theorem` | [truncateFun_intCast](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncatefun-intcast--7eb207f01279717375a717f6.md) | 262 | `result-track:7eb207f01279717375a717f6c9ca47250338e19ffe87c903e977c3973290947f` |
| 40 | `instance` | [instCommRing](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instcommring--c8c009adce88e1c46900afbb.md) | 274 | `declaration-track:c8c009adce88e1c46900afbbf4ed0c488f7ad9792e9fe3e6c65ee1edd47414f6` |
| 41 | `def` | [truncate](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate--2f612618555306f61b0ee5cb.md) | 292 | `declaration-track:2f612618555306f61b0ee5cb29f62e6ea27c09bd0a724aefc41a22a7fae3d26a` |
| 42 | `theorem` | [truncate_surjective](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-surjective--905a71f0f42cd2a1e6ebaa3f.md) | 301 | `result-track:905a71f0f42cd2a1e6ebaa3fee3317e42554a9bf4f01471119679ff5cebdf6df` |
| 43 | `theorem` | [coeff_truncate](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/coeff-truncate--f63d1a3fbe2b95eb4cef4e63.md) | 307 | `result-track:f63d1a3fbe2b95eb4cef4e631f9ac78bdf217843934e0a13874c1b289182e67c` |
| 44 | `theorem` | [mem_ker_truncate](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/mem-ker-truncate--f4e23892b4a508d2ae8c4996.md) | 312 | `result-track:f4e23892b4a508d2ae8c4996e463f3582838f368194fb5792221e501a19685fb` |
| 45 | `theorem` | [truncate_mk'](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-mk--9a0403bac6660a839cd13e5a.md) | 321 | `result-track:9a0403bac6660a839cd13e5aed2e71f69e70d0532dd559f3d846cc71360e46cf` |
| 46 | `def` | [truncate](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate--3c4fd65d9c59540c07cfd327.md) | 338 | `declaration-track:3c4fd65d9c59540c07cfd32793e633dcc695d6143c7f06442fd5ed2e3195ba63` |
| 47 | `theorem` | [truncate_comp_wittVector_truncate](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-comp-wittvector-truncate--4bd31cff72b4060912071090.md) | 347 | `result-track:4bd31cff72b40609120710902533236241e2603f3eb8cd73a27101ec42c73db3` |
| 48 | `theorem` | [truncate_wittVector_truncate](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-wittvector-truncate--879f743be17094eff3c4bade.md) | 352 | `result-track:879f743be17094eff3c4badee8349231e9a4a03f36366d6cfb5c567b63b3ca70` |
| 49 | `theorem` | [truncate_truncate](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-truncate--5bc3522997d78ee8692a5b78.md) | 357 | `result-track:5bc3522997d78ee8692a5b7896e9dd4d8e2eab625ae2249d032e72675ca45020` |
| 50 | `theorem` | [truncate_comp](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-comp--9589a626146dd4c641bf1d27.md) | 364 | `result-track:9589a626146dd4c641bf1d276aa65c32432cf2d97f82e06cb54a557dbd8f1c82` |
| 51 | `theorem` | [truncate_surjective](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-surjective--c5bbdd60d72bda16d01ad0ab.md) | 368 | `result-track:c5bbdd60d72bda16d01ad0ab37fdcda9f3afada7646d06cb74a88961c9519505` |
| 52 | `theorem` | [coeff_truncate](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/coeff-truncate--f022460f6f70fcdc2e20e9be.md) | 374 | `result-track:f022460f6f70fcdc2e20e9bef208b62c7f192816cfc9b4780b513390f1b4758a` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/instance--ac7b36d4b5111beda8a6e584.md) | 383 | `declaration-track:ac7b36d4b5111beda8a6e5848feabd11b252a3402ae6730d1b6254a6f5910610` |
| 54 | `theorem` | [card](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/card--0657ccea71110b51097a4f91.md) | 388 | `result-track:0657ccea71110b51097a4f91b1339afc5753f8b9d5fdcf19aa9d8ab314379e82` |
| 55 | `theorem` | [iInf_ker_truncate](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/iinf-ker-truncate--debc0ef2d4635def1c8f0732.md) | 396 | `result-track:debc0ef2d4635def1c8f07326abc9169eb0bcebe79365dfea4018c500f3ae915` |
| 56 | `def` | [liftFun](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/liftfun--ec6a5af4c6990771fdc9071d.md) | 423 | `declaration-track:ec6a5af4c6990771fdc9071dd82f0c7980d19a4301829ab13d94954983d98072` |
| 57 | `theorem` | [truncate_liftFun](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-liftfun--9a762b59d0a092e0c721813c.md) | 429 | `result-track:9a762b59d0a092e0c721813cb6e138e2893e7e3f63298734c510231dfa7dad90` |
| 58 | `def` | [lift](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/lift--bce4c084c2a1ec31bf97a4f0.md) | 441 | `declaration-track:bce4c084c2a1ec31bf97a4f0b5998f5c34252d3d0bebcfc201ed8be3bef58f93` |
| 59 | `theorem` | [truncate_lift](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-lift--20c112d65bf1a4d4b89e6a6e.md) | 454 | `result-track:20c112d65bf1a4d4b89e6a6e4e7b8b51963e787be38374e5dd92e03a756ac0e9` |
| 60 | `theorem` | [truncate_comp_lift](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/truncate-comp-lift--b7f13034ed7fa1443bfd67e1.md) | 458 | `result-track:b7f13034ed7fa1443bfd67e151608beb927b89673ad5e73d68d90f8ddc763006` |
| 61 | `theorem` | [lift_unique](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/lift-unique--8730a47e27f79d51649ce2e1.md) | 462 | `result-track:8730a47e27f79d51649ce2e1660459add04b5b8dcdc6a6fe289d10752cbabac2` |
| 62 | `def` | [liftEquiv](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/liftequiv--59c844ed560b79272621a647.md) | 472 | `declaration-track:59c844ed560b79272621a6479b4fec3611cdcae9259a753a7174652b8383c25f` |
| 63 | `theorem` | [hom_ext](../../../../mathematics/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/declarations/hom-ext--c91c8231d86d4dd69ea52769.md) | 482 | `result-track:c91c8231d86d4dd69ea527690a60b431436b7a1b2cca92f66a60f4025851317a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
