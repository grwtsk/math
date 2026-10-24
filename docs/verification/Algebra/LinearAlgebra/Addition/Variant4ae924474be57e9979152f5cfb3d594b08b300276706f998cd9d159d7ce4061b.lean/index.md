# Verification target: GRWTSK.Algebra.LinearAlgebra.Addition.Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dbda9566542d94895f87dc69c0c0fef4d55ea13",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dbda9566542d94895f87dc69c0c0fef4d55ea13`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HahnSeries.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--462bcfdfdb526fdff07767e2.md) | 42 | `declaration-track:462bcfdfdb526fdff07767e2ed20bc82903d00f51492b6a4bd57014c4a14bbe2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--cced4682606cf36268ffd66e.md) | 47 | `declaration-track:cced4682606cf36268ffd66e8da6d49724a6c8c9cee370e2e5a9333bb3314c24` |
| 3 | `theorem` | [coeff_add'](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-add--dbc48c6ca44da27c8061c83d.md) | 62 | `result-track:dbc48c6ca44da27c8061c83df240da67f51454de1c774593832646a9bbffc761` |
| 4 | `theorem` | [coeff_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-add--0d91baaf6c1cbda0763d0f3e.md) | 67 | `result-track:0d91baaf6c1cbda0763d0f3ead671b64b0ea711c9f5b463c7a6e6ae72b91148b` |
| 5 | `theorem` | [coeff_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-nsmul--f164e17e53c73e6077f98de8.md) | 73 | `result-track:f164e17e53c73e6077f98de86a5f9ba375a56d1ce2bce6347992e43e965b013e` |
| 6 | `lemma` | [map_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/map-add--927fea2fc0584f3da15543df.md) | 81 | `result-track:927fea2fc0584f3da15543df39a6235c29d7a0d4dbf7a8071e9372c3105af9cf` |
| 7 | `def` | [addOppositeEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/addoppositeequiv--b95ef344e8edc968f2a37950.md) | 90 | `declaration-track:b95ef344e8edc968f2a3795095839f9fe7fbae1e98368c6c188aa1c17f0e71a9` |
| 8 | `lemma` | [addOppositeEquiv_support](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/addoppositeequiv-support--2bada3f288377fb3d81acc65.md) | 103 | `result-track:2bada3f288377fb3d81acc653c971081ce44950cf4d0aaf20843335415e9d892` |
| 9 | `lemma` | [addOppositeEquiv_symm_support](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/addoppositeequiv-symm-support--9cbf5e02ef7b87f4ed0bbd48.md) | 109 | `result-track:9cbf5e02ef7b87f4ed0bbd48b653bd6e0e670c20f670b9a6b0c6fc50388d04fb` |
| 10 | `lemma` | [addOppositeEquiv_orderTop](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/addoppositeequiv-ordertop--96d571d1a843d2d92caf7eb5.md) | 114 | `result-track:96d571d1a843d2d92caf7eb5b3e3091f0fe90c9acde17aa48b8ae6d86b4a7720` |
| 11 | `lemma` | [addOppositeEquiv_symm_orderTop](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/addoppositeequiv-symm-ordertop--b590e593959430fead3b9048.md) | 124 | `result-track:b590e593959430fead3b90486f470921c0340f33b07b47252d998c2aa9931c04` |
| 12 | `lemma` | [addOppositeEquiv_leadingCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/addoppositeequiv-leadingcoeff--d7724d281fdcf37a527b79d4.md) | 129 | `result-track:d7724d281fdcf37a527b79d4ac3b990fcc225c2684ab3680867454b8ee5b0686` |
| 13 | `lemma` | [addOppositeEquiv_symm_leadingCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/addoppositeequiv-symm-leadingcoeff--11a6ab4ec139e038ed10b3c6.md) | 140 | `result-track:11a6ab4ec139e038ed10b3c62c8b6d77e84f3efa00e9fa80d322ddbe3a627749` |
| 14 | `theorem` | [support_add_subset](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/support-add-subset--04a6e73ea3a99c005be0f997.md) | 145 | `result-track:04a6e73ea3a99c005be0f99774cc84fb46e688d6269ea37969a4144c6ab3035e` |
| 15 | `theorem` | [min_le_min_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/min-le-min-add--06a9ac60cc071d6e7c7bd369.md) | 152 | `result-track:06a9ac60cc071d6e7c7bd3691f49e029c8ac27013fcbece479bd851157809429` |
| 16 | `theorem` | [min_orderTop_le_orderTop_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/min-ordertop-le-ordertop-add--bca300baaae6d3612f885781.md) | 160 | `result-track:bca300baaae6d3612f88578158dcb3f34e8e9c87f1ef040c61083136ca95febd` |
| 17 | `theorem` | [min_order_le_order_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/min-order-le-order-add--4bec7f35d9c86fecb90543f2.md) | 169 | `result-track:4bec7f35d9c86fecb90543f2237e4aa595c10c0d624724de403fb136b9fd347e` |
| 18 | `theorem` | [orderTop_add_eq_left](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/ordertop-add-eq-left--1c5e66ced1c114a5300cb5e7.md) | 176 | `result-track:1c5e66ced1c114a5300cb5e7c0c51a257d7b46399af5ec32eab85ded84ce8d31` |
| 19 | `theorem` | [orderTop_add_eq_right](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/ordertop-add-eq-right--faf7a699906b79d454118fd5.md) | 189 | `result-track:faf7a699906b79d454118fd5c6034099d5fdc49626bf3ccce76313982d5841d8` |
| 20 | `theorem` | [leadingCoeff_add_eq_left](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/leadingcoeff-add-eq-left--ef886690deb925a4537c5627.md) | 195 | `result-track:ef886690deb925a4537c562778b2ce462c80b566ce11f56213bc0743db70d027` |
| 21 | `theorem` | [leadingCoeff_add_eq_right](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/leadingcoeff-add-eq-right--032487ac0def5a08a106d859.md) | 206 | `result-track:032487ac0def5a08a106d859f739759eb8bad3d998228fb376e195b845ea1fc0` |
| 22 | `theorem` | [ne_zero_of_eq_add_single](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/ne-zero-of-eq-add-single--5423e9033247e2a1982cd4f0.md) | 212 | `result-track:5423e9033247e2a1982cd4f01d8e7899065bcb755f7b07090062ccdad2af92d8` |
| 23 | `theorem` | [coeff_order_of_eq_add_single](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-order-of-eq-add-single--15f301b3a06c72884816f01a.md) | 218 | `result-track:15f301b3a06c72884816f01a139461e83d7567ec339faaa07e73bf2b4165b218` |
| 24 | `theorem` | [order_lt_order_of_eq_add_single](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/order-lt-order-of-eq-add-single--d0e282128b6af68c429454db.md) | 231 | `result-track:d0e282128b6af68c429454db6411bf5632239e7c5dd49a0f8235da20eac474d9` |
| 25 | `def` | [single.addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/single-addmonoidhom--d376e8ac61d439466f30ef61.md) | 255 | `declaration-track:d376e8ac61d439466f30ef617a1ae2c5958a21412f918c8d6811bfc604d861bf` |
| 26 | `def` | [coeff.addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-addmonoidhom--b66d6fceb17003810cdf6cb6.md) | 263 | `declaration-track:b66d6fceb17003810cdf6cb61190fdecc66a13842e43a8fb53f91750f383226e` |
| 27 | `theorem` | [embDomain_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/embdomain-add--1a91e655368d03988229b4c5.md) | 272 | `result-track:1a91e655368d03988229b4c53b035cbd2bc8b1f6bcc56df7a6fbd48fb3a16879` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--944e2bef5dd892102f3fe6c1.md) | 288 | `declaration-track:944e2bef5dd892102f3fe6c1a603064c41d68d9ea6ac0f5fc807bc22c84d637a` |
| 29 | `theorem` | [coeff_sum](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-sum--432f4bc6495c1e140e0d859c.md) | 297 | `result-track:432f4bc6495c1e140e0d859cf1ea9818e78e59a75642ef11b549023d17adc36b` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--c7ef8a6c198f0e633af1f123.md) | 307 | `declaration-track:c7ef8a6c198f0e633af1f12343a66a01bd56ccc16f1ffd8e02fd6c54fd0e36ed` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--72ff926303017b75b18f29a8.md) | 314 | `declaration-track:72ff926303017b75b18f29a8d0c2f6ab430d10f512c64b227e2072519d2f713b` |
| 32 | `theorem` | [coeff_neg'](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-neg--5fa9667738de4a08a901e80c.md) | 322 | `result-track:5fa9667738de4a08a901e80ce779232cf4785936019596c65de344e436be993f` |
| 33 | `theorem` | [coeff_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-neg--09ee7195a12047b3b640c1a2.md) | 327 | `result-track:09ee7195a12047b3b640c1a239c3f2058de4f91bfc2e6d276a32566c0cfa38f1` |
| 34 | `theorem` | [support_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/support-neg--01d5f1351ee07037f6c7af89.md) | 333 | `result-track:01d5f1351ee07037f6c7af89d88f71057facedb3dca982f0d03a071f855e2e25` |
| 35 | `lemma` | [map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/map-neg--4365db0c4d97e885b74f7b39.md) | 338 | `result-track:4365db0c4d97e885b74f7b390e4c8926f75b68e10abfdad8979ea5a47cf28900` |
| 36 | `theorem` | [orderTop_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/ordertop-neg--42cb44038f78947255362b0f.md) | 342 | `result-track:42cb44038f78947255362b0f1890224dd1fcaed1e4a8a4ddc8b952478fecb9ef` |
| 37 | `theorem` | [order_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/order-neg--97cd0f88bc9a5c62f8241e14.md) | 346 | `result-track:97cd0f88bc9a5c62f8241e146a522ef01e265a6321f140a6e8dbf43226f29569` |
| 38 | `theorem` | [coeff_sub'](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-sub--4abf99aefdd0389bee719365.md) | 353 | `result-track:4abf99aefdd0389bee7193658cb52d0ecd38cc27026d50955fa3a56211884421` |
| 39 | `theorem` | [coeff_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-sub--47e57f2b8e5ade4e32e56e44.md) | 359 | `result-track:47e57f2b8e5ade4e32e56e44ef56181fec3e6ec82a10bc75774c6f3de0b762e8` |
| 40 | `lemma` | [map_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/map-sub--9b93c458b263d4cc42006846.md) | 365 | `result-track:9b93c458b263d4cc42006846f2a6128d7add35d20baf81e95cce4fadf16be6e8` |
| 41 | `theorem` | [min_orderTop_le_orderTop_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/min-ordertop-le-ordertop-sub--70c411dc2918393c62f591be.md) | 369 | `result-track:70c411dc2918393c62f591bea1b9cf6e37a4105172cb2df19eb9a639104ebded` |
| 42 | `theorem` | [orderTop_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/ordertop-sub--b04db5d922890d856036dd28.md) | 374 | `result-track:b04db5d922890d856036dd2854aad12595d240270196c3feb4c9176f443978d6` |
| 43 | `theorem` | [leadingCoeff_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/leadingcoeff-sub--4d19ad26b6c6f92e142f881b.md) | 380 | `result-track:4d19ad26b6c6f92e142f881b9a1183561daa9b87564fa4e86f669ebe44deda13` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--c21483fdfb05a15e8cbc47f8.md) | 388 | `declaration-track:c21483fdfb05a15e8cbc47f85252357cf832414fc7638b60f82ec8906bb31e0d` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--af70961ce9dc2af4e413ae9d.md) | 398 | `declaration-track:af70961ce9dc2af4e413ae9dd8858a47a090ec0cf49a5c4138a70dc41044bf4f` |
| 46 | `theorem` | [coeff_smul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-smul--36095e835682cee4316c609b.md) | 404 | `result-track:36095e835682cee4316c609bb67cc0f48e4ec09edf3138e7bc38f8b3b13f5ab0` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--36c834d1b97e4613cfd27b8a.md) | 409 | `declaration-track:36c834d1b97e4613cfd27b8afdc219d8d2343d6eff7822f7d696a46cb8c25749` |
| 48 | `theorem` | [orderTop_smul_not_lt](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/ordertop-smul-not-lt--003fb0363d885b3e1ede7655.md) | 416 | `result-track:003fb0363d885b3e1ede7655b976e00954c61a3273be33cbff696440fb84f5f2` |
| 49 | `theorem` | [order_smul_not_lt](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/order-smul-not-lt--c114a879b7c060609f799431.md) | 424 | `result-track:c114a879b7c060609f799431d827e7fdac6be9756b7f0d511663b2e87684dc9c` |
| 50 | `theorem` | [le_order_smul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/le-order-smul--6ee9fdfbb6e40c04ccefd0ef.md) | 430 | `result-track:6ee9fdfbb6e40c04ccefd0efcd1c3db37b457c9e29ed85c457ad38e8f3c22e7e` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--02647a7604051eb0920ae03e.md) | 440 | `declaration-track:02647a7604051eb0920ae03e192f47f7840246a31a68198c6d76e5260cff7b28` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--0a40556b6276f1d95301be53.md) | 457 | `declaration-track:0a40556b6276f1d95301be5367753d59f9ba50197da2703c9d6711a08b651db7` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--23e8b9a1c3d9259e05b9f251.md) | 462 | `declaration-track:23e8b9a1c3d9259e05b9f25199c44b3c0dffd8d5f9b061050e944ea3073e9207` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/instance--fc8f2e0b35c379a2d870f182.md) | 473 | `declaration-track:fc8f2e0b35c379a2d870f18212c113b69caca597c3121bddb437c3cdc4c8c43c` |
| 55 | `def` | [single.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/single-linearmap--abf934c490144505864b5c97.md) | 484 | `declaration-track:abf934c490144505864b5c97d97cc65f8afab48ee22d39d36f05c36b9992891e` |
| 56 | `def` | [coeff.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/coeff-linearmap--8d8ddc6bc0d3ca7381e5d84c.md) | 492 | `declaration-track:8d8ddc6bc0d3ca7381e5d84ca96e8091e5adb696deda14746f12de082c234a9d` |
| 57 | `lemma` | [map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/map-smul--d5be11e6d17598c7da825116.md) | 496 | `result-track:d5be11e6d17598c7da82511692b22cef5df1d9d5efcc4cf159030a5da1516008` |
| 58 | `theorem` | [embDomain_smul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/embdomain-smul--f663b535ded8e0da4a346bfa.md) | 504 | `result-track:f663b535ded8e0da4a346bfa309dce8df272df49f8e546d5079b60e564d87a95` |
| 59 | `def` | [embDomainLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/declarations/embdomainlinearmap--ec48acee6673878284a2ed0a.md) | 514 | `declaration-track:ec48acee6673878284a2ed0a8bfecc51f3c56620bc5a27b7e16683dc594e8add` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
