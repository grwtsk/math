# Verification target: GRWTSK.Algebra.Ideal.Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93862cccffd4fcc11b634739f2c2e6d9df27ef7b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93862cccffd4fcc11b634739f2c2e6d9df27ef7b`.

Source path: `GRWTSK/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.IsPrimary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Radical` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson--bca4922f9ba2ac88b56c0fde.md) | 62 | `declaration-track:bca4922f9ba2ac88b56c0fdeb4a034d9f797ce420f55d17c26620fef078d19e3` |
| 2 | `theorem` | [le_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/le-jacobson--f20dc665073f117f94e04015.md) | 65 | `result-track:f20dc665073f117f94e040156d2accbc9f98e659b15f0b729869e192fbeb7d82` |
| 3 | `theorem` | [jacobson_idem](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson-idem--62df60de19f3b2a26bfcbdcc.md) | 68 | `result-track:62df60de19f3b2a26bfcbdcc1661d6f51f16fe9e6019f02a09b340012595e1e9` |
| 4 | `theorem` | [jacobson_top](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson-top--007acce8389db72875227e19.md) | 72 | `result-track:007acce8389db72875227e191b74b08a812327fd8395af60858a3396eadcd412` |
| 5 | `theorem` | [jacobson_bot](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson-bot--174bf3778636c072173c4834.md) | 75 | `result-track:174bf3778636c072173c48349b3a9956428bfd330fe7d5eb8982b963299a4865` |
| 6 | `theorem` | [jacobson_eq_top_iff](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson-eq-top-iff--73a781b74175f18a6d6ba8b4.md) | 79 | `result-track:73a781b74175f18a6d6ba8b44224f513d215a6ce6c053c2e3bcf3dce7e3895a5` |
| 7 | `theorem` | [jacobson_eq_bot](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson-eq-bot--ff018f4cca112359b141136e.md) | 87 | `result-track:ff018f4cca112359b141136e6e9ab0ff4989e9eeb1e0e3d8fef5a49c75b901b6` |
| 8 | `theorem` | [jacobson_eq_self_of_isMaximal](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson-eq-self-of-ismaximal--df1258f4ffa79369d5c487fb.md) | 89 | `result-track:df1258f4ffa79369d5c487fb2907ddf363516b95b365bd0927f2f0cb5608a517` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/instance--ef191de8d7c1e04346ccda0a.md) | 92 | `declaration-track:ef191de8d7c1e04346ccda0a444a54592b5e14657fe34af0f100ae363a1b73a7` |
| 10 | `theorem` | [mem_jacobson_iff](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/mem-jacobson-iff--12c049085c7ea818b3826220.md) | 96 | `result-track:12c049085c7ea818b38262201dbecc8eeaf71ab3558dd6c18d0ce6fdbc8254dd` |
| 11 | `theorem` | [exists_mul_add_sub_mem_of_mem_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/exists-mul-add-sub-mem-of-mem-jacobson--b7042e2dbd72ab363c17829d.md) | 118 | `result-track:b7042e2dbd72ab363c17829d06bf481d954af5892ee934ddcd8d66dc3aa72623` |
| 12 | `theorem` | [exists_mul_sub_mem_of_sub_one_mem_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/exists-mul-sub-mem-of-sub-one-mem-jacobson--b1f44ad06126320e6fe6ee17.md) | 125 | `result-track:b1f44ad06126320e6fe6ee1788fa608dff5a9e922b010ff0274977ca887d227c` |
| 13 | `theorem` | [eq_jacobson_iff_sInf_maximal](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/eq-jacobson-iff-sinf-maximal--22fc5a2983d0f7a7456cad3d.md) | 132 | `result-track:22fc5a2983d0f7a7456cad3d56707c5a1300fc5fe985d1a39f8ac2b2da1be517` |
| 14 | `theorem` | [eq_jacobson_iff_sInf_maximal'](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/eq-jacobson-iff-sinf-maximal--e07d8eb22858f4f9e7c4d1f0.md) | 143 | `result-track:e07d8eb22858f4f9e7c4d1f082a0aac624bd85f2c39afb83e55c0a6a29b1f4df` |
| 15 | `theorem` | [eq_jacobson_iff_notMem](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/eq-jacobson-iff-notmem--69a1cd5e734d257ffac5e636.md) | 161 | `result-track:69a1cd5e734d257ffac5e636c9bf9bbc943a1b7519a540a82dda308c284d0be4` |
| 16 | `theorem` | [map_jacobson_of_surjective](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/map-jacobson-of-surjective--b5b4e5f5ca1c9a9a0576a50b.md) | 176 | `result-track:b5b4e5f5ca1c9a9a0576a50b4d9e1982ec28ab75cea48ba2c6682640cca33f74` |
| 17 | `theorem` | [map_jacobson_of_bijective](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/map-jacobson-of-bijective--063bb9f1670288bcba2348ec.md) | 195 | `result-track:063bb9f1670288bcba2348ecd90b1eb293e289b995be29b69779dd4c512d5cd5` |
| 18 | `theorem` | [comap_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/comap-jacobson--105653f904bb182f468d462e.md) | 200 | `result-track:105653f904bb182f468d462e809ba3f2c13c573c4fdb5e5378835ac8dca64569` |
| 19 | `theorem` | [comap_jacobson_of_surjective](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/comap-jacobson-of-surjective--cc43fd83d65d3a1583ecb053.md) | 204 | `result-track:cc43fd83d65d3a1583ecb05308f1e9335a2c8838cf217706e56fc39596f3a7cd` |
| 20 | `theorem` | [jacobson_mono](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson-mono--d9ed5e88a8b68d9104e175c0.md) | 224 | `result-track:d9ed5e88a8b68d9104e175c0bcc6d83fcf99b2f82ae8d03686a25c4b0149a339` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/instance--e02e8033f3ed601704b6916c.md) | 230 | `declaration-track:e02e8033f3ed601704b6916cb5cab020b84003a1fb7d2cb80d2e5ff77a652224` |
| 22 | `theorem` | [radical_le_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/radical-le-jacobson--7e4a08905b20183f49ead7d5.md) | 271 | `result-track:7e4a08905b20183f49ead7d507f39011e01f4b925f1c75ceb7a5a1b1fca4b728` |
| 23 | `theorem` | [isRadical_of_eq_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/isradical-of-eq-jacobson--76c589536e39a9116a8bf540.md) | 274 | `result-track:76c589536e39a9116a8bf540106e28ab275a6074584b99faae1e1470f21b62aa` |
| 24 | `lemma` | [isRadical_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/isradical-jacobson--82833389c34a62fe224c0ea0.md) | 277 | `result-track:82833389c34a62fe224c0ea0443fe7a746aeae03f7f04901de1f836a3fc28d3b` |
| 25 | `theorem` | [isUnit_of_sub_one_mem_jacobson_bot](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/isunit-of-sub-one-mem-jacobson-bot--da147c5b83f78521cf22bc2a.md) | 280 | `result-track:da147c5b83f78521cf22bc2a8ae94dbb27582aa22ce24c600dbf0913e8c2a858` |
| 26 | `theorem` | [mem_jacobson_bot](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/mem-jacobson-bot--a8d1c6f57bef87754b4efcc3.md) | 286 | `result-track:a8d1c6f57bef87754b4efcc3b863da9e245a2c0bdc3c537ffeacf0414955a592` |
| 27 | `theorem` | [jacobson_eq_iff_jacobson_quotient_eq_bot](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson-eq-iff-jacobson-quotient-eq-bot--6e4a778a4e36c879d2083858.md) | 299 | `result-track:6e4a778a4e36c879d2083858b559c3eb02cd6b2e771a8fce16049ca36c4ba02f` |
| 28 | `theorem` | [radical_eq_jacobson_iff_radical_quotient_eq_jacobson_bot](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/radical-eq-jacobson-iff-radical-quotient-eq-jacobson-bot--00dbb8d983360291744d99cf.md) | 315 | `result-track:00dbb8d983360291744d99cff82098f2ae6f276665052146e3179012455db684` |
| 29 | `theorem` | [jacobson_radical_eq_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson-radical-eq-jacobson--1aa9e0d9c066630b32ce06ce.md) | 330 | `result-track:1aa9e0d9c066630b32ce06ce9ff01ea0e9ab9704a649ea3b10ad4be51194b762` |
| 30 | `class` | [IsLocal](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/islocal--8c7b55792423a0937f5e7399.md) | 345 | `declaration-track:8c7b55792423a0937f5e73991bbfaa5a07b7a5b3dc9d761f1fd83f633db2d4b0` |
| 31 | `theorem` | [isLocal_iff](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/islocal-iff--973536e0c7f2a2deca9f9770.md) | 349 | `result-track:973536e0c7f2a2deca9f9770f5a15a1f0d29945d038a3bca0abf1ef8defffea2` |
| 32 | `theorem` | [isLocal_of_isMaximal_radical](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/islocal-of-ismaximal-radical--8a0dcda00330cbee24be1be5.md) | 352 | `result-track:8a0dcda00330cbee24be1be548ef657553b8cfb66eeb447a6caff54a298b0fba` |
| 33 | `theorem` | [IsLocal.le_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/islocal-le-jacobson--59d85eca345a4f69eecbc28a.md) | 358 | `result-track:59d85eca345a4f69eecbc28a8a4b803ec9db09e258fcef64ef14ef3db3f4f8bb` |
| 34 | `theorem` | [IsLocal.mem_jacobson_or_exists_inv](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/islocal-mem-jacobson-or-exists-inv--0f905fa64ee9916bc39ed66d.md) | 363 | `result-track:0f905fa64ee9916bc39ed66d0d3b9b76ea412f30e070677d083ed9cf27ca35ef` |
| 35 | `theorem` | [isPrimary_of_isMaximal_radical](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/isprimary-of-ismaximal-radical--0ecd47f1a75ae048e2d1dae6.md) | 377 | `result-track:0ecd47f1a75ae048e2d1dae6544052e00e1eb9c0793307a644c62ac187c15fcc` |
| 36 | `def` | [jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/jacobson--66512f72cfe68939a003f107.md) | 397 | `declaration-track:66512f72cfe68939a003f107db8c99db53bddb87e5e422deeb53474af909c0c5` |
| 37 | `lemma` | [asIdeal_jacobson](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/asideal-jacobson--73c1fe6a7e11f0ac6649173b.md) | 400 | `result-track:73c1fe6a7e11f0ac6649173bfed8a8d447426c134239bd4db1ad7be92bc0a694` |
| 38 | `theorem` | [mem_jacobson_iff](../../../../mathematics/Algebra/Ideal/Variantd078ec0da44a1ac8d9ca1b04554bd01c0fc3abbc77248dd7b589651a6ced88ea.lean/declarations/mem-jacobson-iff--1e515ac94c053f2c393993a9.md) | 403 | `result-track:1e515ac94c053f2c393993a9ea215474d25f1838d7c3e5c3999619ec1d724a54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
