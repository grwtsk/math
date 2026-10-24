# Verification target: GRWTSK.Algebra.LinearAlgebra.Transvection.Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e46f0b5feaf0882c66dbe82c198cb27c96eaf3f2",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e46f0b5feaf0882c66dbe82c198cb27c96eaf3f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transvection](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/transvection--da9b2f47186fefd62ea67618.md) | 78 | `declaration-track:da9b2f47186fefd62ea676188c520513728bd222ae4bffd7760a19fdd9a8a5a9` |
| 2 | `theorem` | [transvection_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/transvection-zero--0938c0e0d6ea9a35d458631c.md) | 82 | `result-track:0938c0e0d6ea9a35d458631cf009fe2bc4317031a0e4a3a0a5fcf276a582711d` |
| 3 | `theorem` | [updateRow_eq_transvection](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/updaterow-eq-transvection--1985241ad972f9f07db78218.md) | 88 | `result-track:1985241ad972f9f07db78218ec4848865c6c8d0b6090e9c17780d501fcae9873` |
| 4 | `theorem` | [transvection_mul_transvection_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/transvection-mul-transvection-same--a77911d10cc95b0edef4c906.md) | 106 | `result-track:a77911d10cc95b0edef4c906378977ababf535efbaddc7aade9cea6bbb87390e` |
| 5 | `theorem` | [transvection_mul_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/transvection-mul-apply-same--005cae1a6363db4786631678.md) | 112 | `result-track:005cae1a6363db4786631678b7df70a24b59240b7ef5729c1215308bd8c625f9` |
| 6 | `theorem` | [mul_transvection_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/mul-transvection-apply-same--707e391e30a448b370979c3f.md) | 116 | `result-track:707e391e30a448b370979c3fa29a16231dfbcfe78f664be4c3897d0f62e9a243` |
| 7 | `theorem` | [transvection_mul_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/transvection-mul-apply-of-ne--93532d7cb4160e9f70de61e8.md) | 121 | `result-track:93532d7cb4160e9f70de61e8ab728e6a510fa7f912f807c5005580ec86957896` |
| 8 | `theorem` | [mul_transvection_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/mul-transvection-apply-of-ne--b3e0101f6c517be02c1b8059.md) | 125 | `result-track:b3e0101f6c517be02c1b8059cedc23067412d9de432a8394664a4c71b7594bb4` |
| 9 | `theorem` | [det_transvection_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/det-transvection-of-ne--af896c71781f5d9f238154d9.md) | 129 | `result-track:af896c71781f5d9f238154d9bb80209d3e0691eebb8d7cae360ffe58fefa85c4` |
| 10 | `structure` | [TransvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/transvectionstruct--24c2cd3dc61e934412e43279.md) | 139 | `declaration-track:24c2cd3dc61e934412e43279cdadb904e27449272f67a27bf52ec0dde53b573c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/instance--6b9a7663a3802c51aca17fb9.md) | 144 | `declaration-track:6b9a7663a3802c51aca17fb9f5ff47fdb880404b5873fdad3a9ad7ae3a0d098c` |
| 12 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/tomatrix--3d4b1506cd475d3cf61266d9.md) | 153 | `declaration-track:3d4b1506cd475d3cf61266d95e84a5afc28be7fcbad548330f49f595fc8a6c22` |
| 13 | `theorem` | [toMatrix_mk](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/tomatrix-mk--3fb0e06a52650ef58df69c3f.md) | 157 | `result-track:3fb0e06a52650ef58df69c3f16b41dc3681587332a16ec3829200eba9d915497` |
| 14 | `theorem` | [det](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/det--0e5f4f3e74004a6c540acd37.md) | 162 | `result-track:0e5f4f3e74004a6c540acd3799ac8ccd0e2fa32808551b2063c8f8aaf796805a` |
| 15 | `theorem` | [det_toMatrix_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/det-tomatrix-prod--18f1ff7063b54a41895660e2.md) | 166 | `result-track:18f1ff7063b54a41895660e2fb886ef57edcc568b2a325e837e09696e07f3f64` |
| 16 | `def` | [inv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/inv--9504e11c58c6ecae57ab31cb.md) | 175 | `declaration-track:9504e11c58c6ecae57ab31cb035ef104cb20eab9ea291075b8df42284cf403a8` |
| 17 | `theorem` | [inv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/inv-mul--9383510551c9303372a40ef2.md) | 185 | `result-track:9383510551c9303372a40ef2a5cb63dbd8392c1e012c7a93a7b613f14ac469a7` |
| 18 | `theorem` | [mul_inv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/mul-inv--62bd8e4983b3f30f01060bb0.md) | 189 | `result-track:62bd8e4983b3f30f01060bb034248c9879f65e61853dad6e02be32adda02e916` |
| 19 | `theorem` | [reverse_inv_prod_mul_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/reverse-inv-prod-mul-prod--2a79e5bf4428c5c25efe14e3.md) | 193 | `result-track:2a79e5bf4428c5c25efe14e30612dc64955d1daea06f73ccb66f5678df827cb2` |
| 20 | `theorem` | [prod_mul_reverse_inv_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/prod-mul-reverse-inv-prod--5902dad47f2892f90fe1b048.md) | 204 | `result-track:5902dad47f2892f90fe1b04859587aa72cca03a70baad75d45861a706588a9da` |
| 21 | `theorem` | [_root_.Matrix.mem_range_scalar_of_commute_transvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/root-matrix-mem-range-scalar-of-commute-transvectionstruct--2f5b6555e927df5163d970ab.md) | 217 | `result-track:2f5b6555e927df5163d970ab2dd6033458e9ebde3f196bfa298211143ae44813` |
| 22 | `theorem` | [_root_.Matrix.mem_range_scalar_iff_commute_transvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/root-matrix-mem-range-scalar-iff-commute-transvectionstruct--88136efd2b61ac200d67c777.md) | 224 | `result-track:88136efd2b61ac200d67c777f926f790a3642ca685c49207ae040ca12e361834` |
| 23 | `def` | [sumInl](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/suminl--a2abbbd5c28232fdb5d6181c.md) | 238 | `declaration-track:a2abbbd5c28232fdb5d6181ccedd88f804825858a2c507a78b6d63542a65506f` |
| 24 | `theorem` | [toMatrix_sumInl](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/tomatrix-suminl--517199178917bdcd11546902.md) | 244 | `result-track:517199178917bdcd11546902100bd60187d3e5542c5f04bceab446feba7689f2` |
| 25 | `theorem` | [sumInl_toMatrix_prod_mul](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/suminl-tomatrix-prod-mul--0a31eda1d5d43f8ef2da0989.md) | 255 | `result-track:0a31eda1d5d43f8ef2da098903a0976461a7d7090b26251dee14ca792103c448` |
| 26 | `theorem` | [mul_sumInl_toMatrix_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/mul-suminl-tomatrix-prod--a685bc84098ed7e40d48f654.md) | 264 | `result-track:a685bc84098ed7e40d48f6546306f90a360c175e716950495b8d2621cdf60722` |
| 27 | `def` | [reindexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/reindexequiv--0b8efd1f863fdcd418cd6ddd.md) | 276 | `declaration-track:0b8efd1f863fdcd418cd6ddd0c104baeaefedd2026d6a159fa6bde40e9c6df0b` |
| 28 | `theorem` | [toMatrix_reindexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/tomatrix-reindexequiv--27374b8412251fc7ba2791a3.md) | 284 | `result-track:27374b8412251fc7ba2791a34b8fc3d7d20effb151b5872d87fd8652198f76ea` |
| 29 | `theorem` | [toMatrix_reindexEquiv_prod](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/tomatrix-reindexequiv-prod--d21fcb09bc2beed952a3b61a.md) | 293 | `result-track:d21fcb09bc2beed952a3b61a1753bc16e49235aebe9a0a53dcc951c1767e1961` |
| 30 | `def` | [listTransvecCol](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/listtransveccol--60c98b4c3ad71a9af458d54e.md) | 330 | `declaration-track:60c98b4c3ad71a9af458d54ecc8474772aada9ad8ad08d601c081247a764952d` |
| 31 | `def` | [listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/listtransvecrow--dd8859088e0bb65a6a4ab11c.md) | 336 | `declaration-track:dd8859088e0bb65a6a4ab11c8375386e7cf52dcb61ee31c184b44d97804a2047` |
| 32 | `theorem` | [length_listTransvecCol](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/length-listtransveccol--d6e2d978b91b1515ba6ae902.md) | 341 | `result-track:d6e2d978b91b1515ba6ae902bc161e85d11ce9a4a81f7e5a6ddfaf26d187700c` |
| 33 | `theorem` | [listTransvecCol_getElem](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/listtransveccol-getelem--5e0180a73b9efc8f8ea05b84.md) | 343 | `result-track:5e0180a73b9efc8f8ea05b8434e73f178b8146cb0cb20a70afb117efe5f2d919` |
| 34 | `theorem` | [length_listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/length-listtransvecrow--ae8faf702168a1ab6965e88d.md) | 350 | `result-track:ae8faf702168a1ab6965e88d8c80b48e0ad375ad8336d1ac90d1aa5ff79cc307` |
| 35 | `theorem` | [listTransvecRow_getElem](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/listtransvecrow-getelem--aa9f706f57a2eeed367d427a.md) | 352 | `result-track:aa9f706f57a2eeed367d427a6f41dd9cd0b08102d3fc618c66b06769b3aab30b` |
| 36 | `theorem` | [listTransvecCol_mul_last_row_drop](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/listtransveccol-mul-last-row-drop--78f192c3fba27ed0b4f857c9.md) | 359 | `result-track:78f192c3fba27ed0b4f857c929e2ee227d989d2e87a340d7b38ed1844290e1fb` |
| 37 | `theorem` | [listTransvecCol_mul_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/listtransveccol-mul-last-row--f556e6f659628307a6aa0db8.md) | 371 | `result-track:f556e6f659628307a6aa0db823ef5bc94b967753e24bd7f7368832243e1a7dda` |
| 38 | `theorem` | [listTransvecCol_mul_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/listtransveccol-mul-last-col--43c57da86c448ce95e3a26dd.md) | 377 | `result-track:43c57da86c448ce95e3a26dd6cd54ee1af17cc8e28e17e1278a47e7ea34fa5d1` |
| 39 | `theorem` | [mul_listTransvecRow_last_col_take](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/mul-listtransvecrow-last-col-take--417120cfa92e81e8f811b10f.md) | 422 | `result-track:417120cfa92e81e8f811b10f4971a2336e90940070d84072ca8c8391b86d0173` |
| 40 | `theorem` | [mul_listTransvecRow_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/mul-listtransvecrow-last-col--1a0b50bc9d2932ab371892ee.md) | 440 | `result-track:1a0b50bc9d2932ab371892ee1302f6251c70446de3183af47b1c0483e6a4a7b3` |
| 41 | `theorem` | [mul_listTransvecRow_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/mul-listtransvecrow-last-row--a5c230af7c004478876f0a22.md) | 448 | `result-track:a5c230af7c004478876f0a221ce93592f30e7c8718ef2dcac71ebff69fe55629` |
| 42 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_col](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/listtransveccol-mul-mul-listtransvecrow-last-col--5fd3029c2347d5e1a82e9760.md) | 495 | `result-track:5fd3029c2347d5e1a82e9760e127c340b7d9b598e2bf73b5ac5cd9c1082df85c` |
| 43 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_row](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/listtransveccol-mul-mul-listtransvecrow-last-row--bfbff38be6df0e8dc4eae5a3.md) | 506 | `result-track:bfbff38be6df0e8dc4eae5a356620190db50522fc9dfa98f544883697ed25236` |
| 44 | `theorem` | [isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/istwoblockdiagonal-listtransveccol-mul-mul-listtransvecrow--e061a59272527379eeed94f4.md) | 517 | `result-track:e061a59272527379eeed94f435b75da7ec97ac8b43fde6991f508ddd9e6abdba` |
| 45 | `theorem` | [exists_isTwoBlockDiagonal_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/exists-istwoblockdiagonal-of-ne-zero--25955cdf3804b344f58e79f5.md) | 530 | `result-track:25955cdf3804b344f58e79f544a9053328a9d5fc61aadb164df9b3e05d415bc2` |
| 46 | `theorem` | [exists_isTwoBlockDiagonal_list_transvec_mul_mul_list_transvec](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/exists-istwoblockdiagonal-list-transvec-mul-mul-list-transvec--5fa0436136764642b451269f.md) | 547 | `result-track:5fa0436136764642b451269f3ef48df4edf283d370946bb03169dbeb31042319` |
| 47 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_induction](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-induction--d9261db2fdff614942a23c00.md) | 588 | `result-track:d9261db2fdff614942a23c00a75a89f07619af5d4cc8ce3a515acb3c4973c249` |
| 48 | `theorem` | [reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/reindex-exists-list-transvec-mul-mul-list-transvec-eq-diagonal--b35369801fa406a45ee76501.md) | 616 | `result-track:b35369801fa406a45ee765012d367039e23c237774f15efc5377cb99348a1292` |
| 49 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_aux](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-aux--efd06ae41e60122d2c371a43.md) | 638 | `result-track:efd06ae41e60122d2c371a437984410160ce23dc3238f8c654951522d7e20c0e` |
| 50 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal--1c8b7e166bf8a4af15de517a.md) | 664 | `result-track:1c8b7e166bf8a4af15de517af59c3243e030eb58e54921c69741bfb58e2f4e2f` |
| 51 | `theorem` | [exists_list_transvec_mul_diagonal_mul_list_transvec](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/exists-list-transvec-mul-diagonal-mul-list-transvec--8cc2a4d42cf4447401f3f31f.md) | 673 | `result-track:8cc2a4d42cf4447401f3f31f45e01cdd55ef3e43545e4e443aaf0060426e09c3` |
| 52 | `theorem` | [diagonal_transvection_induction](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/diagonal-transvection-induction--b3f17f96d088c782785a9063.md) | 698 | `result-track:b3f17f96d088c782785a906320723e415d8fd8f710c075d623be1307c1becee3` |
| 53 | `theorem` | [diagonal_transvection_induction_of_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean/declarations/diagonal-transvection-induction-of-det-ne-zero--5bc82857f492a1b238bc05db.md) | 728 | `result-track:5bc82857f492a1b238bc05dbe108a9feb0468043698452b7825cf7bd918215cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
