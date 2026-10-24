# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a651c3858c2f2019d411e1408ad70b95976d9735",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a651c3858c2f2019d411e1408ad70b95976d9735`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Core.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Quantization.Resolution` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Quantizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quantizer--5727590eb644de5d44c37fb6.md) | 46 | `declaration-track:5727590eb644de5d44c37fb6a5f9f6483460aa27238da40d88771d03a3933668` |
| 2 | `def` | [Indistinguishable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/indistinguishable--f41ce520e8265a54107fea63.md) | 57 | `declaration-track:f41ce520e8265a54107fea63dd6ab7376bf4b8bc68bd6cfb4db63f5912713e8a` |
| 3 | `theorem` | [indistinguishable_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/indistinguishable-refl--c63ee632f5d3414652fd0690.md) | 65 | `result-track:c63ee632f5d3414652fd069076e9edf5e695bb0634518ae3e88fdb73dfe4bbe0` |
| 4 | `theorem` | [indistinguishable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/indistinguishable-symm--731adb44406e8be8d194e4b2.md) | 72 | `result-track:731adb44406e8be8d194e4b229880f8bf8f9a30e405a79f5b4fe997fd07c1083` |
| 5 | `theorem` | [indistinguishable_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/indistinguishable-trans--e104aee762d668cb5417d38d.md) | 80 | `result-track:e104aee762d668cb5417d38df6cd50de7dd90ef0fee62b0c6731688374b9b542` |
| 6 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/setoid--e909bf8d89656c92f488b9ca.md) | 92 | `declaration-track:e909bf8d89656c92f488b9ca26667408d788835a9941cb7d46b8e2210fe6e69b` |
| 7 | `def` | [EffectiveState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/effectivestate--9a79916c9b8f416b657a3f7e.md) | 106 | `declaration-track:9a79916c9b8f416b657a3f7e427380e1122edf102058f58fad51cfec352f3184` |
| 8 | `def` | [toEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/toeffective--d88d19f6dc53979beed41d8a.md) | 111 | `declaration-track:d88d19f6dc53979beed41d8a72618fa623cdf1184e45faea7f94067e6fb04d86` |
| 9 | `def` | [quotientToEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotienttoeffective--9bf780bb17fa1c3174132b41.md) | 121 | `declaration-track:9bf780bb17fa1c3174132b41c6aa6ee836176a472b584bb579dad2531436b780` |
| 10 | `theorem` | [quotientToEffective_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotienttoeffective-mk--cf36c05be790aae9e5ad4314.md) | 131 | `result-track:cf36c05be790aae9e5ad4314e3f4c671acb93b2eee921b81228782e3b1356c7d` |
| 11 | `theorem` | [quotientToEffective_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotienttoeffective-injective--8f751026f9a88607a58884e0.md) | 142 | `result-track:8f751026f9a88607a58884e03956c1102ad20a9ca3d1ec1e7ad2066e3c78805b` |
| 12 | `theorem` | [quotientToEffective_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotienttoeffective-surjective--d56d62cf3ac36a76be143295.md) | 155 | `result-track:d56d62cf3ac36a76be1432958eb9bffffa6bc23a53a09831f5536d705b8f971e` |
| 13 | `def` | [quotientEquivEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotientequiveffective--a5079b77dcba8f4cd53ec0d0.md) | 168 | `declaration-track:a5079b77dcba8f4cd53ec0d01f170eaab63924b13e0951dabc8f612561a0a65d` |
| 14 | `def` | [effectiveStates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/effectivestates--c9680b2968d15b68335d0c95.md) | 176 | `declaration-track:c9680b2968d15b68335d0c95c7cdf7636da0a5b0eee52467cf0256ec59d65ae0` |
| 15 | `theorem` | [mem_effectiveStates_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/mem-effectivestates-iff--368feb3e999a252f7c33530e.md) | 183 | `result-track:368feb3e999a252f7c33530ef7efb31fdb8aeaf6bda022f607061a276d9f9ac1` |
| 16 | `theorem` | [card_effectiveStates_le_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/card-effectivestates-le-domain--815216e57fc2338f4b1b4f5a.md) | 192 | `result-track:815216e57fc2338f4b1b4f5a00e25cf98e9f4fd36ed63d0a1c5050b5d25c364f` |
| 17 | `theorem` | [card_bitMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/card-bitmatrix--c9823df0a875ba74f8284c97.md) | 205 | `result-track:c9823df0a875ba74f8284c974868631fd80d2f7649a1a782f3a97c7f8f9e0022` |
| 18 | `theorem` | [card_effectiveStates_le_bits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/card-effectivestates-le-bits--7a50777ff2b68dd19e5e7a2b.md) | 217 | `result-track:7a50777ff2b68dd19e5e7a2bfcac76f963ce46a449493c9d51bf095191c7cca6` |
| 19 | `def` | [ofArrayBacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/ofarraybacked--7f7fefc698858825fcf90baf.md) | 230 | `declaration-track:7f7fefc698858825fcf90baf735ad937bf96e1f77e113e9a1896eb31c0f46ff8` |
| 20 | `theorem` | [ofArrayBacked_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/ofarraybacked-encode--e272dedba8e62b768cd1fc39.md) | 237 | `result-track:e272dedba8e62b768cd1fc39b6b8f6593b1ed3e034c4b2956491f841517cebff` |
| 21 | `theorem` | [ofArrayBacked_indistinguishable_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/ofarraybacked-indistinguishable-iff--55dbee41306ed0177e785416.md) | 248 | `result-track:55dbee41306ed0177e785416f703e88f330816ca68d62e72676727a8dc88ef3d` |
| 22 | `def` | [QuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quantizedmatrix--927ee1ab88204f14b1935196.md) | 268 | `declaration-track:927ee1ab88204f14b1935196feeff1a662ec00984f9d6e35fefc3b8d469a956a` |
| 23 | `instance` | [instFintypeQuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/instfintypequantizedmatrix--7dbfbce843a3a3c4d976c168.md) | 272 | `declaration-track:7dbfbce843a3a3c4d976c168c2b8c0334e7e7de4bf7ff7d20416c3fafba3e97a` |
| 24 | `instance` | [instDecidableEqQuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/instdecidableeqquantizedmatrix--c8791ac5bad654bf5a0796c5.md) | 278 | `declaration-track:c8791ac5bad654bf5a0796c575f7f655366e463f6e754402ed4dc6d186ac74a2` |
| 25 | `theorem` | [card_quantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/card-quantizedmatrix--88831c72d180ce74cbfa15d3.md) | 285 | `result-track:88831c72d180ce74cbfa15d3f50eb307d7501c377a3b55ae9bd4727c1fdce151` |
| 26 | `structure` | [NQuantizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/nquantizer--aad859b9394bf03ee645f592.md) | 305 | `declaration-track:aad859b9394bf03ee645f592f805690e008cae1694271374891a3dce40017bb2` |
| 27 | `def` | [Indistinguishable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/indistinguishable--0b8c54b7f475b664ca8f20b6.md) | 317 | `declaration-track:0b8c54b7f475b664ca8f20b6c4e115abe6d87612568e8e389adb0bb54f35c5b9` |
| 28 | `theorem` | [indistinguishable_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/indistinguishable-refl--82abcf68a4f4cc8cc62cdda0.md) | 323 | `result-track:82abcf68a4f4cc8cc62cdda011740070a8dc4866fc302b9e172abc437ca68f71` |
| 29 | `theorem` | [indistinguishable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/indistinguishable-symm--78db1740bd2e19cefb795165.md) | 329 | `result-track:78db1740bd2e19cefb7951654ad78497a3331e66dbdbca6d1241c660d5a5c38c` |
| 30 | `theorem` | [indistinguishable_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/indistinguishable-trans--569d7cfa391550f45de50d50.md) | 336 | `result-track:569d7cfa391550f45de50d50a19dcfd1cad72d4c1e8ecf6f47f2b4681aa7a0c4` |
| 31 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/setoid--5eb3f7e811eb73ebea317e0a.md) | 345 | `declaration-track:5eb3f7e811eb73ebea317e0a670b57b44ec64a1d71daf21ad05a67cc548487c9` |
| 32 | `def` | [EffectiveState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/effectivestate--53edb4048ddc643b8dc468e1.md) | 354 | `declaration-track:53edb4048ddc643b8dc468e137d30f353ac324f2d91842c325ca740eaf4c1377` |
| 33 | `def` | [toEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/toeffective--c558362864daab8f4543a5ce.md) | 360 | `declaration-track:c558362864daab8f4543a5ce4acadf64fb552d09fb230134e9ebe51c959b6e07` |
| 34 | `def` | [quotientToEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotienttoeffective--6a094e3c8381bad624439818.md) | 366 | `declaration-track:6a094e3c8381bad624439818e4f14594ed53cf56e2e5cebaccb13b5a65597da8` |
| 35 | `theorem` | [quotientToEffective_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotienttoeffective-mk--465a07b39d8e3441e503dd1c.md) | 375 | `result-track:465a07b39d8e3441e503dd1cae2817ffd48e031135361086a6b98557388a9b13` |
| 36 | `theorem` | [quotientToEffective_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotienttoeffective-injective--8c9989e3e7462e81dfae35c2.md) | 382 | `result-track:8c9989e3e7462e81dfae35c2bd5821adc939ee620d797da62340fb1f1a0dfb65` |
| 37 | `theorem` | [quotientToEffective_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotienttoeffective-surjective--250d8440573f01449cf3e246.md) | 394 | `result-track:250d8440573f01449cf3e246da6c924d9e82d84247ab589c0c35ca2d7afc4a20` |
| 38 | `def` | [quotientEquivEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/quotientequiveffective--9471356d65689144bea2e7b7.md) | 403 | `declaration-track:9471356d65689144bea2e7b76d6ec481db25d76624112f682a2f81e6f119fbbe` |
| 39 | `def` | [effectiveStates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/effectivestates--14d216fd3d681a65e10f7a5d.md) | 411 | `declaration-track:14d216fd3d681a65e10f7a5dfb3898bafc9cae785dc19b61d5e767748574c443` |
| 40 | `theorem` | [mem_effectiveStates_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/mem-effectivestates-iff--9e49db30a857bc22dee589f1.md) | 417 | `result-track:9e49db30a857bc22dee589f1c0efe1df3a81485f7ff9bbc0884e8f721e02b965` |
| 41 | `theorem` | [card_effectiveStates_le_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/card-effectivestates-le-domain--6045a2658ae36e2eb3bfde52.md) | 425 | `result-track:6045a2658ae36e2eb3bfde5257fef95112b2903d9b1137c78e6df022cefff45c` |
| 42 | `theorem` | [card_effectiveStates_le_resolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/card-effectivestates-le-resolution--0f0efac2bb6b6136aa2b2cd6.md) | 433 | `result-track:0f0efac2bb6b6136aa2b2cd621391e2d7aa9da26e5d31823d44155febbbe8d3a` |
| 43 | `def` | [decodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/decodebitplanes--01f3eccccad2e3ef29bfbe01.md) | 449 | `declaration-track:01f3eccccad2e3ef29bfbe01997849156622f1c3bc907b1a5e579ae772c97b22` |
| 44 | `def` | [encodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/encodebitplanes--9abe8c1cfffd1d897116c92b.md) | 461 | `declaration-track:9abe8c1cfffd1d897116c92bc677957df7d207413dadcd650701b350d8c9a33e` |
| 45 | `theorem` | [decodeBitPlanes_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/decodebitplanes-nonnegative--60b263b858fed3a9895b98c2.md) | 467 | `result-track:60b263b858fed3a9895b98c2bb6c5acb0b88b1c03fb1c889e91d72aec330d371` |
| 46 | `theorem` | [decodeBitPlanes_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/decodebitplanes-succ--bb00c78698ee67b3444e075c.md) | 475 | `result-track:bb00c78698ee67b3444e075ce177c2039fd09cdc44b3b3d8279a9fa037b3d760` |
| 47 | `theorem` | [decodeBitPlanes_eq_ofBits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/decodebitplanes-eq-ofbits--41b4de00f93016a8e3e81837.md) | 491 | `result-track:41b4de00f93016a8e3e81837efe5488f37c99be76f576e293d1b559bd248ef57` |
| 48 | `theorem` | [decodeBitPlanes_lt_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/decodebitplanes-lt-pow--65487c49edc37e31a8495ce2.md) | 506 | `result-track:65487c49edc37e31a8495ce2c9dce804453c19ea6d4586470398860a7b444fff` |
| 49 | `def` | [decodedFiniteMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/decodedfinitematrix--6ce9c11003d9c041c148253c.md) | 532 | `declaration-track:6ce9c11003d9c041c148253cc653773f597c93d2b2f905c78ae5b3556d323e99` |
| 50 | `theorem` | [decodeBitPlanes_encodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/decodebitplanes-encodebitplanes--bb5ed8a9f7d54dad1968305a.md) | 543 | `result-track:bb5ed8a9f7d54dad1968305a8aa085bffc7af4f2da757597e2453c664ea8da7f` |
| 51 | `theorem` | [decode_encodeBitPlanes_lt_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/decode-encodebitplanes-lt-pow--44da9bea89bafcd9b1e3a564.md) | 556 | `result-track:44da9bea89bafcd9b1e3a5647f9361b58b0b7e5c9a8957797de5616a6f43bd27` |
| 52 | `theorem` | [encodeBitPlanes_decodedFiniteMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantf631936cfe4add0edc20debbd79b1d2944f553445c1ea79938cb73033e9fe0d6.lean/declarations/encodebitplanes-decodedfinitematrix--9c971ba959dba5581ba04698.md) | 569 | `result-track:9c971ba959dba5581ba046987ef0dcadf1887253cfc9c9171f0c21a87fc1f5d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
