# Verification target: GRWTSK.Algebra.LinearAlgebra.Transvection.Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48ba5b08e9e15dd90af727b6de1736331664849a",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48ba5b08e9e15dd90af727b6de1736331664849a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transvection](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/transvection--09b2cfc64a06010860bac9af.md) | 84 | `declaration-track:09b2cfc64a06010860bac9af1df383ffed6deb09fb00ba9a90b5434487f42027` |
| 2 | `theorem` | [transvection_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/transvection-zero--e87756f1577bb11d4187dd8e.md) | 89 | `result-track:e87756f1577bb11d4187dd8eb2b70f34f523c7515db33409db425a299715859a` |
| 3 | `theorem` | [updateRow_eq_transvection](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/updaterow-eq-transvection--e9911c0bb23deffa3fa50efa.md) | 96 | `result-track:e9911c0bb23deffa3fa50efae7d872bf30fda22e9a9eff6c32f15afa6d759e0d` |
| 4 | `theorem` | [transvection_mul_transvection_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/transvection-mul-transvection-same--68ee76e5ca9a5b57bbf246c1.md) | 114 | `result-track:68ee76e5ca9a5b57bbf246c10e43c81297ee96cfd5ad8f2f20297bd494186367` |
| 5 | `theorem` | [transvection_mul_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/transvection-mul-apply-same--12a0310524c12be7321fa3f3.md) | 121 | `result-track:12a0310524c12be7321fa3f31d2e3dd0cd2da91e1847c6871a3e348ab49b5554` |
| 6 | `theorem` | [mul_transvection_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/mul-transvection-apply-same--fa0afce393e44b7a978780b6.md) | 126 | `result-track:fa0afce393e44b7a978780b669a2cba70d0c1102b08162f5410d1be48ceb2a77` |
| 7 | `theorem` | [transvection_mul_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/transvection-mul-apply-of-ne--7278d29991fd0dd0ee0950a0.md) | 132 | `result-track:7278d29991fd0dd0ee0950a055649bccb4eb79a88c997f8a6b3a31f93288a47d` |
| 8 | `theorem` | [mul_transvection_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/mul-transvection-apply-of-ne--bac1bad3df2524e43bbbba7d.md) | 137 | `result-track:bac1bad3df2524e43bbbba7df4d41103ee728fd41cdb91574afe98b0d05f6a15` |
| 9 | `theorem` | [det_transvection_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/det-transvection-of-ne--acac079314919bb3cb141a09.md) | 142 | `result-track:acac079314919bb3cb141a096bc87f4f876cc4a0b870d73a3b6f04f12ca94174` |
| 10 | `structure` | [TransvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/transvectionstruct--b3a795b11d5a7167d651ead9.md) | 154 | `declaration-track:b3a795b11d5a7167d651ead9cf003c4f8fd998610997d6c23c6e122e807dfdd8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/instance--07179a984fc5be63229609d9.md) | 160 | `declaration-track:07179a984fc5be63229609d9c2d27fb6833d93ffaae7096e41b79da2808dacdb` |
| 12 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/tomatrix--8eefa96089c9ead242feb71b.md) | 169 | `declaration-track:8eefa96089c9ead242feb71b8b0adc3b0582a52c878e441c2c0621128d512c2c` |
| 13 | `theorem` | [toMatrix_mk](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/tomatrix-mk--85b8b7ed2e04661c90541345.md) | 174 | `result-track:85b8b7ed2e04661c905413452faffe3c448be3d01b2c5f73fa12d6a8fe384b2b` |
| 14 | `theorem` | [det](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/det--8537c613b06d44aad1915570.md) | 180 | `result-track:8537c613b06d44aad19155706ada03c83f55c2cce2797da4b5742a326b111324` |
| 15 | `theorem` | [det_toMatrix_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/det-tomatrix-prod--132883f59baffb2e2fe9e1cf.md) | 185 | `result-track:132883f59baffb2e2fe9e1cf21cf5dce25261febb9aca26b042b060299a37949` |
| 16 | `def` | [inv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/inv--e6466d791e0301378272e4d4.md) | 195 | `declaration-track:e6466d791e0301378272e4d48ed85ea7545e0a9ba27670fdc897fcbb6c661f4f` |
| 17 | `theorem` | [inv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/inv-mul--16a243b2e673f5ac7fc3506c.md) | 206 | `result-track:16a243b2e673f5ac7fc3506ca320b8a63d536e908ff3baa4801dc0b9cd03c588` |
| 18 | `theorem` | [mul_inv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/mul-inv--b9681782766d5488d0f71bde.md) | 211 | `result-track:b9681782766d5488d0f71bdec2e19f7d7c19bfd76eb9af139222a30e4356d64e` |
| 19 | `theorem` | [reverse_inv_prod_mul_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/reverse-inv-prod-mul-prod--8bb8fb143861dff0f64cf268.md) | 216 | `result-track:8bb8fb143861dff0f64cf268076cab4952f211edb21cbe83de10fda867854b55` |
| 20 | `theorem` | [prod_mul_reverse_inv_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/prod-mul-reverse-inv-prod--2f64d189a0b4a34a5fab479c.md) | 227 | `result-track:2f64d189a0b4a34a5fab479c4c018088b8865cf99780c8d6fd5234cf6e280d3c` |
| 21 | `def` | [sumInl](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/suminl--c957664a66d8ea8bb2b3ac4a.md) | 245 | `declaration-track:c957664a66d8ea8bb2b3ac4adf39d90dd208a01cdc3f8815ac4a5b0cb52fbf97` |
| 22 | `theorem` | [toMatrix_sumInl](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/tomatrix-suminl--439d380a473fb7cdc1429cca.md) | 252 | `result-track:439d380a473fb7cdc1429cca7e153aafbeaedb2fbe3d5ae6d41fdf6ee3e7d7d7` |
| 23 | `theorem` | [sumInl_toMatrix_prod_mul](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/suminl-tomatrix-prod-mul--03ccc8c00257b8a0ff47a6ce.md) | 264 | `result-track:03ccc8c00257b8a0ff47a6ce9e630fac21fdb854b5bd6930fcf3583dc41bac07` |
| 24 | `theorem` | [mul_sumInl_toMatrix_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/mul-suminl-tomatrix-prod--146f7aaed03b2338a6e693be.md) | 274 | `result-track:146f7aaed03b2338a6e693bec51bcc098a045a5c94edfb248234438827961332` |
| 25 | `def` | [reindexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/reindexequiv--185ae4379e48ac4410323ea9.md) | 287 | `declaration-track:185ae4379e48ac4410323ea9bcea1c5308d9c634ef46ceac74d0682652d446b7` |
| 26 | `theorem` | [toMatrix_reindexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/tomatrix-reindexequiv--3670e310791509b57b91fcfb.md) | 296 | `result-track:3670e310791509b57b91fcfb8b6cde8e72d739000029cb97bdc0373fe06ad78f` |
| 27 | `theorem` | [toMatrix_reindexEquiv_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/tomatrix-reindexequiv-prod--5e786758e720bf37ea7d49bc.md) | 306 | `result-track:5e786758e720bf37ea7d49bcd538442ce7ec2abc6639b7610e656da0e3dcf139` |
| 28 | `def` | [listTransvecCol](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/listtransveccol--83e3b192d88ed105e0794a73.md) | 343 | `declaration-track:83e3b192d88ed105e0794a731bc2768519a8a5ee3c5f1b4828f0c6cf2996403c` |
| 29 | `def` | [listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/listtransvecrow--4316468f9551758eb502a0f2.md) | 350 | `declaration-track:4316468f9551758eb502a0f282754939e09f5bb7a567f3623b1304710f4dcaeb` |
| 30 | `theorem` | [listTransvecCol_mul_last_row_drop](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/listtransveccol-mul-last-row-drop--42f502e98c7f669570f0c8a5.md) | 356 | `result-track:42f502e98c7f669570f0c8a5dcd41d2fc0a19a113f8425c7766ae1951f50ffa4` |
| 31 | `theorem` | [listTransvecCol_mul_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/listtransveccol-mul-last-row--e69da032519c9b30ed18883a.md) | 370 | `result-track:e69da032519c9b30ed18883aa449252528b443094cd863a528aae955a38e09d1` |
| 32 | `theorem` | [listTransvecCol_mul_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/listtransveccol-mul-last-col--f2f9d115d40631c8587e614e.md) | 377 | `result-track:f2f9d115d40631c8587e614e1cf433123d11fd2f3a46b8324457dd9e8845bb17` |
| 33 | `theorem` | [mul_listTransvecRow_last_col_take](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/mul-listtransvecrow-last-col-take--d2dba251565df4abc853128b.md) | 424 | `result-track:d2dba251565df4abc853128b4c9d7bb4f08327e4a23f8412a72460fe9f3c8ded` |
| 34 | `theorem` | [mul_listTransvecRow_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/mul-listtransvecrow-last-col--8bfed85235555da24861204a.md) | 442 | `result-track:8bfed85235555da24861204aa7a5e3f2ebe5268b2c87b13f29f312814d3d2232` |
| 35 | `theorem` | [mul_listTransvecRow_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/mul-listtransvecrow-last-row--9c0c674daa8355133772cd66.md) | 451 | `result-track:9c0c674daa8355133772cd66d95a1d50c51cf4bd2043f68eff961645f3cd940b` |
| 36 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/listtransveccol-mul-mul-listtransvecrow-last-col--98277eb8750cea4c1bc8c764.md) | 497 | `result-track:98277eb8750cea4c1bc8c764ab3c32b460dca0900c8620196ebfcc79e07d6e69` |
| 37 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/listtransveccol-mul-mul-listtransvecrow-last-row--3b1f4d4e1ac62fde7af5eeaa.md) | 509 | `result-track:3b1f4d4e1ac62fde7af5eeaa80d7055cfe596473049fb8655acdc666b5efd7a9` |
| 38 | `theorem` | [isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/istwoblockdiagonal-listtransveccol-mul-mul-listtransvecrow--5be4aa2a0bf0c46dbf18e928.md) | 521 | `result-track:5be4aa2a0bf0c46dbf18e928948e50d25a84bac9c79b52bdbfc1bcb5a2bf440e` |
| 39 | `theorem` | [exists_isTwoBlockDiagonal_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/exists-istwoblockdiagonal-of-ne-zero--24cef504b17db97b8404452b.md) | 535 | `result-track:24cef504b17db97b8404452b9baeefe9d92449890c148db03aa319893b5c91a1` |
| 40 | `theorem` | [exists_isTwoBlockDiagonal_list_transvec_mul_mul_list_transvec](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/exists-istwoblockdiagonal-list-transvec-mul-mul-list-transvec--d3720a4bce284546063bffbb.md) | 553 | `result-track:d3720a4bce284546063bffbbaf88e9fe18b5c92076b596097930f16e01ad67e7` |
| 41 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_induction](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-induction--c2a427da5bd98c68cc61e00c.md) | 595 | `result-track:c2a427da5bd98c68cc61e00cdf84be272c9a6811ffa8aaff70cdeb73656cc061` |
| 42 | `theorem` | [reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/reindex-exists-list-transvec-mul-mul-list-transvec-eq-diagonal--dbef46e6fe07627f5bdf4fe4.md) | 625 | `result-track:dbef46e6fe07627f5bdf4fe48c3156600634db09cfd5155e94b29d8b58e970b8` |
| 43 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_aux](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-aux--5444f4ec7c4b85fdf85ddaf0.md) | 648 | `result-track:5444f4ec7c4b85fdf85ddaf03330ce38a1fdbab8a491dd775a7ef0a1ca55509c` |
| 44 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal--944a5dc44e1663814b150d79.md) | 669 | `result-track:944a5dc44e1663814b150d798fa9356d62fb84e726e71be35206eda3cb22b175` |
| 45 | `theorem` | [exists_list_transvec_mul_diagonal_mul_list_transvec](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/exists-list-transvec-mul-diagonal-mul-list-transvec--5261b1826a993e33f1ee41b5.md) | 679 | `result-track:5261b1826a993e33f1ee41b51ce9951ffbb299ccfbfb6e1a650e8856da1eb32f` |
| 46 | `theorem` | [diagonal_transvection_induction](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/diagonal-transvection-induction--657723aa79f1fb51d7c13fbe.md) | 705 | `result-track:657723aa79f1fb51d7c13fbe9488bf8ae3e1ac23fa44d0baa9c989e130dce953` |
| 47 | `theorem` | [diagonal_transvection_induction_of_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/declarations/diagonal-transvection-induction-of-det-ne-zero--2a11aab421bc30f63449ba3e.md) | 733 | `result-track:2a11aab421bc30f63449ba3e9718d098084a02e600be8a77640344e98715c52f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
