# Verification target: GRWTSK.Algebra.LinearAlgebra.ModuleCat.Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4db2087884967af9bcc74cfe79ef9b731fce6fc4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4db2087884967af9bcc74cfe79ef9b731fce6fc4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ConcreteCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/instance--535d047d3d254dbbc6128a39.md) | 28 | `declaration-track:535d047d3d254dbbc6128a391da64042414946cc59e1ea41b3cc5226e3916336` |
| 2 | `def` | [moduleCatMk](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatmk--f1ee22498852e2e640b7800b.md) | 33 | `declaration-track:f1ee22498852e2e640b7800b1ed50170b322d2ae7b45ccf1b5db9700a2c0986a` |
| 3 | `lemma` | [moduleCat_zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecat-zero-apply--7c45489cc9ac28beeb10ace5.md) | 41 | `result-track:7c45489cc9ac28beeb10ace5d6dc6155529796efbb1d56706d56c6f8467b496f` |
| 4 | `lemma` | [moduleCat_exact_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecat-exact-iff--4d08eb1a590d3e643860c3fb.md) | 44 | `result-track:4d08eb1a590d3e643860c3fbc08649de68521f858882ef8430f57113e7a7a09c` |
| 5 | `lemma` | [moduleCat_exact_iff_ker_sub_range](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecat-exact-iff-ker-sub-range--b40f4e0b00ede30a9b1cf838.md) | 48 | `result-track:b40f4e0b00ede30a9b1cf838ace4a20a0312bc28b6a1ea0d6808f3bced00812b` |
| 6 | `lemma` | [moduleCat_exact_iff_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecat-exact-iff-range-eq-ker--7e7376093c53b61c6e6b3e82.md) | 53 | `result-track:7e7376093c53b61c6e6b3e820e278b39076fbc5c9ebf0075aec54b642badc901` |
| 7 | `lemma` | [Exact.moduleCat_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/exact-modulecat-range-eq-ker--1b337f04baca1464cefbbff7.md) | 60 | `result-track:1b337f04baca1464cefbbff7f9bef7f52006d1ee85dcd5b0c5ea75f7bec84d83` |
| 8 | `lemma` | [ShortExact.moduleCat_injective_f](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/shortexact-modulecat-injective-f--3450fe0321b783fb0a0ed18d.md) | 64 | `result-track:3450fe0321b783fb0a0ed18d9ca454b298b884b5d49a00ad0868bc54929091c7` |
| 9 | `lemma` | [ShortExact.moduleCat_surjective_g](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/shortexact-modulecat-surjective-g--a6a8ef85b7d652ad998d4526.md) | 68 | `result-track:a6a8ef85b7d652ad998d4526c40ce0e0d6f1ff8b21ae7b0c1dc1f04b57e407d4` |
| 10 | `lemma` | [ShortExact.moduleCat_exact_iff_function_exact](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/shortexact-modulecat-exact-iff-function-exact--0cbf767141623ab54616a063.md) | 74 | `result-track:0cbf767141623ab54616a063bf44b51e494c46a556992ef652622d37f9015fff` |
| 11 | `def` | [moduleCatMkOfKerLERange](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatmkofkerlerange--92ed9630d37a9c83b1c1d990.md) | 82 | `declaration-track:92ed9630d37a9c83b1c1d990bd9fbda030947c0f054cf428209abd11be9e039c` |
| 12 | `lemma` | [Exact.moduleCat_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/exact-modulecat-of-range-eq-ker--fd730aca08d6fe2b4e9522fe.md) | 86 | `result-track:fd730aca08d6fe2b4e9522fe8e24f57dbef1e0522d85edb61ca9dbba8330b95e` |
| 13 | `def` | [moduleCatToCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecattocycles--ddca1f8a9e1bcfb568ce8b07.md) | 93 | `declaration-track:ddca1f8a9e1bcfb568ce8b075e600ab3de31bacec5ad9b0053f9882d22dd1ced` |
| 14 | `def` | [moduleCatLeftHomologyData](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatlefthomologydata--2a640d8d3e4f7ec1ffa2d6ae.md) | 102 | `declaration-track:2a640d8d3e4f7ec1ffa2d6ae3e0f3637073367a33da2fad3bd0681201cd19c81` |
| 15 | `abbrev` | [moduleCatHomology](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecathomology--3f2070d6f890d8b3a433bfb9.md) | 114 | `declaration-track:3f2070d6f890d8b3a433bfb9d7e59abf1d3ebea1deb188b50a31143c34101143` |
| 16 | `abbrev` | [moduleCatHomologyπ](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecathomology--95518f3a0c7709e6c3805ee8.md) | 119 | `declaration-track:95518f3a0c7709e6c3805ee850efd85edd5506409256a2b7e2022c0f8a925092` |
| 17 | `lemma` | [moduleCatLeftHomologyData_f'_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatlefthomologydata-f-hom--d41537dc4fccf7b0dddd8d0d.md) | 128 | `result-track:d41537dc4fccf7b0dddd8d0d76dde639556b25ceee5d5c2d16c21c4e52e5b570` |
| 18 | `lemma` | [moduleCatLeftHomologyData_descH_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatlefthomologydata-desch-hom--2bdc82ef39bc691c09038384.md) | 135 | `result-track:2bdc82ef39bc691c090383847019d8701c34e8a75a052cb74891dc05d34afc9c` |
| 19 | `lemma` | [moduleCatLeftHomologyData_liftK_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatlefthomologydata-liftk-hom--d8c30a94431889f0712c7c97.md) | 142 | `result-track:d8c30a94431889f0712c7c9797b28fd429465a811b5c36437d9d03d66d4a5287` |
| 20 | `def` | [moduleCatCyclesIso](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatcyclesiso--7a27536539ec7a9ba28fc92b.md) | 149 | `declaration-track:7a27536539ec7a9ba28fc92bf2c6a0df911cc13a737c89d6ec9e66d5a38d697f` |
| 21 | `lemma` | [moduleCatCyclesIso_hom_i](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatcyclesiso-hom-i--8e4037b728d53da907b604a9.md) | 153 | `result-track:8e4037b728d53da907b604a9fb1ff1d1e570b4194eb648102a3dba189bc07dae` |
| 22 | `lemma` | [moduleCatCyclesIso_inv_iCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatcyclesiso-inv-icycles--bd03ca0e53225aa4eee1b634.md) | 161 | `result-track:bd03ca0e53225aa4eee1b634dce41fa17150bea501994f02c3cc09835d858890` |
| 23 | `lemma` | [toCycles_moduleCatCyclesIso_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/tocycles-modulecatcyclesiso-hom--759726710c040751312e5f55.md) | 166 | `result-track:759726710c040751312e5f55c489dd14fc1f43aa0703df44f5023213152799c2` |
| 24 | `def` | [moduleCatHomologyIso](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecathomologyiso--a3ac155b7df599be099f7491.md) | 174 | `declaration-track:a3ac155b7df599be099f7491bb8ed96cbee02ea75e479eb1406f5aeccdf9888e` |
| 25 | `lemma` | [π_moduleCatCyclesIso_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatcyclesiso-hom--98a87bc1ed2a5dc0763cd424.md) | 179 | `result-track:98a87bc1ed2a5dc0763cd424030484fb41ee77ce8b4cdacd97134228b19864c9` |
| 26 | `lemma` | [moduleCatCyclesIso_inv_π](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/modulecatcyclesiso-inv--89ed5695d011ed605775e75e.md) | 185 | `result-track:89ed5695d011ed605775e75ed809141dbbc9eb0ae3ec195f48030eaae478e776` |
| 27 | `lemma` | [exact_iff_surjective_moduleCatToCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/declarations/exact-iff-surjective-modulecattocycles--08ee0ec04e0264c4bb6a7a6b.md) | 190 | `result-track:08ee0ec04e0264c4bb6a7a6b08bdfce956c3a1f6a657aa8e74ac3d35780bd60f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
