# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasFibers.Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d4f872a4541d98c3586765805e53e7ee678bd71",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d4f872a4541d98c3586765805e53e7ee678bd71`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasFibers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/hasfibers--b301832fa56a934f7ccf206a.md) | 66 | `declaration-track:b301832fa56a934f7ccf206a1cb634e454d36498ec4eb4e5b024e7d7b66084c5` |
| 2 | `def` | [canonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/canonical--513e69fba683d7a159194c75.md) | 82 | `declaration-track:513e69fba683d7a159194c75e48bcad58c92eb3d7809fb6633435756ca6d17c8` |
| 3 | `def` | [inducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/inducedfunctor--9370a5f8eb90644af69a3509.md) | 96 | `declaration-track:9370a5f8eb90644af69a3509979849be1969da3c067eb9c1fd517648188834b7` |
| 4 | `def` | [inducedFunctor.natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/inducedfunctor-natiso--dad00f9b1f61ac98df600015.md) | 100 | `declaration-track:dad00f9b1f61ac98df60001582313dba5de5e4d9ebc2cdd523411abbbec94dc2` |
| 5 | `lemma` | [inducedFunctor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/inducedfunctor-comp--f2485d9069c28a506f01501a.md) | 103 | `result-track:f2485d9069c28a506f01501a6eb46bc6ac7b773803a6fd40b0f094342b9b93a4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/instance--87966270612b170921c82280.md) | 106 | `declaration-track:87966270612b170921c82280efd923fd6ac8aeb10ee1aedaf84526bd38aca424` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/instance--e17463467b09494b6a87f0c6.md) | 108 | `declaration-track:e17463467b09494b6a87f0c663179f562c2364d55b78f254846106572e6627b8` |
| 8 | `lemma` | [proj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/proj-eq--12b7a1a959dc03a560e34474.md) | 118 | `result-track:12b7a1a959dc03a560e34474f1b8ca0a5af8cbcdae79cbf30b6b9f3bd29a060a` |
| 9 | `def` | [projMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/projmap--e9f2fde5ad5bef269a1c81f1.md) | 123 | `declaration-track:e9f2fde5ad5bef269a1c81f1178aec16424e7b5923c5acc5dc3e823aa7b20014` |
| 10 | `instance` | [homLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/homlift--db93bc312b9f304226dfcb01.md) | 129 | `declaration-track:db93bc312b9f304226dfcb0189711862a3fc22cdd59240d064522fd244dea363` |
| 11 | `def` | [Fib.homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/fib-hommk--ae2106266868726ea53b42ce.md) | 136 | `declaration-track:ae2106266868726ea53b42ce94a25a5290189dff525fafef6be815250e1a08a3` |
| 12 | `lemma` | [Fib.map_homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/fib-map-hommk--73da9ead4d77ab76d50fe33f.md) | 142 | `result-track:73da9ead4d77ab76d50fe33fb9acaaed38d3cc657d9099b323e213380374d443` |
| 13 | `lemma` | [Fib.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/fib-hom-ext--6aaa731ffbc76b83d5140aa9.md) | 147 | `result-track:6aaa731ffbc76b83d5140aa9937bb439b5cfacbb37f33f27c992ced580995462` |
| 14 | `def` | [Fib.isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/fib-isomk--347f9d1fb7831c8bcf00874a.md) | 154 | `declaration-track:347f9d1fb7831c8bcf00874a2a75822c1c4938025710bde59d7ac5002c9ed5ee` |
| 15 | `def` | [Fib.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/fib-mk--23b671978480d4d2934378cc.md) | 160 | `declaration-track:23b671978480d4d2934378cc5a0dc1713b59ee369ea1cc7e204bd0aede672252` |
| 16 | `def` | [Fib.mkIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/fib-mkisoself--f634c90f6b8df44ae90ecc5b.md) | 164 | `declaration-track:f634c90f6b8df44ae90ecc5b2794a9c4f02d03c069980e0c7ec5c75496a05dc8` |
| 17 | `instance` | [Fib.mkIsoSelfIsHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/fib-mkisoselfishomlift--6e06d290272b055de5e4f400.md) | 168 | `declaration-track:6e06d290272b055de5e4f4003275964a9fbcc640b1a9d2e5c1571b8d34548c5d` |
| 18 | `def` | [mkPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/mkpullback--65272ade677294077591036c.md) | 178 | `declaration-track:65272ade677294077591036cbf4117d3010a9eeb71f848e1bd99341ee7350cee` |
| 19 | `def` | [pullbackMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/pullbackmap--a2416bad1455beabe43c5d1f.md) | 182 | `declaration-track:a2416bad1455beabe43c5d1f1a5731605ab5f1ee0da5a49e0b08735b86883873` |
| 20 | `instance` | [pullbackMap.isCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/pullbackmap-iscartesian--f17d28cb83b34f414753fc5f.md) | 187 | `declaration-track:f17d28cb83b34f414753fc5f1865ff3cc360167d493f2188b6aa6d97dfa7f9a7` |
| 21 | `def` | [inducedMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/inducedmap--430522a9421ae5d75da92a1a.md) | 207 | `declaration-track:430522a9421ae5d75da92a1ab3e458979de53905c985cd60eb2c6b51a7efcff1` |
| 22 | `lemma` | [inducedMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/inducedmap-comp--0dd951d7c5a600ba09618486.md) | 211 | `result-track:0dd951d7c5a600ba09618486ca8734155161fa2fbc640751728e6f8799fd1f16` |
| 23 | `lemma` | [fiber_factorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/declarations/fiber-factorization--f1b86a65ccff17034469687c.md) | 237 | `result-track:f1b86a65ccff17034469687c8f8361da2568fc41089c3719b9ad3a251b375e0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
