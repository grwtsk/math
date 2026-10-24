# Verification target: GRWTSK.Algebra.LinearAlgebra.LocalRing.Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96f69a6f421625af228e65a8e884988d552b8655",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96f69a6f421625af228e65a8e884988d552b8655`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean.json)

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
| 1 | `theorem` | [isLocalRing_of_isAdicComplete_maximal](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/islocalring-of-isadiccomplete-maximal--8c57ef34c654b9295e44eade.md) | 49 | `result-track:8c57ef34c654b9295e44eade623990011327d247cf86d4e41a038e7e08f86be0` |
| 2 | `lemma` | [isAdicComplete_self](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/isadiccomplete-self--66e280a1558cbf963f318a2a.md) | 61 | `result-track:66e280a1558cbf963f318a2a08cab6e8e9376f4f8cfbb81780945658390c1b7e` |
| 3 | `lemma` | [isMaximal_map_of_le](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/ismaximal-map-of-le--68044c65ef4289d7ba2fbe42.md) | 65 | `result-track:68044c65ef4289d7ba2fbe422ea03c6e7767350aa34cb046e6748afedb2e9c5b` |
| 4 | `lemma` | [isLocalRing_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/islocalring-of-fg--e9cb1a0801925753c3deffb9.md) | 78 | `result-track:e9cb1a0801925753c3deffb903996443a8bd0f5014a7ce0aa026947dc23a5f89` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/instance--9cdf30c2df01a4ef23d7ac25.md) | 85 | `declaration-track:9cdf30c2df01a4ef23d7ac254c069dc2f75d6b14d46917f56b071dfd5b40f049` |
| 6 | `lemma` | [maximalIdeal_eq_map_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/maximalideal-eq-map-of-fg--5e1b148dec327e702504fa0c.md) | 88 | `result-track:5e1b148dec327e702504fa0c22f7049d2d77ba5d866e9166cc03f87a31dca735` |
| 7 | `lemma` | [maximalIdeal_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/maximalideal-eq-map--3281f94a06fed27288ff2a7c.md) | 95 | `result-track:3281f94a06fed27288ff2a7c7044d021ba3bb4a7583dd36b087581f70e417619` |
| 8 | `lemma` | [mem_maximalIdeal_iff_eval_one_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/mem-maximalideal-iff-eval-one-eq-zero--b678cd6027b91b61c33fcb54.md) | 101 | `result-track:b678cd6027b91b61c33fcb5415cf25b00bbef99ceb8b5eed66015abd7ecb21e5` |
| 9 | `lemma` | [algebraMap_isLocalHom_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/algebramap-islocalhom-of-fg--8a11b16ffa4db18c9ac502ec.md) | 110 | `result-track:8a11b16ffa4db18c9ac502ec6d256037611532aa1f2887636389a1cca888ff67` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/instance--31a9f7132843ba2882ae991c.md) | 116 | `declaration-track:31a9f7132843ba2882ae991c74d72dcb50acc208c821ed4ea212b8f6479e0dfb` |
| 11 | `lemma` | [isAdicComplete_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/isadiccomplete-of-fg--8c457449c567c1c2489e9aa8.md) | 120 | `result-track:8c457449c567c1c2489e9aa8b616630269bb75ca76fe84526e103b5759633ce8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/instance--5762afd610a9186e2d5828da.md) | 127 | `declaration-track:5762afd610a9186e2d5828da5d69c9a9bab33154d82e5a62b809b9c8eb3ead7c` |
| 13 | `lemma` | [residueField_map_bijective_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/residuefield-map-bijective-of-fg--33be1c4c403d76064fe927cf.md) | 131 | `result-track:33be1c4c403d76064fe927cfb1e196efc15402236cb56c65e117b264531c79e6` |
| 14 | `lemma` | [residueField_map_bijective](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/residuefield-map-bijective--73ac795928917d400af75bb4.md) | 151 | `result-track:73ac795928917d400af75bb487f0bca0e2ce0c303b1c230894a8923f80e1910c` |
| 15 | `lemma` | [spanFinrank_maximalIdeal_eq](../../../../../mathematics/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/declarations/spanfinrank-maximalideal-eq--956acd14d1b372960856f1fc.md) | 156 | `result-track:956acd14d1b372960856f1fc0934e47dfcebcbcf5303683429a38a8158f57c53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
