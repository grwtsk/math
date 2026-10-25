# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Fin.Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62a614e19fc5041af7000302053d9c4ee1c61aa0",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62a614e19fc5041af7000302053d9c4ee1c61aa0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Option` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Equiv.Perm.decomposeFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-decomposefin--3d08df886527b5f89c16e771.md) | 22 | `declaration-track:3d08df886527b5f89c16e77112cfbc2d02eb9dffcc29504ecf9a213ae7ad77fe` |
| 2 | `theorem` | [Equiv.Perm.decomposeFin_symm_of_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-decomposefin-symm-of-refl--0c760fb40c118015975e98cd.md) | 27 | `result-track:0c760fb40c118015975e98cdc871e466475b43c8e49d6ab089b116354f4c3a18` |
| 3 | `theorem` | [Equiv.Perm.decomposeFin_symm_of_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-decomposefin-symm-of-one--3d3bb9eccb598a52c771c9be.md) | 32 | `result-track:3d3bb9eccb598a52c771c9bedf4e8eb50b8af30d485bc5d040df94a2ed08dbc2` |
| 4 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-decomposefin-symm-apply-zero--e037c74a68061cf50dc711f9.md) | 37 | `result-track:e037c74a68061cf50dc711f992e4e2dba276705eee7b22724c33b70cd1371aae` |
| 5 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-decomposefin-symm-apply-succ--4ceb1b7d44794eb4879cb646.md) | 41 | `result-track:4ceb1b7d44794eb4879cb6467e8d015d73b61226999583bcc355d61a04b27030` |
| 6 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-decomposefin-symm-apply-one--c940846171236337e060e081.md) | 51 | `result-track:c940846171236337e060e0815b1a2783267673011868b9ae5e8e863c0f019dec` |
| 7 | `theorem` | [Equiv.Perm.decomposeFin.symm_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-decomposefin-symm-sign--c0bf4eb1eba1d352413cf93d.md) | 56 | `result-track:c0bf4eb1eba1d352413cf93d7233cd611ddf46d6ae6dcdfb9c6cd329a592cd9d` |
| 8 | `theorem` | [Finset.univ_perm_fin_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/finset-univ-perm-fin-succ--fc76ebcc78a29068079ab26f.md) | 62 | `result-track:fc76ebcc78a29068079ab26f83e48b30cbb6f813d3f059e6219438ec96ccf513` |
| 9 | `theorem` | [finRotate_succ_eq_decomposeFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/finrotate-succ-eq-decomposefin--497b9fe219b67770ceeb35dd.md) | 78 | `result-track:497b9fe219b67770ceeb35dd714f62e1845483a449d45d17ba62bd80dc1baaa2` |
| 10 | `theorem` | [sign_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/sign-finrotate--a4c5ffcaa7b5d0a0f8ec39ad.md) | 92 | `result-track:a4c5ffcaa7b5d0a0f8ec39ad4cc325cbd75b385e0900d16892461280aac0d772` |
| 11 | `theorem` | [support_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/support-finrotate--16dc7b27cc2930b56930ccce.md) | 100 | `result-track:16dc7b27cc2930b56930ccce9e6e3bc96731c9ca7c6d03c5c4aed74bb71c5bbe` |
| 12 | `theorem` | [support_finRotate_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/support-finrotate-of-le--cd98b993c102753db3889915.md) | 104 | `result-track:cd98b993c102753db388991561a690d5c2da3e9bbadb16bb6e5fce70f68d8aea` |
| 13 | `theorem` | [isCycle_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/iscycle-finrotate--f003909b47feb60588c60753.md) | 108 | `result-track:f003909b47feb60588c60753b479ab4319aba403a20b0fd9ea6a3b06f6fb54fe` |
| 14 | `theorem` | [isCycle_finRotate_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/iscycle-finrotate-of-le--5874638452ce7fd6ef2bdc0c.md) | 118 | `result-track:5874638452ce7fd6ef2bdc0cf244145bf8a952779710227b5b46f65438669f76` |
| 15 | `theorem` | [cycleType_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cycletype-finrotate--51b79cffa6ca7ac6ddf49c81.md) | 124 | `result-track:51b79cffa6ca7ac6ddf49c81cb33167c5995e22f7b0e29ac9284d5d64dbe48ea` |
| 16 | `theorem` | [cycleType_finRotate_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cycletype-finrotate-of-le--f05a5dabccc58275c029d6d3.md) | 127 | `result-track:f05a5dabccc58275c029d6d3f6c5b540200a5ac584c068c70f01c84960dc3170` |
| 17 | `def` | [cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange--20713752838557519af0d981.md) | 134 | `declaration-track:20713752838557519af0d9819e9ad7bafbe774c5674d3fb5710a9fc4d1749dcf` |
| 18 | `theorem` | [cycleRange_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-of-gt--04d810f3237109faa3e71866.md) | 142 | `result-track:04d810f3237109faa3e71866af727f4f4ae4ac5fdf5e628fd70322cf07779341` |
| 19 | `theorem` | [cycleRange_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-of-le--131987409f713fccdefc756f.md) | 148 | `result-track:131987409f713fccdefc756fc4a34c1d50d3e0d3c05df9cd3a0503c81e5562cc` |
| 20 | `theorem` | [coe_cycleRange_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/coe-cyclerange-of-le--48c8a53f0e6bdcf03cb86901.md) | 164 | `result-track:48c8a53f0e6bdcf03cb86901a675f303c650d2455c3b91f72c73d7f443c2bb21` |
| 21 | `theorem` | [cycleRange_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-of-lt--7b3571878b0591f914db6fd0.md) | 177 | `result-track:7b3571878b0591f914db6fd03b025ae4648b836fb97e4ceaa4382fd51e86c080` |
| 22 | `theorem` | [coe_cycleRange_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/coe-cyclerange-of-lt--d7d1b2c24f0488b03d957fdb.md) | 180 | `result-track:d7d1b2c24f0488b03d957fdbd0f8a7e8d2ac7b9014ccd73e3b40bac5d30fb8b4` |
| 23 | `theorem` | [cycleRange_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-of-eq--4e6f93f1d49a6a504ea7baf3.md) | 183 | `result-track:4e6f93f1d49a6a504ea7baf38dd585d95a2b03949b4d3873f4885828cb9ceb87` |
| 24 | `theorem` | [cycleRange_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-self--81623d25611e6a3c7ae9fe1f.md) | 187 | `result-track:81623d25611e6a3c7ae9fe1f218e91077732a28948d6abc9450c5ad26c751a02` |
| 25 | `theorem` | [cycleRange_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-apply--394fc4b05f3421e1e3706236.md) | 190 | `result-track:394fc4b05f3421e1e370623621e43a6b4d589987b831eb7aa30483b97f196a3f` |
| 26 | `theorem` | [cycleRange_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-zero--b42d73de35eecad3fd6cfee5.md) | 198 | `result-track:b42d73de35eecad3fd6cfee51d55c9b88c66e506440e4042e5538cfd581e10ab` |
| 27 | `theorem` | [cycleRange_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-last--4ef25f9c7f0b050deb90d0b0.md) | 205 | `result-track:4ef25f9c7f0b050deb90d0b021e394966a0c7e23697089416c0d2102328d6bf1` |
| 28 | `theorem` | [cycleRange_mk_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-mk-zero--31924a48131eef02baf09706.md) | 210 | `result-track:31924a48131eef02baf09706974556e061c32d88e0073e0f60507b9270583572` |
| 29 | `theorem` | [sign_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/sign-cyclerange--d882d53856eb15be0e60d914.md) | 218 | `result-track:d882d53856eb15be0e60d914e7e03299743c24f07386e8594552d2f15ebaa374` |
| 30 | `theorem` | [succAbove_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/succabove-cyclerange--58f2901cb117ab64fec71999.md) | 222 | `result-track:58f2901cb117ab64fec719998dfb75aefd2d26ecc051f3ef0ccb1ea96a11b606` |
| 31 | `theorem` | [cycleRange_succAbove](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-succabove--4674f84f36caea8c1c412e4f.md) | 244 | `result-track:4674f84f36caea8c1c412e4fe8165b37fdcaf32c4401f50694cdfeac31067faf` |
| 32 | `theorem` | [cycleRange_symm_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-symm-zero--1e2185a002b720c41a4f056b.md) | 251 | `result-track:1e2185a002b720c41a4f056b7bc62758f5014db648cdc62d332017c0203e20ea` |
| 33 | `theorem` | [cycleRange_symm_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cyclerange-symm-succ--13cbdab322fc2c2a3af55702.md) | 255 | `result-track:13cbdab322fc2c2a3af55702f9ae9afd96226880b8385e62e062741a4921da41` |
| 34 | `theorem` | [isCycle_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/iscycle-cyclerange--60efd4df13f122f7d14e9b29.md) | 259 | `result-track:60efd4df13f122f7d14e9b29afb0789c024efccad4d44ca8f19f854cde8573d8` |
| 35 | `theorem` | [cycleType_cycleRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/cycletype-cyclerange--d34a6a0c99c3e4c500d647a2.md) | 267 | `result-track:d34a6a0c99c3e4c500d647a206fb518db5a465b787222749ba466345701da920` |
| 36 | `theorem` | [isThreeCycle_cycleRange_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/isthreecycle-cyclerange-two--587816d7556d10ce45db4f6e.md) | 275 | `result-track:587816d7556d10ce45db4f6e7073a174e769ecd94c0206347e93ec7cfeee8b71` |
| 37 | `theorem` | [Equiv.Perm.sign_eq_prod_prod_Iio](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-sign-eq-prod-prod-iio--019ca70a7c561bc73c02e6f0.md) | 286 | `result-track:019ca70a7c561bc73c02e6f04baaef5252a22825fd71a5d516b5cecd940ae55a` |
| 38 | `theorem` | [Equiv.Perm.sign_eq_prod_prod_Ioi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-sign-eq-prod-prod-ioi--355336bd427617a5aed70549.md) | 297 | `result-track:355336bd427617a5aed7054926b477f7175751469a6645a111d3e3f1d3d8855c` |
| 39 | `theorem` | [Equiv.Perm.prod_Iio_comp_eq_sign_mul_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-prod-iio-comp-eq-sign-mul-prod--1a36fe963f4ffd8cefbd8d35.md) | 302 | `result-track:1a36fe963f4ffd8cefbd8d35801e8f733cea069f8f1ab47175057a263c935633` |
| 40 | `theorem` | [Equiv.Perm.prod_Ioi_comp_eq_sign_mul_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/declarations/equiv-perm-prod-ioi-comp-eq-sign-mul-prod--98e7ae6e8d570d7fc82fa4e3.md) | 325 | `result-track:98e7ae6e8d570d7fc82fa4e3262ebada85f68611cda1e589ce33d7d5a0f10482` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
