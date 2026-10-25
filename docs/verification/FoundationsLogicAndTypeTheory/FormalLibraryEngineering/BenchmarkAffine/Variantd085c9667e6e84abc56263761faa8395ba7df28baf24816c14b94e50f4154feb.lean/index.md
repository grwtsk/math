# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BenchmarkAffine.Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fce90c5ca631b09d837eee4eff699c99f9cea5b4",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fce90c5ca631b09d837eee4eff699c99f9cea5b4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 15; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalAffine` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [testInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/testinterval--c3d479d236cae8bdace29278.md) | 52 | `declaration-track:c3d479d236cae8bdace292787289597ee16e1217d938e3814342b1650672f7d1` |
| 2 | `def` | [smallInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/smallinterval--a61cf785d6d5026e48cf03c7.md) | 55 | `declaration-track:a61cf785d6d5026e48cf03c7850cddc92d2377b9359409a95164d390af16c217` |
| 3 | `def` | [narrowInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/narrowinterval--28de8272c525bae506e6c90a.md) | 58 | `declaration-track:28de8272c525bae506e6c90ab5f375d9a0238acb5532346f84e0b232fd7055ce` |
| 4 | `def` | [mkRatEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/mkratenv--2ce09e4d422352657ac88a20.md) | 61 | `declaration-track:2ce09e4d422352657ac88a20d3ca8013bf26b7a51ee448a1495a18cfc153918a` |
| 5 | `def` | [mkDyadEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/mkdyadenv--91eedf1a268b83e765f014b4.md) | 64 | `declaration-track:91eedf1a268b83e765f014b40451d3556c095e394e2b32b945f075c170ab0c50` |
| 6 | `def` | [mkAffineEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/mkaffineenv--f8f8aa4b15643047ad15e349.md) | 68 | `declaration-track:f8f8aa4b15643047ad15e3496173c676aab3b7fa0c7ae022d4fed8cc89dcb302` |
| 7 | `def` | [exprXMinusX](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprxminusx--b4535e7116c83d0d8644f657.md) | 73 | `declaration-track:b4535e7116c83d0d8644f65758046fe54fbc7bc93ebb8326a2d334afbce8203f` |
| 8 | `def` | [exprXSqMinusXSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprxsqminusxsq--0884906a05f0052b74a26e62.md) | 77 | `declaration-track:0884906a05f0052b74a26e62a54ef4c7fb37a3a8251e7234df4b15716ccbf388` |
| 9 | `def` | [exprXPlus1MinusX](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprxplus1minusx--82a7647904ea52658026bc33.md) | 82 | `declaration-track:82a7647904ea52658026bc33ddc0cc64037f6a8bb169d0f4801703a2c6636001` |
| 10 | `def` | [exprCorrelated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprcorrelated--fee04140d1aab27058bc2b15.md) | 87 | `declaration-track:fee04140d1aab27058bc2b15995555f4f8f5c59d15bd98464eb86c69608d5ede` |
| 11 | `def` | [exprSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprsin--d8191d3f639532124e38f4ea.md) | 97 | `declaration-track:d8191d3f639532124e38f4ea06f5c47b285bf66662f73798c1ba77edbdfcebda` |
| 12 | `def` | [exprCos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprcos--5f226dbf22e24fb7d9a5fb52.md) | 100 | `declaration-track:5f226dbf22e24fb7d9a5fb524a99675c396a2882a46640f974c27f284ed971b5` |
| 13 | `def` | [exprExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprexp--0709bca501a2bc734b60aed7.md) | 103 | `declaration-track:0709bca501a2bc734b60aed7f45b1a56cb9b7981a08257e44f499ab09b3b5afd` |
| 14 | `def` | [exprTanh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprtanh--8871b818d49a035e2ffcb155.md) | 106 | `declaration-track:8871b818d49a035e2ffcb155418bff7128d8e2e4b9c9bd815a4a86afdf7e0823` |
| 15 | `def` | [exprSinh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprsinh--ec2157946f3fcdfcef4df5dd.md) | 109 | `declaration-track:ec2157946f3fcdfcef4df5dd48968149f2e005d92cc9d3d6cc357d8c391bafc5` |
| 16 | `def` | [exprCosh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprcosh--f99f94730e5db0dea80b1ec5.md) | 112 | `declaration-track:f99f94730e5db0dea80b1ec52ec8947e3ca15004dde40f38bb3112ce4244080b` |
| 17 | `def` | [exprSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprsqrt--18464d73e5772a8bbe5635e3.md) | 115 | `declaration-track:18464d73e5772a8bbe5635e3e91c2fb8aeb3be0ba3a83df1d172b92da0190789` |
| 18 | `def` | [exprSinSqPlusCosSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprsinsqpluscossq--61b239dbc80047f4ff27a655.md) | 118 | `declaration-track:61b239dbc80047f4ff27a655ff2b3740cd43cf383d4cebd3977f12f3f7608033` |
| 19 | `def` | [evalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/evalrat--15c63dfdb8078521ab032448.md) | 128 | `declaration-track:15c63dfdb8078521ab032448378508f2aef14016a1f076f38da030a8a2f9c0ce` |
| 20 | `def` | [evalDyad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/evaldyad--82c98869f5030d10d06545c0.md) | 132 | `declaration-track:82c98869f5030d10d06545c0a946b54adf3b9309210a534450a003556cffdab8` |
| 21 | `def` | [evalAffine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/evalaffine--63d248cb4e91d57493ff3a82.md) | 136 | `declaration-track:63d248cb4e91d57493ff3a826d7ae094066a6a0ea79e9a0f8f985f0e4356c8ea` |
| 22 | `structure` | [BenchResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/benchresult--28ac31aa8f7ee95826616d55.md) | 141 | `declaration-track:28ac31aa8f7ee95826616d55a1898b424d207784d2275cccfd57c8b921de6531` |
| 23 | `def` | [runBenchmark](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/runbenchmark--671c477285f830f635069d15.md) | 152 | `declaration-track:671c477285f830f635069d152ef3bacc81d7089fcca17354ccf90174bd4a7f50` |
| 24 | `structure` | [ThreeWayResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/threewayresult--04c28a513b887a36f326ee5d.md) | 200 | `declaration-track:04c28a513b887a36f326ee5d95c5618ec29ca1e04722f421756876e5b8c49352` |
| 25 | `def` | [runThreeWay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/runthreeway--cd7b4abf12e3611fe271ecc3.md) | 207 | `declaration-track:cd7b4abf12e3611fe271ecc3f355702e243d9539c8b6977ac140dfa5da78110e` |
| 26 | `theorem` | [xMinusX_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/xminusx-eval--48492120a4fb10337ec534e2.md) | 226 | `result-track:48492120a4fb10337ec534e28a974d29f04cf5ee18c7c86a5a3c3250ea83e304` |
| 27 | `theorem` | [xPlus1MinusX_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/xplus1minusx-eval--dea01898019d544dae341f27.md) | 230 | `result-track:dea01898019d544dae341f27a08e7d6c3ede310d4fd54c8e53d2ce1397e5916e` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/example--01d88e6f2b62e01bc3b19173.md) | 234 | `declaration-track:01d88e6f2b62e01bc3b19173edc9cd7777081c6dca23ccbb6488948cba50e859` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/example--4b3336a6ca4d3988ab69df26.md) | 235 | `declaration-track:4b3336a6ca4d3988ab69df263a6446ce6c2686f6aaec1ca32d9fb28d20c53809` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/example--8fa3470d78ac9345b2e780b4.md) | 238 | `declaration-track:8fa3470d78ac9345b2e780b41adb1710b9bfa68275305fd71cc28d3703508409` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/example--b12f0e6332107d6463f95f4c.md) | 239 | `declaration-track:b12f0e6332107d6463f95f4c941af9d69d0048263593666ea95edcbbe32b61d2` |
| 32 | `def` | [mkAffineEnv2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/mkaffineenv2--2e482a2a84ec0fb140fe6092.md) | 244 | `declaration-track:2e482a2a84ec0fb140fe6092c998e3d9decbe42322fdd9ef292973c56a3e6335` |
| 33 | `def` | [exprXPlusYMinusX](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprxplusyminusx--b3e1b196ed23562d7de4cc30.md) | 247 | `declaration-track:b3e1b196ed23562d7de4cc303543ff20cc4525f5e4bb7dfc158ca51c18c9f9d1` |
| 34 | `def` | [evalAffine2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/evalaffine2--627e080581511c5acc85bf48.md) | 250 | `declaration-track:627e080581511c5acc85bf48bd6e25dfd83955ce3bfd8270d7dbd14a7e4f6ae4` |
| 35 | `def` | [exprSimplifiedLayerNorm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprsimplifiedlayernorm--78c8d64e00b1560016046a5c.md) | 266 | `declaration-track:78c8d64e00b1560016046a5c5a25bd7fabd36ab2b29843109d617acf96fd635a` |
| 36 | `def` | [exprSoftplus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/declarations/exprsoftplus--031fa40b6fed5e32ce31af88.md) | 276 | `declaration-track:031fa40b6fed5e32ce31af88a03be8fd7288256faf3497bae1a170e31ff79c36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
