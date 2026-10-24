# Verification target: GRWTSK.Algebra.LinearAlgebra.DFinsupp.Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bcc814745c5cb0e29c55623626bb5cdd1553bef",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bcc814745c5cb0e29c55623626bb5cdd1553bef`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Submonoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lmk](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lmk--c1383813bb4041525e496d56.md) | 48 | `declaration-track:c1383813bb4041525e496d561fc08618b786f838e139563e022585f21e6e0231` |
| 2 | `def` | [lsingle](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lsingle--518b2d81847938e70736f13d.md) | 54 | `declaration-track:518b2d81847938e70736f13d1e08e2f57ad36ebaa92fda090f6ec8d4c5ca3199` |
| 3 | `theorem` | [lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lhom-ext--14a7fcc7568b59fa73a33c3f.md) | 60 | `result-track:14a7fcc7568b59fa73a33c3fe8160e4d567d9c92902c2eef1d532fd3cff2c9f7` |
| 4 | `theorem` | [lhom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lhom-ext--8baa79d7ebd9c27eef0ce75f.md) | 69 | `result-track:8baa79d7ebd9c27eef0ce75f1a43243ec258a1223e1e996996a45386257dd44d` |
| 5 | `theorem` | [lmk_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lmk-apply--6405da92991fcbacc29cae77.md) | 73 | `result-track:6405da92991fcbacc29cae77d8a786a90159a056f938c51e11bc82bdab1d3a42` |
| 6 | `theorem` | [lsingle_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lsingle-apply--d4446f2692b0f07ab6af38dc.md) | 77 | `result-track:d4446f2692b0f07ab6af38dc93ca3ca1d47be07472047c32c06acc043eeec243` |
| 7 | `def` | [lapply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lapply--0cdd741adebf6f6b6afdd273.md) | 83 | `declaration-track:0cdd741adebf6f6b6afdd27307d57b4440abdb512b4f2465edb241ee3a1850f6` |
| 8 | `theorem` | [lapply_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lapply-apply--46d4dd07dfb3341e84442295.md) | 89 | `result-track:46d4dd07dfb3341e84442295f234507a404e32bab67dccc4799f563f3310491f` |
| 9 | `theorem` | [injective_pi_lapply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/injective-pi-lapply--6a02edd3022a2272ebd7bf32.md) | 92 | `result-track:6a02edd3022a2272ebd7bf3283c3349ba91c35ba6ac25371fe258bf0cf115947` |
| 10 | `theorem` | [lapply_comp_lsingle_same](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lapply-comp-lsingle-same--84c17ea5254682b4500ef95c.md) | 96 | `result-track:84c17ea5254682b4500ef95cfd72335a4d100854aaf0f3bd4d8a6480a50f171a` |
| 11 | `theorem` | [lapply_comp_lsingle_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lapply-comp-lsingle-of-ne--5350525f6cc11ad84c065eb1.md) | 100 | `result-track:5350525f6cc11ad84c065eb1b1bea1e27cd9df63cc86ecfd8a93dd9726fd9fa6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/instance--87b5e79032b56e20fc0e5c9d.md) | 108 | `declaration-track:87b5e79032b56e20fc0e5c9d9df3a3fc4bb19b55f9ca3346b890b747da21052f` |
| 13 | `def` | [lsum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lsum--7aee27a992384b5022fb32d7.md) | 118 | `declaration-track:7aee27a992384b5022fb32d7616dcb65ee406a83d6cb2608ba2e898fc8ed047a` |
| 14 | `theorem` | [lsum_single](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lsum-single--3ebe6515c3e75d72237580a7.md) | 150 | `result-track:3ebe6515c3e75d72237580a7cf7404bfffc635c50f69abd09c7cbe583c17bda5` |
| 15 | `theorem` | [lsum_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lsum-lsingle--e882c33abe40ba130ccd90c0.md) | 154 | `result-track:e882c33abe40ba130ccd90c04a4229c006f74ba6778ba7d75d6ea45f2813d704` |
| 16 | `theorem` | [iSup_range_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isup-range-lsingle--5c6f7d80e591328e8d8dad9d.md) | 158 | `result-track:5c6f7d80e591328e8d8dad9dea725b49d8605d2a57c1e615a514165545df975f` |
| 17 | `lemma` | [mker_mapRangeAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/mker-maprangeaddmonoidhom--826e05d6d4869b1730537af3.md) | 177 | `result-track:826e05d6d4869b1730537af3a742316ac9e0001121c6896800d164b22ae2624b` |
| 18 | `lemma` | [mrange_mapRangeAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/mrange-maprangeaddmonoidhom--9d8c1e71cfea1dad90d82798.md) | 183 | `result-track:9d8c1e71cfea1dad90d82798a1279e4b2a9aaaf47f625fc57c091831f71a585a` |
| 19 | `theorem` | [mapRange_smul](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/maprange-smul--7974e9a993d80be34dc0752d.md) | 199 | `result-track:7974e9a993d80be34dc0752da421f50c7d9916404b847084b29d69c7946ce0af` |
| 20 | `def` | [mapRange.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/maprange-linearmap--fbe0508a731121114168812d.md) | 207 | `declaration-track:fbe0508a731121114168812df6bfa55c0435ae00f891933a1fa1756821b28c77` |
| 21 | `theorem` | [mapRange.linearMap_id](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/maprange-linearmap-id--274b617509f6fd8cd358cfdf.md) | 213 | `result-track:274b617509f6fd8cd358cfdfa7db8832e2cb456b158bd3d0fc1dc9a6ccd5ba72` |
| 22 | `theorem` | [mapRange.linearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/maprange-linearmap-comp--aeb491b54d560cb224004b4a.md) | 218 | `result-track:aeb491b54d560cb224004b4a70e1412c12c08c95d37a5ee6a7c18ca84837cbe2` |
| 23 | `theorem` | [sum_mapRange_index.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/sum-maprange-index-linearmap--5aa9ecf22b0bc3c687a97604.md) | 224 | `result-track:5aa9ecf22b0bc3c687a97604d47feaa06876f7d2f6da52f11a70fcedfb35b678` |
| 24 | `lemma` | [ker_mapRangeLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/ker-maprangelinearmap--af0e896d3fa3739af7791c21.md) | 229 | `result-track:af0e896d3fa3739af7791c21ecef8b49fbcffffdb8a7b63c45d185c1d49d29b7` |
| 25 | `lemma` | [range_mapRangeLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/range-maprangelinearmap--376c693271062577edd24448.md) | 234 | `result-track:376c693271062577edd244489fecd64108b80117989daf052b781b3af790123f` |
| 26 | `def` | [mapRange.linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/maprange-linearequiv--02c6f11c13b854012b5a8d1e.md) | 241 | `declaration-track:02c6f11c13b854012b5a8d1ee062ee15c6c4c0d9cd37b77a6a8eed64de3c4331` |
| 27 | `theorem` | [mapRange.linearEquiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/maprange-linearequiv-refl--9db97839b225802564447a1e.md) | 248 | `result-track:9db97839b225802564447a1ecd8858ad9a408426b5a11c40cf53bbc78ffc3371` |
| 28 | `theorem` | [mapRange.linearEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/maprange-linearequiv-trans--90836dbb2855908a260bd590.md) | 252 | `result-track:90836dbb2855908a260bd59044e89558e29a1d7ab0f5a68b19e41ba8859f1d68` |
| 29 | `theorem` | [mapRange.linearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/maprange-linearequiv-symm--c0e69a018d0e8b81edf96e99.md) | 259 | `result-track:c0e69a018d0e8b81edf96e99ff8a9937a87b5d4efeffa1223f3bda6f11519d1e` |
| 30 | `lemma` | [ker_mapRangeAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/ker-maprangeaddmonoidhom--a3f1fa488767346cfef4100f.md) | 267 | `result-track:a3f1fa488767346cfef4100fd81a145ac49d0720af748a8f57d289bf32a47a9f` |
| 31 | `lemma` | [range_mapRangeAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/range-maprangeaddmonoidhom--a49816ddeea74e5c8462cfed.md) | 273 | `result-track:a49816ddeea74e5c8462cfedaa917d4cf06e7840b520686d7f56045d87025bd7` |
| 32 | `def` | [coprodMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/coprodmap--ba7229f0f1ed9f6d48ef5ede.md) | 291 | `declaration-track:ba7229f0f1ed9f6d48ef5ede127336c6f1d0d2705acc7ac473e489e6c683df14` |
| 33 | `theorem` | [coprodMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/coprodmap-apply--ea473fac80942dc03e0983c8.md) | 294 | `result-track:ea473fac80942dc03e0983c800de55fc75d28da8937bc398bef987caa270f83e` |
| 34 | `theorem` | [coprodMap_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/coprodmap-apply-single--bac02a0d6f597c1111b624f8.md) | 300 | `result-track:bac02a0d6f597c1111b624f83a6a3e9325593fa7bfada63fd170c8f871ed34fc` |
| 35 | `theorem` | [dfinsuppSum_mem](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/dfinsuppsum-mem--7bbe584159625c8b33a2b8e9.md) | 318 | `result-track:7bbe584159625c8b33a2b8e9fa38692beb1f50dea75fb43f9fee53aacef5a66a` |
| 36 | `theorem` | [dfinsuppSumAddHom_mem](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/dfinsuppsumaddhom-mem--cd294cb0af9229f55c373d06.md) | 325 | `result-track:cd294cb0af9229f55c373d0634b0f4fdd1c0a17df598121f50a558094bdce52d` |
| 37 | `theorem` | [iSup_eq_range_dfinsupp_lsum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isup-eq-range-dfinsupp-lsum--abb4ee1557fbfa494e9ca1f6.md) | 335 | `result-track:abb4ee1557fbfa494e9ca1f62062b7e145cc82f71572be17ca581ef676b81c57` |
| 38 | `theorem` | [biSup_eq_range_dfinsupp_lsum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/bisup-eq-range-dfinsupp-lsum--fc9bfca12609e444d6945327.md) | 349 | `result-track:fc9bfca12609e444d6945327b743632e97486feb6efcbac8c4aeae5c344b0adf` |
| 39 | `theorem` | [mem_iSup_iff_exists_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/mem-isup-iff-exists-dfinsupp--2ce282315d061d22d23b4345.md) | 369 | `result-track:2ce282315d061d22d23b4345c8a2770c54ec155aee744ddee388d67d6f75a23c` |
| 40 | `theorem` | [mem_iSup_iff_exists_dfinsupp'](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/mem-isup-iff-exists-dfinsupp--27c1e996d5b77c6004ae9d94.md) | 377 | `result-track:27c1e996d5b77c6004ae9d9414cbd8c115867469d48c90c7fb5a510996f1ce7b` |
| 41 | `theorem` | [mem_biSup_iff_exists_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/mem-bisup-iff-exists-dfinsupp--4f1609af909849180ac6e662.md) | 383 | `result-track:4f1609af909849180ac6e6628e19571a82350532bc819e3ba8af7f48923bce68` |
| 42 | `lemma` | [mem_iSup_iff_exists_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/mem-isup-iff-exists-finsupp--44c53176f8b90faafb2896b1.md) | 392 | `result-track:44c53176f8b90faafb2896b1da63a88e6366a1a6d7372b22a5ba29338434fa57` |
| 43 | `theorem` | [mem_iSup_finset_iff_exists_sum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/mem-isup-finset-iff-exists-sum--247efab8c5700ff6983ad9d8.md) | 402 | `result-track:247efab8c5700ff6983ad9d8404b5844a4574e447f5f3110199e663ac9162741` |
| 44 | `theorem` | [iSupIndep_iff_forall_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-iff-forall-dfinsupp--1c842988bfec119ef6ef7e81.md) | 450 | `result-track:1c842988bfec119ef6ef7e818bb190cd09ae22f7c09c394e25c512c2cc778e94` |
| 45 | `theorem` | [iSupIndep_of_dfinsupp_lsum_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-of-dfinsupp-lsum-injective--0e0c0aea5fe8b2699b1036dd.md) | 464 | `result-track:0e0c0aea5fe8b2699b1036dd3a001b8a4437067957db103f504f9fd48d4da81a` |
| 46 | `theorem` | [iSupIndep_of_dfinsuppSumAddHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-of-dfinsuppsumaddhom-injective--1ba693f44ad1086816368649.md) | 480 | `result-track:1ba693f44ad1086816368649039a8b6dfbc4514686380e977eb134557c33ff07` |
| 47 | `theorem` | [lsum_comp_mapRange_toSpanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/lsum-comp-maprange-tospansingleton--2924c8532a57521254310226.md) | 493 | `result-track:2924c8532a57521254310226b74846f4a3b460b0f9ead9ce1a9a37fd293ef922` |
| 48 | `theorem` | [iSupIndep_of_dfinsuppSumAddHom_injective'](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-of-dfinsuppsumaddhom-injective--08546681efcd1d956feb3b0c.md) | 511 | `result-track:08546681efcd1d956feb3b0cbbe71c1bb28394d70788b839cb709d7e62247376` |
| 49 | `theorem` | [iSupIndep.dfinsupp_lsum_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-dfinsupp-lsum-injective--a370be0e7616f68526b9a532.md) | 529 | `result-track:a370be0e7616f68526b9a532fd547d5e07465f938fa5081ca76a6e6f60a9542c` |
| 50 | `theorem` | [iSupIndep.dfinsuppSumAddHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-dfinsuppsumaddhom-injective--ee2ced1ab141ca3e2ade50fe.md) | 552 | `result-track:ee2ced1ab141ca3e2ade50fe3aa9af905b5ca099cb2d837d58eb6ca6a93f1f7e` |
| 51 | `theorem` | [iSupIndep_iff_dfinsupp_lsum_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-iff-dfinsupp-lsum-injective--e186586699e5234912ffd086.md) | 568 | `result-track:e186586699e5234912ffd0863eac6266f6966815ca070bfb7b1352fdcdb779a5` |
| 52 | `theorem` | [iSupIndep_iff_dfinsuppSumAddHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-iff-dfinsuppsumaddhom-injective--36dab48ff1d69e5d4086fae0.md) | 577 | `result-track:36dab48ff1d69e5d4086fae00bc23ff51429e9a62852aa1a96f941ba1c54b25a` |
| 53 | `theorem` | [iSupIndep.linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-linearindependent--e61b9a59367952607c9dc62e.md) | 591 | `result-track:e61b9a59367952607c9dc62e402a988c3e4b43fd3160e98c77360686c27f6b0f` |
| 54 | `theorem` | [iSupIndep_iff_linearIndependent_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/isupindep-iff-linearindependent-of-ne-zero--ba86d343670737a939ca6d40.md) | 613 | `result-track:ba86d343670737a939ca6d4003a0bf138501e848cac0514f446b2a2926bfee9c` |
| 55 | `theorem` | [coe_dfinsuppSum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/coe-dfinsuppsum--cacfaf0e094636bd2233a95e.md) | 648 | `result-track:cacfaf0e094636bd2233a95e08430224e576e8dd20f3d9c1a2e5729ae4ca3aea` |
| 56 | `theorem` | [dfinsuppSum_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/dfinsuppsum-apply--ea631e386a746144e9a294a5.md) | 653 | `result-track:ea631e386a746144e9a294a51fa2017827454a215318f81aa9ab9c7028ef74c7` |
| 57 | `theorem` | [map_dfinsuppSumAddHom](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/map-dfinsuppsumaddhom--2ee5c75553ea91c8f9c54e7a.md) | 666 | `result-track:2ee5c75553ea91c8f9c54e7ac46d0b1a973044af025446083016ab5c12c57e0c` |
| 58 | `theorem` | [map_dfinsuppSumAddHom](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant8afd84a6c36555db736efec79da2e787b49169aebbd14508bd7a470892a3e7a0.lean/declarations/map-dfinsuppsumaddhom--1f8e76449b1ad5f709136d21.md) | 696 | `result-track:1f8e76449b1ad5f709136d214effb9f6b60d52dfa10d6feaa80e6c291a7698d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
