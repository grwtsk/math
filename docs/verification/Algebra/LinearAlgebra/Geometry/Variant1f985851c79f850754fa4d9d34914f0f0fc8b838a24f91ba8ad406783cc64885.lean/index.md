# Verification target: GRWTSK.Algebra.LinearAlgebra.Geometry.Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d7d2750eaf0f7d1abf5026250675cc32f3c3ae7",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d7d2750eaf0f7d1abf5026250675cc32f3c3ae7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [d4A](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4a--6460df45289c77c37688d064.md) | 9 | `declaration-track:6460df45289c77c37688d06466e963c287fdd09130856dc1d710242dcf0343be` |
| 2 | `def` | [d4C](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4c--17af97568d98511360a53706.md) | 14 | `declaration-track:17af97568d98511360a53706f3e6d01f6203d78baff25a7e09dd9089e0fd5483` |
| 3 | `def` | [d4Coxeter](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4coxeter--df2ccd94ad8e244f3cf21f19.md) | 19 | `declaration-track:df2ccd94ad8e244f3cf21f196cb73bfc199046d83657389c3ae2585670a3d824` |
| 4 | `def` | [d4Powers](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4powers--ccda45c6559ac4b53c21f939.md) | 24 | `declaration-track:ccda45c6559ac4b53c21f9390bf460b7fe10d5e1c48dcaab87c272aab95865f6` |
| 5 | `theorem` | [d4_matrix_metric](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-matrix-metric--3fff91ee665977c59ea3e9da.md) | 48 | `result-track:3fff91ee665977c59ea3e9dad07a321878743b4142d97fba0b517dcf57f40610` |
| 6 | `theorem` | [d4_coxeter_word](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-coxeter-word--d5a31d22c43ec2c809b1da63.md) | 52 | `result-track:d5a31d22c43ec2c809b1da63c8a43ed8545b7c7ef829c7d3577680db3abdbb6e` |
| 7 | `theorem` | [d4_power_recurrence](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-power-recurrence--e0bf278286613ab8d54aa07f.md) | 55 | `result-track:e0bf278286613ab8d54aa07f8181811bba959e2f11e603eb50c1896aabeb84a5` |
| 8 | `theorem` | [d4_pow_certificate](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-pow-certificate--4ac6bbe2ca88eec582497d79.md) | 59 | `result-track:4ac6bbe2ca88eec582497d792f75ebdec1986c96db16136eae6a4c9a3afb7922` |
| 9 | `theorem` | [d4_coxeter_exact_order](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-coxeter-exact-order--b531f043daf69fffa650d410.md) | 66 | `result-track:b531f043daf69fffa650d41078cb843f04b333736bd57ecba88316c806656cc8` |
| 10 | `def` | [d4CQ](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4cq--7160e6f4b12ffe219b74f422.md) | 77 | `declaration-track:7160e6f4b12ffe219b74f42296542bb920d2d9b1ec166be08ec159148491ea6e` |
| 11 | `def` | [d4L](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4l--ca2c17ae54c9006e0faae3d5.md) | 82 | `declaration-track:ca2c17ae54c9006e0faae3d5b917c7dcb253c43ed57fbc62fd0d82d45354f750` |
| 12 | `def` | [d4D](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4d--1f3a341d8cccf9a80ab6bd95.md) | 87 | `declaration-track:1f3a341d8cccf9a80ab6bd951d2bc94f676f3b05e743d484fbefd0eed5e5bc06` |
| 13 | `theorem` | [d4_ldl](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-ldl--baa919240d53a02c86e03599.md) | 89 | `result-track:baa919240d53a02c86e035991c60d56ab2dc85130c67b2dd4b3ef9689a1a27c3` |
| 14 | `theorem` | [d4_lower_det](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-lower-det--7da839848e438a8a913f52a8.md) | 92 | `result-track:7da839848e438a8a913f52a8822d3d08970b966f668c3dfb4ff98737e814f763` |
| 15 | `theorem` | [d4_positive_definite](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-positive-definite--2c64b202fd0b219fef1de923.md) | 97 | `result-track:2c64b202fd0b219fef1de923a3bda5036b2bc4d3eee5e7b95233a06a77a99373` |
| 16 | `theorem` | [d4_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-determinant--aad0ab703cce7ffcf518b3e6.md) | 107 | `result-track:aad0ab703cce7ffcf518b3e6a24eb0acc7660a599388a9c94e901eac8eb46966` |
| 17 | `theorem` | [d4_integer_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/d4-integer-determinant--df5814cea7aabd4ef4ebf98c.md) | 112 | `result-track:df5814cea7aabd4ef4ebf98cdef9d2755934e88deeb2c69a40b3cbd0b8be2d18` |
| 18 | `def` | [e8A](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8a--c5c9530cb188a80ac17aeb33.md) | 122 | `declaration-track:c5c9530cb188a80ac17aeb334b05e5315d880fbae6c0b72bf58c5ded90fc9291` |
| 19 | `def` | [e8C](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8c--da1aa5c1f6f3307b95d2fd9e.md) | 131 | `declaration-track:da1aa5c1f6f3307b95d2fd9e3ba1511dc38303e1ff76307ca565011ba7e30d5d` |
| 20 | `def` | [e8Coxeter](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8coxeter--5daceb579c3a4f2fb4c533f2.md) | 140 | `declaration-track:5daceb579c3a4f2fb4c533f28032482776a95cbba69730f96891d8f5ea8793af` |
| 21 | `def` | [e8Powers](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8powers--3e5b6726e042768d03fac9e0.md) | 149 | `declaration-track:3e5b6726e042768d03fac9e0f654c8929c5c18f41f771cc210aff35e2eecb1ff` |
| 22 | `theorem` | [e8_matrix_metric](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-matrix-metric--1698ff7ed56b17999d59f69d.md) | 369 | `result-track:1698ff7ed56b17999d59f69da6b7e32be563f253e3e290f2cf8b15aeba0ce7cb` |
| 23 | `theorem` | [e8_coxeter_word](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-coxeter-word--3d194d05c3e715fbba11aa60.md) | 373 | `result-track:3d194d05c3e715fbba11aa60c1036d86139876e1f0c873316d8621ce87181470` |
| 24 | `theorem` | [e8_power_recurrence](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-power-recurrence--f721261bcdb692139ec4574e.md) | 376 | `result-track:f721261bcdb692139ec4574eaf039ee937e9ff19bc535a03590177f24b135df3` |
| 25 | `theorem` | [e8_pow_certificate](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-pow-certificate--dafd16334f633ec89d3b9168.md) | 380 | `result-track:dafd16334f633ec89d3b91689fdd2e98c37f5dd88f74f1f525a2ce47ff995e74` |
| 26 | `theorem` | [e8_coxeter_exact_order](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-coxeter-exact-order--4adc911e1997268c19a85c49.md) | 387 | `result-track:4adc911e1997268c19a85c49ad4d863fdcb92e5199822e8aa977b8c4f7e6fb62` |
| 27 | `def` | [e8CQ](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8cq--15b1862bd3bdad29e77e232d.md) | 398 | `declaration-track:15b1862bd3bdad29e77e232dbac21825d551542176d2c1a4b8d547d2d95fb4a0` |
| 28 | `def` | [e8L](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8l--d84a80703156471991e0743a.md) | 407 | `declaration-track:d84a80703156471991e0743a874576cf212cf2a2d0981b65f8e68d5c0ed29ba6` |
| 29 | `def` | [e8D](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8d--1a40a2a3dff1f51e91aa7fd5.md) | 416 | `declaration-track:1a40a2a3dff1f51e91aa7fd55abea053d0d336d5067f705be63774bd79b99cf5` |
| 30 | `theorem` | [e8_ldl](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-ldl--ed1fba932ecef8c46b101d4f.md) | 418 | `result-track:ed1fba932ecef8c46b101d4f87ce0a3655e04b0be447685e39e55dde4f6b4c97` |
| 31 | `theorem` | [e8_lower_det](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-lower-det--15c086a3a8685909c8f47532.md) | 421 | `result-track:15c086a3a8685909c8f475329fb9a9fe5d32e2c821d237e54296f047b17613f8` |
| 32 | `theorem` | [e8_positive_definite](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-positive-definite--176c9c84ad3e96a23b225af5.md) | 426 | `result-track:176c9c84ad3e96a23b225af5e0458b61766c52312ab205400cafeed63a3724d4` |
| 33 | `theorem` | [e8_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-determinant--d0441fb486a0f78a301ada5b.md) | 436 | `result-track:d0441fb486a0f78a301ada5b956c9f899e77ff3efbdbfdb3aa282804793bba88` |
| 34 | `theorem` | [e8_integer_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/e8-integer-determinant--f7edf7c79dbba87386dc44d5.md) | 441 | `result-track:f7edf7c79dbba87386dc44d5eb93efa357fa801f94be920b492c6403c1e6e0be` |
| 35 | `def` | [rootBasis](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/rootbasis--dc7ac4a76a85d5515af4649e.md) | 451 | `declaration-track:dc7ac4a76a85d5515af4649e7d4077c10d27e63c1cc95013e2211da0c2d2a683` |
| 36 | `def` | [R](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/r--55debbec9752b279a420446c.md) | 456 | `declaration-track:55debbec9752b279a420446c631d4f281f749a5c868ee249cb6ef4408d4638ce` |
| 37 | `def` | [T](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/t--ef617913b018f46ddd21ed7c.md) | 461 | `declaration-track:ef617913b018f46ddd21ed7c4f7af8aefc2736270b7b9b81e9d9ac3510a61db6` |
| 38 | `def` | [REuclidean](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/reuclidean--7e6e11cf5fdfb7736ec3cc5e.md) | 466 | `declaration-track:7e6e11cf5fdfb7736ec3cc5ef6ec5e41e3e74cdfa5fbf458d0434c8d11cf05b7` |
| 39 | `def` | [TEuclidean](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/teuclidean--e998093f17cf28b7f13a3bfd.md) | 471 | `declaration-track:e998093f17cf28b7f13a3bfdc963f3848034716f4294f8acaae997303a4833cb` |
| 40 | `theorem` | [quarter_turn_adapter](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/quarter-turn-adapter--37f472bf9d849d3c2ac15b41.md) | 475 | `result-track:37f472bf9d849d3c2ac15b41842f4a61e66fb030d4e5894c33c26cb9acac9997` |
| 41 | `theorem` | [quarter_turn_words](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/quarter-turn-words--df88ae080864481a9b6d7e40.md) | 478 | `result-track:df88ae080864481a9b6d7e40f2b2838fa74ff2193937e3aa19bf6189f9c8ddd7` |
| 42 | `theorem` | [quarter_turn](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/quarter-turn--e811496e9479fa27aa8b77d4.md) | 480 | `result-track:e811496e9479fa27aa8b77d425a661eb38b821d8da1f006d8cfd9fa6bff6093e` |
| 43 | `def` | [embedding](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/embedding--4dbc4b14a778419fd5ff5b81.md) | 485 | `declaration-track:4dbc4b14a778419fd5ff5b81d74b522af685f9831b467571871b8c149de7f2bd` |
| 44 | `def` | [vertexMap](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/vertexmap--5ae5c9302b3dc94eef1b9456.md) | 494 | `declaration-track:5ae5c9302b3dc94eef1b945674a2130b61eafbe4ab85f979d0c495cd4faf9f41` |
| 45 | `theorem` | [embedding_gram](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/embedding-gram--a91f335a221483ada1fa1361.md) | 495 | `result-track:a91f335a221483ada1fa136176547e99f8d6616223b963bc71d970a2bf406927` |
| 46 | `theorem` | [embedding_intertwining](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/embedding-intertwining--54e34657590ad4889468c1c7.md) | 496 | `result-track:54e34657590ad4889468c1c70a2f92f162bf6241f0be2c3310c64a8731a4c3e5` |
| 47 | `theorem` | [coordinate_complement_not_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/coordinate-complement-not-invariant--7fdaad27dfa9fef2d1eacdd6.md) | 499 | `result-track:7fdaad27dfa9fef2d1eacdd67a7185cf6760dfe44e4241c2c78cfd8fca6b272d` |
| 48 | `def` | [RExt](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/rext--69222e119b9097063c133b83.md) | 502 | `declaration-track:69222e119b9097063c133b8364c679eb01bf48b92b504168c1803ba9ae7f98e3` |
| 49 | `def` | [TExt](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/text--d54e597d14d1c5c27090f45e.md) | 511 | `declaration-track:d54e597d14d1c5c27090f45e38ccbebc52e6f50568180e542339a9f3122812aa` |
| 50 | `theorem` | [extended_words](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/extended-words--e1391535b9a212f6d874d76f.md) | 519 | `result-track:e1391535b9a212f6d874d76f3fb2e3c60e0f2621163ad91fc7113fbec8ebe64f` |
| 51 | `theorem` | [sector_anticommutation](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/sector-anticommutation--32b4d277e868cc04f2f28a76.md) | 521 | `result-track:32b4d277e868cc04f2f28a7625bf4f272dc03bea8bf666416276e33be0ba3f45` |
| 52 | `theorem` | [ambient_anticommutation_fails](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f985851c79f850754fa4d9d34914f0f0fc8b838a24f91ba8ad406783cc64885.lean/declarations/ambient-anticommutation-fails--bb7a9e036477523c77ad4bcd.md) | 522 | `result-track:bb7a9e036477523c77ad4bcd80d973f6bc8a381d7785b4c5ecad5de7057335a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
