# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Submatrix.Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9ee3123f42a1a2955379f193b980a44fd3266e6",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9ee3123f42a1a2955379f193b980a44fd3266e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/extractsubmatrix--60ce3a27ed0be47081faa324.md) | 21 | `declaration-track:60ce3a27ed0be47081faa324e89193cda3690b87d668921af79e14a253b847c3` |
| 2 | `theorem` | [extractSubmatrix_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/extractsubmatrix-apply--f38e2436abf77e4835625b6c.md) | 26 | `result-track:f38e2436abf77e4835625b6c5179ea7ba6e606fdf6e9d79b0b847efdd0160403` |
| 3 | `def` | [implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/implantsubmatrix--87cf7387dd8dde0b239eaf10.md) | 33 | `declaration-track:87cf7387dd8dde0b239eaf102b5bdd91f42cd931bb32c26aeb59f6019d4d35db` |
| 4 | `theorem` | [implantSubmatrix_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/implantsubmatrix-inside--827fa384a54e642f999b9d30.md) | 42 | `result-track:827fa384a54e642f999b9d307deaad9146f866ab1b493eedb0fdda8ecb091986` |
| 5 | `theorem` | [extractSubmatrix_implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/extractsubmatrix-implantsubmatrix--caa41daeaab80fa487f4977c.md) | 52 | `result-track:caa41daeaab80fa487f4977c4c6ae070bb20e70bc9b9b3429ed4c07132a476f1` |
| 6 | `theorem` | [implantSubmatrix_extractSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/implantsubmatrix-extractsubmatrix--7b1313689b727856f61da874.md) | 62 | `result-track:7b1313689b727856f61da87448bc29d5af13474734bd795d6c923347888703c6` |
| 7 | `theorem` | [implantSubmatrix_outside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/implantsubmatrix-outside--54e268f163544509a7670e40.md) | 82 | `result-track:54e268f163544509a7670e400d8507edccc81799882f7f5b78656568827b4233` |
| 8 | `theorem` | [implantSubmatrix_overwrite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/implantsubmatrix-overwrite--7b946841e8e71427b195ffaf.md) | 98 | `result-track:7b946841e8e71427b195ffaf5edce1d8049b78bd834183f0099eccfb6811f2d8` |
| 9 | `def` | [differenceSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/differencesupport--ce15ab736937c8297e037bf1.md) | 109 | `declaration-track:ce15ab736937c8297e037bf1ff4ba576c10988e959939c89006b0e3dda28054a` |
| 10 | `theorem` | [mem_differenceSupport_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/mem-differencesupport-iff--5f05f28acfe84b0dd753c7d2.md) | 112 | `result-track:5f05f28acfe84b0dd753c7d2ce3681cdf66a6d8f216d205371c0edcad7050047` |
| 11 | `theorem` | [implant_differenceSupport_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/implant-differencesupport-inside--7d5d6aed8079a618daef1e31.md) | 117 | `result-track:7d5d6aed8079a618daef1e317015755865915f3736a42b62107a6c2f569f2e3e` |
| 12 | `def` | [RowUnique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/rowunique--214ec3b71c3dca53c06ba7e5.md) | 131 | `declaration-track:214ec3b71c3dca53c06ba7e5800126437056e85f10fd284a9e6344a149c08e9e` |
| 13 | `def` | [ColumnUnique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/columnunique--cfb0b6d6389c157f4383a007.md) | 135 | `declaration-track:cfb0b6d6389c157f4383a007c43723c5f1481d11ce0a90de23d33087ca63db71` |
| 14 | `structure` | [SubmatrixSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/submatrixsurgery--cd2d2b0cf7e913a648b5c15c.md) | 145 | `declaration-track:cd2d2b0cf7e913a648b5c15c66d319a5a8ee45b0513e02448b4122c9cacbabcb` |
| 15 | `def` | [replace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/replace--4259ecb8cd39d9337cfdb8ad.md) | 159 | `declaration-track:4259ecb8cd39d9337cfdb8ad98b8b5eb2e3d65e316941e602196b5984476fa46` |
| 16 | `theorem` | [replace_result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/replace-result--2fa958c74f8dbb06c6c0a521.md) | 169 | `result-track:2fa958c74f8dbb06c6c0a5214064dd2f134d6a723847a206f37277d2b1cf8cb1` |
| 17 | `theorem` | [difference_support_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/difference-support-inside--548e2838c38ca708b432f1e5.md) | 175 | `result-track:548e2838c38ca708b432f1e5d54a7f694ab31fe456c6a0fb953a0c748d074a03` |
| 18 | `structure` | [CertifiedActionMatrixSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/certifiedactionmatrixsurgery--eb8c2b0bf44e3977b90ad1a5.md) | 186 | `declaration-track:eb8c2b0bf44e3977b90ad1a59b6196ac833b2ae1db1d68162e9b29ba8ece0a1b` |
| 19 | `def` | [ofMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/ofmatrix--623bc429d80d4959edf4cff0.md) | 207 | `declaration-track:623bc429d80d4959edf4cff0194f65b47091922a8f9881393ba21fcb0453e08f` |
| 20 | `theorem` | [toMatrix_ofMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/tomatrix-ofmatrix--b4abc1cc0ec42bea614998fb.md) | 211 | `result-track:b4abc1cc0ec42bea614998fb72ae88a6fadc1e74dd664406d3ef5e6ff01d28f2` |
| 21 | `def` | [implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/implantsubmatrix--3807c48cfcd582b31c0cf99e.md) | 222 | `declaration-track:3807c48cfcd582b31c0cf99e1bda35d446a4185daca88615b6cff4849dc94022` |
| 22 | `theorem` | [implantSubmatrix_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/implantsubmatrix-spec--a30a99e4e621d8633d507419.md) | 229 | `result-track:a30a99e4e621d8633d5074197301f48ae935b03e0f7090f37d64c5da3606d7c9` |
| 23 | `structure` | [BitMatrix.Surgery.ArrayBackedRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/bitmatrix-surgery-arraybackedrefinement--d575f5d83478201f5c35f8b6.md) | 244 | `declaration-track:d575f5d83478201f5c35f8b6d5c47f51d8dea3fe2750c530472ad357c793bcfa` |
| 24 | `def` | [replace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/replace--e50a7541a9f61d6a8b852edf.md) | 259 | `declaration-track:e50a7541a9f61d6a8b852edf2088b934cc86837f9f75667a068b71789c2f1481` |
| 25 | `theorem` | [replace_result_refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/declarations/replace-result-refines--240f875079322e29f5367640.md) | 272 | `result-track:240f875079322e29f5367640c7c55f2e533c695d0778ad4b6dde67752e6a7d86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
