# Verification target: GRWTSK.Analysis.MeasureTheory.Prod.Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b431b4bc0f51b61638f97f50660c7a184d302fe",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b431b4bc0f51b61638f97f50660c7a184d302fe`.

Source path: `GRWTSK/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeasurableEquiv.shearMulRight](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurableequiv-shearmulright--3561aa553f2d8cde2f4bf01e.md) | 57 | `declaration-track:3561aa553f2d8cde2f4bf01e074bd1790c662352549336e053391dc67d3c6f46` |
| 2 | `def` | [MeasurableEquiv.shearDivRight](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurableequiv-sheardivright--d246172b4b89e280fed94c2a.md) | 65 | `declaration-track:d246172b4b89e280fed94c2a6177f053ce4699d00dca1d43e7b0fb40709ecfc4` |
| 3 | `theorem` | [measurePreserving_prod_mul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-prod-mul--78cf924890c8645d263f7084.md) | 83 | `result-track:78cf924890c8645d263f70844509738c3b3754693386e4746a9f45f9eccef376` |
| 4 | `theorem` | [measurePreserving_prod_mul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-prod-mul-swap--4a3027fd26ab9dc598f55360.md) | 93 | `result-track:4a3027fd26ab9dc598f55360272037fc2cb70aaeb9904c9d1f8a6419ef950614` |
| 5 | `theorem` | [measurable_measure_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurable-measure-mul-right--8384de130fa02858ccf564f1.md) | 98 | `result-track:8384de130fa02858ccf564f108315c7475ed76eff1e7dcc2411a7b6a984c2c0e` |
| 6 | `theorem` | [measurePreserving_prod_inv_mul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-prod-inv-mul--d60dff9d9909866830896e66.md) | 115 | `result-track:d60dff9d9909866830896e664ae3f879f5d48a8351c6ca82eb7e8bd91c4fe22f` |
| 7 | `theorem` | [measurePreserving_prod_inv_mul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-prod-inv-mul-swap--4b2051bb3765756dc6fcb0f1.md) | 126 | `result-track:4b2051bb3765756dc6fcb0f1c28beaff6eb095cdc3552c23ca24a000713d943c` |
| 8 | `theorem` | [measurePreserving_mul_prod_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-mul-prod-inv--0e9f7b7f38e28e937aa7d627.md) | 135 | `result-track:0e9f7b7f38e28e937aa7d627d795cbc03a52c1be16b19ac3bbb5d8dfed730400` |
| 9 | `theorem` | [quasiMeasurePreserving_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/quasimeasurepreserving-inv--7fe954c6c4a69bd996729300.md) | 143 | `result-track:7fe954c6c4a69bd996729300e41c075558fb405eac346b0352ee4813a7a8c7a9` |
| 10 | `theorem` | [measure_inv_null](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measure-inv-null--a2c45c97506a4d9d8fee815f.md) | 157 | `result-track:a2c45c97506a4d9d8fee815fc01f5fd86874bec51e148230dc17aaf5a54286b4` |
| 11 | `theorem` | [inv_ae](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/inv-ae--3505981781605eb071cb9b6e.md) | 163 | `result-track:3505981781605eb071cb9b6e14d4c5a584544e7a777a3d07eece395910cc2636` |
| 12 | `theorem` | [eventuallyConst_inv_set_ae](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/eventuallyconst-inv-set-ae--7d3c1ebc07dc1aaf9037e7e2.md) | 169 | `result-track:7d3c1ebc07dc1aaf9037e7e269ec37a25b1aed4018d1eed4f74cfd333aac4dd0` |
| 13 | `theorem` | [inv_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/inv-absolutelycontinuous--6d466bb2fa81e4d8aac1cccf.md) | 174 | `result-track:6d466bb2fa81e4d8aac1cccf971b122c971ef9d695cb726a9a995514cb95a4cf` |
| 14 | `theorem` | [absolutelyContinuous_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/absolutelycontinuous-inv--63dffb82d8b8e1f6f95bd830.md) | 178 | `result-track:63dffb82d8b8e1f6f95bd830018ecbcace3ff20d4e03ef4db0e1fd02bdfb14af` |
| 15 | `theorem` | [lintegral_lintegral_mul_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/lintegral-lintegral-mul-inv--2aee2131402a27f3e5d35797.md) | 183 | `result-track:2aee2131402a27f3e5d357970676371a5cc59d4ae590f3e8e41b2e7d79ddcb2c` |
| 16 | `theorem` | [measure_mul_right_null](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measure-mul-right-null--2e70083d92bf4092508c1b07.md) | 198 | `result-track:2e70083d92bf4092508c1b079bb25da001fd1d8302993fee709b8dd4a863c160` |
| 17 | `theorem` | [measure_mul_right_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measure-mul-right-ne-zero--16b59391c2a1ed7411b5528a.md) | 205 | `result-track:16b59391c2a1ed7411b5528af56005213ce0570b7b46ad9b379a6b67a0795f47` |
| 18 | `theorem` | [absolutelyContinuous_map_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/absolutelycontinuous-map-mul-right--7a195f8b5273f42433d5544d.md) | 209 | `result-track:7a195f8b5273f42433d5544d883693361816a1f0f95b592a9b0487d5aeb9bc09` |
| 19 | `theorem` | [absolutelyContinuous_map_div_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/absolutelycontinuous-map-div-left--8b202e4f0feaebfe08dd922e.md) | 214 | `result-track:8b202e4f0feaebfe08dd922e86f70a7fea2dacc50cdfd2b9c08469048087f8b4` |
| 20 | `theorem` | [measure_mul_lintegral_eq](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measure-mul-lintegral-eq--de29410805e75aa9feeaaf7c.md) | 224 | `result-track:de29410805e75aa9feeaaf7c2b5d07f3bf1324a1a362f7fff5be8dc782d8b72e` |
| 21 | `theorem` | [absolutelyContinuous_of_isMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/absolutelycontinuous-of-ismulleftinvariant--4e8a5e91afd0d1e53d29578a.md) | 244 | `result-track:4e8a5e91afd0d1e53d29578a3cc0e10ad08a7ac0df91dd3caa74be0184e4d6dd` |
| 22 | `theorem` | [ae_measure_preimage_mul_right_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/ae-measure-preimage-mul-right-lt-top--514a70b1cfd3ae07e8deba83.md) | 257 | `result-track:514a70b1cfd3ae07e8deba8317ef1437e90d97774585a6eebf68c8e91c7d0403` |
| 23 | `theorem` | [ae_measure_preimage_mul_right_lt_top_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/ae-measure-preimage-mul-right-lt-top-of-ne-zero--6ce16ed2c3e5952162763a40.md) | 275 | `result-track:6ce16ed2c3e5952162763a40a8835a3d0a5ae48d966d90cc9f76e254263529e5` |
| 24 | `constant` | [&#96;c&#96;](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/c--d605ffd6c17f5a7279e8c96c.md) | 295 | `declaration-track:d605ffd6c17f5a7279e8c96c3c659090ede6079e6be00647250cb9e24fe9aa5e` |
| 25 | `theorem` | [measure_lintegral_div_measure](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measure-lintegral-div-measure--ff7f26626333766067d74fc0.md) | 301 | `result-track:ff7f26626333766067d74fc06731375c581a3a6312b1ba363e9c619a7042fb46` |
| 26 | `theorem` | [measure_mul_measure_eq](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measure-mul-measure-eq--e85ed77007264be01ac9c229.md) | 313 | `result-track:e85ed77007264be01ac9c229dcecd0387232651259b5be1c53b3b5cad1d1a973` |
| 27 | `theorem` | [measure_eq_div_smul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measure-eq-div-smul--8b9fe7b34471c290dff3ab53.md) | 331 | `result-track:8b9fe7b34471c290dff3ab535a4a1e81eb7586ff041dcfe87828d8dced921804` |
| 28 | `theorem` | [measurePreserving_prod_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-prod-mul-right--2090ffa7b4ee08a1b6880fe1.md) | 344 | `result-track:2090ffa7b4ee08a1b6880fe1e9e93b89e22a329db077acc8cd2e189f95893435` |
| 29 | `theorem` | [measurePreserving_prod_mul_swap_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-prod-mul-swap-right--9c43ddb16c0582d4d7624c91.md) | 352 | `result-track:9c43ddb16c0582d4d7624c917cb1726e49cd46adec2c3609902b8072263de496` |
| 30 | `theorem` | [measurePreserving_mul_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-mul-prod--f6a2451c5de2a356cd711dfe.md) | 359 | `result-track:f6a2451c5de2a356cd711dfecba942f08b5a94845a2cb4b6f417818ff9f2437a` |
| 31 | `theorem` | [measurePreserving_prod_div](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-prod-div--01d1485e7969c100daf40d62.md) | 367 | `result-track:01d1485e7969c100daf40d62ec29190862f5194ec24935352bcab33a92c6d07e` |
| 32 | `theorem` | [measurePreserving_prod_div_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-prod-div-swap--1c3cb36ed44e91543b53d84c.md) | 374 | `result-track:1c3cb36ed44e91543b53d84ce6f7ee58c6287e8bf5e4f17a16b3047245ee6863` |
| 33 | `theorem` | [measurePreserving_div_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-div-prod--007cb0f173a98c19252e03ae.md) | 381 | `result-track:007cb0f173a98c19252e03ae99c5d23646c39cdaa82546e67cf56e591059d9e3` |
| 34 | `theorem` | [measurePreserving_mul_prod_inv_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/measurepreserving-mul-prod-inv-right--0b45b6aa39251917876b6ad5.md) | 388 | `result-track:0b45b6aa39251917876b6ad5668834a6e123c39a4fbd1c218805a1e1f9c16987` |
| 35 | `theorem` | [quasiMeasurePreserving_inv_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/quasimeasurepreserving-inv-of-right-invariant--20308068283142d98ae5528f.md) | 402 | `result-track:20308068283142d98ae5528fb641aa23edec544c3588b62531ac4127e71692cb` |
| 36 | `theorem` | [quasiMeasurePreserving_div_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/quasimeasurepreserving-div-left--b6d27bffc653c9afba8dc47e.md) | 410 | `result-track:b6d27bffc653c9afba8dc47e456e397e84ce19e39fdd155a0a393dc0c3448be7` |
| 37 | `theorem` | [quasiMeasurePreserving_div_left_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/quasimeasurepreserving-div-left-of-right-invariant--51a054f400cc8a1a7c2239ef.md) | 417 | `result-track:51a054f400cc8a1a7c2239ef8ca0a7715297ebadce3cefab2f2ea6132bbd1b9f` |
| 38 | `theorem` | [quasiMeasurePreserving_div_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/quasimeasurepreserving-div-of-right-invariant--b373bfd2d8655364946ed50a.md) | 425 | `result-track:b373bfd2d8655364946ed50a3cb3002b823953e0d134d709b8a9611bbb92d83e` |
| 39 | `theorem` | [quasiMeasurePreserving_div](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/quasimeasurepreserving-div--2286095ba7e54a6dc4ca1d3b.md) | 431 | `result-track:2286095ba7e54a6dc4ca1d3b0dd66ebccba01e8c87dcf83fee95194b37dc7391` |
| 40 | `theorem` | [quasiMeasurePreserving_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/quasimeasurepreserving-mul-right--0d1ea7a2fc7bb2da57140a18.md) | 441 | `result-track:0d1ea7a2fc7bb2da57140a18dd14fbf18355d72e222525ba3a1eb12eaa3e6b27` |
| 41 | `theorem` | [quasiMeasurePreserving_mul_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/declarations/quasimeasurepreserving-mul-left--edf6dc4f3ccb8e21fbe57131.md) | 451 | `result-track:edf6dc4f3ccb8e21fbe571315949c6185c0a7634dd3290b25edafd341413af3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
