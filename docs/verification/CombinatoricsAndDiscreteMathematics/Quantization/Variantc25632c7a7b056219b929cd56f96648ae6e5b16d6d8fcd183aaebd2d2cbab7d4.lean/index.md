# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Quantization.Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2ae163336eb522ead3f0c496540e380e30249d7",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2ae163336eb522ead3f0c496540e380e30249d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizationLevel` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Quantizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quantizer--40f169067a9c80e8ba76bcd2.md) | 46 | `declaration-track:40f169067a9c80e8ba76bcd22fd0955b73037c7e6919f3fe0b4b998b3d6e9cc8` |
| 2 | `def` | [Indistinguishable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/indistinguishable--26b88a9597000a6f2a4f15f6.md) | 57 | `declaration-track:26b88a9597000a6f2a4f15f607f64fd8ee6c646954cdb9eeef4158c6238e2f04` |
| 3 | `theorem` | [indistinguishable_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/indistinguishable-refl--651ee6a749c4e212680d1da7.md) | 65 | `result-track:651ee6a749c4e212680d1da744d1501a2d35ece31bf161f69614fd3be03165bc` |
| 4 | `theorem` | [indistinguishable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/indistinguishable-symm--bd7cde8a34fe04068a6d9dfe.md) | 72 | `result-track:bd7cde8a34fe04068a6d9dfe5e9b75149b67402bf8a29e98a1bc97704b8782b5` |
| 5 | `theorem` | [indistinguishable_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/indistinguishable-trans--7963a2c3748e15b54e106a85.md) | 80 | `result-track:7963a2c3748e15b54e106a8581974bbbc8209c4918cedc236082613ae43a59c0` |
| 6 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/setoid--aa8ec304597bc0105f8f8967.md) | 92 | `declaration-track:aa8ec304597bc0105f8f89678fbfed09e3ed706571c85760f3f5ca8776503e5b` |
| 7 | `def` | [EffectiveState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/effectivestate--4c5156f4633d340a16fe5f1e.md) | 106 | `declaration-track:4c5156f4633d340a16fe5f1e877e1d73c7fdb2b61cf7437d6416a5c61bc12ea8` |
| 8 | `def` | [toEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/toeffective--e30c41206fe5533015ed2ec7.md) | 111 | `declaration-track:e30c41206fe5533015ed2ec76c50ef07febae1c7f742ea493e4b4ef9592814c8` |
| 9 | `def` | [quotientToEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotienttoeffective--5c52f48fe3ce2becc632c2aa.md) | 121 | `declaration-track:5c52f48fe3ce2becc632c2aa41a1a7a2fa7c04862d4d3ca0a1f33ade7a7146da` |
| 10 | `theorem` | [quotientToEffective_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotienttoeffective-mk--ba04dd6bd5b3f786cca5d221.md) | 131 | `result-track:ba04dd6bd5b3f786cca5d221889706fd3853ab3e17712165adb050a4f5dfe595` |
| 11 | `theorem` | [quotientToEffective_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotienttoeffective-injective--69ea060735502b7f5185e0ab.md) | 142 | `result-track:69ea060735502b7f5185e0ab3ba2a209829d723be9049e956b74664e4414fbe1` |
| 12 | `theorem` | [quotientToEffective_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotienttoeffective-surjective--ef1221b31bc705c0ef5fcc58.md) | 155 | `result-track:ef1221b31bc705c0ef5fcc5886da7075c0211036a41b8427799a16ad7ccc7f04` |
| 13 | `def` | [quotientEquivEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotientequiveffective--67df2f39db51da0394d8d323.md) | 168 | `declaration-track:67df2f39db51da0394d8d323df585470478bc05af32a7fbbffd6e9382157a442` |
| 14 | `def` | [effectiveStates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/effectivestates--07135b5ff48e4e45c1a814c2.md) | 176 | `declaration-track:07135b5ff48e4e45c1a814c2c47e55eb35c8f54319a0b7c49ca9d4858e4bece1` |
| 15 | `theorem` | [mem_effectiveStates_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/mem-effectivestates-iff--5ce0f4b719150c91e9e1d74e.md) | 183 | `result-track:5ce0f4b719150c91e9e1d74e249b69d0503a088b15e692c1857da872bc0ba8c5` |
| 16 | `theorem` | [card_effectiveStates_le_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/card-effectivestates-le-domain--e6446785ad73751af3223cf2.md) | 192 | `result-track:e6446785ad73751af3223cf2df8474e83688d6176b2339b109581d3873e959f1` |
| 17 | `theorem` | [card_binMat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/card-binmat--854801f0e15bd102b2985d05.md) | 205 | `result-track:854801f0e15bd102b2985d0550e515a5b072b7500ea3a98eae495c20e5aa5b43` |
| 18 | `theorem` | [card_effectiveStates_le_bits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/card-effectivestates-le-bits--dc6d11fb0451009bcd416cc3.md) | 217 | `result-track:dc6d11fb0451009bcd416cc39758c4c54709e614c70da4edc9cb3a24de442959` |
| 19 | `def` | [ofMut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/ofmut--33a939edc77a3d8cdee87a61.md) | 230 | `declaration-track:33a939edc77a3d8cdee87a6125ef7924d3cb662d932fb3a7d09fb27c7c41fd7b` |
| 20 | `theorem` | [ofMut_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/ofmut-encode--f1b8173583746fbbd9a9b1c2.md) | 237 | `result-track:f1b8173583746fbbd9a9b1c25dec637382bf0c8eddf08219f5b69375f5356ff7` |
| 21 | `theorem` | [ofMut_indistinguishable_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/ofmut-indistinguishable-iff--5ed6d1ad3fa41974f88f47a2.md) | 248 | `result-track:5ed6d1ad3fa41974f88f47a22b7be70e996ef4ab30c9a523a5c97b8cb06257b5` |
| 22 | `def` | [QuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quantizedmatrix--0262dcacd9e2681bdd6f55b0.md) | 268 | `declaration-track:0262dcacd9e2681bdd6f55b01f1d8919735cdb89a748c71113882c96cdf939df` |
| 23 | `instance` | [instFintypeQuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/instfintypequantizedmatrix--e768f67cf2319689c17feb65.md) | 272 | `declaration-track:e768f67cf2319689c17feb65aeb964d25c9487c697873b000e3617c717e69d6f` |
| 24 | `instance` | [instDecidableEqQuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/instdecidableeqquantizedmatrix--6dcba3ec9929d5db5951beef.md) | 278 | `declaration-track:6dcba3ec9929d5db5951beef66099cdf3f2496470d9f63946233719bf79db9a7` |
| 25 | `theorem` | [card_quantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/card-quantizedmatrix--0fa44f1a90a1b5c7ef7bfcdd.md) | 285 | `result-track:0fa44f1a90a1b5c7ef7bfcdd17d1e5910482ae400c63fc87d4dadab862340675` |
| 26 | `structure` | [NQuantizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/nquantizer--277fe4a6ee55fff66dfebbea.md) | 305 | `declaration-track:277fe4a6ee55fff66dfebbea658d9c693cf443371abc5d372ecfb279541d24fa` |
| 27 | `def` | [Indistinguishable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/indistinguishable--ec29966db291e7cd032be7e2.md) | 317 | `declaration-track:ec29966db291e7cd032be7e22824ed980d5a96d1f5aac89fcb3f27f00c76a7b5` |
| 28 | `theorem` | [indistinguishable_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/indistinguishable-refl--52d35a8d186a9d8c13cd5d7b.md) | 323 | `result-track:52d35a8d186a9d8c13cd5d7b150d267b2d84238712aa91b9d818b850d53c0cc4` |
| 29 | `theorem` | [indistinguishable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/indistinguishable-symm--277128c09cb54a793ecbd854.md) | 329 | `result-track:277128c09cb54a793ecbd8546365e6c05c5c837577630e2a6207647fc2715733` |
| 30 | `theorem` | [indistinguishable_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/indistinguishable-trans--9dbab9c58767caa6a1740ce6.md) | 336 | `result-track:9dbab9c58767caa6a1740ce6395f188ba471afa3da81c988a72a3f5b99b02a59` |
| 31 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/setoid--27940107356cbb3d222c91e7.md) | 345 | `declaration-track:27940107356cbb3d222c91e7aa266118e3e0baee9760d2577d259119ea956ad8` |
| 32 | `def` | [EffectiveState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/effectivestate--f3828ae618eb3be7300fd09b.md) | 354 | `declaration-track:f3828ae618eb3be7300fd09bb67995df38634f411f5d005e9dc8af8aca429e90` |
| 33 | `def` | [toEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/toeffective--ba25774c327d7fec6dd01bab.md) | 360 | `declaration-track:ba25774c327d7fec6dd01babd4c0fc98be7f3dc16a07f30936af8f2e02ef5a7c` |
| 34 | `def` | [quotientToEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotienttoeffective--67249215bb7e0833dad9dfb2.md) | 366 | `declaration-track:67249215bb7e0833dad9dfb2c0ca2cae5e2e9b9a36732b746e9e9b82828ddd24` |
| 35 | `theorem` | [quotientToEffective_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotienttoeffective-mk--3212a65186a6457131524c70.md) | 375 | `result-track:3212a65186a6457131524c70949ae60c0b7721c525eff4b0533a550b3a5910b8` |
| 36 | `theorem` | [quotientToEffective_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotienttoeffective-injective--3f7eecce7b3e9e9d07caa51c.md) | 382 | `result-track:3f7eecce7b3e9e9d07caa51c38970f6c351f866937385e2852c14b3b0308bd42` |
| 37 | `theorem` | [quotientToEffective_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotienttoeffective-surjective--e48574b90f66aa78d5b2f656.md) | 394 | `result-track:e48574b90f66aa78d5b2f656c902c120c92c1c76a8f24c1ebb9bff1485061fbf` |
| 38 | `def` | [quotientEquivEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/quotientequiveffective--d682553f15302be9f7b20188.md) | 403 | `declaration-track:d682553f15302be9f7b20188c902e22bf73826006bff62257c93bcc4844454d0` |
| 39 | `def` | [effectiveStates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/effectivestates--2664efc100ad024869962948.md) | 411 | `declaration-track:2664efc100ad024869962948c99245c904432fe62d1d7fa9085aa4e18236200e` |
| 40 | `theorem` | [mem_effectiveStates_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/mem-effectivestates-iff--6af97e7ebb8900814b7717c9.md) | 417 | `result-track:6af97e7ebb8900814b7717c958c296b58af794c939e830a1b96bb025066bee73` |
| 41 | `theorem` | [card_effectiveStates_le_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/card-effectivestates-le-domain--f2e09811f72d7ef560d21786.md) | 425 | `result-track:f2e09811f72d7ef560d217862aa144b9715e81a45cb3ad25da30cc9adc50a675` |
| 42 | `theorem` | [card_effectiveStates_le_resolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/card-effectivestates-le-resolution--a6dc8b62ae56117dacdf30f0.md) | 433 | `result-track:a6dc8b62ae56117dacdf30f0f16b1d7267c0284cf77187203c60bb30719ae01d` |
| 43 | `def` | [decodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/decodebitplanes--48815224f096daa16cd1960b.md) | 449 | `declaration-track:48815224f096daa16cd1960b26cb5a505dbfbed21147c73b49c624a52aceb5b7` |
| 44 | `def` | [encodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/encodebitplanes--ff044d4f5508ab65e3dd8ce6.md) | 461 | `declaration-track:ff044d4f5508ab65e3dd8ce68fd0435e2ce1d7b649d4ae1f4a5fae7fc901dc87` |
| 45 | `theorem` | [decodeBitPlanes_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/decodebitplanes-nonnegative--c5176ea7c33af1617033f281.md) | 467 | `result-track:c5176ea7c33af1617033f28171e26261570b30e2eb693431840e2ae4c07846b7` |
| 46 | `theorem` | [decodeBitPlanes_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/decodebitplanes-succ--5cb1102e907a117bf274e1f0.md) | 475 | `result-track:5cb1102e907a117bf274e1f0525475e2c0342271fce0434740397f95c025ced5` |
| 47 | `theorem` | [decodeBitPlanes_eq_ofBits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/decodebitplanes-eq-ofbits--34ad3056016be28f66a31365.md) | 491 | `result-track:34ad3056016be28f66a313659fc5c96c1d5a365a1a0fc8bf6fe295b177f3e31d` |
| 48 | `theorem` | [decodeBitPlanes_lt_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/decodebitplanes-lt-pow--a8d5cbc3bf97d410016366b7.md) | 506 | `result-track:a8d5cbc3bf97d410016366b74623306ae81966ebcde656df305a620611404039` |
| 49 | `def` | [decodedFiniteMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/decodedfinitematrix--4763e8a695959da5e9ddabea.md) | 532 | `declaration-track:4763e8a695959da5e9ddabead030267b60a26186dc80f66c2aa453397f86a84b` |
| 50 | `theorem` | [decodeBitPlanes_encodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/decodebitplanes-encodebitplanes--f816e117871d0a3bd73eae92.md) | 543 | `result-track:f816e117871d0a3bd73eae92c9d419ac796097986f9a463fe55908df01b0b9fb` |
| 51 | `theorem` | [decode_encodeBitPlanes_lt_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/decode-encodebitplanes-lt-pow--e6976b98bcba168021cd2a05.md) | 556 | `result-track:e6976b98bcba168021cd2a05480cd70fef6d5e27ceaca3ca7b93ca450431995d` |
| 52 | `theorem` | [encodeBitPlanes_decodedFiniteMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Variantc25632c7a7b056219b929cd56f96648ae6e5b16d6d8fcd183aaebd2d2cbab7d4.lean/declarations/encodebitplanes-decodedfinitematrix--ceca54a9ff038c6c8808b7b9.md) | 569 | `result-track:ceca54a9ff038c6c8808b7b962f9815b0a23ea0b42f42ce32a2fe6c63f1bdb81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
