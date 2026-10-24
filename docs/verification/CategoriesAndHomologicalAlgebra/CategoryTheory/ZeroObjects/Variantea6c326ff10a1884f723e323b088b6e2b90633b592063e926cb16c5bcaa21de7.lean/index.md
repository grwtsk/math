# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ZeroObjects.Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15fadbf99624b7dbde2c71c928e68fe01a79eccf",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15fadbf99624b7dbde2c71c928e68fe01a79eccf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binaryFanZeroLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/binaryfanzeroleft--bad5b0c678c88a516d2ac669.md) | 38 | `declaration-track:bad5b0c678c88a516d2ac66985c1da1dcabcb4e903c8204c8f847d0ca5d28675` |
| 2 | `def` | [binaryFanZeroLeftIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/binaryfanzeroleftislimit--7407e82317202e30b748864b.md) | 42 | `declaration-track:7407e82317202e30b748864b2149afea399042a3de5b8723156d7ce70d8a71d8` |
| 3 | `instance` | [hasBinaryProduct_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/hasbinaryproduct-zero-left--0b4f0686b88c515ccd180491.md) | 46 | `declaration-track:0b4f0686b88c515ccd1804912d5926332dd62b9b0bafbdfa85b2a1ff8562fcaa` |
| 4 | `def` | [zeroProdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/zeroprodiso--39d5b788165651c65bfdb2c4.md) | 50 | `declaration-track:39d5b788165651c65bfdb2c43519bb6f9a9ebb8676da4a028511d12ea7c34463` |
| 5 | `theorem` | [zeroProdIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/zeroprodiso-hom--0f1c56f05b3b60fdc932d698.md) | 54 | `result-track:0f1c56f05b3b60fdc932d698be910b36b787d24b4f775093a5dae19d7c40e928` |
| 6 | `theorem` | [zeroProdIso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/zeroprodiso-inv-snd--32d37e39d1c0d6e3e50e7a49.md) | 58 | `result-track:32d37e39d1c0d6e3e50e7a4912971bea9efc1f233c58f82f2a32f169416da5da` |
| 7 | `def` | [binaryFanZeroRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/binaryfanzeroright--bee3838480b63fed7f132d29.md) | 63 | `declaration-track:bee3838480b63fed7f132d29709c0018a55680ff4c7e3d37dd3c25ed86652aeb` |
| 8 | `def` | [binaryFanZeroRightIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/binaryfanzerorightislimit--c4c01e6b0885b1ce989258a2.md) | 67 | `declaration-track:c4c01e6b0885b1ce989258a2b24c47da7a8f323245fbc21fe7c649c4810895ce` |
| 9 | `instance` | [hasBinaryProduct_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/hasbinaryproduct-zero-right--6fa8615f754a016f79760422.md) | 71 | `declaration-track:6fa8615f754a016f79760422f88ebaa00305e97b6bab53c1f38b6e2c3fce5341` |
| 10 | `def` | [prodZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/prodzeroiso--3755c6a697a74a9ca4cdb375.md) | 75 | `declaration-track:3755c6a697a74a9ca4cdb37537f1cd1acc00ef472acb568c30b78682e8ed7f1a` |
| 11 | `theorem` | [prodZeroIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/prodzeroiso-hom--3bd49042c3c303f696f3a5f3.md) | 79 | `result-track:3bd49042c3c303f696f3a5f35fe3d6822382b1608a2f6da9b672db1815158507` |
| 12 | `theorem` | [prodZeroIso_iso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/prodzeroiso-iso-inv-snd--7fe1796da3689c163baea437.md) | 83 | `result-track:7fe1796da3689c163baea4371b031fdfe2abdfd0c978953a8d7c08e0ef99a9ca` |
| 13 | `def` | [binaryCofanZeroLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/binarycofanzeroleft--0c4025f44be9bae99e1da05e.md) | 88 | `declaration-track:0c4025f44be9bae99e1da05e1689a3b233c94ef6655bc328daf7b53ea723aba6` |
| 14 | `def` | [binaryCofanZeroLeftIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/binarycofanzeroleftiscolimit--c8b3f6bfa3892241a06c3976.md) | 92 | `declaration-track:c8b3f6bfa3892241a06c3976ec3e7d50839358aececb938b28cae0e3cc7c3ec5` |
| 15 | `instance` | [hasBinaryCoproduct_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/hasbinarycoproduct-zero-left--967f2fab1c2c18412114d590.md) | 96 | `declaration-track:967f2fab1c2c18412114d590f962fb1929187c5b0a427b1848821a989da4e378` |
| 16 | `def` | [zeroCoprodIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/zerocoprodiso--34e9e1cc1b400f1bfcce2ec4.md) | 100 | `declaration-track:34e9e1cc1b400f1bfcce2ec40ce235193e2cd49d6e78681eee5af4f036df0d25` |
| 17 | `theorem` | [inr_zeroCoprodIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/inr-zerocoprodiso-hom--64557124ed6ba8ae5b9d6f3f.md) | 104 | `result-track:64557124ed6ba8ae5b9d6f3fe804549e105c74becf2bc95838b5ff0dfab9baba` |
| 18 | `theorem` | [zeroCoprodIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/zerocoprodiso-inv--4f421007ea2587281c6a022c.md) | 109 | `result-track:4f421007ea2587281c6a022c68e6ce4ba5caad0a109bb0441ee8ca3e19ffacdb` |
| 19 | `def` | [binaryCofanZeroRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/binarycofanzeroright--e9ac89a268f8bcfe5cffdd57.md) | 113 | `declaration-track:e9ac89a268f8bcfe5cffdd5721cd54b8943a584bed504bffb8096b75e47f755f` |
| 20 | `def` | [binaryCofanZeroRightIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/binarycofanzerorightiscolimit--e1cfb145031057e5ada46b6c.md) | 117 | `declaration-track:e1cfb145031057e5ada46b6c3f340c36afea66c9530b880922765c9b16336675` |
| 21 | `instance` | [hasBinaryCoproduct_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/hasbinarycoproduct-zero-right--53b6a03d5c13ec5312cbb9ba.md) | 121 | `declaration-track:53b6a03d5c13ec5312cbb9ba1f94f65551ac2def2bc642bfeb534ebd3d11555a` |
| 22 | `def` | [coprodZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/coprodzeroiso--57b64d84d645b19b075104c5.md) | 125 | `declaration-track:57b64d84d645b19b075104c5cf2c51b1303cf40a41ec7cded59cec9d56d2e400` |
| 23 | `theorem` | [inr_coprodZeroIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/inr-coprodzeroiso-hom--37e9850e85f2246b1d63032f.md) | 129 | `result-track:37e9850e85f2246b1d63032fd906fefdd21ad607ad19a5c91abaf872f4f3b47c` |
| 24 | `theorem` | [coprodZeroIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/coprodzeroiso-inv--dc3a21dcc33e5bb3ccb9e622.md) | 134 | `result-track:dc3a21dcc33e5bb3ccb9e622f922a6cd9f149a6d948bc50db35b7ab4a9663295` |
| 25 | `instance` | [hasPullback_over_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/haspullback-over-zero--331fe454532db02ecf1596f6.md) | 137 | `declaration-track:331fe454532db02ecf1596f623306b57ba15ca69b185241562fa9adbca8b5330` |
| 26 | `def` | [pullbackZeroZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/pullbackzerozeroiso--1dee91875130a9a4831def2d.md) | 143 | `declaration-track:1dee91875130a9a4831def2d605758a52ec692d25c64bd44504c07793cff36df` |
| 27 | `theorem` | [pullbackZeroZeroIso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/pullbackzerozeroiso-inv-fst--638572c83c1773bfae65f7cc.md) | 149 | `result-track:638572c83c1773bfae65f7cc4c7925891b81c468a262041ae2f4daa6b3b4201a` |
| 28 | `theorem` | [pullbackZeroZeroIso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/pullbackzerozeroiso-inv-snd--344e6d38e698a23973a5ba39.md) | 155 | `result-track:344e6d38e698a23973a5ba395e963efd1b99296a0a4c6895d2aee193225fa858` |
| 29 | `theorem` | [pullbackZeroZeroIso_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/pullbackzerozeroiso-hom-fst--b95c68d731ce584dfcdc220a.md) | 161 | `result-track:b95c68d731ce584dfcdc220aded355d030a6541571d461978cbca9870f5c4260` |
| 30 | `theorem` | [pullbackZeroZeroIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/pullbackzerozeroiso-hom-snd--8578bffb7483f25817981e6a.md) | 165 | `result-track:8578bffb7483f25817981e6aa13903c5fca8cb936e081e7447cd864af008ee88` |
| 31 | `instance` | [hasPushout_over_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/haspushout-over-zero--936cf35f068f7ec772775d3a.md) | 168 | `declaration-track:936cf35f068f7ec772775d3a417d380b4e461d229d3155a318e9110bc33258eb` |
| 32 | `def` | [pushoutZeroZeroIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/pushoutzerozeroiso--ca927c798e3b68987a313b5e.md) | 174 | `declaration-track:ca927c798e3b68987a313b5e20b9ee2dfc3681b78c83f0c35752f90e09f99edd` |
| 33 | `theorem` | [inl_pushoutZeroZeroIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/inl-pushoutzerozeroiso-hom--fcda49bdfe5cae855b138f1d.md) | 180 | `result-track:fcda49bdfe5cae855b138f1d0a5d1e6630f477fba41f1ad376f9c91171fae63d` |
| 34 | `theorem` | [inr_pushoutZeroZeroIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/inr-pushoutzerozeroiso-hom--3275c5bbddadfbebb528f4fa.md) | 186 | `result-track:3275c5bbddadfbebb528f4fa00c4bc22373ca465c398127d75b9b3a219d71b8f` |
| 35 | `theorem` | [inl_pushoutZeroZeroIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/inl-pushoutzerozeroiso-inv--01a21f33a3b3c57c2a39ad5a.md) | 192 | `result-track:01a21f33a3b3c57c2a39ad5ac5155539d1ff4ccce5e602bd97a64a7916644d6a` |
| 36 | `theorem` | [inr_pushoutZeroZeroIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/declarations/inr-pushoutzerozeroiso-inv--c40958daa78191595a8c00fe.md) | 196 | `result-track:c40958daa78191595a8c00fe739918b5c4ded8593b908ca3544fa1eba13b09c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
