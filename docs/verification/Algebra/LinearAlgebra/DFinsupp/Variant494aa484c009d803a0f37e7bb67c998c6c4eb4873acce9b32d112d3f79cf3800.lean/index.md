# Verification target: GRWTSK.Algebra.LinearAlgebra.DFinsupp.Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a33de20aca76f9b2e73f5acd5d6ea89e52095cf",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a33de20aca76f9b2e73f5acd5d6ea89e52095cf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lmk](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lmk--1da220e2020bdcf05561a6fd.md) | 48 | `declaration-track:1da220e2020bdcf05561a6fddf3855c67a30da74e38451914ec61942bedd5a16` |
| 2 | `def` | [lsingle](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lsingle--88d9eeceda5f4ebe8c62352f.md) | 55 | `declaration-track:88d9eeceda5f4ebe8c62352f5fa759629c2f0e88c5f4550b9a13b7932c48e8e8` |
| 3 | `theorem` | [lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lhom-ext--8acdb309559c43a1429be2a8.md) | 62 | `result-track:8acdb309559c43a1429be2a8b9e5dead17f7c35974315f5116cbd2354f0d5a32` |
| 4 | `theorem` | [lhom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lhom-ext--76efcd3687dded59e5ea7379.md) | 71 | `result-track:76efcd3687dded59e5ea7379524efa973b8b1d5675ade7cb0ef7c7f98e90970f` |
| 5 | `def` | [lapply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lapply--d27f3aa7bc0b79c5c5d1be57.md) | 77 | `declaration-track:d27f3aa7bc0b79c5c5d1be57f4179359206b672b0f778d0728ea70ee3b319c65` |
| 6 | `theorem` | [lmk_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lmk-apply--5e05451246cd0fcb2361f718.md) | 84 | `result-track:5e05451246cd0fcb2361f718c134468280b6c5e8ab661f5b9c3eee08d9c7de2a` |
| 7 | `theorem` | [lsingle_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lsingle-apply--97ba631a00b221feaba04757.md) | 89 | `result-track:97ba631a00b221feaba047575aa4423b19aca26f16ee902bb09918ab72870e30` |
| 8 | `theorem` | [lapply_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lapply-apply--000ec798c7030663ec16dc76.md) | 94 | `result-track:000ec798c7030663ec16dc766d84b8123ee14babe7eb942da1cd2d1b8f866af6` |
| 9 | `instance` | [addCommMonoidOfLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/addcommmonoidoflinearmap--b7a5fb8f18dab8737c960309.md) | 104 | `declaration-track:b7a5fb8f18dab8737c960309b49d80af4ed6904f5f134d8339823a3d14b52bc4` |
| 10 | `instance` | [moduleOfLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/moduleoflinearmap--cecd459c888399945852c44c.md) | 114 | `declaration-track:cecd459c888399945852c44c38cd13f53fb3028cf6fcabc0c36d3d4d142d2bfe` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/instance--5b728bb434b0bf4c756b55a9.md) | 122 | `declaration-track:5b728bb434b0bf4c756b55a99f6da74d1cbdaaf5aec8b3524f3465df9a464821` |
| 12 | `def` | [lsum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lsum--a00083ceb8f703abc44ca744.md) | 134 | `declaration-track:a00083ceb8f703abc44ca744b088350d6395fb4694f496f6c4dac91f1ffda1f9` |
| 13 | `theorem` | [lsum_single](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lsum-single--98bac2969a6e79a9f71d5581.md) | 168 | `result-track:98bac2969a6e79a9f71d558130396f53c0686e983df7588121fad2aa0b956713` |
| 14 | `theorem` | [mapRange_smul](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/maprange-smul--2333eb77391fbcf047130984.md) | 189 | `result-track:2333eb77391fbcf04713098419a965ab3be8081f29d771581381b190d28fc05a` |
| 15 | `def` | [mapRange.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/maprange-linearmap--a6296b60d24681dff3d9c4bc.md) | 198 | `declaration-track:a6296b60d24681dff3d9c4bc74e538fbe736dff0915e34032e36fb1ee9d7a96a` |
| 16 | `theorem` | [mapRange.linearMap_id](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/maprange-linearmap-id--bb4a82092f8047556c3ff80a.md) | 205 | `result-track:bb4a82092f8047556c3ff80ad1d406da3f5890a1da7a6f8ee81428830e78939e` |
| 17 | `theorem` | [mapRange.linearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/maprange-linearmap-comp--9504175a0a019b6f18f242bb.md) | 211 | `result-track:9504175a0a019b6f18f242bbd21c52405f01719bb047b5eec28c224dbdb7eea1` |
| 18 | `theorem` | [sum_mapRange_index.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/sum-maprange-index-linearmap--b699b0449f144df403041a60.md) | 218 | `result-track:b699b0449f144df403041a608fdc4688683629a5c649a0a685f4d7b0084267ce` |
| 19 | `def` | [mapRange.linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/maprange-linearequiv--8fa30337abb06b2d3d26736a.md) | 229 | `declaration-track:8fa30337abb06b2d3d26736afbfdb0a03a3d385a0292b5bd440e3c01a8e610a9` |
| 20 | `theorem` | [mapRange.linearEquiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/maprange-linearequiv-refl--754d47482156e19e27acce95.md) | 237 | `result-track:754d47482156e19e27acce951467dba2c9b252d4f10bae41865b62fbed59e2c9` |
| 21 | `theorem` | [mapRange.linearEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/maprange-linearequiv-trans--2cd67a7ed633bc1cb66ac19b.md) | 242 | `result-track:2cd67a7ed633bc1cb66ac19b8018d28105107b621675c8a31351c505a3e11051` |
| 22 | `theorem` | [mapRange.linearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/maprange-linearequiv-symm--1c072b45f9e2099e504f43ea.md) | 250 | `result-track:1c072b45f9e2099e504f43ea3881542c004eb63aeaf6e5f400b1d81c2a77f973` |
| 23 | `def` | [coprodMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/coprodmap--0671739246ef6a3f935cf5bf.md) | 265 | `declaration-track:0671739246ef6a3f935cf5bfe2906f24f5758af55cccfbd635ed31c06752d019` |
| 24 | `theorem` | [coprodMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/coprodmap-apply--7123177b5eff143a0c803a0e.md) | 269 | `result-track:7123177b5eff143a0c803a0e9e888fb732169d3e86f3a59ca8757a0a388220b6` |
| 25 | `theorem` | [coprodMap_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/coprodmap-apply-single--1e8f8db366a094af0d2f8c27.md) | 276 | `result-track:1e8f8db366a094af0d2f8c273d0ff44323884c4fb6719cc72b3470fecf4203f9` |
| 26 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/basis--b2e88b185ddd24f0f7d3ebd0.md) | 287 | `declaration-track:b2e88b185ddd24f0f7d3ebd04bbde76ad7439205d94b4eaa4b56ebbe114e5d35` |
| 27 | `theorem` | [dfinsupp_sum_mem](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/dfinsupp-sum-mem--f76c40dcac807f42592cc3e6.md) | 303 | `result-track:f76c40dcac807f42592cc3e63b6f777115bb419ed212f90d1e375f535aabbb67` |
| 28 | `theorem` | [dfinsupp_sumAddHom_mem](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/dfinsupp-sumaddhom-mem--c6826431e4589b98e94ae090.md) | 309 | `result-track:c6826431e4589b98e94ae09044d37c042084308aeac6033fdb82498d368fb13f` |
| 29 | `theorem` | [iSup_eq_range_dfinsupp_lsum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/isup-eq-range-dfinsupp-lsum--0dd19f9ff14ddc04376fb9ac.md) | 318 | `result-track:0dd19f9ff14ddc04376fb9ac36c33cb5a43be5d92e9755ff9727de11fea6ce50` |
| 30 | `theorem` | [biSup_eq_range_dfinsupp_lsum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/bisup-eq-range-dfinsupp-lsum--b0cdeb1f276dfc868736a937.md) | 333 | `result-track:b0cdeb1f276dfc868736a937328d5ded83761febc1ff49dae104f65aa86793b4` |
| 31 | `theorem` | [mem_iSup_iff_exists_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/mem-isup-iff-exists-dfinsupp--f10693f1d37605317a80fe25.md) | 351 | `result-track:f10693f1d37605317a80fe25c88c74b9c0faa8df86a932c0a56a88ababbe09ca` |
| 32 | `theorem` | [mem_iSup_iff_exists_dfinsupp'](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/mem-isup-iff-exists-dfinsupp--cbd604fb926368e8c79a27f0.md) | 358 | `result-track:cbd604fb926368e8c79a27f0381d2ca1845f61196e3d7bb3df25d044f1f133d8` |
| 33 | `theorem` | [mem_biSup_iff_exists_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/mem-bisup-iff-exists-dfinsupp--c193776151fd72b0e38dd465.md) | 365 | `result-track:c193776151fd72b0e38dd4650cf3cd71ec248d2b691fd32a7aac2dfb7eed770d` |
| 34 | `theorem` | [mem_iSup_finset_iff_exists_sum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/mem-isup-finset-iff-exists-sum--16aef17a3fbe81009836d229.md) | 375 | `result-track:16aef17a3fbe81009836d22968da908e4fbdff3def16882f84bbb8e6a40e16d3` |
| 35 | `theorem` | [independent_iff_forall_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-iff-forall-dfinsupp--de4b73e3d870ef236da9b616.md) | 427 | `result-track:de4b73e3d870ef236da9b616cc67cda546e4b5b6f8b82865aab79e1e853d186b` |
| 36 | `theorem` | [independent_of_dfinsupp_lsum_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-of-dfinsupp-lsum-injective--f6509941267c1295f52ffa4f.md) | 439 | `result-track:f6509941267c1295f52ffa4fd03a0aac7172370cbdb8b90ece76aefedd43f371` |
| 37 | `theorem` | [independent_of_dfinsupp_sumAddHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-of-dfinsupp-sumaddhom-injective--50419294c8eb41d8036079af.md) | 454 | `result-track:50419294c8eb41d8036079afd7c51311ea7c37a11229b22d89d364650d7ffa63` |
| 38 | `theorem` | [lsum_comp_mapRange_toSpanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/lsum-comp-maprange-tospansingleton--af70a736bc8b14d1d83e00f3.md) | 461 | `result-track:af70a736bc8b14d1d83e00f38e5d09ad3b7ff4f4e164f3a6acc9601b6469344a` |
| 39 | `theorem` | [independent_of_dfinsupp_sumAddHom_injective'](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-of-dfinsupp-sumaddhom-injective--2f4a7fe09a3f1c9369264b84.md) | 480 | `result-track:2f4a7fe09a3f1c9369264b84c7d8a4afde5d1fe7d4c555fc5758d5fa5edcf47e` |
| 40 | `theorem` | [Independent.dfinsupp_lsum_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-dfinsupp-lsum-injective--86f53444b9fb3ec853102a52.md) | 493 | `result-track:86f53444b9fb3ec853102a52163a12b7f1390cb3c5d7295f2c6f6c7e8e1845ab` |
| 41 | `theorem` | [Independent.dfinsupp_sumAddHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-dfinsupp-sumaddhom-injective--26487092c1ee350816282a7e.md) | 514 | `result-track:26487092c1ee350816282a7efff20168f1ad86058f3fd292ebd6da446457cd57` |
| 42 | `theorem` | [independent_iff_dfinsupp_lsum_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-iff-dfinsupp-lsum-injective--43101d5660641c25b16e3996.md) | 525 | `result-track:43101d5660641c25b16e39964dc0fb0eaddd99d2e3206e026941341694c204d9` |
| 43 | `theorem` | [independent_iff_dfinsupp_sumAddHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-iff-dfinsupp-sumaddhom-injective--7a508ae38946d170ff0b1238.md) | 532 | `result-track:7a508ae38946d170ff0b1238a727068c4c2b7782d20aea033370ee761ca160f9` |
| 44 | `theorem` | [Independent.linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-linearindependent--cd17076a0e5bfef0fd6e852e.md) | 541 | `result-track:cd17076a0e5bfef0fd6e852e81171f7ba845507467fe0a3a6ae4f8342a2fc2f2` |
| 45 | `theorem` | [independent_iff_linearIndependent_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/declarations/independent-iff-linearindependent-of-ne-zero--d25d4ea311cc2d0a028511ba.md) | 561 | `result-track:d25d4ea311cc2d0a028511ba4b6549b5a1c1348eec7716b00d7c2674d1da1c5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
