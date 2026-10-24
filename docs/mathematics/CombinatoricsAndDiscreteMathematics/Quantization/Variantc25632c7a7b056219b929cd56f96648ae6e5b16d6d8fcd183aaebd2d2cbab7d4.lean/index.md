# GRWTSK.CombinatoricsAndDiscreteMathematics.Quantization.Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2ae163336eb522ead3f0c496540e380e30249d7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Quantizer](declarations/quantizer--40f169067a9c80e8ba76bcd2.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Indistinguishable](declarations/indistinguishable--26b88a9597000a6f2a4f15f6.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [indistinguishable_refl](declarations/indistinguishable-refl--651ee6a749c4e212680d1da7.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [indistinguishable_symm](declarations/indistinguishable-symm--bd7cde8a34fe04068a6d9dfe.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [indistinguishable_trans](declarations/indistinguishable-trans--7963a2c3748e15b54e106a85.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [setoid](declarations/setoid--aa8ec304597bc0105f8f8967.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [EffectiveState](declarations/effectivestate--4c5156f4633d340a16fe5f1e.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toEffective](declarations/toeffective--e30c41206fe5533015ed2ec7.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [quotientToEffective](declarations/quotienttoeffective--5c52f48fe3ce2becc632c2aa.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [quotientToEffective_mk](declarations/quotienttoeffective-mk--ba04dd6bd5b3f786cca5d221.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [quotientToEffective_injective](declarations/quotienttoeffective-injective--69ea060735502b7f5185e0ab.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [quotientToEffective_surjective](declarations/quotienttoeffective-surjective--ef1221b31bc705c0ef5fcc58.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [quotientEquivEffective](declarations/quotientequiveffective--67df2f39db51da0394d8d323.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [effectiveStates](declarations/effectivestates--07135b5ff48e4e45c1a814c2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_effectiveStates_iff](declarations/mem-effectivestates-iff--5ce0f4b719150c91e9e1d74e.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [card_effectiveStates_le_domain](declarations/card-effectivestates-le-domain--e6446785ad73751af3223cf2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [card_binMat](declarations/card-binmat--854801f0e15bd102b2985d05.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [card_effectiveStates_le_bits](declarations/card-effectivestates-le-bits--dc6d11fb0451009bcd416cc3.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ofMut](declarations/ofmut--33a939edc77a3d8cdee87a61.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ofMut_encode](declarations/ofmut-encode--f1b8173583746fbbd9a9b1c2.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ofMut_indistinguishable_iff](declarations/ofmut-indistinguishable-iff--5ed6d1ad3fa41974f88f47a2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [QuantizedMatrix](declarations/quantizedmatrix--0262dcacd9e2681bdd6f55b0.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instFintypeQuantizedMatrix](declarations/instfintypequantizedmatrix--e768f67cf2319689c17feb65.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instDecidableEqQuantizedMatrix](declarations/instdecidableeqquantizedmatrix--6dcba3ec9929d5db5951beef.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [card_quantizedMatrix](declarations/card-quantizedmatrix--0fa44f1a90a1b5c7ef7bfcdd.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [NQuantizer](declarations/nquantizer--277fe4a6ee55fff66dfebbea.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Indistinguishable](declarations/indistinguishable--ec29966db291e7cd032be7e2.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [indistinguishable_refl](declarations/indistinguishable-refl--52d35a8d186a9d8c13cd5d7b.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [indistinguishable_symm](declarations/indistinguishable-symm--277128c09cb54a793ecbd854.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [indistinguishable_trans](declarations/indistinguishable-trans--9dbab9c58767caa6a1740ce6.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [setoid](declarations/setoid--27940107356cbb3d222c91e7.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [EffectiveState](declarations/effectivestate--f3828ae618eb3be7300fd09b.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [toEffective](declarations/toeffective--ba25774c327d7fec6dd01bab.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [quotientToEffective](declarations/quotienttoeffective--67249215bb7e0833dad9dfb2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [quotientToEffective_mk](declarations/quotienttoeffective-mk--3212a65186a6457131524c70.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [quotientToEffective_injective](declarations/quotienttoeffective-injective--3f7eecce7b3e9e9d07caa51c.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [quotientToEffective_surjective](declarations/quotienttoeffective-surjective--e48574b90f66aa78d5b2f656.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [quotientEquivEffective](declarations/quotientequiveffective--d682553f15302be9f7b20188.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [effectiveStates](declarations/effectivestates--2664efc100ad024869962948.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_effectiveStates_iff](declarations/mem-effectivestates-iff--6af97e7ebb8900814b7717c9.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [card_effectiveStates_le_domain](declarations/card-effectivestates-le-domain--f2e09811f72d7ef560d21786.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [card_effectiveStates_le_resolution](declarations/card-effectivestates-le-resolution--a6dc8b62ae56117dacdf30f0.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [decodeBitPlanes](declarations/decodebitplanes--48815224f096daa16cd1960b.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [encodeBitPlanes](declarations/encodebitplanes--ff044d4f5508ab65e3dd8ce6.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [decodeBitPlanes_nonnegative](declarations/decodebitplanes-nonnegative--c5176ea7c33af1617033f281.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [decodeBitPlanes_succ](declarations/decodebitplanes-succ--5cb1102e907a117bf274e1f0.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [decodeBitPlanes_eq_ofBits](declarations/decodebitplanes-eq-ofbits--34ad3056016be28f66a31365.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [decodeBitPlanes_lt_pow](declarations/decodebitplanes-lt-pow--a8d5cbc3bf97d410016366b7.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [decodedFiniteMatrix](declarations/decodedfinitematrix--4763e8a695959da5e9ddabea.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [decodeBitPlanes_encodeBitPlanes](declarations/decodebitplanes-encodebitplanes--f816e117871d0a3bd73eae92.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [decode_encodeBitPlanes_lt_pow](declarations/decode-encodebitplanes-lt-pow--e6976b98bcba168021cd2a05.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [encodeBitPlanes_decodedFiniteMatrix](declarations/encodebitplanes-decodedfinitematrix--ceca54a9ff038c6c8808b7b9.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
