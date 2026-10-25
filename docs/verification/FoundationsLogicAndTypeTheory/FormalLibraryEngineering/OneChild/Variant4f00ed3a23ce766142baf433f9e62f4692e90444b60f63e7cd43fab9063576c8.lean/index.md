# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OneChild.Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d57d58e50d630812bb0177e4a92b2c0b5ef95e51",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d57d58e50d630812bb0177e4a92b2c0b5ef95e51`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Interface` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/bits--84085921b68cc853c74e9275.md) | 35 | `declaration-track:84085921b68cc853c74e92754bdf03e0e1f927aafc2d861c7be94280f0924755` |
| 2 | `def` | [extendBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/extendbit--ba182e23e7f4363ed76a0fe6.md) | 39 | `declaration-track:ba182e23e7f4363ed76a0fe664a931e28842ae6109ba14a66fe6e20e9eb7abf0` |
| 3 | `def` | [head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/head--b495d97643081d19f19a071b.md) | 45 | `declaration-track:b495d97643081d19f19a071b0c0231c41d8210f83bdad1ff57e8bc9dab7ab155` |
| 4 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/eval--a0e7db1d54ebfa9234a6ec3d.md) | 53 | `declaration-track:a0e7db1d54ebfa9234a6ec3d4637d5682141fcdab873a6f9c7d11619d6b341f6` |
| 5 | `theorem` | [head_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/head-rename--f099764e8a7ffadb07fea7ab.md) | 65 | `result-track:f099764e8a7ffadb07fea7ab3a78fe979ddfcaa5a819b287c8da0996abc45e92` |
| 6 | `theorem` | [head_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/head-subst--1b9531a813da2f474ab4a901.md) | 75 | `result-track:1b9531a813da2f474ab4a9019878857b58d1c9254dd225240728226dfe974485` |
| 7 | `theorem` | [head_beta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/head-beta--f50f9b6602669d85d1d728cd.md) | 85 | `result-track:f50f9b6602669d85d1d728cd72fc7647eeb4d41b48d0880a9a435354cdf98f02` |
| 8 | `theorem` | [head_reduces](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/head-reduces--e5840b10203eb631fee4c1be.md) | 97 | `result-track:e5840b10203eb631fee4c1bed12a1a01b30b078a27b5a927d62cdf624870b85d` |
| 9 | `theorem` | [head_normalForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/head-normalform--45c79b078f7ce49e155d253b.md) | 104 | `result-track:45c79b078f7ce49e155d253b44ffe4f8e586499602c7d65ee88bb1e7b1548a9b` |
| 10 | `theorem` | [eval_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/eval-pi--792fe35d7c85a85f5834f8f1.md) | 108 | `result-track:792fe35d7c85a85f5834f8f119d4723a0b2d2e397554f36d98bbf61453e5c9d4` |
| 11 | `theorem` | [eval_head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/eval-head--a455c23b13c0d6917e87600f.md) | 116 | `result-track:a455c23b13c0d6917e87600fd27716068cbcf92c598f3373be7dd6d082540b4b` |
| 12 | `theorem` | [eval_sort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/eval-sort--f0fd6677e39acd3f38b85f87.md) | 124 | `result-track:f0fd6677e39acd3f38b85f876477e953826fb2e032e51ee53490f3bad0aeb2de` |
| 13 | `theorem` | [eval_candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/eval-candidate--5d83cbd7bd87881f8394b16a.md) | 132 | `result-track:5d83cbd7bd87881f8394b16a8616bd6bd625beb7b947cba24d4028cd369e0678` |
| 14 | `theorem` | [eval_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/eval-outside--d1d36e32dc1bf504ddbc9853.md) | 169 | `result-track:d1d36e32dc1bf504ddbc9853662b61d3c3dc0effd17979a32b8b7ef040fb3302` |
| 15 | `def` | [dropSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/dropsupport--350c795b253c92f731b41411.md) | 178 | `declaration-track:350c795b253c92f731b4141189247afc4f2c423bd3b3626ca3d08509e60e9d9d` |
| 16 | `def` | [flipSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/flipsupport--1bb31eb23ee087213ec30a65.md) | 185 | `declaration-track:1bb31eb23ee087213ec30a65597c77aa1dc6bd721d64b087f2504071238cc111` |
| 17 | `def` | [support](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/support--3412a63f0eb8eaa7a64a2d75.md) | 190 | `declaration-track:3412a63f0eb8eaa7a64a2d75bbdd276f23604c29aa886670a9bd9b0d545bb252` |
| 18 | `structure` | [Environment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/environment--373a22c0e85441d210e72932.md) | 200 | `declaration-track:373a22c0e85441d210e72932c2ca3d4e60d378c0a2d71ce3211594b448959cdb` |
| 19 | `def` | [R](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/r--a4aee6010d34afda88a69b94.md) | 209 | `declaration-track:a4aee6010d34afda88a69b944d34d4b66be04eb2f2dd5073aa0240511377e76b` |
| 20 | `theorem` | [normal_subst_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/normal-subst-eq--134b9f6c3c0baf4ffe350490.md) | 213 | `result-track:134b9f6c3c0baf4ffe3504900bc346391ca4ef0dd5dc984e1d1bc62de489bb18` |
| 21 | `theorem` | [R_candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/r-candidate--3b21db5d03d45126a30547fc.md) | 224 | `result-track:3b21db5d03d45126a30547fc130f779052ad81770814ae72cc04414b82529926` |
| 22 | `theorem` | [R_conversion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/r-conversion--df551aac48937c3396f7855e.md) | 233 | `result-track:df551aac48937c3396f7855e7b92996fe7c8eac169c128775d71c2ddb32434a7` |
| 23 | `theorem` | [eval_recontext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/eval-recontext--330b406494b6ea31022955a3.md) | 247 | `result-track:330b406494b6ea31022955a39a2dde899351a86dd967486debeabd69047469b1` |
| 24 | `theorem` | [eval_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/eval-rename--00e614291fee383cf2fa3c16.md) | 270 | `result-track:00e614291fee383cf2fa3c16b41e57bfb93f0de43a5e4e302cbaff658c23723f` |
| 25 | `def` | [Ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/ext--8b5a20f2c3bb627af1740fd6.md) | 324 | `declaration-track:8b5a20f2c3bb627af1740fd63e279f04fa81ee790ba69e5fb83864ffce827917` |
| 26 | `theorem` | [R_sort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/r-sort--130ebcc6ea56d8983758801f.md) | 330 | `result-track:130ebcc6ea56d8983758801f3ef54ae823842452fa17cc4df393bf9e6392ead6` |
| 27 | `theorem` | [R_weakening](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/r-weakening--4f3416c970e11babdc0a2994.md) | 336 | `result-track:4f3416c970e11babdc0a29945e7bafa59f34aafe67e5f15ad6c7dc94e7aae48c` |
| 28 | `theorem` | [normal_product](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/normal-product--ad5e132e64bb6477d7f4c249.md) | 359 | `result-track:ad5e132e64bb6477d7f4c249006777a1b32365a66e76bb178c8d1ffaed9afbd7` |
| 29 | `theorem` | [R_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/r-outside--80ed3bb77f1e09dbe6210258.md) | 393 | `result-track:80ed3bb77f1e09dbe62102585cef362ebed618572e82851bea0548fe04c7ed13` |
| 30 | `theorem` | [product_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/product-iff--375a24e5e0b1b442ebedb0a5.md) | 405 | `result-track:375a24e5e0b1b442ebedb0a52ec813d44ea0d5db5998a009d44aba7867458f42` |
| 31 | `def` | [CompatibleBits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/compatiblebits--98d78427895620dc93f65ada.md) | 442 | `declaration-track:98d78427895620dc93f65ada6ca1f80fb977a01877d5ebcc6756cba41a31574b` |
| 32 | `def` | [Below](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/below--1e771a2d3af9c63ebaef6414.md) | 447 | `declaration-track:1e771a2d3af9c63ebaef6414285f645f9b7a114ec813d9cf6e5c340b15c64ab8` |
| 33 | `theorem` | [support_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/support-outside--c19f3e249cfa008fc48788a6.md) | 450 | `result-track:c19f3e249cfa008fc48788a6316b02b0fb7bcf547f55130a454013a9a0ccd43b` |
| 34 | `theorem` | [support_head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/support-head--c6347e8b89ba546112aece4f.md) | 454 | `result-track:c6347e8b89ba546112aece4fd1d3acac5e90685ea344b92e37694f68e4164c3c` |
| 35 | `theorem` | [bits_domain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/bits-domain--cfdaed0abfaea9851802bc83.md) | 460 | `result-track:cfdaed0abfaea9851802bc83d0d42307f27bdeb4eddd946d6601a7ddd8376ba7` |
| 36 | `theorem` | [bits_body](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/bits-body--831e2f6118893b1b173ae04d.md) | 477 | `result-track:831e2f6118893b1b173ae04d1ea9881ef7c6ff5e842ed44361a594d8f4e68db1` |
| 37 | `def` | [chosenBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/chosenbit--0af2439838e06f5ae8d6c7ee.md) | 502 | `declaration-track:0af2439838e06f5ae8d6c7ee1a5f04ea344444616dedb6aaad8612f5c38e49cf` |
| 38 | `theorem` | [bits_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/bits-single--cf6270a33b8a705ca3890570.md) | 508 | `result-track:cf6270a33b8a705ca3890570553a9f93c9a4338327803b63b42ce62f9f3d72ac` |
| 39 | `theorem` | [subst_profile_path](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/subst-profile-path--f85f91e78d7642b4489ae5ce.md) | 528 | `result-track:f85f91e78d7642b4489ae5cef04d162f99ecde2cd45006e098b50b558eafca48` |
| 40 | `theorem` | [neutral_compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/neutral-compare--b27426f0d7ec40647a882e76.md) | 539 | `result-track:b27426f0d7ec40647a882e7635ee3fb64be8b7916f85da573cf8a149e00f9362` |
| 41 | `theorem` | [head_apps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/head-apps--45e3082ae3022f7eb0135acf.md) | 575 | `result-track:45e3082ae3022f7eb0135acfe3f7639cc603648be918f45b7e9f85efae1fdf59` |
| 42 | `theorem` | [normal_app_head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/normal-app-head--585eb26d13115804a5529e4f.md) | 582 | `result-track:585eb26d13115804a5529e4f2709ecc7a2db60a719da09cbfe6fc1eb70456441` |
| 43 | `theorem` | [compare_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/compare-subst--3499a2a19d2041cf8daa997b.md) | 601 | `result-track:3499a2a19d2041cf8daa997b52c7c28e1a85c569a8c0122e900acbc0664c1833` |
| 44 | `theorem` | [specialization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/specialization--a953de395de3dcb2e355605c.md) | 760 | `result-track:a953de395de3dcb2e355605c5e0372d098034bde2483122d4ed86a617af60af0` |
| 45 | `def` | [componentInterface](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant4f00ed3a23ce766142baf433f9e62f4692e90444b60f63e7cd43fab9063576c8.lean/declarations/componentinterface--0b9023af48d98ef72fbc39d5.md) | 789 | `declaration-track:0b9023af48d98ef72fbc39d5cc8cdc43f8c0206ce43750fde36c5501bb5f36c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
