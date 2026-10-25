# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3605afc794721633203ece297d9271b7e312967c",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3605afc794721633203ece297d9271b7e312967c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exprXSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxsq--46a7d6029c8246e93b8e6854.md) | 43 | `declaration-track:46a7d6029c8246e93b8e6854f65f05d3661a905eed8a47e4824ce096170862ab` |
| 2 | `def` | [exprXSq_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxsq-core--f5ec1bc800dc7632969ccc5c.md) | 46 | `declaration-track:f5ec1bc800dc7632969ccc5c6f5197fb4fd485e5d0f8e405544492fcbf366136` |
| 3 | `def` | [exprXSq_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxsq-supp--197db9ecf7bb5e013a4cf757.md) | 50 | `declaration-track:197db9ecf7bb5e013a4cf757d7581aa520e7d33751e0fc68fb13100d1ba82819` |
| 4 | `def` | [I01](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/i01--3027cafd54ea231a688a62fc.md) | 54 | `declaration-track:3027cafd54ea231a688a62fc5526372f91939bd01ff7303b8e134f28d74ad2ca` |
| 5 | `theorem` | [xsq_le_one_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/xsq-le-one-native--cf89445adfcce2f565aea6fa.md) | 58 | `result-track:cf89445adfcce2f565aea6fa322bad7cf343984952d33e05245dddbe38d0b7a9` |
| 6 | `theorem` | [zero_le_xsq_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/zero-le-xsq-native--4f3eae80807a1c1647194cb0.md) | 62 | `result-track:4f3eae80807a1c1647194cb05599a796f928410708409f4f7e72ca0cac68b695` |
| 7 | `theorem` | [xsq_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/xsq-le-one--f39d7cc80f1c3e055a9d6db0.md) | 67 | `result-track:f39d7cc80f1c3e055a9d6db05e0e601cfc575afc0f28bec224387eeb27d0d47e` |
| 8 | `theorem` | [zero_le_xsq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/zero-le-xsq--6c1924490dfeeeafcb63d00b.md) | 80 | `result-track:6c1924490dfeeeafcb63d00b2130b73b60b5a5b1e2d23aa8f1975d9d06d9a45b` |
| 9 | `def` | [exprSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprsin--91a5719419e40bb7af6fb985.md) | 90 | `declaration-track:91a5719419e40bb7af6fb985bbe77731228b725c911b60fb93f04c05aca6acaa` |
| 10 | `def` | [exprSin_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprsin-core--9e9644293cfb3d76060ac552.md) | 93 | `declaration-track:9e9644293cfb3d76060ac55293466044f26e43d3eb026262b3606542e23ebe25` |
| 11 | `def` | [exprSin_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprsin-supp--0cd1362ab5153e807a29b4f9.md) | 97 | `declaration-track:0cd1362ab5153e807a29b4f9341307f9d8d63b36a05de1796415a3052ae5a092` |
| 12 | `theorem` | [sin_le_one_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/sin-le-one-native--732c9ff02b4d17040fae707e.md) | 101 | `result-track:732c9ff02b4d17040fae707e329a43698c1fd0843ce6fc2f3b6581077418b1ba` |
| 13 | `theorem` | [neg_one_le_sin_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/neg-one-le-sin-native--08d6d1527d2058ec48b2d8cf.md) | 105 | `result-track:08d6d1527d2058ec48b2d8cfa11a29be00543ef43328e32a11ab90725d8fb8b3` |
| 14 | `theorem` | [sin_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/sin-le-one--e028bfb3f893a7167b94ce0f.md) | 110 | `result-track:e028bfb3f893a7167b94ce0f6508f8212a7a39701b4fba0e3402e3511e0c40f8` |
| 15 | `theorem` | [neg_one_le_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/neg-one-le-sin--3eff6b595537d64147a3fb4b.md) | 118 | `result-track:3eff6b595537d64147a3fb4b92fbd50a2b9e9b7d0e6d6be948f7807f2641a6ef` |
| 16 | `def` | [exprXSqPlusSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxsqplussin--7a0b67c97ca99d6215f113ee.md) | 127 | `declaration-track:7a0b67c97ca99d6215f113eee60e04e6b569841f87eac47c5ec1650f9c751591` |
| 17 | `def` | [exprXSqPlusSin_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxsqplussin-core--d77bbbad70362a475693c7e8.md) | 131 | `declaration-track:d77bbbad70362a475693c7e82e2ae3bcf57cd227263b7adc8294d52bf5297c47` |
| 18 | `def` | [exprXSqPlusSin_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxsqplussin-supp--1bb1342dc0f2e685f17a9269.md) | 137 | `declaration-track:1bb1342dc0f2e685f17a9269690990c23a479b07f039f7bcce69d15e13cfcc92` |
| 19 | `theorem` | [xsq_plus_sin_le_two_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/xsq-plus-sin-le-two-native--b9c0e18cf6b4b0d486390998.md) | 143 | `result-track:b9c0e18cf6b4b0d486390998e327eb1e00debf7851ad60496e8dc2618875289a` |
| 20 | `theorem` | [neg_one_le_xsq_plus_sin_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/neg-one-le-xsq-plus-sin-native--c5934d8f19e09a6847153e30.md) | 147 | `result-track:c5934d8f19e09a6847153e30ca62364e475e6f35216aa14cd95c7e5ac8591c1f` |
| 21 | `theorem` | [xsq_plus_sin_le_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/xsq-plus-sin-le-two--be1a9d6bdd1679993d342569.md) | 152 | `result-track:be1a9d6bdd1679993d3425692b2f92fdde11bb5f4eb641c078b5c56c2424aa08` |
| 22 | `theorem` | [neg_one_le_xsq_plus_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/neg-one-le-xsq-plus-sin--f93805797ecec30b4345956b.md) | 165 | `result-track:f93805797ecec30b4345956b3252dcde836e35c9f22a15238d73091a4f08aa3e` |
| 23 | `def` | [exprXSqMinus2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxsqminus2--12edab1b509c57df531d6d8a.md) | 179 | `declaration-track:12edab1b509c57df531d6d8ae399432cff98255d4ad02fe59c72ed70b7c0b49e` |
| 24 | `def` | [exprXSqMinus2_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxsqminus2-core--1834daafbca3b6b82da4df10.md) | 183 | `declaration-track:1834daafbca3b6b82da4df107be9e73de628c537e51652df321bd62287161acb` |
| 25 | `def` | [exprXSqMinus2_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxsqminus2-supp--5e64c9a6bb532cb03348c28f.md) | 189 | `declaration-track:5e64c9a6bb532cb03348c28f5dec6270dc64d40cf130f7e8c46543e77894fe94` |
| 26 | `theorem` | [xsq_minus_two_lt_zero_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/xsq-minus-two-lt-zero-native--a33b0b6aacb8f24b0f289c2f.md) | 196 | `result-track:a33b0b6aacb8f24b0f289c2f07991dd561680f2b7836bfe83d4accff6af46939` |
| 27 | `theorem` | [xsq_minus_two_lt_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/xsq-minus-two-lt-zero--9786b36c765c386be34d2b87.md) | 201 | `result-track:9786b36c765c386be34d2b87f38088f70a08ea8c1280bddbf0bc4de9560b205a` |
| 28 | `def` | [exprPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprpoly--598aa138d88828808949cc3e.md) | 214 | `declaration-track:598aa138d88828808949cc3e0e93a648c1374914b6e687dc125d41042a84ae4c` |
| 29 | `def` | [exprPoly_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprpoly-core--5263932a5507342b96b3115b.md) | 222 | `declaration-track:5263932a5507342b96b3115b4164f81a36a610294dd0c945e613eb5ad4ff27bc` |
| 30 | `def` | [exprPoly_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprpoly-supp--024185dbef1b76bef0b1cd4f.md) | 231 | `declaration-track:024185dbef1b76bef0b1cd4f73bd10f3b1557fb1ab7bac7e287a4adb666acc17` |
| 31 | `theorem` | [poly_le_six_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/poly-le-six-native--1ba5f086642417906a80dd98.md) | 241 | `result-track:1ba5f086642417906a80dd980ee210394d8249eacdb2f09ccfcfedcaa8885d1a` |
| 32 | `theorem` | [one_le_poly_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/one-le-poly-native--f3bc0918c090e2870398dfbd.md) | 246 | `result-track:f3bc0918c090e2870398dfbd2e647e85e2738b308ddb694e30bd5e5fdc771453` |
| 33 | `theorem` | [poly_le_six](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/poly-le-six--b35e2f0167e70768ca13d56e.md) | 251 | `result-track:b35e2f0167e70768ca13d56eec7e5f4e21cb5aa0229a9a9010cecbc14cdef17b` |
| 34 | `theorem` | [one_le_poly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/one-le-poly--92371838a4b2b983e2a005f2.md) | 266 | `result-track:92371838a4b2b983e2a005f2f3185ce5db2388974133144645fde038f1a3460b` |
| 35 | `def` | [exprExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprexp--89a28e7696216dab21acb212.md) | 284 | `declaration-track:89a28e7696216dab21acb212bd2f02268ed9dd517e6b0e691c9f7254be8b004d` |
| 36 | `def` | [exprExp_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprexp-supp--e6960f68c7762c0666390759.md) | 287 | `declaration-track:e6960f68c7762c06663907594e0710c01383401fe1d2d293e545d49ba9423817` |
| 37 | `theorem` | [exp_le_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exp-le-three--0b5268fb958643c04bd2d0c5.md) | 293 | `result-track:0b5268fb958643c04bd2d0c5f2a7047bf1f37fd14113d9b98088c834513937d7` |
| 38 | `theorem` | [one_le_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/one-le-exp--1818890b8bbb091ac1e27a3a.md) | 306 | `result-track:1818890b8bbb091ac1e27a3a290e99a936a146b0ff98b51cf1003fad619695be` |
| 39 | `def` | [exprXPlusExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxplusexp--a00daeb7f66754a4a6d9f1b1.md) | 315 | `declaration-track:a00daeb7f66754a4a6d9f1b1eef2cec556fd4511355e45626dd14fb2fafeac3d` |
| 40 | `def` | [exprXPlusExp_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/exprxplusexp-supp--19f47324277b173f16f8cce9.md) | 318 | `declaration-track:19f47324277b173f16f8cce9ca203b764cf143b2cdc9b416962d649bc02abd4b` |
| 41 | `theorem` | [x_plus_exp_le_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/x-plus-exp-le-four--6ec0c6719b0b124c4f749e7f.md) | 323 | `result-track:6ec0c6719b0b124c4f749e7f3f975cad0a90f7d289ef3cfd16305fdc53686e9c` |
| 42 | `theorem` | [one_le_x_plus_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/declarations/one-le-x-plus-exp--1a970f046e0631c7a07c63ec.md) | 336 | `result-track:1a970f046e0631c7a07c63ecbbd25a2e5a94a2ba96c38a209bfd863c3b93d7a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
