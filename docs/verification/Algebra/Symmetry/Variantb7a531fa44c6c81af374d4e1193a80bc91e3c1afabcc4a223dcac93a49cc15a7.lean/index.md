# Verification target: GRWTSK.Algebra.Symmetry.Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d702403fc2412356e439ff5b52e3b6170455ced1",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d702403fc2412356e439ff5b52e3b6170455ced1`.

Source path: `GRWTSK/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitPerm](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/bitperm--517e4cbff2447a91833546fb.md) | 39 | `declaration-track:517e4cbff2447a91833546fbc93762a83a734ae56be491335ee345415c5e7212` |
| 2 | `def` | [BitPerm.ofBijective](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/bitperm-ofbijective--cdc4c4a9dd03a4fbad5a9557.md) | 42 | `declaration-track:cdc4c4a9dd03a4fbad5a9557f25a7834ee797a659da538dfed3aba69c1645c36` |
| 3 | `theorem` | [BitPerm.ofBijective_apply](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/bitperm-ofbijective-apply--01e72b8f7be3abe9077ee72e.md) | 49 | `result-track:01e72b8f7be3abe9077ee72eff7e98524f7fa4c44a263f9ec829fe26e34d2115` |
| 4 | `def` | [XorGroup](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/xorgroup--93ed3e3d624aa5fdb9a8f653.md) | 64 | `declaration-track:93ed3e3d624aa5fdb9a8f6538fdf945077aeb30b96b202c8b623fd9fa0307f61` |
| 5 | `instance` | [instOne](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/instone--98ff6a4434a103ea947cbd4e.md) | 68 | `declaration-track:98ff6a4434a103ea947cbd4ebebc2d3fffac8dbee16d5d25441cbb76bac66ca7` |
| 6 | `instance` | [instMul](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/instmul--439b7fa46cab01ae104acf60.md) | 71 | `declaration-track:439b7fa46cab01ae104acf60ee305efa01e89c4ae91a23d45c8d20b13c3a9dc1` |
| 7 | `instance` | [instInv](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/instinv--e67c73ceaee7a9b07cc8d137.md) | 74 | `declaration-track:e67c73ceaee7a9b07cc8d137ba9ef2487bc1f9f84744b7a9955b01bcb4f67234` |
| 8 | `instance` | [instCommGroup](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/instcommgroup--73dd4b221b6b2e7cc03fe4dd.md) | 77 | `declaration-track:73dd4b221b6b2e7cc03fe4dd7493e6ceab4727ebe24fd4f7945b73da01869cc1` |
| 9 | `def` | [toBits](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/tobits--b51a4b43cacbf59a341c5352.md) | 85 | `declaration-track:b51a4b43cacbf59a341c5352c020c4bb965340c7cb89716caad60546159196bf` |
| 10 | `theorem` | [one_toBits](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/one-tobits--5b98ee5f96ab23ef94383d18.md) | 89 | `result-track:5b98ee5f96ab23ef94383d1821ecc5a7fdaa8e3bbe4d5c42f09268bdd0796da7` |
| 11 | `theorem` | [mul_toBits](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/mul-tobits--84ba4877220988ae1fc5e700.md) | 94 | `result-track:84ba4877220988ae1fc5e70015310ce41db670acaaa90e7b9dc168f073ad5a74` |
| 12 | `theorem` | [inv_eq](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/inv-eq--0534f8c5cbb0b8fde2792935.md) | 99 | `result-track:0534f8c5cbb0b8fde279293586db92d33ceb8318990cfb38cd9add2fdf4bc406` |
| 13 | `structure` | [MonoidEmbedding](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/monoidembedding--68b6c5683efbe0c07da45353.md) | 110 | `declaration-track:68b6c5683efbe0c07da453538d787830148b2d1795bceddb20b864c5887c0f17` |
| 14 | `instance` | [instCoeFunForall](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/instcoefunforall--832d39b4dda1547e77235aa3.md) | 118 | `declaration-track:832d39b4dda1547e77235aa3aae99003be3f4d3d380d256b62ce0a416338d982` |
| 15 | `theorem` | [injective](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/injective--3f67a652209251248610e9c9.md) | 123 | `result-track:3f67a652209251248610e9c97836c3b46bcfa586e7a9b10614bf815e0b3245df` |
| 16 | `theorem` | [translation_mul_apply](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/translation-mul-apply--64408a0774a54c2873a1d982.md) | 132 | `result-track:64408a0774a54c2873a1d982989cda4f767eda3f4bd33d7154a2a6dfa542f9e5` |
| 17 | `def` | [translationHom](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/translationhom--f16a15fda3a4fb74dc57ec68.md) | 143 | `declaration-track:f16a15fda3a4fb74dc57ec68b8099c13b66af2924abaee847cf9574d1a3f44ad` |
| 18 | `theorem` | [translationHom_apply](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/translationhom-apply--30c6c911471f4e3fb6b5baff.md) | 152 | `result-track:30c6c911471f4e3fb6b5baffd8d38c2e0921e581998a1a22d75ddaaa1120c20d` |
| 19 | `theorem` | [translationHom_injective](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/translationhom-injective--593d73f62e50df50fa39447c.md) | 159 | `result-track:593d73f62e50df50fa39447c3594300247f21a021b65800b67152e2e36e376b1` |
| 20 | `def` | [translationEmbedding](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/translationembedding--b3455d7628a8b4c744a882b6.md) | 167 | `declaration-track:b3455d7628a8b4c744a882b61d27f259aaddf7783eaeb5a35fe356ce2680d728` |
| 21 | `theorem` | [translationHom_one](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/translationhom-one--d66faa5ab566babbd8b38ed7.md) | 172 | `result-track:d66faa5ab566babbd8b38ed76e7dd7f6a0f3ef7ee4983e375aec351352c6f909` |
| 22 | `theorem` | [translation_comm](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/translation-comm--cc7b1f376f3dce5241382bef.md) | 176 | `result-track:cc7b1f376f3dce5241382befb293b3cf589f602a99cd1994aff980cd8434b531` |
| 23 | `theorem` | [translation_order_two](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/translation-order-two--7b886f7346e2559e6d509ef1.md) | 181 | `result-track:7b886f7346e2559e6d509ef1d937484b277d906cc80cde2fba982c6efa63b8c3` |
| 24 | `def` | [coordinatePermutationHom](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/coordinatepermutationhom--13147a0e79a814ee6831208f.md) | 192 | `declaration-track:13147a0e79a814ee6831208f3fca061925496d98826ec82bcdd2c1b7aedeb26e` |
| 25 | `theorem` | [coordinatePermutationHom_apply](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/coordinatepermutationhom-apply--b1ea94d533756d3b49633907.md) | 201 | `result-track:b1ea94d533756d3b4963390728e1818e1be389b12d6572ab94bdbf4d043fd1b3` |
| 26 | `theorem` | [coordinatePermutation_basisBit](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/coordinatepermutation-basisbit--b7b2af5b2aee8dce32f374e6.md) | 208 | `result-track:b7b2af5b2aee8dce32f374e643bafab879395c314155b35b8c14ad0d539112d1` |
| 27 | `theorem` | [basisBit_injective](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/basisbit-injective--e8920200f6a6fd4c3fc9aea8.md) | 217 | `result-track:e8920200f6a6fd4c3fc9aea84770fc757c8cc5b42fcc7f1f8d050bc6e31c0091` |
| 28 | `theorem` | [coordinatePermutationHom_injective](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/coordinatepermutationhom-injective--545d983c5003b4a11816f21a.md) | 225 | `result-track:545d983c5003b4a11816f21ade831341ed4d44f0e0bbcb4e1e9b8d256b07334a` |
| 29 | `def` | [coordinatePermutationEmbedding](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/coordinatepermutationembedding--3f542be5c8911418a30e285e.md) | 239 | `declaration-track:3f542be5c8911418a30e285ef3b15fdf7e8b9b788d7042cb8bd2403f33a3c05e` |
| 30 | `def` | [hammingDistance](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingdistance--39a675ee5325274c54f6c2ce.md) | 247 | `declaration-track:39a675ee5325274c54f6c2ce70c0bae6c16cb1ef34f6b7ec8ebffa63217e378e` |
| 31 | `theorem` | [hammingDistance_self](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingdistance-self--274b8c958963af6bec35d5dd.md) | 251 | `result-track:274b8c958963af6bec35d5ddef0b27c93fddb20f987eb3ae2bb1058cbc59e93d` |
| 32 | `theorem` | [hammingDistance_comm](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingdistance-comm--39a334bfcb2bd82a5247ccd8.md) | 255 | `result-track:39a334bfcb2bd82a5247ccd8d0c4aa7b880b21aa484750da10fc4319278ba351` |
| 33 | `theorem` | [hammingDistance_eq_zero_iff](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingdistance-eq-zero-iff--c304075748d97d3a81c58837.md) | 259 | `result-track:c304075748d97d3a81c588373367f988ae22045101b5d27cfc94dc4b94585ed7` |
| 34 | `structure` | [HammingIso](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingiso--2ffaa6bef4e1df58346443be.md) | 265 | `declaration-track:2ffaa6bef4e1df58346443be468f8fd2507e71008def896025a6ccc5dfaa9301` |
| 35 | `def` | [HammingIso.toPerm](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingiso-toperm--a7074d9fac36625c03327b66.md) | 270 | `declaration-track:a7074d9fac36625c03327b66e40ea7c0f9e15059c9af21a72d5f16ad10eb890b` |
| 36 | `theorem` | [HammingIso.toPerm_apply](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingiso-toperm-apply--88e5976a8b9d5068d37d6264.md) | 274 | `result-track:88e5976a8b9d5068d37d6264ccf50b253601591bc64e40d306a884b5cc032e9e` |
| 37 | `theorem` | [xorBits_cancel_both_right](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/xorbits-cancel-both-right--b8c117a7f3942561c710044a.md) | 281 | `result-track:b8c117a7f3942561c710044a735364cd8b63f55fb5772e1437432645f0b5ef07` |
| 38 | `theorem` | [coordinatePermutation_zero](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/coordinatepermutation-zero--3cd7e6aef5ce986983f488d6.md) | 288 | `result-track:3cd7e6aef5ce986983f488d6151d1a2fca23342caec4503dfba74fa9650684a3` |
| 39 | `theorem` | [HammingIso.hammingDistance_toPerm](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingiso-hammingdistance-toperm--725858e42aaf93f61d767aac.md) | 295 | `result-track:725858e42aaf93f61d767aacde1155dd62fca6a99af532c04dda6911bd68b7e1` |
| 40 | `theorem` | [HammingIso.toPerm_injective](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingiso-toperm-injective--591da3c04bb20da572391f6e.md) | 306 | `result-track:591da3c04bb20da572391f6efb3968a542517a0f9541ab5ee245464bac3e69cb` |
| 41 | `def` | [conjugate](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/conjugate--067c4ac30d85e10b947949a0.md) | 325 | `declaration-track:067c4ac30d85e10b947949a0a49ed7d79484aca1d5d8c0d2e7d631c3f05beb1a` |
| 42 | `theorem` | [conjugate_apply](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/conjugate-apply--4fadf1dffdda6632ca99edec.md) | 329 | `result-track:4fadf1dffdda6632ca99edec3ebab783ca934d215d068e07f3787fdefe6908f0` |
| 43 | `theorem` | [conjugate_one](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/conjugate-one--506b2e059fbc25a7ceead282.md) | 336 | `result-track:506b2e059fbc25a7ceead2823167e54a61ce9b10670fdb843487a3e093467215` |
| 44 | `theorem` | [conjugate_self](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/conjugate-self--2783662c8a9a53218da70547.md) | 342 | `result-track:2783662c8a9a53218da705472ed9bd50de9d2499b132ab27f771a8ce8a0709cd` |
| 45 | `theorem` | [conjugate_pow](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/conjugate-pow--2d6fc4a80ae452dc78fa4e36.md) | 349 | `result-track:2d6fc4a80ae452dc78fa4e36a18ff629defdcb48f44b128ac4cd6c928fe6d5aa` |
| 46 | `theorem` | [HammingIso.toPerm_symm_apply](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingiso-toperm-symm-apply--b403f658eac223e52c4466e7.md) | 368 | `result-track:b403f658eac223e52c4466e7e561893637d4df97f8bd573873b580c4f227f51d` |
| 47 | `theorem` | [HammingIso.toPerm_symm_xor_basis](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingiso-toperm-symm-xor-basis--349775d049431d59415f7cb2.md) | 375 | `result-track:349775d049431d59415f7cb2d46b48e9302ec267125c5975431258d81bb4b6db` |
| 48 | `theorem` | [HammingIso.toPerm_xor_cancel](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/hammingiso-toperm-xor-cancel--11dcab0b3d8ac458ac5279d0.md) | 387 | `result-track:11dcab0b3d8ac458ac5279d087b2b7a407a2f4f4b2ff49ffd667dbb2272ac344` |
| 49 | `theorem` | [bitDerivative_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/bitderivative-conjugate-hammingiso--5d96599ead142efc5efc3b22.md) | 399 | `result-track:5d96599ead142efc5efc3b224aec85ec613d9ff94f0aa37a78b1f0c27b20b096` |
| 50 | `theorem` | [derivativeBit_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/derivativebit-conjugate-hammingiso--af0927a5128a0d9e7ba29e19.md) | 413 | `result-track:af0927a5128a0d9e7ba29e195e349644f59582dc4bdb3c79ff8b4a0b3a5018ec` |
| 51 | `theorem` | [sacCount_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/saccount-conjugate-hammingiso--aee56d76e226901a13e58d77.md) | 425 | `result-track:aee56d76e226901a13e58d7725d9a4d2afc98a78ab5a0446d8246d02b010198e` |
| 52 | `theorem` | [strictSAC_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/strictsac-conjugate-hammingiso--d407c1c595b5905f2a2b598e.md) | 439 | `result-track:d407c1c595b5905f2a2b598e580fe305f0eb39a18b66628f77fcebde36343877` |
| 53 | `theorem` | [sacEntry_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/sacentry-conjugate-hammingiso--49a7b6ba3b735b8b3b82de13.md) | 451 | `result-track:49a7b6ba3b735b8b3b82de137a97d1c9b48cb6d8b31d9ec45119dd47470970a5` |
| 54 | `theorem` | [sum_sacEntry_relabel](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/sum-sacentry-relabel--adee0cc30baee62d0e2bfc1b.md) | 459 | `result-track:adee0cc30baee62d0e2bfc1b01c458931118a2ee5b7a22fa0fe6d21bfef91682` |
| 55 | `theorem` | [sacScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/sacscore-conjugate-hammingiso--43e32c84705a51571f241962.md) | 486 | `result-track:43e32c84705a51571f241962d5e955ab4dfba1e13a1eeba9e0ca7ac0a08f908e` |
| 56 | `theorem` | [varianceScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/variancescore-conjugate-hammingiso--a4d84e4e02f16060328123c6.md) | 496 | `result-track:a4d84e4e02f16060328123c699dc78e78c99f45bf6cfbdf6a7e2fa7f2a4b84b1` |
| 57 | `def` | [fixedPoints](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/fixedpoints--020a244bc35ca73f4f6f04ca.md) | 513 | `declaration-track:020a244bc35ca73f4f6f04caa47f5bb01916b7077c669540e70d12d81aa673a6` |
| 58 | `def` | [fixedPointCount](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/fixedpointcount--1e9de6add47002cd0dae0b83.md) | 517 | `declaration-track:1e9de6add47002cd0dae0b83064fae622b1d280b32b2869bf06832c776b5b61a` |
| 59 | `theorem` | [mem_fixedPoints_iff](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/mem-fixedpoints-iff--60fa1e5749e34dde7d21ec2e.md) | 520 | `result-track:60fa1e5749e34dde7d21ec2e18193fb83e445a0591a46249a1feebc1a9bdb9bd` |
| 60 | `theorem` | [fixedPoints_zero](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/fixedpoints-zero--1ee1bb757c4a6c1267624f01.md) | 528 | `result-track:1ee1bb757c4a6c1267624f0112e55b6ddb5c305848cbc9f97eb834cb94634317` |
| 61 | `theorem` | [fixedPointCount_zero](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/fixedpointcount-zero--8172d8b1f63614b9ac9b0df0.md) | 534 | `result-track:8172d8b1f63614b9ac9b0df03c50764f17ba49ebecd4425147cd639e25cbdfec` |
| 62 | `theorem` | [fixedPointCount_le](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/fixedpointcount-le--b2d71da22b2adc130cd85c90.md) | 539 | `result-track:b2d71da22b2adc130cd85c9015f37fe652fbddc6cf8ca089bb455c5529ded51b` |
| 63 | `theorem` | [fixedPointCount_conjugate](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/fixedpointcount-conjugate--9b5ed6519665819069c90b05.md) | 545 | `result-track:9b5ed6519665819069c90b05749f00830d8877fd0f053d54af7e621c0c935403` |
| 64 | `theorem` | [fixedPointCount_identity](../../../../mathematics/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/declarations/fixedpointcount-identity--1603798ef566e04504085ca1.md) | 563 | `result-track:1603798ef566e04504085ca158d0a8e8bb4895ca178e3572eadcba0031865103` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
