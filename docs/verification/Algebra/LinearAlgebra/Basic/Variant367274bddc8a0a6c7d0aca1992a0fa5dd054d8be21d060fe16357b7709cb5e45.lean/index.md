# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f73058f450b323cddb80cd92a592b7315638c15d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f73058f450b323cddb80cd92a592b7315638c15d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Pullback` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/instance--3520cb6640b33ecc59e413d9.md) | 28 | `declaration-track:3520cb6640b33ecc59e413d9dc117135a35884ad3c4e02b767a52ca79cac41a9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/instance--9c02e9175e5ba526202c3c0a.md) | 31 | `declaration-track:9c02e9175e5ba526202c3c0ae802e9c54edd55764736f7b14747212960d435ef` |
| 3 | `def` | [toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/toalghom--3d4b8a2e704963ccac7e2631.md) | 34 | `declaration-track:3d4b8a2e704963ccac7e263121c9bd9ae30a568e57865b97bea196adb33ccc28` |
| 4 | `lemma` | [toAlgHom_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/toalghom-id--7116580212935b470fde3d11.md) | 41 | `result-track:7116580212935b470fde3d1178d75d13acd51dc858f9c35407258774136aed11` |
| 5 | `lemma` | [toAlgHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/toalghom-comp--25b53347670ec58382c70405.md) | 44 | `result-track:25b53347670ec58382c70405c81b388fddcd0be2d9fd012957128d679e7b21e1` |
| 6 | `lemma` | [toAlgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/toalghom-apply--f2b6fbd067c0e5510f216ae5.md) | 48 | `result-track:f2b6fbd067c0e5510f216ae59a91b530e17fe7770989a1c9cab1e80942d3f493` |
| 7 | `def` | [mkUnder](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/mkunder--711d16100c438aa6d8916280.md) | 55 | `declaration-track:711d16100c438aa6d891628076f84d3aebeba67bb234922da3dc3edaf92121e0` |
| 8 | `lemma` | [mkUnder_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/mkunder-ext--fb6f73b31a7ebd9e35d7ce6e.md) | 59 | `result-track:fb6f73b31a7ebd9e35d7ce6e819454dbc6fe01886c6280777fcdacba863aecce` |
| 9 | `def` | [toUnder](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tounder--180df8ff3d2ed6ff8963839e.md) | 70 | `declaration-track:180df8ff3d2ed6ff8963839eba8dde84ae7c60b1ba8828d801eb4f92c3c8a081` |
| 10 | `lemma` | [toUnder_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tounder-right--41d69daab6d16c7a25c44008.md) | 77 | `result-track:41d69daab6d16c7a25c44008e6b63f79cd7ac643b4eaf96c17a26be9daacfc7b` |
| 11 | `lemma` | [toUnder_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tounder-comp--89bc8108a2447b0d28eb9ea9.md) | 83 | `result-track:89bc8108a2447b0d28eb9ea90e45053962a4000112831e11101ada01288fb2b2` |
| 12 | `def` | [toUnder](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tounder--0d7d8282344df338e78c13a7.md) | 93 | `declaration-track:0d7d8282344df338e78c13a7165fef2f5ee01b2748524f3f5866623a325a327b` |
| 13 | `lemma` | [toUnder_hom_right_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tounder-hom-right-apply--766d4d1aeb99eac7c4674783.md) | 106 | `result-track:766d4d1aeb99eac7c467478359213942cf86c2a033f2698ca03afcca05014857` |
| 14 | `lemma` | [toUnder_inv_right_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tounder-inv-right-apply--35fa1acf7640de39e4798d1c.md) | 111 | `result-track:35fa1acf7640de39e4798d1c4b82413860528f857a91587ecef394946c0d3910` |
| 15 | `lemma` | [toUnder_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tounder-trans--375d7d7ce4216a4c188a3b5c.md) | 116 | `result-track:375d7d7ce4216a4c188a3b5ce8d8f2b8dd5588836ba59e4349dc5478088b5f9f` |
| 16 | `def` | [tensorProd](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tensorprod--148264b3d0882d6693361fb0.md) | 130 | `declaration-track:148264b3d0882d6693361fb0f227b992f92a911ebb83c3c1801182f279c07446` |
| 17 | `def` | [tensorProdObjIsoPushoutObj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tensorprodobjisopushoutobj--1519ec8139803aa96d7e9fac.md) | 137 | `declaration-track:1519ec8139803aa96d7e9fac42d1d620fe9664e39099d5e36a7c1739ff43e334` |
| 18 | `lemma` | [pushout_inl_tensorProdObjIsoPushoutObj_inv_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/pushout-inl-tensorprodobjisopushoutobj-inv-right--c22192f1f1b59c2b23b3167e.md) | 145 | `result-track:c22192f1f1b59c2b23b3167edb2dd1faeff6ad6eabb750cb9e3805c234595a00` |
| 19 | `lemma` | [pushout_inr_tensorProdObjIsoPushoutObj_inv_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/pushout-inr-tensorprodobjisopushoutobj-inv-right--a8d660bfbfd6cfb6bc5238c0.md) | 151 | `result-track:a8d660bfbfd6cfb6bc5238c0b0448a26a147d5c6c806d92354308568b29027d0` |
| 20 | `def` | [tensorProdIsoPushout](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tensorprodisopushout--5ea6b9d8ec6d94d7951667db.md) | 159 | `declaration-track:5ea6b9d8ec6d94d7951667db5f73140aad3595f02c8a191fac686d391320226c` |
| 21 | `lemma` | [tensorProdIsoPushout_app](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant367274bddc8a0a6c7d0aca1992a0fa5dd054d8be21d060fe16357b7709cb5e45.lean/declarations/tensorprodisopushout-app--d29e77f589662ee27b234e44.md) | 174 | `result-track:d29e77f589662ee27b234e44991fb09bb8c0e35af832d789b3b0249c0c0c712b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
