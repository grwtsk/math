# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundVerify.Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ede094bcb71d9523c71a6ebd3aa759132ae31bb",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ede094bcb71d9523c71a6ebd3aa759132ae31bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Optimization.Global` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundVerifyConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/boundverifyconfig--414cdeef2a26d9127bba4ed7.md) | 49 | `declaration-track:414cdeef2a26d9127bba4ed7ffd78b6a7c36e3c6cdd9984d2bda42d7adcf5f61` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/instance--e35262e507975096f960f970.md) | 60 | `declaration-track:e35262e507975096f960f970b79a2b0d28836a30bc97de19292c69531fdc1d89` |
| 3 | `def` | [BoundVerifyConfig.toGlobalOptConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/boundverifyconfig-toglobaloptconfig--64230cd23f21d43a9608bbf6.md) | 63 | `declaration-track:64230cd23f21d43a9608bbf630f2903232534a8535b7ba903a87412870cea0a1` |
| 4 | `structure` | [WitnessPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/witnesspoint--8ca9d42012faffa16eda8c98.md) | 72 | `declaration-track:8ca9d42012faffa16eda8c98e2d464ced369a03f8ec9ef70aea335e87b2976cb` |
| 5 | `structure` | [BoundVerifyResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/boundverifyresult--3a4dbc5d1c0bb65c3cead5fe.md) | 80 | `declaration-track:3a4dbc5d1c0bb65c3cead5fee66047485a2a52306ab98ba9fc9c3b3963a589c0` |
| 6 | `def` | [Box.midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/box-midpoint--b94efcadcaa6ddd889cc4e81.md) | 94 | `declaration-track:b94efcadcaa6ddd889cc4e813660949bd08039971a3978d435d9ae92b1e20057` |
| 7 | `def` | [Box.maxWidthQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/box-maxwidthq--74e702febc5c4fb0cc55b647.md) | 98 | `declaration-track:74e702febc5c4fb0cc55b647e0c3a9491ac14b7c246863dd603302f3b0526adc` |
| 8 | `def` | [evalAtPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/evalatpoint--ba1fcc4eb1ac27d11cc02d82.md) | 102 | `declaration-track:ba1fcc4eb1ac27d11cc02d82bf439db2b60b6210f9738d083a8ae95ed5e6ff31` |
| 9 | `def` | [verifyUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifyupperbound--ae7848159f5a2101bbf8bd43.md) | 113 | `declaration-track:ae7848159f5a2101bbf8bd43957d8cdc771fed8c8e0b23bd05330157f15c41f6` |
| 10 | `def` | [verifyLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifylowerbound--f12f5ae3c7978fab478e61eb.md) | 120 | `declaration-track:f12f5ae3c7978fab478e61eb2c95a05b7faf5404fd0f715c5fd3fb890d5f154f` |
| 11 | `def` | [verifyUpperBoundStrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifyupperboundstrict--ec8ed93ae2ee737e4d4d1a42.md) | 127 | `declaration-track:ec8ed93ae2ee737e4d4d1a421b236330a5da53448267cddb7bd071bd22fe00e7` |
| 12 | `def` | [verifyLowerBoundStrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifylowerboundstrict--e07d53b85503b90bbf70f3d8.md) | 134 | `declaration-track:e07d53b85503b90bbf70f3d8bf4d968c13d8e00cb7e2931362fdfbd5f01d09d7` |
| 13 | `def` | [findMaxWithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/findmaxwithwitness--1c5c19a348ad1925a091a202.md) | 144 | `declaration-track:1c5c19a348ad1925a091a2021eb15e68edd7c41244e49d9d4c531ed118e9c5b5` |
| 14 | `def` | [findMinWithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/findminwithwitness--61550aa40c02cfbac572b63a.md) | 157 | `declaration-track:61550aa40c02cfbac572b63a44e5fa568e6772e54b93748c6c5d53f1d8f020a0` |
| 15 | `def` | [verifyUpperBoundWithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifyupperboundwithwitness--b00af73f5497bdcc2441ef4c.md) | 169 | `declaration-track:b00af73f5497bdcc2441ef4c1351eaba6626835a02f12bbd0b83bdfdbe845312` |
| 16 | `def` | [verifyLowerBoundWithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifylowerboundwithwitness--e74eda0d20395f7446c37803.md) | 182 | `declaration-track:e74eda0d20395f7446c37803a0b6be7fe79807633eb6fafbeab963a996f42588` |
| 17 | `def` | [intervalToBox](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/intervaltobox--fbe141428f2ebafffaa79159.md) | 196 | `declaration-track:fbe141428f2ebafffaa791594af0e51d63dc8ecb201a07276dc58e77ddbe0005` |
| 18 | `def` | [verifyUpperBound1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifyupperbound1--f87fc730d14c4f1f0c681705.md) | 199 | `declaration-track:f87fc730d14c4f1f0c681705a193eb3edca95b89e10ada15ef0fe13aa15efe3d` |
| 19 | `def` | [verifyLowerBound1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifylowerbound1--0377c2c1c3400edaa6629a85.md) | 204 | `declaration-track:0377c2c1c3400edaa6629a85baf09e652df466ef3f9bcc880bf57a7ef79b65e2` |
| 20 | `def` | [verifyUpperBound1Strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifyupperbound1strict--5ba659ca109f73110d3e7609.md) | 209 | `declaration-track:5ba659ca109f73110d3e760992abf58fd4aaf748f4c27174432cf613190b0cf2` |
| 21 | `def` | [verifyLowerBound1Strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifylowerbound1strict--63c9ebe602e871bd20a621d3.md) | 214 | `declaration-track:63c9ebe602e871bd20a621d3636d7d1b80ec658852e5955ef456f6bc929b87df` |
| 22 | `def` | [findMax1WithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/findmax1withwitness--9d420aa3632c4ccd4ecfa5a2.md) | 219 | `declaration-track:9d420aa3632c4ccd4ecfa5a21c7115b5892fc06ce3b6d4200a4196364c6ccf03` |
| 23 | `def` | [findMin1WithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/findmin1withwitness--cb9e957b13cb95fce9d7d0ab.md) | 223 | `declaration-track:cb9e957b13cb95fce9d7d0ab600b238b6efdeb5328035bded43dafd6d9cd2632` |
| 24 | `def` | [verifyUpperBound1WithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifyupperbound1withwitness--7fe9065e5b578551b63819bd.md) | 227 | `declaration-track:7fe9065e5b578551b63819bdb1e99875e0c33ee37f063fa8849da8888cf40d8e` |
| 25 | `def` | [verifyLowerBound1WithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifylowerbound1withwitness--5c7cadc20511e623ab7537d3.md) | 232 | `declaration-track:5c7cadc20511e623ab7537d307353b155784059f45f18bcbfd5d4383ddcac625` |
| 26 | `theorem` | [intervalToBox_envMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/intervaltobox-envmem--e3a54fbbdd729dd0922aeadc.md) | 239 | `result-track:e3a54fbbdd729dd0922aeadc8b91585cd6962e0c39913a55dbddb45c7396d946` |
| 27 | `theorem` | [intervalToBox_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/intervaltobox-zero--823741a973f5f88ac7b77938.md) | 249 | `result-track:823741a973f5f88ac7b77938ec018dd0705a7aceccdc2d8c8d86ed12c15fc653` |
| 28 | `theorem` | [verifyUpperBound_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifyupperbound-correct--acb26da7ee329ebd729d4eb4.md) | 256 | `result-track:acb26da7ee329ebd729d4eb40a1733752e1e727038d5ee1c59ad72a3e3924e19` |
| 29 | `theorem` | [verifyLowerBound_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/verifylowerbound-correct--1ce99e3cfb44435a61ecf59d.md) | 283 | `result-track:1ce99e3cfb44435a61ecf59d7c451023698922d0ec4e1fbafc332978b153342f` |
| 30 | `def` | [Expr.usesOnlyVar0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/expr-usesonlyvar0--9a15ed9c4a1d4eb50d307036.md) | 297 | `declaration-track:9a15ed9c4a1d4eb50d307036c07ebb53d38cc32b736efb551fe10e9c47ba52a2` |
| 31 | `theorem` | [Expr.eval_usesOnlyVar0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/expr-eval-usesonlyvar0--b454ae5ad36ef15f147069bd.md) | 320 | `result-track:b454ae5ad36ef15f147069bd5099d1de7606a297b38f58691f4404bbcaa71ee3` |
| 32 | `theorem` | [adaptive_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/adaptive-upper-bound--a8a91f0e35c83ab6a9dd6e3f.md) | 363 | `result-track:a8a91f0e35c83ab6a9dd6e3f1013a9d286215fa709038f4610ba42b6febbc10c` |
| 33 | `theorem` | [adaptive_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/adaptive-lower-bound--3812299f56886134cb0d8d90.md) | 395 | `result-track:3812299f56886134cb0d8d90bd6c9bfb68f1d0ea8900521a8b9307575a9e2c4e` |
| 34 | `theorem` | [adaptive_upper_bound_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/adaptive-upper-bound-strict--23f79308c78d2403bb88f01d.md) | 424 | `result-track:23f79308c78d2403bb88f01d4e3ca10b7b261b50f6657cd58cce20b0275dc278` |
| 35 | `theorem` | [adaptive_lower_bound_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/adaptive-lower-bound-strict--d8c2c664ffcff43ed6430115.md) | 464 | `result-track:d8c2c664ffcff43ed6430115168f42ed863b3abce8ec432c2a7a82697ad5954d` |
| 36 | `theorem` | [adaptive_upper_bound_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/adaptive-upper-bound-icc--575c6d7f6194dcb3c542ee6e.md) | 495 | `result-track:575c6d7f6194dcb3c542ee6ec5a1195d09dc2fb4b4aa3c24f2f568131b198620` |
| 37 | `theorem` | [adaptive_lower_bound_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/adaptive-lower-bound-icc--1a17196c3076e0de6cc04b86.md) | 507 | `result-track:1a17196c3076e0de6cc04b86dc0a4e91f50bf96f234182b60802c920c7ec1f04` |
| 38 | `theorem` | [adaptive_upper_bound_Icc_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/adaptive-upper-bound-icc-strict--4f57b563973d3de71de6ecd4.md) | 519 | `result-track:4f57b563973d3de71de6ecd427d2de5df6d8579d8a8bd0f8f16a83db7178b0a8` |
| 39 | `theorem` | [adaptive_lower_bound_Icc_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/declarations/adaptive-lower-bound-icc-strict--e7e3dd8da7e03e6727623add.md) | 531 | `result-track:e7e3dd8da7e03e6727623addca22d6b8901ecb4451fb06565e2c3f716f7c2634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
