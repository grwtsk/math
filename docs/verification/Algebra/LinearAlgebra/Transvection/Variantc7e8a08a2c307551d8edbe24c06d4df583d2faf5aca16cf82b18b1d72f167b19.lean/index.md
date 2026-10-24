# Verification target: GRWTSK.Algebra.LinearAlgebra.Transvection.Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "988de09fad2e152432ddd4bf1e6f388f5e904ce2",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `988de09fad2e152432ddd4bf1e6f388f5e904ce2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transvection](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/transvection--d24aa9afbdcde6ab5b05a8ea.md) | 92 | `declaration-track:d24aa9afbdcde6ab5b05a8ea074f4e351dfacc9998e599f7fc12702fb4126d50` |
| 2 | `theorem` | [transvection_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/transvection-zero--507bda84602b3acec8e52d5c.md) | 97 | `result-track:507bda84602b3acec8e52d5c13ac32655d9031e4a11e68a66e82590614b9eb4d` |
| 3 | `theorem` | [updateRow_eq_transvection](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/updaterow-eq-transvection--7dde03ed8a83bb33ee6325ed.md) | 104 | `result-track:7dde03ed8a83bb33ee6325ed3ff5b35bc406d847658c8dcae9b8e567056db59d` |
| 4 | `theorem` | [transvection_mul_transvection_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/transvection-mul-transvection-same--5e555941481fedc740fa4625.md) | 122 | `result-track:5e555941481fedc740fa4625485f88a540175cdfff6b18611bacab413f88fdcb` |
| 5 | `theorem` | [transvection_mul_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/transvection-mul-apply-same--e722c93448a4e0fcdd3c7dd0.md) | 129 | `result-track:e722c93448a4e0fcdd3c7dd0117cf51c95812a47016a85864e3e3d613abb7eed` |
| 6 | `theorem` | [mul_transvection_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/mul-transvection-apply-same--158b2a792e4f197774e70e76.md) | 134 | `result-track:158b2a792e4f197774e70e76f7014b6c9171dcb636eed99356f96ae7d61efd66` |
| 7 | `theorem` | [transvection_mul_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/transvection-mul-apply-of-ne--f71ce117944076195cd6ed08.md) | 140 | `result-track:f71ce117944076195cd6ed08ecbf64899c67f429f369866730690a304aeb8a85` |
| 8 | `theorem` | [mul_transvection_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/mul-transvection-apply-of-ne--3b6e52a836fde4ceffe28f44.md) | 145 | `result-track:3b6e52a836fde4ceffe28f44e2cf9646f2534b691422dfa820fef55947ff909a` |
| 9 | `theorem` | [det_transvection_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/det-transvection-of-ne--40db3e9198c3a30d6d6fd453.md) | 150 | `result-track:40db3e9198c3a30d6d6fd4532d01c77b27f03dbc93847f8f9db52d3607c1374f` |
| 10 | `structure` | [TransvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/transvectionstruct--d745483e3df14f8d1e574851.md) | 162 | `declaration-track:d745483e3df14f8d1e574851de62dcdd91b6a920048759915d5da8ea36738afe` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/instance--1720739bffe88a6dd0e0df55.md) | 168 | `declaration-track:1720739bffe88a6dd0e0df5581b980407dd3154424f0a8612a819ac3a40864e6` |
| 12 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/tomatrix--592e6c6d7958123e39d319bb.md) | 177 | `declaration-track:592e6c6d7958123e39d319bb0a67f66af25c4dcef95698c832a0aa713383fa08` |
| 13 | `theorem` | [toMatrix_mk](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/tomatrix-mk--c06b20e18d16f1e29796df9c.md) | 182 | `result-track:c06b20e18d16f1e29796df9c4b977ee2355f2400980abf13015c152403c3b3f5` |
| 14 | `theorem` | [det](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/det--e4eb27a66c16a63f6cc1b0aa.md) | 188 | `result-track:e4eb27a66c16a63f6cc1b0aa17fe408a23bf2de3bf9cc0c7e4dd66cb7629a5cf` |
| 15 | `theorem` | [det_toMatrix_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/det-tomatrix-prod--e1ae3ffb676527209aafa846.md) | 193 | `result-track:e1ae3ffb676527209aafa84677d5c3ee61d963bd054de354a46d1f1f1d57afc1` |
| 16 | `def` | [inv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/inv--bf77feebef619b0a988aedce.md) | 203 | `declaration-track:bf77feebef619b0a988aedce225228d5d21c6b37fd964a12ec120ae95853f39a` |
| 17 | `theorem` | [inv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/inv-mul--776366c0b7cb7d1cecd81274.md) | 214 | `result-track:776366c0b7cb7d1cecd8127433ace5a76779678fd7603890c13a9057a91b5ded` |
| 18 | `theorem` | [mul_inv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/mul-inv--a8771f53332e0d6d7c41dfd7.md) | 219 | `result-track:a8771f53332e0d6d7c41dfd7855ca2fab7b657d474799e064084430bb8e02bc3` |
| 19 | `theorem` | [reverse_inv_prod_mul_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/reverse-inv-prod-mul-prod--ea5aff30c3bc8f55b0e8c341.md) | 224 | `result-track:ea5aff30c3bc8f55b0e8c3415f6feb3fe8577cb8f0e12c2a069c662fee0448a7` |
| 20 | `theorem` | [prod_mul_reverse_inv_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/prod-mul-reverse-inv-prod--ee1697d4383f6554e5445595.md) | 235 | `result-track:ee1697d4383f6554e5445595d6d1a2a92ec5c8a30d06d6eb4b72354f4776b487` |
| 21 | `def` | [sumInl](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/suminl--10beb9b6f34c41b2068a4034.md) | 253 | `declaration-track:10beb9b6f34c41b2068a4034adea2f35ff0c69e4ab6d93150a9f044c2b530a1c` |
| 22 | `theorem` | [toMatrix_sumInl](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/tomatrix-suminl--72ab049868b2775523579662.md) | 260 | `result-track:72ab049868b277552357966207c10c0988ee4243ec1bfb8926a2e86a51801c9c` |
| 23 | `theorem` | [sumInl_toMatrix_prod_mul](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/suminl-tomatrix-prod-mul--71dc1b65f8a10877f3e9316f.md) | 272 | `result-track:71dc1b65f8a10877f3e9316fefe94490f0b1437020b31b4fd2edef71870a63de` |
| 24 | `theorem` | [mul_sumInl_toMatrix_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/mul-suminl-tomatrix-prod--0dbf04755183b7bde78028eb.md) | 282 | `result-track:0dbf04755183b7bde78028eb17d6f0046a15711b4998f6b8b3c3dabf657185fd` |
| 25 | `def` | [reindexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/reindexequiv--27eb16ebc200a935448dbaf7.md) | 295 | `declaration-track:27eb16ebc200a935448dbaf7aa1462cd6fd74672736a5dc370d725dbcbc2d99d` |
| 26 | `theorem` | [toMatrix_reindexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/tomatrix-reindexequiv--615a35e7be2a1c243314263e.md) | 304 | `result-track:615a35e7be2a1c243314263e1f0ce1b1bdd81d1da3a8d934284dc58460015913` |
| 27 | `theorem` | [toMatrix_reindexEquiv_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/tomatrix-reindexequiv-prod--32fee34ab8396b6914becf4e.md) | 314 | `result-track:32fee34ab8396b6914becf4ebf18ba80d6dcf5bb48b347015158a9f49203a024` |
| 28 | `def` | [listTransvecCol](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/listtransveccol--c7d3fecfc68949bcc035a5f9.md) | 351 | `declaration-track:c7d3fecfc68949bcc035a5f99fe1bdaca9f4af452263129b2b16bca88d5b6018` |
| 29 | `def` | [listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/listtransvecrow--863ca2603074c0439d6d685c.md) | 358 | `declaration-track:863ca2603074c0439d6d685cae7ba62d37ce0b4e9a61e127d4f013f3652532ad` |
| 30 | `theorem` | [listTransvecCol_mul_last_row_drop](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/listtransveccol-mul-last-row-drop--31c81481e4a0542c49000f7a.md) | 364 | `result-track:31c81481e4a0542c49000f7a43b9d09348743d33b65b40f967168beef5683b02` |
| 31 | `theorem` | [listTransvecCol_mul_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/listtransveccol-mul-last-row--b2dc7b50e7e444fc98d4a295.md) | 378 | `result-track:b2dc7b50e7e444fc98d4a295606332f2269b4775ba72e0694139751919207989` |
| 32 | `theorem` | [listTransvecCol_mul_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/listtransveccol-mul-last-col--7fcc5f4118f025cc487e73f0.md) | 385 | `result-track:7fcc5f4118f025cc487e73f0168cc4b38d7539a71310b16327e3023fbb596596` |
| 33 | `theorem` | [mul_listTransvecRow_last_col_take](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/mul-listtransvecrow-last-col-take--a522e020ab8b254cd758b5a2.md) | 432 | `result-track:a522e020ab8b254cd758b5a2799359b9ac10b3aa791b688fb7de0ec8f6f5b418` |
| 34 | `theorem` | [mul_listTransvecRow_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/mul-listtransvecrow-last-col--d3b0ef2c736d1c06ea2697bf.md) | 450 | `result-track:d3b0ef2c736d1c06ea2697bf6a3ddba842c795cd814e0064ce3b0861384dc7b3` |
| 35 | `theorem` | [mul_listTransvecRow_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/mul-listtransvecrow-last-row--68549d7b996428441fc42413.md) | 459 | `result-track:68549d7b996428441fc42413a0e79f1b2448d4944be4726ba5398150fcd2ee20` |
| 36 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/listtransveccol-mul-mul-listtransvecrow-last-col--89dbf7970fad71251692f0f9.md) | 505 | `result-track:89dbf7970fad71251692f0f9037011a13160d28d27d747affe7ea4f9b8d5b446` |
| 37 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/listtransveccol-mul-mul-listtransvecrow-last-row--6d3d1e382a2ed07bc2691814.md) | 517 | `result-track:6d3d1e382a2ed07bc269181497439e4c53c83139975eef23b694abbf2a998670` |
| 38 | `theorem` | [isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/istwoblockdiagonal-listtransveccol-mul-mul-listtransvecrow--5f65de77e3fdc5d9e0a2b225.md) | 529 | `result-track:5f65de77e3fdc5d9e0a2b225c3377ed471972efff9997c77c637dce764d514d1` |
| 39 | `theorem` | [exists_isTwoBlockDiagonal_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/exists-istwoblockdiagonal-of-ne-zero--ed3c9c11118eec2e3fd2ab18.md) | 543 | `result-track:ed3c9c11118eec2e3fd2ab182b7dfc8690fc324f41287569baba6cd2b61bedee` |
| 40 | `theorem` | [exists_isTwoBlockDiagonal_list_transvec_mul_mul_list_transvec](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/exists-istwoblockdiagonal-list-transvec-mul-mul-list-transvec--cc3bda62f3632b47fc0ca92f.md) | 561 | `result-track:cc3bda62f3632b47fc0ca92f09e9bc8587d379cb9b2c1ced6484c530baa44e8a` |
| 41 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_induction](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-induction--dfb7e81388c76f4bb8ac634f.md) | 603 | `result-track:dfb7e81388c76f4bb8ac634fbc89fe258e53b0709b7c9e81c88edf528f0d9292` |
| 42 | `theorem` | [reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/reindex-exists-list-transvec-mul-mul-list-transvec-eq-diagonal--cdfba890c06c39a9b4eca96a.md) | 633 | `result-track:cdfba890c06c39a9b4eca96a1bbdc6a0217ead86779f5e49f997966cd470ce33` |
| 43 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_aux](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-aux--90b93ca82f2b849f3ccf93a2.md) | 656 | `result-track:90b93ca82f2b849f3ccf93a2b2c472fdc9f9d39d6ec5628e948d4bc22786330b` |
| 44 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal--f07c0a4ae30065dafaa14790.md) | 677 | `result-track:f07c0a4ae30065dafaa14790afcd4469f8b30936234ee20ef22c0644eb9814d5` |
| 45 | `theorem` | [exists_list_transvec_mul_diagonal_mul_list_transvec](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/exists-list-transvec-mul-diagonal-mul-list-transvec--c655d5b17b06f6c464296368.md) | 687 | `result-track:c655d5b17b06f6c4642963687ffa9593d85da6d4802eceb0fa0250869a6f6ecf` |
| 46 | `theorem` | [diagonal_transvection_induction](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/diagonal-transvection-induction--118674b349dab5f3e0817cf1.md) | 713 | `result-track:118674b349dab5f3e0817cf1d58053d198d4387832eaf8e30c9801e65c83c54c` |
| 47 | `theorem` | [diagonal_transvection_induction_of_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/declarations/diagonal-transvection-induction-of-det-ne-zero--dd39c621d32e8c7a29485daf.md) | 741 | `result-track:dd39c621d32e8c7a29485daf7138abd39d2f3f54a6d47e1d875bf3486ee4127f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
