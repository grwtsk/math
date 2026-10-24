# Verification target: GRWTSK.Algebra.Commute.Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a390aa21fd9e55dd62f1951aa87e1c4a392eff92",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/index.md) · [Full source](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a390aa21fd9e55dd62f1951aa87e1c4a392eff92`.

Source path: `GRWTSK/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_right](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/add-right--c2d85dfaa6a0b80294b53e3b.md) | 43 | `result-track:c2d85dfaa6a0b80294b53e3bf48eae3dc929e8cc850eb6343666b6025bb9844d` |
| 2 | `theorem` | [add_left](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/add-left--7bd1e16ce24da95ae2319993.md) | 48 | `result-track:7bd1e16ce24da95ae23199935dfc953775abd7813fcc10078ee9e02f6ce40ea1` |
| 3 | `theorem` | [mul_self_sub_mul_self_eq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/mul-self-sub-mul-self-eq--a8ecf88c59c27ce164b2b665.md) | 53 | `result-track:a8ecf88c59c27ce164b2b665e9f030a29fcbd1a60b8b2baf81d2b1f262acc770` |
| 4 | `theorem` | [mul_self_sub_mul_self_eq'](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/mul-self-sub-mul-self-eq--29c5b2bf102b06b58f981ddc.md) | 57 | `result-track:29c5b2bf102b06b58f981ddca8a11f68e4b5886e989fa49881b1015ab47dafec` |
| 5 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/mul-self-eq-mul-self-iff--51279cec4349439309c25f44.md) | 61 | `result-track:51279cec4349439309c25f44c6f06581fb605197c21970ac06e5c3f48cb6c02c` |
| 6 | `theorem` | [neg_right](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-right--1930c80dbf98810ba9f11280.md) | 70 | `result-track:1930c80dbf98810ba9f11280442ca11c3e155740864baefa3266838adf6856bb` |
| 7 | `theorem` | [neg_right_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-right-iff--33efbb4ef973094e89b4208e.md) | 74 | `result-track:33efbb4ef973094e89b4208e494cdb571703b1b42864391aa2aee466e7c7589a` |
| 8 | `theorem` | [neg_left](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-left--a00af2f5ded710d5e34f91dc.md) | 77 | `result-track:a00af2f5ded710d5e34f91dc7f865110bd95ea4e8cf8e5899fb37155ecbf12c7` |
| 9 | `theorem` | [neg_left_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-left-iff--727aa7366905b9a9a5dd5034.md) | 81 | `result-track:727aa7366905b9a9a5dd503462fb12f0d502e113e63db5e10ddd0ec6af9e6709` |
| 10 | `theorem` | [neg_one_right](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-one-right--38477ffbaf08069ea74cac38.md) | 90 | `result-track:38477ffbaf08069ea74cac38d05503a1a129066deecf6422fc2aec0ce4067501` |
| 11 | `theorem` | [neg_one_left](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-one-left--1163a86f8dcb778be2a5a3d4.md) | 93 | `result-track:1163a86f8dcb778be2a5a3d41161a20b9ddb5a18d50da08a2345ba95c830d778` |
| 12 | `theorem` | [sub_right](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sub-right--41d0f5da1f98da5232a607d1.md) | 103 | `result-track:41d0f5da1f98da5232a607d16a1691f9dee69d850b38a82b689fb6cbd6159ecb` |
| 13 | `theorem` | [sub_left](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sub-left--a0fb85458c1d17ffee09605f.md) | 107 | `result-track:a0fb85458c1d17ffee09605f5083254f56dad4f6d718f5a74b65a476230ca721` |
| 14 | `lemma` | [add_sq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/add-sq--88dc960f0258d47a9a307111.md) | 116 | `result-track:88dc960f0258d47a9a3071118786b26a481963540fadde529b0c405e0f34c09e` |
| 15 | `lemma` | [sq_sub_sq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sq-sub-sq--e65ec3a9b966e70d03bc4747.md) | 125 | `result-track:e65ec3a9b966e70d03bc47473ae564f6e3060bff86709b7bf3c055eebbffe9a7` |
| 16 | `lemma` | [sub_sq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sub-sq--e53ccaa6a4c966a2b4dd9e31.md) | 128 | `result-track:e53ccaa6a4c966a2b4dd9e311fc1faeba88f2f853f326febd3b04fe3983a8cb9` |
| 17 | `lemma` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--ea0a1eb978831f5704cda275.md) | 134 | `result-track:ea0a1eb978831f5704cda2758c87a018231777e05b053fb27d4921987d5413ec` |
| 18 | `lemma` | [neg_one_pow_eq_or](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-one-pow-eq-or--2b9c27d39cff365df023829e.md) | 144 | `result-track:2b9c27d39cff365df023829e374ba1bac91e27ef821623a6dc9a1e397881d297` |
| 19 | `lemma` | [neg_pow](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-pow--fdf4d562bd992ee42e0f046d.md) | 152 | `result-track:fdf4d562bd992ee42e0f046d1748c26ac1a07fa1227cd27c7e81f89fdf079de2` |
| 20 | `lemma` | [neg_pow'](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-pow--f6b98c86bae47041503ebec8.md) | 155 | `result-track:f6b98c86bae47041503ebec8320fa14b9879682dea3d59869753bf89c1a90751` |
| 21 | `lemma` | [neg_sq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-sq--fe455310d14b9c14a0575a26.md) | 158 | `result-track:fe455310d14b9c14a0575a264d9ff63c958cdc6b8e5c731791a40026b6806d22` |
| 22 | `lemma` | [neg_one_sq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-one-sq--124ec6d56568afe2ca2d97d4.md) | 160 | `result-track:124ec6d56568afe2ca2d97d4900030ca6ef8c611a9bb8ee55045e405c93577da` |
| 23 | `lemma` | [neg_one_pow_mul_eq_zero_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-one-pow-mul-eq-zero-iff--1f93bcccc24dc778906f5450.md) | 171 | `result-track:1f93bcccc24dc778906f5450bf0dabde2ed4f39629b6376c5f7d4ddcfbae0761` |
| 24 | `lemma` | [mul_neg_one_pow_eq_zero_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/mul-neg-one-pow-eq-zero-iff--dc14a4a4fa786d9af25927a1.md) | 174 | `result-track:dc14a4a4fa786d9af25927a10dcefeb436289a24c238c67d6a02043d3be0ca36` |
| 25 | `lemma` | [neg_one_pow_eq_pow_mod_two](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/neg-one-pow-eq-pow-mod-two--a5600793f8839d7df6527de3.md) | 177 | `result-track:a5600793f8839d7df6527de3c76712fc2fdcc1df486921eb1558ab5a4afbfa25` |
| 26 | `lemma` | [sq_eq_one_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sq-eq-one-iff--b74afce4049e817f00b3f5cf.md) | 182 | `result-track:b74afce4049e817f00b3f5cf97812062cdd0feb172d274502d206848586c6355` |
| 27 | `lemma` | [sq_ne_one_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sq-ne-one-iff--4c097ebc1a5a145d61cc175d.md) | 185 | `result-track:4c097ebc1a5a145d61cc175dfd1310646afa598fb7f782a3f6a875a9dcfceebc` |
| 28 | `theorem` | [mul_self_sub_mul_self](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/mul-self-sub-mul-self--0c55b1bb61623edcec61fc99.md) | 190 | `result-track:0c55b1bb61623edcec61fc9976932880d0441badd1ed1c503d7fded5f12a4b36` |
| 29 | `theorem` | [mul_self_sub_one](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/mul-self-sub-one--6910cdde2efd8d3973eba33b.md) | 194 | `result-track:6910cdde2efd8d3973eba33b0988555874bfef4d04634b7d4f0c160a1aafadb4` |
| 30 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/mul-self-eq-mul-self-iff--98282b7d3cea5d126f5fef68.md) | 197 | `result-track:98282b7d3cea5d126f5fef683aaf7bd3b0f5d5f286234adad8082e7d4001069e` |
| 31 | `theorem` | [mul_self_eq_one_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/mul-self-eq-one-iff--e858a6f723570e7619aaf69d.md) | 201 | `result-track:e858a6f723570e7619aaf69d96f0a2b9c6f91e2c1b50cbfcb788419c4de3b2c3` |
| 32 | `lemma` | [sq_sub_sq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sq-sub-sq--be6d6be1e0025883b182055f.md) | 208 | `result-track:be6d6be1e0025883b182055fcb3af297435724280731650fc2d391923a2a5e32` |
| 33 | `lemma` | [sub_sq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sub-sq--e3a8cbc3b6cb48d1b252e7c7.md) | 212 | `result-track:e3a8cbc3b6cb48d1b252e7c7618b8f179415768d7f326815efccaaf0effc0c03` |
| 34 | `lemma` | [sub_sq'](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sub-sq--4c3a862fb2a8519c200aae9f.md) | 217 | `result-track:4c3a862fb2a8519c200aae9fe41a16ee03ebd3250c8f0b5c3be317ebc60583bc` |
| 35 | `lemma` | [sub_sq_comm](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sub-sq-comm--a3a94e3b384e23d5c696995e.md) | 220 | `result-track:a3a94e3b384e23d5c696995e9c5fc1433743c2567fe468c7cea8b08dbe4ac7f0` |
| 36 | `lemma` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--b7afaa0fbc570da8eac630c0.md) | 225 | `result-track:b7afaa0fbc570da8eac630c05da1ebea3de797654afe20f51ef84ef66b39b63b` |
| 37 | `lemma` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--32c1d46875a99a6e2595f6fc.md) | 228 | `result-track:32c1d46875a99a6e2595f6fc435a71d1692346de2dcf348edc4b335c299eeb6e` |
| 38 | `lemma` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--e21e43d19fd83cd65366f70a.md) | 234 | `result-track:e21e43d19fd83cd65366f70a5771c47051cc5cd92f5e900cd1515dd75b7441a6` |
| 39 | `lemma` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--c866a1bc69bb4dbf7eb9362a.md) | 237 | `result-track:c866a1bc69bb4dbf7eb9362af8f3aa3374d1ddc3a5f26c377703334bf6ae1038` |
| 40 | `theorem` | [inv_eq_self_iff](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/inv-eq-self-iff--04159df49ee3979f1322bacd.md) | 247 | `result-track:04159df49ee3979f1322bacd62ae0818920f48f53f0460de95d173f60f26f0ca` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/instance--5fbbd8f1f933ccf425e4561c.md) | 261 | `declaration-track:5fbbd8f1f933ccf425e4561c4a647ddea642ab5ba788dea043d7e6638510aa91` |
| 42 | `theorem` | [lie_def](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/lie-def--a7db228d7190ebeec3ed2a67.md) | 263 | `result-track:a7db228d7190ebeec3ed2a67ce7ce59f2cbeee9db4624a5a5329a20635e2ec7c` |
| 43 | `theorem` | [commute_iff_lie_eq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/commute-iff-lie-eq--334791923590b1997126bde8.md) | 267 | `result-track:334791923590b1997126bde83ce49a458a396a1b6b8b8195e29e96199898d188` |
| 44 | `theorem` | [Commute.lie_eq](../../../../mathematics/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/declarations/commute-lie-eq--03396e29860925a64aaaf951.md) | 269 | `result-track:03396e29860925a64aaaf95133e81026b3ec4c1f005be6c213d1a079660a7f0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
