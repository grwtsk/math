# Verification target: GRWTSK.Algebra.WeierstrassPreparation.Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31cd361ff4a4d09e6a6f0618d0a8f34cf9b22ee2",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/index.md) · [Full source](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31cd361ff4a4d09e6a6f0618d0a8f34cf9b22ee2`.

Source path: `GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.Distinguished` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.CoeffMulMem` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Trunc` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsWeierstrassDivisionAt](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivisionat--f7296659a24e321f1fb9129a.md) | 109 | `declaration-track:f7296659a24e321f1fb9129aa335d82fe711af49e7ad936267dddd4195aa36b2` |
| 2 | `abbrev` | [IsWeierstrassDivision](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivision--fe55a7608c70455f2caedc8b.md) | 115 | `declaration-track:fe55a7608c70455f2caedc8b3d2401cd59de477e9e0b6bfb2e1d9535a8d6fe8d` |
| 3 | `theorem` | [isWeierstrassDivisionAt_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivisionat-zero--307d36360e821f91e4052752.md) | 118 | `result-track:307d36360e821f91e405275239e9022b7a24618ea623acf4a489bce1f69fb8c8` |
| 4 | `theorem` | [IsWeierstrassDivisionAt.coeff_f_sub_r_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivisionat-coeff-f-sub-r-mem--b702a020cb3ff5070cbe7625.md) | 126 | `result-track:b702a020cb3ff5070cbe76254591aa61847a8816d5212d283e29c3b270b86c1f` |
| 5 | `def` | [IsWeierstrassDivisorAt](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivisorat--aef763331f84f95a41910304.md) | 148 | `declaration-track:aef763331f84f95a419103049ea12934a9a83ed97cf67cd5e259ea3107511ceb` |
| 6 | `abbrev` | [IsWeierstrassDivisor](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivisor--cc973448fe67b1a96f279a4b.md) | 153 | `declaration-track:cc973448fe67b1a96f279a4be7e5df1f834ad7fb18ae44d2739b9cd9500383eb` |
| 7 | `theorem` | [IsWeierstrassDivisor.of_map_ne_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivisor-of-map-ne-zero--90453118c241ef89d6e7778b.md) | 159 | `result-track:90453118c241ef89d6e7778b9b92f5bfdf8c20011395cca3a4b957b40c65581f` |
| 8 | `theorem` | [coeff_trunc_order_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/coeff-trunc-order-mem--e9d425023b29fb0f938a25b1.md) | 166 | `result-track:e9d425023b29fb0f938a25b12b9de9c37c1ae8fadb701a2933de9d34557a4a09` |
| 9 | `theorem` | [isUnit_shift](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isunit-shift--f36ffe88d7d6e25a12cac05b.md) | 178 | `result-track:f36ffe88d7d6e25a12cac05b95f76396ff2e52f8e2582a2b057df5ab7db639fd` |
| 10 | `def` | [seq](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/seq--cda5cd955c3c3a957593f4ed.md) | 183 | `declaration-track:cda5cd955c3c3a957593f4eda836a5f023d8ac64aec7d79aa24ba13903fa0afb` |
| 11 | `theorem` | [coeff_seq_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/coeff-seq-mem--28c7fe22ed6f91f7e7a06757.md) | 191 | `result-track:28c7fe22ed6f91f7e7a067572429a2d5b41090bd2bcfca9855dbc8dde7042463` |
| 12 | `theorem` | [coeff_seq_succ_sub_seq_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/coeff-seq-succ-sub-seq-mem--a5481d1e6a7111b6bce4c190.md) | 220 | `result-track:a5481d1e6a7111b6bce4c190c184c3ac22e8c049271230d92f6ac389fd176a63` |
| 13 | `theorem` | [seq_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/seq-zero--16a64e6b29d6ff609ac786dc.md) | 228 | `result-track:16a64e6b29d6ff609ac786dccdaa2f2dabc7ce46e32a615468a4d0a0218dd044` |
| 14 | `theorem` | [seq_one](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/seq-one--0e14147798b55e48cb694677.md) | 230 | `result-track:0e14147798b55e48cb6946779f5bc0bf0fa117e84d27e54e269e4a2b7ca70438` |
| 15 | `def` | [divCoeff](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/divcoeff--9df77eca14517fae00802f66.md) | 238 | `declaration-track:9df77eca14517fae00802f6604ee922dcb5b8612dc11f6f848fda91daaa2a0f3` |
| 16 | `def` | [div](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/div--9ddd05681dfe501344addb62.md) | 250 | `declaration-track:9ddd05681dfe501344addb62671d8a29cbcfb3f582111d9a0c3812cf892f025f` |
| 17 | `theorem` | [coeff_div](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/coeff-div--902d9a9abd9a4b545f5b742b.md) | 254 | `result-track:902d9a9abd9a4b545f5b742bb78dbd1f355dccf90ed404c7e990d202c77fb76d` |
| 18 | `theorem` | [coeff_div_sub_seq_mem](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/coeff-div-sub-seq-mem--d6f4c7271013f8f4c454e2fc.md) | 257 | `result-track:d6f4c7271013f8f4c454e2fc031b74c23034ff331133a2d2001dd32fcd0d5d5c` |
| 19 | `def` | [mod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/mod--eb3b649aa1ec7b24932044cf.md) | 264 | `declaration-track:eb3b649aa1ec7b24932044cf5391f5113bc3d345b3d5099c0030f22a036b1b33` |
| 20 | `theorem` | [isWeierstrassDivisionAt_div_mod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivisionat-div-mod--f7a5265f3c2f281c0fcbc55f.md) | 268 | `result-track:f7a5265f3c2f281c0fcbc55f66312e4ed9b531f9225173437cd17c4d490561bb` |
| 21 | `theorem` | [eq_zero_of_mul_eq](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/eq-zero-of-mul-eq--9e5c78c3d8c0c3f4f7839edc.md) | 289 | `result-track:9e5c78c3d8c0c3f4f7839edc7fd3a78ef1073ac8485b009fe965c650ac9aeaa7` |
| 22 | `theorem` | [eq_of_mul_add_eq_mul_add](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/eq-of-mul-add-eq-mul-add--8ee27e5ee8ee142d06739ea1.md) | 330 | `result-track:8ee27e5ee8ee142d06739ea1fe53bc1191a60ded8045ab782b110a68b0c098a0` |
| 23 | `theorem` | [exists_isWeierstrassDivision](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/exists-isweierstrassdivision--b7f1cf51c675e0ae7cf67a67.md) | 356 | `result-track:b7f1cf51c675e0ae7cf67a67f2cf081eb552f45c551f859108162693c32f0ec8` |
| 24 | `def` | [weierstrassDiv](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/weierstrassdiv--56490c1835f22d7a12f0b145.md) | 364 | `declaration-track:56490c1835f22d7a12f0b145a3de3b3d37701b26fb7ef9d7512fe6c370bc6c6c` |
| 25 | `def` | [weierstrassMod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/weierstrassmod--8ef8e2ea2697b68f55ea930e.md) | 373 | `declaration-track:8ef8e2ea2697b68f55ea930e5f781191d0efa6d2cb817d5152d1e2aedc41b294` |
| 26 | `theorem` | [weierstrassDiv_zero_right](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/weierstrassdiv-zero-right--54e3edd4e3f0be7f57d39d6c.md) | 387 | `result-track:54e3edd4e3f0be7f57d39d6cdfe018f8fa697cf0fbc254595cc66e17a20a292a` |
| 27 | `theorem` | [weierstrassMod_zero_right](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/weierstrassmod-zero-right--1cc71270a7d32d270ac79227.md) | 391 | `result-track:1cc71270a7d32d270ac79227c9f18574c0bae678ec1cdf8ce1c78f0e38b9f901` |
| 28 | `theorem` | [degree_weierstrassMod_lt](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/degree-weierstrassmod-lt--893490613994eddf53a596a7.md) | 394 | `result-track:893490613994eddf53a596a7ea83af410162416cc715b2fe2f04a8fbdc581249` |
| 29 | `theorem` | [isWeierstrassDivision_weierstrassDiv_weierstrassMod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivision-weierstrassdiv-weierstrassmod--920470c72637ac9de326b09b.md) | 408 | `result-track:920470c72637ac9de326b09b0e11e813e9e582471352c869876c03b8576a0757` |
| 30 | `theorem` | [eq_mul_weierstrassDiv_add_weierstrassMod](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/eq-mul-weierstrassdiv-add-weierstrassmod--a87102131a1876fc0fe4280a.md) | 414 | `result-track:a87102131a1876fc0fe4280aa7726a7f029df352610e901e77f0d1255632fe9c` |
| 31 | `theorem` | [IsWeierstrassDivision.elim](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivision-elim--faa3c6a57f59567c880107f6.md) | 427 | `result-track:faa3c6a57f59567c880107f6b0a6471418b960cc4c3b4103db301b6624051376` |
| 32 | `theorem` | [IsWeierstrassDivision.eq_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivision-eq-zero--3565b8ea8e2bf68daaf7c73e.md) | 434 | `result-track:3565b8ea8e2bf68daaf7c73e5e26e04bce177b8efef490c1bb0900cdc158fa42` |
| 33 | `theorem` | [IsWeierstrassDivision.unique](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivision-unique--02c1ca8dbafaa92143addd5c.md) | 442 | `result-track:02c1ca8dbafaa92143addd5cd160ae7ed61793b61b55d560f7a6c264cb591a9f` |
| 34 | `theorem` | [weierstrassDiv_zero_left](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/weierstrassdiv-zero-left--6c8d1a9a0129e0b55a85916d.md) | 450 | `result-track:6c8d1a9a0129e0b55a85916d0c5519b2ccc33ac50ee03d45a1b21dd0cb24e5f1` |
| 35 | `theorem` | [weierstrassMod_zero_left](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/weierstrassmod-zero-left--360e1195e010f04ede9787ce.md) | 457 | `result-track:360e1195e010f04ede9787ce32eb589eb6b77378199f01f74cd1983310e95562` |
| 36 | `structure` | [IsWeierstrassFactorizationAt](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassfactorizationat--2f8351328d41be0078de9388.md) | 475 | `declaration-track:2f8351328d41be0078de93881af993f89b9604cb495204ee7b7d534346c807a9` |
| 37 | `abbrev` | [IsWeierstrassFactorization](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassfactorization--0c9f99f33ca7a9ffafdf31f0.md) | 482 | `declaration-track:0c9f99f33ca7a9ffafdf31f0b88a183f973dd356fb3be1981488ab6b14ff2bcf` |
| 38 | `theorem` | [map_ne_zero_of_ne_top](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/map-ne-zero-of-ne-top--9868035fdaeaa7143a07d94d.md) | 490 | `result-track:9868035fdaeaa7143a07d94dc9ee28631aa912615bb2afa316d34dde4ea7f141` |
| 39 | `theorem` | [degree_eq_coe_lift_order_map_of_ne_top](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/degree-eq-coe-lift-order-map-of-ne-top--7e23be6d86cd0c371c339d30.md) | 498 | `result-track:7e23be6d86cd0c371c339d30a45c4fe83c645b0bd4f41d1013659fec3d31848b` |
| 40 | `theorem` | [natDegree_eq_toNat_order_map_of_ne_top](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/natdegree-eq-tonat-order-map-of-ne-top--f1a0235209aa4b93f8bc08e1.md) | 505 | `result-track:f1a0235209aa4b93f8bc08e1241630ed979afb9c9f73c2286a8728b49ce9f662` |
| 41 | `theorem` | [map_ne_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/map-ne-zero--e628dff99bfe40259eef454a.md) | 520 | `result-track:e628dff99bfe40259eef454adc049b3a1813a63c3c524e67a619862d481ab911` |
| 42 | `theorem` | [degree_eq_coe_lift_order_map](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/degree-eq-coe-lift-order-map--3bd5799d0196b6977cc7e214.md) | 523 | `result-track:3bd5799d0196b6977cc7e2145e5a569d08b7b424ea4470392a0402574631f7cd` |
| 43 | `theorem` | [natDegree_eq_toNat_order_map](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/natdegree-eq-tonat-order-map--ee3bd6f9c90deef6bf47e933.md) | 527 | `result-track:ee3bd6f9c90deef6bf47e933b3abec4686af25a4330634370b4178041a0c3057` |
| 44 | `theorem` | [IsWeierstrassDivision.isUnit_of_map_ne_zero](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivision-isunit-of-map-ne-zero--7bdab7101973aa7ce8950d42.md) | 533 | `result-track:7bdab7101973aa7ce8950d42e7ad171e245f5af9eee6ae4d694f3e923c5f1856` |
| 45 | `theorem` | [IsWeierstrassDivision.isWeierstrassFactorization](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassdivision-isweierstrassfactorization--b0e2bb4a451b934fa6b015c2.md) | 553 | `result-track:b0e2bb4a451b934fa6b015c2e3a8ccbbc58b4aae454a11f4f9c23c5e0402ac1b` |
| 46 | `theorem` | [IsWeierstrassFactorization.isWeierstrassDivision](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassfactorization-isweierstrassdivision--7cfd9c8d08f43574f8972f2e.md) | 575 | `result-track:7cfd9c8d08f43574f8972f2eff0c21f4197f68713edcafd8385bf24fac8ff6a9` |
| 47 | `theorem` | [exists_isWeierstrassFactorization](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/exists-isweierstrassfactorization--284d736eac0cbcbcae360b4c.md) | 596 | `result-track:284d736eac0cbcbcae360b4c3d3346b0d58778e9e2f2a9fcd5e2bd846039d8db` |
| 48 | `def` | [weierstrassDistinguished](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/weierstrassdistinguished--69eff0c744564eb899035d38.md) | 603 | `declaration-track:69eff0c744564eb899035d387997383da88b30b59b57ea199e23dc634100052b` |
| 49 | `def` | [weierstrassUnit](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/weierstrassunit--e3d32547c5da59c9675b68d4.md) | 607 | `declaration-track:e3d32547c5da59c9675b68d48b71fcdd210115085ec74c2c5682911428490f11` |
| 50 | `theorem` | [isWeierstrassFactorization_weierstrassDistinguished_weierstrassUnit](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassfactorization-weierstrassdistinguished-weierstrassunit--16f51df791cdd35b5c8f527c.md) | 610 | `result-track:16f51df791cdd35b5c8f527c90e45c69edf01216587f302d3d42178ab20187ad` |
| 51 | `theorem` | [isDistinguishedAt_weierstrassDistinguished](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isdistinguishedat-weierstrassdistinguished--a9cfd2f4108d201cad9f7d5d.md) | 615 | `result-track:a9cfd2f4108d201cad9f7d5d530e2ae0ffc67547b4ddf04c19fb37d682eeee0e` |
| 52 | `theorem` | [isUnit_weierstrassUnit](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isunit-weierstrassunit--2fa565dc29b5700b1f2f7e27.md) | 619 | `result-track:2fa565dc29b5700b1f2f7e27da224acc6a5116560352ff7bcc16b7775aded4c4` |
| 53 | `theorem` | [eq_weierstrassDistinguished_mul_weierstrassUnit](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/eq-weierstrassdistinguished-mul-weierstrassunit--e276727cd0c84f9d3d130718.md) | 623 | `result-track:e276727cd0c84f9d3d13071880290584c1bd414bb82b32ca5910d04ca2830d39` |
| 54 | `theorem` | [IsWeierstrassFactorization.elim](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassfactorization-elim--cc92b469ec8ad9fbddeb64d3.md) | 636 | `result-track:cc92b469ec8ad9fbddeb64d3ed42c3a651ce721e68db865bc2241fa5d60d5e9d` |
| 55 | `theorem` | [IsWeierstrassFactorization.unique](../../../../mathematics/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/declarations/isweierstrassfactorization-unique--527e9e7164b8ecbb5730f4b3.md) | 645 | `result-track:527e9e7164b8ecbb5730f4b3a733a8f809a58c75eeb1a79ed45a700b69232a47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
