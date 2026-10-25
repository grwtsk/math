# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sum.Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "166eea48011c9b9a00a8379d21c9a4e98d467518",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `166eea48011c9b9a00a8379d21c9a4e98d467518`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Coe` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psumEquivSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/psumequivsum--c5f3aa73206261e8fc78310d.md) | 47 | `declaration-track:c5f3aa73206261e8fc78310da3cb803d859a366af0e2f5d3430e826c6ba946bd` |
| 2 | `def` | [sumCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcongr--0a37183993b932472fd6e1ec.md) | 55 | `declaration-track:0a37183993b932472fd6e1ec7fa88d4819f6ed48d540d3197d418ff938fe82f7` |
| 3 | `theorem` | [sumCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcongr-trans--80f80f41a052009f1eaf24c1.md) | 59 | `result-track:80f80f41a052009f1eaf24c1b8406d2b53d3e7024b7553381541797a984db90e` |
| 4 | `theorem` | [sumCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcongr-symm--acd7b97bd79ad0352c342e13.md) | 65 | `result-track:acd7b97bd79ad0352c342e13738e8eea390fc758ba2b45807ace660a78d4624c` |
| 5 | `theorem` | [sumCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcongr-refl--e9d1756019d713d834fa0cf3.md) | 70 | `result-track:e9d1756019d713d834fa0cf35f04d20d7269d5ca8e130251d38135ad74693a3e` |
| 6 | `def` | [psumCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/psumcongr--f0aaebd90d15eba7b697a535.md) | 76 | `declaration-track:f0aaebd90d15eba7b697a5350fc948f90dad875f76ad6b285eef906602c0cee1` |
| 7 | `def` | [psumSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/psumsum--9f0167477edcc3014be98d0e.md) | 83 | `declaration-track:9f0167477edcc3014be98d0e05f0a8153b79feb7545970d7b2330ecd5319211e` |
| 8 | `def` | [sumPSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumpsum--288f5d6ea186865daa936a41.md) | 88 | `declaration-track:288f5d6ea186865daa936a41c3f2d8120a912be88a36e06fbacf61de04c6fe92` |
| 9 | `def` | [subtypeSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/subtypesum--bf74a7c186bbe1abd85672bd.md) | 93 | `declaration-track:bf74a7c186bbe1abd85672bdb538a35f6dc89d682629d3f97d9bf8dd282f8092` |
| 10 | `abbrev` | [sumCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcongr--650584d18201212ec52324e1.md) | 107 | `declaration-track:650584d18201212ec52324e14d26923cc7c8cdf2cfd51c9c5ccc80b81be091ee` |
| 11 | `theorem` | [sumCongr_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcongr-apply--d51fefaadd33eedb1a6f36a0.md) | 111 | `result-track:d51fefaadd33eedb1a6f36a0da94b91f8a5c683b8608793a5a8e68043532a163` |
| 12 | `theorem` | [sumCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcongr-trans--3891cb0a7182e7dfb9df95d0.md) | 115 | `result-track:3891cb0a7182e7dfb9df95d067ff8f7868e661ea5675be434e9be8b5d07c55ec` |
| 13 | `theorem` | [sumCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcongr-symm--331697fe6d450a783feb7a09.md) | 119 | `result-track:331697fe6d450a783feb7a0929407f5040eeaa20acea516ad4c557207c5b2f22` |
| 14 | `theorem` | [sumCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcongr-refl--49659b127f4f026edf9bc729.md) | 123 | `result-track:49659b127f4f026edf9bc729998ac88c24769bbf1a563010428c143e1829434b` |
| 15 | `def` | [boolEquivPUnitSumPUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/boolequivpunitsumpunit--5df64f195f4e88be09c4a8ae.md) | 129 | `declaration-track:5df64f195f4e88be09c4a8ae4b6e510c2402156a38dcae01da84281a66bd6265` |
| 16 | `def` | [sumComm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcomm--66ec5e78a40d6a379bc4b0c6.md) | 135 | `declaration-track:66ec5e78a40d6a379bc4b0c6301543db715c0b99c026f09dc0d41f991b91f82b` |
| 17 | `theorem` | [sumComm_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcomm-symm--bb14f51114c5168cc9a71588.md) | 139 | `result-track:bb14f51114c5168cc9a71588aea1d21a67e8aaebd162694889e523bebb6b8949` |
| 18 | `def` | [sumAssoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumassoc--0ee0b6f3717a25e7795af1f0.md) | 143 | `declaration-track:0ee0b6f3717a25e7795af1f069164572fd35e499e868de47a67a54b547766f37` |
| 19 | `theorem` | [sumAssoc_apply_inl_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumassoc-apply-inl-inl--b5018ec925e80bf15e32e39e.md) | 150 | `result-track:b5018ec925e80bf15e32e39ee769eacc70542274e6cfedcfd1723746a8896e18` |
| 20 | `theorem` | [sumAssoc_apply_inl_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumassoc-apply-inl-inr--68d765fce79f50ebc5047cac.md) | 154 | `result-track:68d765fce79f50ebc5047cac417285c40178b9bdc8de0d3b54fc44e70e2d2d31` |
| 21 | `theorem` | [sumAssoc_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumassoc-apply-inr--0beeb2aba577d1b74de78ba4.md) | 158 | `result-track:0beeb2aba577d1b74de78ba4be6194b6db674cda3724ae70602bd043dee2f22f` |
| 22 | `theorem` | [sumAssoc_symm_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumassoc-symm-apply-inl--08f2de11e1e94e81adbd1876.md) | 162 | `result-track:08f2de11e1e94e81adbd1876103640da375affa7199aeb8dc56de45f3d3f201e` |
| 23 | `theorem` | [sumAssoc_symm_apply_inr_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumassoc-symm-apply-inr-inl--dc7225404c3e164a0aaefb30.md) | 166 | `result-track:dc7225404c3e164a0aaefb3025f4d761203976fa78be3d25a9c5c6ea69565f29` |
| 24 | `theorem` | [sumAssoc_symm_apply_inr_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumassoc-symm-apply-inr-inr--b92ece5010aebde3377ebe73.md) | 171 | `result-track:b92ece5010aebde3377ebe73f4559f0f85bd999f3518e9c89a42b81ed74e4a74` |
| 25 | `def` | [sumSumSumComm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumsumsumcomm--5076386e8b8a93be47d3c0e0.md) | 176 | `declaration-track:5076386e8b8a93be47d3c0e03728db842f16c1bf836bd2e022bb6ead4a336f39` |
| 26 | `theorem` | [sumSumSumComm_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumsumsumcomm-symm--ec3ecf5a41ccd871fd39fa2b.md) | 191 | `result-track:ec3ecf5a41ccd871fd39fa2b361817acbc6a5393e77035ba6dbfc9a21c9bfaa8` |
| 27 | `def` | [sumEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumempty--0629075956ed22c1f4b1e695.md) | 196 | `declaration-track:0629075956ed22c1f4b1e695dc7c21b920c305ef1412da696c5d330dfeb70d46` |
| 28 | `theorem` | [sumEmpty_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumempty-apply-inl--0abd1ba8e237b6e98dc0cd43.md) | 206 | `result-track:0abd1ba8e237b6e98dc0cd4387418486e5887efe43d5b220bd12692fa8c7c5ba` |
| 29 | `def` | [emptySum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/emptysum--b3cc549f2d1679b703546ab1.md) | 211 | `declaration-track:b3cc549f2d1679b703546ab1b07ccb7f93106a1f4da25835d9660c9077d4059b` |
| 30 | `theorem` | [emptySum_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/emptysum-apply-inr--67c05cc6330de18881c208a0.md) | 215 | `result-track:67c05cc6330de18881c208a0ad242b5dc724c160298705d023f6aa57fd2c750e` |
| 31 | `def` | [sumEquivSigmaBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumequivsigmabool--8d1a784707a174162024699b.md) | 222 | `declaration-track:8d1a784707a174162024699bd67a3dc08096929cdeed497d5258b41293a83a04` |
| 32 | `def` | [sigmaFiberEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sigmafiberequiv--8254bb199eedae5f00423b36.md) | 233 | `declaration-track:8254bb199eedae5f00423b3608d47f0d84c152d33e56286c65d086c071f51df5` |
| 33 | `def` | [sigmaEquivOptionOfInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sigmaequivoptionofinhabited--1b968c7699a4a359cba9464b.md) | 238 | `declaration-track:1b968c7699a4a359cba9464b749817b92b3fe485778da190149fffc4c079da3b` |
| 34 | `def` | [sumCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcompl--4506f64fea591e9c6beaecc5.md) | 258 | `declaration-track:4506f64fea591e9c6beaecc577c2e453a9e6eac4c175fc8faf9869855fcde502` |
| 35 | `theorem` | [sumCompl_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcompl-apply-inl--e9262adbac190799c9c5c9ee.md) | 271 | `result-track:e9262adbac190799c9c5c9ee6571a755e4e7662a2723897b2072a095fc0ca59b` |
| 36 | `theorem` | [sumCompl_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcompl-apply-inr--16e64245f938d90fb6ba7352.md) | 276 | `result-track:16e64245f938d90fb6ba7352a8197769c107e57d7ea7cbc5e500028f632ec62a` |
| 37 | `theorem` | [sumCompl_apply_symm_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcompl-apply-symm-of-pos--a5444f9973ccc1eb4a5a3f36.md) | 281 | `result-track:a5444f9973ccc1eb4a5a3f36aab9919115bae82495b5b9a6b2c3ba8e1cff7b12` |
| 38 | `theorem` | [sumCompl_apply_symm_of_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumcompl-apply-symm-of-neg--c80278716573154e59f5c5ff.md) | 286 | `result-track:c80278716573154e59f5c5ff6d1097648f9e531f8cd3045d33e729ae44c62b9b` |
| 39 | `def` | [prodSumDistrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/prodsumdistrib--802aa4eddcc92471fe9c08a4.md) | 297 | `declaration-track:802aa4eddcc92471fe9c08a490b91cb9d1856f79bb772a893184b532dfbdd05f` |
| 40 | `theorem` | [prodSumDistrib_apply_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/prodsumdistrib-apply-left--1a9175f95969f6fdf73a1a8d.md) | 304 | `result-track:1a9175f95969f6fdf73a1a8da4e0dfae2865b38de2d8cea866b2252554c5fc6b` |
| 41 | `theorem` | [prodSumDistrib_apply_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/prodsumdistrib-apply-right--a555e70b3ef8f6f86f59f9b1.md) | 309 | `result-track:a555e70b3ef8f6f86f59f9b1b6643371437ec2a132f55bb74f223b185fe92f3b` |
| 42 | `theorem` | [prodSumDistrib_symm_apply_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/prodsumdistrib-symm-apply-left--5d475e5a054359dd371e2950.md) | 314 | `result-track:5d475e5a054359dd371e295062aadb382f71c1cdadd3f13a54d31134ba66ed9b` |
| 43 | `theorem` | [prodSumDistrib_symm_apply_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/prodsumdistrib-symm-apply-right--61f51711bff0251165068f1c.md) | 319 | `result-track:61f51711bff0251165068f1c41dd8286ce7201cd8a73bc0d79254b2e50e4a4c2` |
| 44 | `def` | [sigmaSumDistrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sigmasumdistrib--bdab6b4bf3f553d98a5700f0.md) | 326 | `declaration-track:bdab6b4bf3f553d98a5700f0fee0f2d5ff520a317ed0dc1d2dde2c68c0394800` |
| 45 | `def` | [sumSigmaDistrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/declarations/sumsigmadistrib--77af1b983b4d6bad07b36c85.md) | 335 | `declaration-track:77af1b983b4d6bad07b36c85a6290adbcb8f013195e773e5de997236d2bbd265` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
