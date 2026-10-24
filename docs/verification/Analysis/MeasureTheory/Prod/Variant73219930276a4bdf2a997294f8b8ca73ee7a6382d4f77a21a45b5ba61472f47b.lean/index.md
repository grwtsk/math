# Verification target: GRWTSK.Analysis.MeasureTheory.Prod.Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16a4065bfb41689e592b6a16c2146123b88df3de",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16a4065bfb41689e592b6a16c2146123b88df3de`.

Source path: `GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Prod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Measure` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeasurableEquiv.shearMulRight](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurableequiv-shearmulright--5637cbcf18ad9fe0f826a358.md) | 64 | `declaration-track:5637cbcf18ad9fe0f826a35878db0e79bd278597f2e83e6403bee5258ff6f560` |
| 2 | `def` | [MeasurableEquiv.shearDivRight](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurableequiv-sheardivright--2a9e307bdb5c29100b422ee1.md) | 74 | `declaration-track:2a9e307bdb5c29100b422ee128330c7754693cc3cde4231550a8ed58dfe4043a` |
| 3 | `theorem` | [measurePreserving_prod_mul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-prod-mul--c3c0919cbafac0a20007217d.md) | 94 | `result-track:c3c0919cbafac0a20007217d72fbf6f9ccccc2ae5623855a197c6a7326f25b54` |
| 4 | `theorem` | [measurePreserving_prod_mul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-prod-mul-swap--456d29e28455c09f9fee26ff.md) | 106 | `result-track:456d29e28455c09f9fee26ffabc5fcf28b200b367deefa00f691b2c00779fd19` |
| 5 | `theorem` | [measurable_measure_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurable-measure-mul-right--bddec8e5d0c305e5d57dfc11.md) | 113 | `result-track:bddec8e5d0c305e5d57dfc1199a677ba06236aedcb3d069b131949d3811abab7` |
| 6 | `theorem` | [measurePreserving_prod_inv_mul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-prod-inv-mul--5d70c37b6997754c323e4127.md) | 132 | `result-track:5d70c37b6997754c323e41270688e38dac36534ae56a90bc5400ed81c4fcb73c` |
| 7 | `theorem` | [measurePreserving_prod_inv_mul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-prod-inv-mul-swap--95d8f26eaad09d4502dbf198.md) | 145 | `result-track:95d8f26eaad09d4502dbf1985fec5864ccd4c6259ad80afc7af84c15f3a439ac` |
| 8 | `theorem` | [measurePreserving_mul_prod_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-mul-prod-inv--d668eb14b977794294ee3aad.md) | 156 | `result-track:d668eb14b977794294ee3aad9d8a7337d4ca72d41ad330935f233a2e080a1c43` |
| 9 | `theorem` | [quasiMeasurePreserving_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/quasimeasurepreserving-inv--83cebb0537cc1bab113960cd.md) | 166 | `result-track:83cebb0537cc1bab113960cda1c9e208372a295b826fa637d4e58e3601713c92` |
| 10 | `theorem` | [measure_inv_null](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measure-inv-null--4026f69819a9c7cd9f0cdbd7.md) | 182 | `result-track:4026f69819a9c7cd9f0cdbd765382685b687ba4cbe4f3f3c40572a10f8ceafa3` |
| 11 | `theorem` | [inv_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/inv-absolutelycontinuous--c011a9ebd097c00e2ab2ab63.md) | 190 | `result-track:c011a9ebd097c00e2ab2ab63e19735540ad807fbe16bc9fc76440aabcd798e15` |
| 12 | `theorem` | [absolutelyContinuous_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/absolutelycontinuous-inv--8c1cfc644d94a3b1675dbd56.md) | 196 | `result-track:8c1cfc644d94a3b1675dbd56bb23f9cb5f10d42e76488451d29caf79f33560da` |
| 13 | `theorem` | [lintegral_lintegral_mul_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/lintegral-lintegral-mul-inv--cdbaa0ec7ffcc43934b3e356.md) | 203 | `result-track:cdbaa0ec7ffcc43934b3e35619eac97fc04b0e24a5a4620c0a72fe7d4f1a90e6` |
| 14 | `theorem` | [measure_mul_right_null](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measure-mul-right-null--e6327c6e5aedd3fa570ebc58.md) | 220 | `result-track:e6327c6e5aedd3fa570ebc58e3248e7041cf542e28c4a4927ce0c067dd09cb2b` |
| 15 | `theorem` | [measure_mul_right_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measure-mul-right-ne-zero--7ce9126f4be186494da5f09a.md) | 229 | `result-track:7ce9126f4be186494da5f09a00ad23ccacadc3fdeba706e7f45153a1388a01e1` |
| 16 | `theorem` | [absolutelyContinuous_map_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/absolutelycontinuous-map-mul-right--d262ae22fd75e827966eee5e.md) | 235 | `result-track:d262ae22fd75e827966eee5e76dcbdc113e328dc08fdd661abaaa5dcab160bed` |
| 17 | `theorem` | [absolutelyContinuous_map_div_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/absolutelycontinuous-map-div-left--48692428b70294df9d4eae17.md) | 242 | `result-track:48692428b70294df9d4eae17026811a44bec6343ab2297a71ba8e776286c68f4` |
| 18 | `theorem` | [measure_mul_lintegral_eq](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measure-mul-lintegral-eq--2b84d27b9b0fe5f17b41fb70.md) | 252 | `result-track:2b84d27b9b0fe5f17b41fb702b34f3c1de391ebadf042b6254d41a68dc77d27b` |
| 19 | `theorem` | [absolutelyContinuous_of_isMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/absolutelycontinuous-of-ismulleftinvariant--6f4c72172fa9d8e5aca01007.md) | 274 | `result-track:6f4c72172fa9d8e5aca01007f9a1cfc042d1134662d1514788aaa19d59c9868b` |
| 20 | `theorem` | [ae_measure_preimage_mul_right_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/ae-measure-preimage-mul-right-lt-top--8038cf154f7895b4ab89a52c.md) | 284 | `result-track:8038cf154f7895b4ab89a52cdde4a3b6528a2268f698e8f4f303420fcb6141bb` |
| 21 | `theorem` | [ae_measure_preimage_mul_right_lt_top_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/ae-measure-preimage-mul-right-lt-top-of-ne-zero--ecd1591c9e23f971982cef0a.md) | 301 | `result-track:ecd1591c9e23f971982cef0a5330f932970d43dc1ceaf80c8cc79708cdb864e5` |
| 22 | `constant` | [&#96;c&#96;](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/c--7ac2ff0c28a37673f72bb623.md) | 324 | `declaration-track:7ac2ff0c28a37673f72bb62304b89d220f72f3fe21d94550116c2d6d1238f77f` |
| 23 | `theorem` | [measure_lintegral_div_measure](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measure-lintegral-div-measure--d241febfc9abab3d5f7c0224.md) | 330 | `result-track:d241febfc9abab3d5f7c0224d112db87db17037d4f2f24a78b38101ddfd2fcec` |
| 24 | `theorem` | [measure_mul_measure_eq](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measure-mul-measure-eq--5e6f4fdf3f080d99a0c25121.md) | 344 | `result-track:5e6f4fdf3f080d99a0c25121122f5fc15f6eace0536c8715a6c456e42e9c296a` |
| 25 | `theorem` | [measure_eq_div_smul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measure-eq-div-smul--64e5c93d69a7cb2f0f9374d1.md) | 360 | `result-track:64e5c93d69a7cb2f0f9374d1dd45ead41f3ce2db9512d1da45ef9c61dbe2190c` |
| 26 | `theorem` | [measurePreserving_prod_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-prod-mul-right--5297dc0ab2ff6c64b0758d9f.md) | 373 | `result-track:5297dc0ab2ff6c64b0758d9f5fb5caa194d36207284e5ead4374f436f4c70757` |
| 27 | `theorem` | [measurePreserving_prod_mul_swap_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-prod-mul-swap-right--0d5dd505e58323689d1a3f89.md) | 383 | `result-track:0d5dd505e58323689d1a3f89f8e03f670136f6ae81c2cb25641914c9d43a2cb3` |
| 28 | `theorem` | [measurePreserving_mul_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-mul-prod--b6c188b2529c68a668009c40.md) | 392 | `result-track:b6c188b2529c68a668009c400c33134623de33ac8a816db9d8070517b18d0232` |
| 29 | `theorem` | [measurePreserving_prod_div](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-prod-div--1551d163fe1c6819b2e9237b.md) | 402 | `result-track:1551d163fe1c6819b2e9237b99b7409a5bea92088826c5aa24b63c091a758a84` |
| 30 | `theorem` | [measurePreserving_prod_div_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-prod-div-swap--d556d547c4af7bc4bdd9beed.md) | 411 | `result-track:d556d547c4af7bc4bdd9beed2bc95be781aee9167e215bb3a4a053e7b49f09d4` |
| 31 | `theorem` | [measurePreserving_div_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-div-prod--cafffc8bad8d8071efc740ee.md) | 420 | `result-track:cafffc8bad8d8071efc740ee85631f7a9da4450139b1bb8ab65d85fdcd6d1bce` |
| 32 | `theorem` | [measurePreserving_mul_prod_inv_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/measurepreserving-mul-prod-inv-right--ac2ec9a7ab04e0a1623a3a6e.md) | 429 | `result-track:ac2ec9a7ab04e0a1623a3a6ecdc321ee0578b764613b9fa252125d3aadc4b8ec` |
| 33 | `theorem` | [quasiMeasurePreserving_inv_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/quasimeasurepreserving-inv-of-right-invariant--a107c1bd4f3a42e7413155d8.md) | 445 | `result-track:a107c1bd4f3a42e7413155d84576a87b44d1c5ef1007249293ae38d9b4856c81` |
| 34 | `theorem` | [quasiMeasurePreserving_div_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/quasimeasurepreserving-div-left--54ee34226a30d5b8cdaf7a36.md) | 455 | `result-track:54ee34226a30d5b8cdaf7a36b4681265e282a252f66c26e79785bbddb1b12c53` |
| 35 | `theorem` | [quasiMeasurePreserving_div_left_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/quasimeasurepreserving-div-left-of-right-invariant--85a23120c1eede6234363e27.md) | 464 | `result-track:85a23120c1eede6234363e27d1c1060cc1d7b99464726f947ae0a4cbaa6bdf72` |
| 36 | `theorem` | [quasiMeasurePreserving_div_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/quasimeasurepreserving-div-of-right-invariant--bf75e2677c1631fbf46f171e.md) | 474 | `result-track:bf75e2677c1631fbf46f171e311a607377297d900e360f5e1c8c85751eea888e` |
| 37 | `theorem` | [quasiMeasurePreserving_div](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/quasimeasurepreserving-div--2035e995f0fd7a0619c48065.md) | 482 | `result-track:2035e995f0fd7a0619c48065309e969789c1e596fbd570a0b45df0057f11ca20` |
| 38 | `theorem` | [quasiMeasurePreserving_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/quasimeasurepreserving-mul-right--4d1e82ddd6e3bd43513aca72.md) | 494 | `result-track:4d1e82ddd6e3bd43513aca7280819c729537304920ecafb84d2fe0a8daf970d7` |
| 39 | `theorem` | [quasiMeasurePreserving_mul_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/declarations/quasimeasurepreserving-mul-left--ea48d87d1eebab4324508a6c.md) | 506 | `result-track:ea48d87d1eebab4324508a6c6d248ba95ae6f4e3ceed67bb44db23639108af5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
