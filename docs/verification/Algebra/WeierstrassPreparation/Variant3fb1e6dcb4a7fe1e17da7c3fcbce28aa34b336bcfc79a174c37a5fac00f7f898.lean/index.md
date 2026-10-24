# Verification target: GRWTSK.Algebra.WeierstrassPreparation.Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79131c1412bbd5c6ba1f9655dce9b7439c091c75",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/index.md) · [Full source](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79131c1412bbd5c6ba1f9655dce9b7439c091c75`.

Source path: `GRWTSK/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.Distinguished` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.CoeffMulMem` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Trunc` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsWeierstrassDivisionAt](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivisionat--3732a2695ff08c5aa9ba72b8.md) | 101 | `declaration-track:3732a2695ff08c5aa9ba72b8a549f6df060ed320a39557428978e997ff545637` |
| 2 | `abbrev` | [IsWeierstrassDivision](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivision--250185565c567c1bb98ac55f.md) | 107 | `declaration-track:250185565c567c1bb98ac55f79fe65f77539662378aa2b57ce607cec47135ba6` |
| 3 | `theorem` | [isWeierstrassDivisionAt_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivisionat-zero--b79899e1d411411165963107.md) | 110 | `result-track:b79899e1d411411165963107f688f3cbe691671137f8835980e10cf8358b46a7` |
| 4 | `theorem` | [IsWeierstrassDivisionAt.coeff_f_sub_r_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivisionat-coeff-f-sub-r-mem--1e72b1bc839e6b0267ee1a93.md) | 118 | `result-track:1e72b1bc839e6b0267ee1a93e4f5492f0826acc0d68661c48f97a565260779b0` |
| 5 | `def` | [IsWeierstrassDivisorAt](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivisorat--b4a02c523214a1cda6993ac3.md) | 140 | `declaration-track:b4a02c523214a1cda6993ac399704452c2beb0044eb108c1024d0a372c4824bd` |
| 6 | `abbrev` | [IsWeierstrassDivisor](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivisor--09aff4e243b1ba62676b1d60.md) | 145 | `declaration-track:09aff4e243b1ba62676b1d600da13bf0d59ee29d49d80ce6d22bd169c81e1477` |
| 7 | `theorem` | [IsWeierstrassDivisor.of_map_ne_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivisor-of-map-ne-zero--123e5e51ed0d8bc2090b745b.md) | 151 | `result-track:123e5e51ed0d8bc2090b745b470851d52e22b2cc1d448f6efc6e490b06214cdc` |
| 8 | `theorem` | [coeff_trunc_order_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/coeff-trunc-order-mem--643f84a624ac69a34aab3aed.md) | 158 | `result-track:643f84a624ac69a34aab3aed5a00bbfc641339818f928b45c134f00338a9a55d` |
| 9 | `theorem` | [isUnit_shift](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isunit-shift--17b0d7f8caf03a8596be1e7b.md) | 170 | `result-track:17b0d7f8caf03a8596be1e7baf8ff87a71d3775aa2cee8f0aa846e8d8a914b91` |
| 10 | `def` | [seq](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/seq--6470926016f95b48485d9d72.md) | 175 | `declaration-track:6470926016f95b48485d9d72d53af5537370056fe44c782433f8a96f173d3e88` |
| 11 | `theorem` | [coeff_seq_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/coeff-seq-mem--48f2f24081f0dfa1e3f4b976.md) | 183 | `result-track:48f2f24081f0dfa1e3f4b9766195041088f9ba03a9e0a27b9bd62d888291f3d3` |
| 12 | `theorem` | [coeff_seq_succ_sub_seq_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/coeff-seq-succ-sub-seq-mem--019d99cfa6060ab3cb73ae44.md) | 212 | `result-track:019d99cfa6060ab3cb73ae44c762c93e3cfc58aad81ba9f7a10523f7ab8add78` |
| 13 | `theorem` | [seq_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/seq-zero--cfd4302991ae325a44f5dbf4.md) | 220 | `result-track:cfd4302991ae325a44f5dbf484cc85deb3270a473fad0334f35d6bb6c99f3d08` |
| 14 | `theorem` | [seq_one](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/seq-one--9c4a6bc6742f0f92d848dec1.md) | 222 | `result-track:9c4a6bc6742f0f92d848dec1c48939b74cff0fc857ae11f569b03c75d37d1b32` |
| 15 | `def` | [divCoeff](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/divcoeff--a423904da402aac4b0c5bf18.md) | 230 | `declaration-track:a423904da402aac4b0c5bf18ce4e7eec2a0244e48e6f78afddb9b80e44bc0c96` |
| 16 | `def` | [div](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/div--a7f0f2f65062b29928c90591.md) | 242 | `declaration-track:a7f0f2f65062b29928c9059159d17f8779383042a07ba4232641d29ccdab2069` |
| 17 | `theorem` | [coeff_div](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/coeff-div--ca8231b3fb0b3d4ffa4610b6.md) | 246 | `result-track:ca8231b3fb0b3d4ffa4610b6a78fa303feee6f3ec46a3d431e7e359141f9dc77` |
| 18 | `theorem` | [coeff_div_sub_seq_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/coeff-div-sub-seq-mem--7e04284951dfcd3eb0791b8d.md) | 249 | `result-track:7e04284951dfcd3eb0791b8d35796f990cdb5bdadcd119b4539b538b90d5edf1` |
| 19 | `def` | [mod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/mod--ba35c325b1a97f749756e105.md) | 256 | `declaration-track:ba35c325b1a97f749756e10515112864757450d9063f758462c406e86826fd7e` |
| 20 | `theorem` | [isWeierstrassDivisionAt_div_mod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivisionat-div-mod--b64dd7d539ca502e9fa6830f.md) | 260 | `result-track:b64dd7d539ca502e9fa6830f12e28156d939eafa214ad59686e47221a8c6c278` |
| 21 | `theorem` | [eq_zero_of_mul_eq](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/eq-zero-of-mul-eq--252784c63c646c4b2041b281.md) | 281 | `result-track:252784c63c646c4b2041b281e104d3163b686fa9b0751741ec6a560996fecefd` |
| 22 | `theorem` | [eq_of_mul_add_eq_mul_add](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/eq-of-mul-add-eq-mul-add--e10261855185e018f7e44ad7.md) | 322 | `result-track:e10261855185e018f7e44ad74b55e4f48e24fcab32b99cfd7b977afbf7963a40` |
| 23 | `theorem` | [exists_isWeierstrassDivision](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/exists-isweierstrassdivision--08abfa1fe7197b852a8ff896.md) | 348 | `result-track:08abfa1fe7197b852a8ff89669e4358aa24db429fc9805519dd924274a4e03e8` |
| 24 | `def` | [weierstrassDiv](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/weierstrassdiv--dfcf44341c1c393ea11d4db1.md) | 356 | `declaration-track:dfcf44341c1c393ea11d4db189aab6b009554ebac9c1da3f710501df98a34050` |
| 25 | `def` | [weierstrassMod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/weierstrassmod--fce57fde65510698fe4d5d6e.md) | 365 | `declaration-track:fce57fde65510698fe4d5d6e13ca3c338f08716d00bacdd100a80213070e5adb` |
| 26 | `theorem` | [weierstrassDiv_zero_right](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/weierstrassdiv-zero-right--d13b8143f356c0edb177692c.md) | 379 | `result-track:d13b8143f356c0edb177692c22ba730c8c28071505acd65eb9a0e3e642285145` |
| 27 | `theorem` | [weierstrassMod_zero_right](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/weierstrassmod-zero-right--4cc1aba3d86f31dd1ca2dfa0.md) | 383 | `result-track:4cc1aba3d86f31dd1ca2dfa0ef144ae818f47af15e851e4bc43dbc52b77973af` |
| 28 | `theorem` | [degree_weierstrassMod_lt](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/degree-weierstrassmod-lt--eb04a89a0ae3c717c9e1fbd6.md) | 386 | `result-track:eb04a89a0ae3c717c9e1fbd68b0d57a87e19ffb137a9e589ef32f019606a97b9` |
| 29 | `theorem` | [isWeierstrassDivision_weierstrassDiv_weierstrassMod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivision-weierstrassdiv-weierstrassmod--61931e6f876dc694ac24bde6.md) | 400 | `result-track:61931e6f876dc694ac24bde6af6af050400cdbe660d91575d4e349088f3a53df` |
| 30 | `theorem` | [eq_mul_weierstrassDiv_add_weierstrassMod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/eq-mul-weierstrassdiv-add-weierstrassmod--6b69adeb2491049a52c37c8e.md) | 406 | `result-track:6b69adeb2491049a52c37c8e149e4247c1e71ecfa47289c53e96310397795cee` |
| 31 | `theorem` | [IsWeierstrassDivision.elim](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivision-elim--cb6c7a9a4136a20c8b64815b.md) | 419 | `result-track:cb6c7a9a4136a20c8b64815b42c125386c031af85c295298db075b1652b2ca48` |
| 32 | `theorem` | [IsWeierstrassDivision.eq_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivision-eq-zero--150620401b443b9e9bc04cb9.md) | 426 | `result-track:150620401b443b9e9bc04cb95033778c41c3532860dea6b7ee31696f670efdc2` |
| 33 | `theorem` | [IsWeierstrassDivision.unique](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivision-unique--ec057eabfc25f42414370e5c.md) | 434 | `result-track:ec057eabfc25f42414370e5cd3aa1c010a3537683c081df202bdac0ed3ce8557` |
| 34 | `theorem` | [weierstrassDiv_zero_left](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/weierstrassdiv-zero-left--fc3a626615e2842f40c95ebb.md) | 442 | `result-track:fc3a626615e2842f40c95ebb4942021c40afcad74488d72c684f91cf1ef87417` |
| 35 | `theorem` | [weierstrassMod_zero_left](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/weierstrassmod-zero-left--6b0c42527d7cf5295d127e75.md) | 449 | `result-track:6b0c42527d7cf5295d127e753f2425dc78d3ef8f7c5332bed5f50ad827bb7b59` |
| 36 | `structure` | [IsWeierstrassFactorizationAt](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassfactorizationat--75019c4419aa8cf9caa84177.md) | 467 | `declaration-track:75019c4419aa8cf9caa8417735f750e6069e70afc44ea20c5ff4355a92459401` |
| 37 | `abbrev` | [IsWeierstrassFactorization](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassfactorization--aa0f9e3d1912a9497598730a.md) | 474 | `declaration-track:aa0f9e3d1912a9497598730a21df5a9098a9166b1ac73c8164dad935420078e6` |
| 38 | `theorem` | [map_ne_zero_of_ne_top](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/map-ne-zero-of-ne-top--d19c3f63d480372589be15b0.md) | 482 | `result-track:d19c3f63d480372589be15b0e904ef17ff36ba3558ebb287ae0c48837d3334d3` |
| 39 | `theorem` | [degree_eq_coe_lift_order_map_of_ne_top](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/degree-eq-coe-lift-order-map-of-ne-top--16979927dd86f408d4756ba2.md) | 490 | `result-track:16979927dd86f408d4756ba220144d7e4f9bcd5a30506928d440dc8cd1fd443c` |
| 40 | `theorem` | [natDegree_eq_toNat_order_map_of_ne_top](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/natdegree-eq-tonat-order-map-of-ne-top--86c10a954cbda455405d0c0e.md) | 497 | `result-track:86c10a954cbda455405d0c0e0e69cbeb437a4c93327ce3c66406e0d65463a9a5` |
| 41 | `theorem` | [map_ne_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/map-ne-zero--ba6cc23a88a6769b3497aa4d.md) | 512 | `result-track:ba6cc23a88a6769b3497aa4deff8172059d7d058bc5f9688b9d8a81fe556c123` |
| 42 | `theorem` | [degree_eq_coe_lift_order_map](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/degree-eq-coe-lift-order-map--e13daa0827d8429b758fec65.md) | 515 | `result-track:e13daa0827d8429b758fec65e7ebe71088ada7b73659118052a6f344c9d3712a` |
| 43 | `theorem` | [natDegree_eq_toNat_order_map](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/natdegree-eq-tonat-order-map--23a4d567aec4c49b99b5881d.md) | 519 | `result-track:23a4d567aec4c49b99b5881d518f473de024d106d1e59264c2c1abe01504d9ed` |
| 44 | `theorem` | [IsWeierstrassDivision.isUnit_of_map_ne_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivision-isunit-of-map-ne-zero--94f425502d94dd1940fa82f6.md) | 525 | `result-track:94f425502d94dd1940fa82f67740519f4239f69b13f8db8731c4c4f3ffc6cf69` |
| 45 | `theorem` | [IsWeierstrassDivision.isWeierstrassFactorization](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassdivision-isweierstrassfactorization--bf489739d3730a8205231b61.md) | 545 | `result-track:bf489739d3730a8205231b61a3679736ccd3c160af53aa7eba70c50b5ec8b291` |
| 46 | `theorem` | [IsWeierstrassFactorization.isWeierstrassDivision](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassfactorization-isweierstrassdivision--5b7563399dc5d811a0ae5a94.md) | 567 | `result-track:5b7563399dc5d811a0ae5a949e3d04b9903cb7469df5c93dca880fa60023881d` |
| 47 | `theorem` | [exists_isWeierstrassFactorization](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/exists-isweierstrassfactorization--ed968d31d31c80aeed852a83.md) | 588 | `result-track:ed968d31d31c80aeed852a830509e948df974a1b929f8545dc971a625fba70b3` |
| 48 | `def` | [weierstrassDistinguished](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/weierstrassdistinguished--fc0a96e6b015751b35a647c6.md) | 595 | `declaration-track:fc0a96e6b015751b35a647c67263c13181d154a9aa1efb265d7c2a246ca06c92` |
| 49 | `def` | [weierstrassUnit](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/weierstrassunit--53c5e437b8946c74f4db42b3.md) | 599 | `declaration-track:53c5e437b8946c74f4db42b3870a02a06c413541ec728fae5ad2e53c0de62e8e` |
| 50 | `theorem` | [isWeierstrassFactorization_weierstrassDistinguished_weierstrassUnit](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassfactorization-weierstrassdistinguished-weierstrassunit--e94a0e4a182b5abf6b91605f.md) | 602 | `result-track:e94a0e4a182b5abf6b91605f6cbcafe51f720dc9e162eed4a260ec4c0ba121ed` |
| 51 | `theorem` | [isDistinguishedAt_weierstrassDistinguished](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isdistinguishedat-weierstrassdistinguished--56a1239abae69d3a1aa6b754.md) | 607 | `result-track:56a1239abae69d3a1aa6b754756520feff4a57d0adbb0a5de79fe1f23f3649a4` |
| 52 | `theorem` | [isUnit_weierstrassUnit](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isunit-weierstrassunit--e4b5be5fe21d910f71245d22.md) | 611 | `result-track:e4b5be5fe21d910f71245d22db55eb16975278dc870ba147cf5f61a527afd4b4` |
| 53 | `theorem` | [eq_weierstrassDistinguished_mul_weierstrassUnit](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/eq-weierstrassdistinguished-mul-weierstrassunit--e0ff02d3e7b494f94e31e5dd.md) | 615 | `result-track:e0ff02d3e7b494f94e31e5dd1a0ab88df7129a70da18257fea3ddeb560550be1` |
| 54 | `theorem` | [IsWeierstrassFactorization.elim](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassfactorization-elim--584fed2f6129721496d9da78.md) | 628 | `result-track:584fed2f6129721496d9da7897ee6126d902903b5480536f37e4ea802e0a1ad2` |
| 55 | `theorem` | [IsWeierstrassFactorization.unique](../../../../mathematics/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/declarations/isweierstrassfactorization-unique--dd6fd3e087e2055ce9f39305.md) | 637 | `result-track:dd6fd3e087e2055ce9f39305c44402b70939815b2d6fd86e54a56f99855b207b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
