# Verification target: GRWTSK.Algebra.Congruence.Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ec49b311d491731dc410a1f896317acc8930935",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/index.md) · [Full source](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ec49b311d491731dc410a1f896317acc8930935`.

Source path: `GRWTSK/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingCon](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/ringcon--b33c5c902ffdd16a8da8dcf4.md) | 49 | `declaration-track:b33c5c902ffdd16a8da8dcf4adcaa504c5390040b6c0a17d91df6ba4a0149e3c` |
| 2 | `inductive` | [RingConGen.Rel](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/ringcongen-rel--0d99dffdb5592c642a22ebad.md) | 60 | `declaration-track:0d99dffdb5592c642a22ebad20594ba8267290bc2d609dcc784beb01d3dd4951` |
| 3 | `def` | [ringConGen](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/ringcongen--90b033768061f588c3ebcbf5.md) | 73 | `declaration-track:90b033768061f588c3ebcbf51c632ce6e8117637b51f6c7679060b9ea9d4f930` |
| 4 | `def` | [toAddCon](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/toaddcon--030f0b6a1360742b72568f3b.md) | 88 | `declaration-track:030f0b6a1360742b72568f3bff1c852f97b72705f282b7ddf621d4ac83473280` |
| 5 | `def` | [toCon](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/tocon--96d1eb70e9c2dd10f0316ea6.md) | 93 | `declaration-track:96d1eb70e9c2dd10f0316ea63b543b933769b9a2150d321b6e8973d75267f83b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--60295f2563c97d11316f3d13.md) | 99 | `declaration-track:60295f2563c97d11316f3d13eb7586a8b3ac4b06ba0c960dc365351a4a79b1b8` |
| 7 | `theorem` | [rel_eq_coe](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/rel-eq-coe--68e1576d4e23ae2d928da4b4.md) | 108 | `result-track:68e1576d4e23ae2d928da4b4688846dc4a5417aa9e580a8ba1f2917bd47159b5` |
| 8 | `theorem` | [refl](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/refl--fb4b7771745d838ac1fb96d3.md) | 112 | `result-track:fb4b7771745d838ac1fb96d38a58c4ed965c26db56915922ef348d5a047fa4d1` |
| 9 | `theorem` | [symm](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/symm--ade064006a51a1de6fe208ad.md) | 116 | `result-track:ade064006a51a1de6fe208ad8cb152010b36318b2881a84d6333bbd3d8b4b919` |
| 10 | `theorem` | [trans](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/trans--615bba498c086d2c10b72e59.md) | 120 | `result-track:615bba498c086d2c10b72e598cf9969b389d5adc847085a33dab66a31a82617d` |
| 11 | `theorem` | [add](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/add--a339dee0880e99c907fc91b6.md) | 124 | `result-track:a339dee0880e99c907fc91b6701aea93511db342482b562b4ece764d04c9750f` |
| 12 | `theorem` | [mul](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/mul--9914628ded2daf60a9288c45.md) | 128 | `result-track:9914628ded2daf60a9288c4525219e2333f1b5f42851464774dc80276590a62a` |
| 13 | `theorem` | [rel_mk](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/rel-mk--f51cfed3b4a0c371ccfa7ae6.md) | 133 | `result-track:f51cfed3b4a0c371ccfa7ae63698e07a49dc247b084211d060fcf6d1ffa6c359` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--7fad0378cbe3c92afd18a2b0.md) | 137 | `declaration-track:7fad0378cbe3c92afd18a2b0076dada21b81d49875457d047f6b7129147203d5` |
| 15 | `def` | [Quotient](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/quotient--0b54add1717dfb06712dbbde.md) | 149 | `declaration-track:0b54add1717dfb06712dbbde96d04f3d12d10586d9c6cf4944aa5d6f30454dcb` |
| 16 | `def` | [toQuotient](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/toquotient--9c6a127e400656bbfb5c0ba0.md) | 156 | `declaration-track:9c6a127e400656bbfb5c0ba0e3fc36106c916c902a8b6a9e7d809e00173e22b8` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--f6b11faaca89a74d54d27308.md) | 164 | `declaration-track:f6b11faaca89a74d54d27308a50b014d8ee4379ce8b859122fc60e2b249ac0dd` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--281c3013de56826d2c439b6d.md) | 169 | `declaration-track:281c3013de56826d2c439b6d3da2cc61ff1a71c64dddaa05d1aa896f9416d121` |
| 19 | `theorem` | [quot_mk_eq_coe](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/quot-mk-eq-coe--7f2fd16730a4cb3d3b14a4b0.md) | 173 | `result-track:7f2fd16730a4cb3d3b14a4b0f7272989da0fc8fdee8cd54c2e9b4a00aeb5e68b` |
| 20 | `theorem` | [eq](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/eq--01eb6b345156451abb4de6df.md) | 180 | `result-track:01eb6b345156451abb4de6df0de9db334d2a66d7049b5b95eabd8008214dc4a9` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--f7d8bca9e9ad3d1c9b07e37e.md) | 198 | `declaration-track:f7d8bca9e9ad3d1c9b07e37e4069f5b584e5d11a53325b844fed05c65de27af2` |
| 22 | `theorem` | [coe_add](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-add--bed3756f39f01bb686cf15bb.md) | 201 | `result-track:bed3756f39f01bb686cf15bba375a0596f246aef93bf1c1d82164e573db145e3` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--d47296abae590b6c7eb2b5ba.md) | 205 | `declaration-track:d47296abae590b6c7eb2b5baefc34dd2766805bca44babb240fceedf0f5a87b7` |
| 24 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-mul--94c659bbd39d61d800da06ed.md) | 208 | `result-track:94c659bbd39d61d800da06ed9d0924288123a34ddb35020d77e34ee52d636c7d` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--6ca8dd7cf29bcea93acf637e.md) | 218 | `declaration-track:6ca8dd7cf29bcea93acf637e3b9e4972a96b84c737477d540a89d27e4f886988` |
| 26 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-zero--cd624d2a84b35d533b236f46.md) | 221 | `result-track:cd624d2a84b35d533b236f46aaffea6ba258fbd8240d9f9805633939363ce959` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--89c9d84246dab5e20f6ab97d.md) | 231 | `declaration-track:89c9d84246dab5e20f6ab97d028ae88a3ffcc4da3a9b2df3fb303b02a3ffa1c8` |
| 28 | `theorem` | [coe_one](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-one--9c4b82befc638950d7ca7dc5.md) | 234 | `result-track:9c4b82befc638950d7ca7dc5dc022c9ecf05d889c70982a8da952335b4b8f343` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--d010de1c5b93c489da9069ad.md) | 244 | `declaration-track:d010de1c5b93c489da9069ada305585943df50aef2d4b46e0490b21a732c5523` |
| 30 | `theorem` | [coe_smul](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-smul--e7cea3c824236855da0c88aa.md) | 247 | `result-track:e7cea3c824236855da0c88aac3835656aa9303a249a17031053b8a7e1898314c` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--9467056e8e8dbd39d6f32118.md) | 257 | `declaration-track:9467056e8e8dbd39d6f321181b178bd96e9947f0c9ebe89540b6800e380bd821` |
| 32 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-neg--777fed52a41108827960c008.md) | 260 | `result-track:777fed52a41108827960c008f71cb1039d4783dab6d22afb8f56aac472f89cb1` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--752d2d9aca5c3adce8805855.md) | 264 | `declaration-track:752d2d9aca5c3adce8805855b99dabb32d9925ef6e83acd8ba35068f89a3f15a` |
| 34 | `theorem` | [coe_sub](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-sub--e288115bd8b562e325acb1e9.md) | 267 | `result-track:e288115bd8b562e325acb1e94756307dd41a39e806de7795cba92f37a1235efe` |
| 35 | `instance` | [hasZsmul](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/haszsmul--79bb05a081fb03531ad38902.md) | 271 | `declaration-track:79bb05a081fb03531ad38902a6b1bdc9c760efaebd809a85f9aa4dfac26c95d4` |
| 36 | `theorem` | [coe_zsmul](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-zsmul--ee885bb2e9988a0148b353ee.md) | 275 | `result-track:ee885bb2e9988a0148b353eed1e7b6b406fb0c0da4cbd25d725b199c7784063e` |
| 37 | `instance` | [hasNsmul](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/hasnsmul--919b4dab4f78c4e2d7f9e1db.md) | 285 | `declaration-track:919b4dab4f78c4e2d7f9e1dbfffa4958729ce22e5f300b5cc9636b1c715c77cb` |
| 38 | `theorem` | [coe_nsmul](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-nsmul--cf384c63663bc75220ad5aec.md) | 289 | `result-track:cf384c63663bc75220ad5aece8c5d54385b5a5e8b58c17b909010f283e9f30ee` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--a7e58ebfb9b29ca6e1f9324f.md) | 299 | `declaration-track:a7e58ebfb9b29ca6e1f9324f2cc1a2a8aa72758341789864cb7c804fbe71f39a` |
| 40 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-pow--6a8fc4f1e22723866d82edcb.md) | 302 | `result-track:6a8fc4f1e22723866d82edcb0b0f7af1fb0b082ecd5e22a06a187fedaa671eea` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--bc8283fddc7a54dfb1e1bd8e.md) | 312 | `declaration-track:bc8283fddc7a54dfb1e1bd8e2661c68dd63c88262388def4b17cc34e43a0d824` |
| 42 | `theorem` | [coe_nat_cast](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-nat-cast--78c0509c64a5535f6073d113.md) | 316 | `result-track:78c0509c64a5535f6073d1132df7814fc02a86268ca6abf9798a2729152dddbb` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--dc94ce275a368e8c46ce8d9d.md) | 326 | `declaration-track:dc94ce275a368e8c46ce8d9d1cf681afa1d48adf6b9a652ea5a412eec0ca8e94` |
| 44 | `theorem` | [coe_int_cast](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/coe-int-cast--82a9eaaf44361f545ee4e91c.md) | 330 | `result-track:82a9eaaf44361f545ee4e91c88537bc4ffec27af17136569bd17d4a1e106c7be` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--8a130a5bb907ec0f4f4d5a72.md) | 336 | `declaration-track:8a130a5bb907ec0f4f4d5a729f2577ba356ce24255afeb8910ce1879eed3c5fe` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--64a2cfe72afb4e00795c2142.md) | 349 | `declaration-track:64a2cfe72afb4e00795c214215e5babb583cfc67957d09af511371ee0827b549` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--bbe31b31493a0ca627630cc8.md) | 353 | `declaration-track:bbe31b31493a0ca627630cc8e4b098a1ca8dc094d492e4a86cca06bdc9ac10ba` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--9e640ef4afebd7e3945a4492.md) | 357 | `declaration-track:9e640ef4afebd7e3945a449231aaa63302b88c2da91c5cf2c7415239dc033f9b` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--43584e3d81959f502ab093fd.md) | 361 | `declaration-track:43584e3d81959f502ab093fd96262ff8e70ef05027c27680cf53a1fcfc5df0cb` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--1934a3c35fda6980b082ea33.md) | 365 | `declaration-track:1934a3c35fda6980b082ea334cbaef7aaa9fbddb70b5088cafe96bd5cb1f9253` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--7f49976af37e63201ddfd440.md) | 369 | `declaration-track:7f49976af37e63201ddfd4408fc98959b580200ce7a9509d34f62d7d437a19f6` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--ee12c0d31388cdea7b193ea9.md) | 373 | `declaration-track:ee12c0d31388cdea7b193ea9712924e42dc204e42d22ceb92b27a9bdedd9669f` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--3389677410735c8ec6583dd2.md) | 378 | `declaration-track:3389677410735c8ec6583dd255384aa21276dd661e7cc457cbc86904848f9853` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--371af1e5159e0d8a71cda3cb.md) | 382 | `declaration-track:371af1e5159e0d8a71cda3cb142ff6577edca3c2f9508341cc20731aa5dd1ca6` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--5c1b2adb14a4346412299baf.md) | 387 | `declaration-track:5c1b2adb14a4346412299baf75c1a2bb9b8d357249d733735457ad347f54eeba` |
| 56 | `instance` | [isScalarTower_right](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/isscalartower-right--60b271d5b1016005271b2a8e.md) | 392 | `declaration-track:60b271d5b1016005271b2a8e5363532176d4bdb283695ee7277c0f1ec5b4833e` |
| 57 | `instance` | [smulCommClass](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/smulcommclass--789fe7f9fb69fb013328874f.md) | 397 | `declaration-track:789fe7f9fb69fb013328874f3b281fb678dbddef9de820d161718cfd3b3483fd` |
| 58 | `instance` | [smulCommClass'](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/smulcommclass--11fed928a2450b14ffe7b015.md) | 402 | `declaration-track:11fed928a2450b14ffe7b015e3c70add2e70e324cca43744ad1bf854eb73c259` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--fceb15c78d4a3e3402b025e0.md) | 408 | `declaration-track:fceb15c78d4a3e3402b025e0b6f9fd8f409fb413d1e39da13345ccf470a8cb9d` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/instance--a0bd1f552333b6d54c91819c.md) | 415 | `declaration-track:a0bd1f552333b6d54c91819c887a628f1fb9194d784ce2032ad191694e919ee3` |
| 61 | `def` | [mk'](../../../../mathematics/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/declarations/mk--d6d095f6179f0ff3d3bf1a35.md) | 424 | `declaration-track:d6d095f6179f0ff3d3bf1a351fa6e326f2cf5f32136edd666421198ef0d083ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
