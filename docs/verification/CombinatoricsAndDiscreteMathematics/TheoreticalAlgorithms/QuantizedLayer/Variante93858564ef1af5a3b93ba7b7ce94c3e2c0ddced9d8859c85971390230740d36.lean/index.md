# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantizedLayer.Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f257be908d780e46e6abdec6283adde2d150c4a",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f257be908d780e46e6abdec6283adde2d150c4a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Optimized.IntervalArray` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Network` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.foldl_le_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/list-foldl-le-foldl--7d87fe969a5ff33ff30a6604.md) | 57 | `result-track:7d87fe969a5ff33ff30a66048c2b90b4a2a056f3f4e1739a3a8160310c9c045c` |
| 2 | `def` | [dotProductInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/dotproductint--32bff05b820a1445b6e2ed1c.md) | 85 | `declaration-track:32bff05b820a1445b6e2ed1c860a9f7f7c9d2f0e99a0cb5e72b61304fb1891a0` |
| 3 | `theorem` | [dotProductInt_mono_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/dotproductint-mono-nonneg--28aa177496d5033cb02b9f12.md) | 91 | `result-track:28aa177496d5033cb02b9f12b3feb85dca92ae6aa38f7636228735bd81a340ed` |
| 4 | `def` | [matVecMulInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/matvecmulint--c3b5f482aa50d16176811d50.md) | 116 | `declaration-track:c3b5f482aa50d16176811d5082d4d881329dbc6dad385a051e945c4f35891572` |
| 5 | `def` | [addIntArrays](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/addintarrays--2f43f241f723017e2b6884ba.md) | 120 | `declaration-track:2f43f241f723017e2b6884ba573115d5948f3fe4123dc99737817bd2e67d248a` |
| 6 | `def` | [subIntArrays](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/subintarrays--e94e7f50bf0c838c9a0b902d.md) | 124 | `declaration-track:e94e7f50bf0c838c9a0b902dba8921f8d2645c668cc7767cb7e62b616dccbd1e` |
| 7 | `def` | [reluInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/reluint--a35a88a01381d28546dd335c.md) | 128 | `declaration-track:a35a88a01381d28546dd335c7bdbd4b3d4ad2c72c37bdde7b90b1b43108675c1` |
| 8 | `theorem` | [Array.getD_eq_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/array-getd-eq-getelem--be65ef0e02ba126ab0c5453d.md) | 134 | `result-track:be65ef0e02ba126ab0c5453d67654d40849acd415eefb22b8278a8a4d5d9f302` |
| 9 | `theorem` | [reluInt_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/reluint-getelem--0aa2088890867555126b7eb8.md) | 140 | `result-track:0aa2088890867555126b7eb81a8be6702b2f8ef8ce09cfc20f8abeab5dd5913b` |
| 10 | `theorem` | [reluInt_getElem!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/reluint-getelem--393beee98fdd683da93b043f.md) | 145 | `result-track:393beee98fdd683da93b043f281809d2c7d71400747793d7eaa6063ef5683e74` |
| 11 | `theorem` | [addIntArrays_getElem!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/addintarrays-getelem--ae43b09ace282499dfcdfb1a.md) | 152 | `result-track:ae43b09ace282499dfcdfb1abd9f8f56027bd93459a5ed64bd877994f1a6134d` |
| 12 | `theorem` | [subIntArrays_getElem!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/subintarrays-getelem--b364e08ea4bfeeda6db60cd6.md) | 160 | `result-track:b364e08ea4bfeeda6db60cd6bc55813601ee0300e48ef9d7f4aca14961234c7b` |
| 13 | `theorem` | [matVecMulInt_getElem!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/matvecmulint-getelem--3c35e080e4b09c46ef260eb3.md) | 168 | `result-track:3c35e080e4b09c46ef260eb3ba1161564e0b824c0a2776039f4e9fe042df6e65` |
| 14 | `structure` | [SplitWeights](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/splitweights--3e95a2ef96bddc7555987d76.md) | 179 | `declaration-track:3e95a2ef96bddc7555987d76343b13a47f9db0c41601991b032a46f639af9634` |
| 15 | `structure` | [QuantizedLayer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/quantizedlayer--b56c0efe7062dfb22322afd5.md) | 198 | `declaration-track:b56c0efe7062dfb22322afd5ff406032277eb1de962fa89a7afa23e40b96718d` |
| 16 | `def` | [scaleToInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/scaletoint--40a77618b7c1977c68cc9f60.md) | 217 | `declaration-track:40a77618b7c1977c68cc9f603e189b5a296bf8a929f3d27c4cff40a330adb0bd` |
| 17 | `def` | [ofLayer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/oflayer--d1e718f4a0e436831f1ea823.md) | 224 | `declaration-track:d1e718f4a0e436831f1ea823ecae619bc63a7f7596afd99b7e365e3a9ec143d8` |
| 18 | `structure` | [AlignedInput](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/alignedinput--fe63984b589ee955eab8450f.md) | 238 | `declaration-track:fe63984b589ee955eab8450f7a0f943311e939893eca256613754cd42c575498` |
| 19 | `def` | [alignInput](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/aligninput--311592eb1029759f650c7839.md) | 248 | `declaration-track:311592eb1029759f650c7839a068ecdadf0551a9a10f4aac23801369ae0ef555` |
| 20 | `def` | [shiftInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/shiftint--153d281625ca29e52252f6d0.md) | 258 | `declaration-track:153d281625ca29e52252f6d049df4408eebd7c3652c3f641f1c16c22f62e2e5d` |
| 21 | `def` | [forwardQuantized](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/forwardquantized--d9e07213b4394f975c56d228.md) | 272 | `declaration-track:d9e07213b4394f975c56d228a14deef91e2700c5f9b1896852b741f75b1e8b63` |
| 22 | `def` | [toIntervalArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/tointervalarray--a51cd4afce1e870cf7c246a7.md) | 296 | `declaration-track:a51cd4afce1e870cf7c246a7cf8e7bc4cd24e5164f035864f7a8554de4b6cfe5` |
| 23 | `def` | [intVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/intval--47548aebc1596c1da5929ccd.md) | 308 | `declaration-track:47548aebc1596c1da5929ccd39d8ebd40648a0bd0877e09e80b35874be847b2f` |
| 24 | `theorem` | [intVal_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/intval-add--96c96e11c54a2a2db82bb186.md) | 312 | `result-track:96c96e11c54a2a2db82bb186c1a6fe9961e4735af33d573fd1afa0d11904aa70` |
| 25 | `theorem` | [intVal_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/intval-sub--73b1bd251ca06048e192733d.md) | 316 | `result-track:73b1bd251ca06048e192733de361803e07447faa2ae2b9e488bcb9436b7a1e1a` |
| 26 | `theorem` | [intVal_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/intval-mul--0983d3f804a2bc242644506c.md) | 320 | `result-track:0983d3f804a2bc242644506c1e821fd252d994c0ea93b89c2ce227be76ebcc99` |
| 27 | `theorem` | [intVal_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/intval-zero--dbb23d6307f348c7929044dc.md) | 328 | `result-track:dbb23d6307f348c7929044dc8223ff4df3685640b27f6420d887dbc4d69bdba5` |
| 28 | `theorem` | [intVal_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/intval-nonneg--88c1f6021eed4a07f9bf27f2.md) | 331 | `result-track:88c1f6021eed4a07f9bf27f2294439f5d945757c8f0698a1db88b94b0996310e` |
| 29 | `def` | [AlignedInput.mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/alignedinput-mem--c7f101b940335c34e69f98f0.md) | 339 | `declaration-track:c7f101b940335c34e69f98f04d3e17103915286a7e0b8bf06f3254ecc74512de` |
| 30 | `theorem` | [nonneg_mul_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/nonneg-mul-bounds--90fea960f31a6586fdbe3232.md) | 348 | `result-track:90fea960f31a6586fdbe32320de18d078da4fca8d8037cd9b1e9630ccea000c6` |
| 31 | `theorem` | [dotProduct_bounds_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/dotproduct-bounds-nonneg--f3c76e507a4869796196cc7d.md) | 357 | `result-track:f3c76e507a4869796196cc7d40cd972c1a88b702fd58ad90ff43f6416d243dbc` |
| 32 | `theorem` | [split_sign_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/split-sign-bounds--42f313a6eaac14003c5c3e40.md) | 374 | `result-track:42f313a6eaac14003c5c3e40aed31cdb5733c04a9317644c69b6439c43bc798d` |
| 33 | `theorem` | [relu_preserves_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/relu-preserves-bounds--22167c07333ccb6b46eeecde.md) | 405 | `result-track:22167c07333ccb6b46eeecde43ab21e25ac5255e558c9e5dac8c9f0ac4a388fa` |
| 34 | `theorem` | [intVal_max_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/intval-max-le--04fae033a32fafad88f6f85f.md) | 414 | `result-track:04fae033a32fafad88f6f85f2b3d116c56535cb1ff23a46be69ac831e8db79d5` |
| 35 | `theorem` | [intVal_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/intval-mono--e2a6eda6e5ef8a908c52fbbb.md) | 422 | `result-track:e2a6eda6e5ef8a908c52fbbb4bd2c4e0942975a662e7c6f3ffbfd72c2f2e8d1c` |
| 36 | `theorem` | [intVal_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/intval-strictmono--8bbaf2f2d697b819564aecc3.md) | 429 | `result-track:8bbaf2f2d697b819564aecc3ca136528a931d572c94a66f7ae494c439f87a3b4` |
| 37 | `theorem` | [forwardQuantized_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/forwardquantized-sound--2e5d14aa76dc99580362516f.md) | 447 | `result-track:2e5d14aa76dc99580362516f50a62d013c9acd19df9ee29b5f179fcebbcc83d8` |
| 38 | `theorem` | [forwardQuantized_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/forwardquantized-nonempty--a1837e5947fb89a36097c83c.md) | 593 | `result-track:a1837e5947fb89a36097c83c7e16d34e2848942b5323d56c9f04fa2eb013ecb2` |
| 39 | `structure` | [QuantizedNet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/quantizednet--92a376881266f9a430b27329.md) | 637 | `declaration-track:92a376881266f9a430b27329fd28f7fb0358c88e051e78bcd1d82d61aff605c3` |
| 40 | `def` | [ofLayers](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/oflayers--230402ea7399e6b2900bca5f.md) | 644 | `declaration-track:230402ea7399e6b2900bca5f55390e9a2575ea1e1e3fd7fea03256ec68e9aa64` |
| 41 | `def` | [forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean/declarations/forward--86418135bc8bb9d5e5d546e4.md) | 648 | `declaration-track:86418135bc8bb9d5e5d546e4290523af308ae2d36241789d8308f8b38d8bdba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
