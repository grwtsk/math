# Verification target: GRWTSK.Algebra.LinearAlgebra.Transvection.Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "851347c72252710a76c813eb44f1d73c3eb541bb",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `851347c72252710a76c813eb44f1d73c3eb541bb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transvection](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/transvection--f00503a12c2bb0fa9a921ac7.md) | 86 | `declaration-track:f00503a12c2bb0fa9a921ac79724f48ab4f7bd7856d101e6d167e59fd7e2459c` |
| 2 | `theorem` | [transvection_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/transvection-zero--3ca9d195a0286fa20b05543a.md) | 90 | `result-track:3ca9d195a0286fa20b05543a518f5dea97d8439543ce8bddcb00beae5f3e5f89` |
| 3 | `theorem` | [updateRow_eq_transvection](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/updaterow-eq-transvection--4aa948be79e5fc36e669bc95.md) | 96 | `result-track:4aa948be79e5fc36e669bc9574d45319994c67f9ec213d5740f9754a1699aa84` |
| 4 | `theorem` | [transvection_mul_transvection_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/transvection-mul-transvection-same--e776ae47ee34ba119e59c1b5.md) | 114 | `result-track:e776ae47ee34ba119e59c1b5871317b2756966953f056d605dbd9cb9165cf81b` |
| 5 | `theorem` | [transvection_mul_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/transvection-mul-apply-same--81374215b82635c99b638ca8.md) | 120 | `result-track:81374215b82635c99b638ca84c80f9532d231dd250780403e73c13fc19cc9462` |
| 6 | `theorem` | [mul_transvection_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/mul-transvection-apply-same--a635a28701773a8f08b2baf1.md) | 124 | `result-track:a635a28701773a8f08b2baf1823d2a134edd6bffb5ef919e7f212c3c185acc2b` |
| 7 | `theorem` | [transvection_mul_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/transvection-mul-apply-of-ne--078bb1ff4f321933c7ef3082.md) | 129 | `result-track:078bb1ff4f321933c7ef3082fe43c42fa9a4432b342716107ccffda40e6c9c7b` |
| 8 | `theorem` | [mul_transvection_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/mul-transvection-apply-of-ne--97acb9e12310a0446c638638.md) | 133 | `result-track:97acb9e12310a0446c638638e1b955709aaf5fb51488661e5b5e01ea61420cf3` |
| 9 | `theorem` | [det_transvection_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/det-transvection-of-ne--56d116b110a97fdb5cd7b76f.md) | 137 | `result-track:56d116b110a97fdb5cd7b76f246164bb790d829a3e9e3bc9067e0004f369c554` |
| 10 | `structure` | [TransvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/transvectionstruct--b35e2ef9815175306f2c3dfb.md) | 147 | `declaration-track:b35e2ef9815175306f2c3dfbd4c66cd0ad1856d60fa893ba4190fc62cbbb306f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/instance--a0108fcf325248cd59743c91.md) | 152 | `declaration-track:a0108fcf325248cd59743c91e9995040976e908c1344dac67ac38e4de1a0176a` |
| 12 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/tomatrix--52c26954918f45bed516c2e4.md) | 161 | `declaration-track:52c26954918f45bed516c2e43072c0dc8f888e81068cacaf7e78daf3071d6d12` |
| 13 | `theorem` | [toMatrix_mk](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/tomatrix-mk--ee5ddd6b9c9e1a50178f0a7d.md) | 165 | `result-track:ee5ddd6b9c9e1a50178f0a7dc6a5cbd6bb392a90c54f1c9acf49bf7c7dbc6eb5` |
| 14 | `theorem` | [det](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/det--96fa289401623203ef84b693.md) | 170 | `result-track:96fa289401623203ef84b693595866a01f8ec8716b268cade5124f4b6dc0b61d` |
| 15 | `theorem` | [det_toMatrix_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/det-tomatrix-prod--b4ed1ffeedd3428b575feb66.md) | 174 | `result-track:b4ed1ffeedd3428b575feb66cd093e92eec924727e5edb691bfb466befdb386a` |
| 16 | `def` | [inv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/inv--955839aae13b7e307f69ec66.md) | 183 | `declaration-track:955839aae13b7e307f69ec66856ba7d6b578ee446a18e74286bc5ad56fdd9891` |
| 17 | `theorem` | [inv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/inv-mul--578eeb28da64952990f1e445.md) | 193 | `result-track:578eeb28da64952990f1e445706c8cb767bfe4750b6dfd16e829dbe5dc1e656a` |
| 18 | `theorem` | [mul_inv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/mul-inv--2b9eb6d2206f572fcfd619d7.md) | 197 | `result-track:2b9eb6d2206f572fcfd619d79f758d1d016ce33cad32067d6b5a0307bbdbe2da` |
| 19 | `theorem` | [reverse_inv_prod_mul_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/reverse-inv-prod-mul-prod--09ccd864b1b5f30d375bf816.md) | 201 | `result-track:09ccd864b1b5f30d375bf816d4e0974a64b90f0334d733354aa50c18df958a94` |
| 20 | `theorem` | [prod_mul_reverse_inv_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/prod-mul-reverse-inv-prod--08fb8c2cbcdc0e6e664a5520.md) | 212 | `result-track:08fb8c2cbcdc0e6e664a552096b2fa999547dc0ad3bba3ed5e0b023aed6bdeb2` |
| 21 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.TransvectionStruct.Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.Matrix.mem_range_scalar_of_commute_transvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/root-grwtsk-algebra-linearalgebra-transvectionstruct-variant053ffe0cdf7b--092459028398efc04c61156d.md) | 225 | `result-track:092459028398efc04c61156d7df5a4c49d23997f259f5907f3c374328a2b7552` |
| 22 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.TransvectionStruct.Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.Matrix.mem_range_scalar_iff_commute_transvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/root-grwtsk-algebra-linearalgebra-transvectionstruct-variant053ffe0cdf7b--d0565ace368734448797b314.md) | 232 | `result-track:d0565ace368734448797b3144a3ce3209e9e23454ab3df0343556e548443ba51` |
| 23 | `def` | [sumInl](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/suminl--fbdf0ef82483fab3e64f319d.md) | 246 | `declaration-track:fbdf0ef82483fab3e64f319dce8f83e09fb0b95d4fdca5410d043a558b8bca59` |
| 24 | `theorem` | [toMatrix_sumInl](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/tomatrix-suminl--0eaf20fe2020b0e2371c7c2e.md) | 252 | `result-track:0eaf20fe2020b0e2371c7c2e60d35fd3ed798dd38f639c8275a035c278cba9a7` |
| 25 | `theorem` | [sumInl_toMatrix_prod_mul](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/suminl-tomatrix-prod-mul--e860f5068fd603ab13aca80e.md) | 263 | `result-track:e860f5068fd603ab13aca80ed20a2cb10bf09c0ee89121ef430ece44efa94624` |
| 26 | `theorem` | [mul_sumInl_toMatrix_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/mul-suminl-tomatrix-prod--5faae0a6909922f01a52d90a.md) | 272 | `result-track:5faae0a6909922f01a52d90a78bc6e144f8e1621978e6a4e52444a2b420d677c` |
| 27 | `def` | [reindexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/reindexequiv--f3c873cbe618240ae15ab334.md) | 284 | `declaration-track:f3c873cbe618240ae15ab334be9540ef8f7e13202aa75d29f0c4e8a517c57a94` |
| 28 | `theorem` | [toMatrix_reindexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/tomatrix-reindexequiv--59d5718d074a6322ec5d7f7a.md) | 292 | `result-track:59d5718d074a6322ec5d7f7a2a0e507effcf3a4a4d4c096a07580e7066c1b074` |
| 29 | `theorem` | [toMatrix_reindexEquiv_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/tomatrix-reindexequiv-prod--cc10177fb71719038acc18a2.md) | 301 | `result-track:cc10177fb71719038acc18a2479b54f38bd27361d24811c2d3d8aad3b655cd6b` |
| 30 | `def` | [listTransvecCol](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/listtransveccol--ac82473fd99f3acc8dd7efc2.md) | 338 | `declaration-track:ac82473fd99f3acc8dd7efc23ff4b740ab658c63840712cb69eb2092cbf25076` |
| 31 | `def` | [listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/listtransvecrow--32a94d27f9ac068dd1ac7ef5.md) | 344 | `declaration-track:32a94d27f9ac068dd1ac7ef52a8f75910c27f05e4f487ad59742934e631ab249` |
| 32 | `theorem` | [length_listTransvecCol](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/length-listtransveccol--1be94743ba751f8134d07e38.md) | 349 | `result-track:1be94743ba751f8134d07e38b5a111c37baa98954a7288530ea64ba0c2702f39` |
| 33 | `theorem` | [listTransvecCol_getElem](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/listtransveccol-getelem--aee7d44ef96970d919885a92.md) | 351 | `result-track:aee7d44ef96970d919885a92f6bf416bcdb9aed8003691288b0c48e6876fd23e` |
| 34 | `theorem` | [length_listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/length-listtransvecrow--4a40347313b26831ff476e59.md) | 358 | `result-track:4a40347313b26831ff476e59469f49bc8db5155a7d65e455cd990010698012f1` |
| 35 | `theorem` | [listTransvecRow_getElem](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/listtransvecrow-getelem--164389749ba2f2eeb6e798e9.md) | 360 | `result-track:164389749ba2f2eeb6e798e9a2548d3f408ecf23b65457189a3b32d5f0151557` |
| 36 | `theorem` | [listTransvecCol_mul_last_row_drop](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/listtransveccol-mul-last-row-drop--7a606f81183dd9f82d98482f.md) | 367 | `result-track:7a606f81183dd9f82d98482f2fbef574e2220e38135a0985ba9f7f613442424e` |
| 37 | `theorem` | [listTransvecCol_mul_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/listtransveccol-mul-last-row--f0ef4c8a1bc41b707fc778f7.md) | 379 | `result-track:f0ef4c8a1bc41b707fc778f73bc4ba7a7de2e5ec32b9dd75e51540736bc8f686` |
| 38 | `theorem` | [listTransvecCol_mul_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/listtransveccol-mul-last-col--cb124b904c2f4c208975450c.md) | 385 | `result-track:cb124b904c2f4c208975450c6799c7c6e52c2de5d30714a4bb33f71377d70a1e` |
| 39 | `theorem` | [mul_listTransvecRow_last_col_take](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/mul-listtransvecrow-last-col-take--b2821910ab16415ebe9b08fb.md) | 430 | `result-track:b2821910ab16415ebe9b08fba5676bf2f9fd784da1feec58125e8e2dda44de40` |
| 40 | `theorem` | [mul_listTransvecRow_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/mul-listtransvecrow-last-col--5d3e19ec812628569fb26225.md) | 448 | `result-track:5d3e19ec812628569fb26225c2aa6d9a6b32a6787ffabcc3da5c9c632a5f02ce` |
| 41 | `theorem` | [mul_listTransvecRow_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/mul-listtransvecrow-last-row--4a4372d35d6e6b54dc3d6550.md) | 456 | `result-track:4a4372d35d6e6b54dc3d655007a7f74f02992bb913412138e1e56c85fc14dee5` |
| 42 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/listtransveccol-mul-mul-listtransvecrow-last-col--33e9b9d166523ce976d9844c.md) | 503 | `result-track:33e9b9d166523ce976d9844c5f59ea8c8c034c4727792428bab5cb22a196f908` |
| 43 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/listtransveccol-mul-mul-listtransvecrow-last-row--adeecc09c185fa77c8b431e2.md) | 514 | `result-track:adeecc09c185fa77c8b431e25f99d960fd6981ea1c835e4b6da93a7e85fc1606` |
| 44 | `theorem` | [isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/istwoblockdiagonal-listtransveccol-mul-mul-listtransvecrow--a29d6a94214d2cbb9d4add04.md) | 525 | `result-track:a29d6a94214d2cbb9d4add0430bcf5659fec6a2bb4942b0c3ee00d56bd6fa4fc` |
| 45 | `theorem` | [exists_isTwoBlockDiagonal_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/exists-istwoblockdiagonal-of-ne-zero--b56ccfb98886c58e6460d5a8.md) | 538 | `result-track:b56ccfb98886c58e6460d5a85a075efc3a9379a28c1729db6f2c1b985c794f7a` |
| 46 | `theorem` | [exists_isTwoBlockDiagonal_list_transvec_mul_mul_list_transvec](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/exists-istwoblockdiagonal-list-transvec-mul-mul-list-transvec--8134b394258824d9a14c876a.md) | 555 | `result-track:8134b394258824d9a14c876a087912ec33734ef8da90026f2065ce9684b73147` |
| 47 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_induction](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-induction--c00bc4b6520579dd32f7e740.md) | 596 | `result-track:c00bc4b6520579dd32f7e740157cd8c44872de8eb18305f744e112861f1f3d8d` |
| 48 | `theorem` | [reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/reindex-exists-list-transvec-mul-mul-list-transvec-eq-diagonal--97e0c9fe48eee6d7176127a3.md) | 624 | `result-track:97e0c9fe48eee6d7176127a3dad34b00558ac49c99f7b028e2ee44b0ce8e42d1` |
| 49 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_aux](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-aux--1b82ef4bd58ddd8b0f987632.md) | 646 | `result-track:1b82ef4bd58ddd8b0f987632d8765576f7e3854bcd08640df43de3de615a95a9` |
| 50 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal--ad0cac8f502786770511b4e8.md) | 672 | `result-track:ad0cac8f502786770511b4e864d5e5a6fc46268437c0b17394f82a22e24d600e` |
| 51 | `theorem` | [exists_list_transvec_mul_diagonal_mul_list_transvec](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/exists-list-transvec-mul-diagonal-mul-list-transvec--d47d748879a4f5801b2596aa.md) | 681 | `result-track:d47d748879a4f5801b2596aad38539c54a56170cbe8a1a18de817002a1f8363e` |
| 52 | `theorem` | [diagonal_transvection_induction](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/diagonal-transvection-induction--786625241159c4fab1cc0be4.md) | 706 | `result-track:786625241159c4fab1cc0be4cf317a151caca268a13716cf790fa3d196c12704` |
| 53 | `theorem` | [diagonal_transvection_induction_of_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/declarations/diagonal-transvection-induction-of-det-ne-zero--4fa1d93fb2d790dfb5aa9420.md) | 736 | `result-track:4fa1d93fb2d790dfb5aa9420cbd10a0405f33f4ebd60224fdc8b80b3b44ba826` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
