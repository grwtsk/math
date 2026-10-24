# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48cbbc3c4c2832ad3b55e61b838efdf46b1e28ac",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48cbbc3c4c2832ad3b55e61b838efdf46b1e28ac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean.json)

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
| 1 | `inductive` | [coendRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/coendrel--677436569d63894196e38b43.md) | 33 | `declaration-track:677436569d63894196e38b435a9c16cc5f8243697d4097931f162ed500fa0c97` |
| 2 | `lemma` | [coendRel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/coendrel-iff--10fda06bd1514ce910048ca3.md) | 38 | `result-track:10fda06bd1514ce910048ca3ba4bf9ffc533ddb4f02f8f97d2798b5c821dddae` |
| 3 | `abbrev` | [coend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/coend--6e83a306527fadb537e4ac01.md) | 49 | `declaration-track:6e83a306527fadb537e4ac01982e8d639609eea86c81f963ae122b46625677fc` |
| 4 | `def` | [coend.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/coend--e8e05ca7915973a579ff2bf4.md) | 53 | `declaration-track:e8e05ca7915973a579ff2bf42aabd9bae8b30ade20f53dc5bf1dc36c16085d71` |
| 5 | `lemma` | [coend.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/coend-condition--f83180ac37455ded3e1ab86d.md) | 58 | `result-track:f83180ac37455ded3e1ab86d2ec1db0247d1611809d2cddd35a352b26f2d2555` |
| 6 | `def` | [cowedge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/cowedge--da95afcd0bb076f11be753ec.md) | 67 | `declaration-track:da95afcd0bb076f11be753ec8960e188570429e10891a876c2e0385899a8b7b9` |
| 7 | `def` | [cowedgeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/cowedgeiscolimit--a66c599029aff1c9c7853645.md) | 70 | `declaration-track:a66c599029aff1c9c7853645019debb59d572605b65051794608fbf157321fea` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/instance--0a4500a98287d4fa4d515df2.md) | 79 | `declaration-track:0a4500a98287d4fa4d515df2b0dbff7bd3ef82439cbbd7b56ce9f033537af126` |
| 9 | `lemma` | [Types.chosenCoend_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/types-chosencoend-def--1626ae92eb1f1afe71c9a804.md) | 85 | `result-track:1626ae92eb1f1afe71c9a804da281c1981fba11f28316abce3c3ab13ef8a7c1b` |
| 10 | `lemma` | [chosenCoend.ι_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/chosencoend-apply--8c654a72d3167aac1c3f568c.md) | 89 | `result-track:8c654a72d3167aac1c3f568ceb5a1f8fdc63e06b8b87cd73598c6084c9ea0b2a` |
| 11 | `lemma` | [chosenCoend.desc_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/chosencoend-desc-apply--3c7e1418f25263d76df1d08c.md) | 93 | `result-track:3c7e1418f25263d76df1d08cc79320d7044214e08a91c90abe55d22d41983602` |
| 12 | `lemma` | [chosenCoend.map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/chosencoend-map-apply--f748e155783bb8ab80a0fe0f.md) | 100 | `result-track:f748e155783bb8ab80a0fe0fff2394438a1a33e606614187e627c1b8f548654a` |
| 13 | `abbrev` | [end_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/end--86bed308476ef5e2d49cb0c6.md) | 116 | `declaration-track:86bed308476ef5e2d49cb0c6012b5dc620c6457daf4e0ef25bae00fa5fa7798d` |
| 14 | `def` | [end_.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/end--92d2f0d6e615598bbdd1e457.md) | 123 | `declaration-track:92d2f0d6e615598bbdd1e45788df4b87a2e51cf2487bbc45815ce43dacb52252` |
| 15 | `lemma` | [end_.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/end-condition--952250c431f11b8c1f8bef0f.md) | 128 | `result-track:952250c431f11b8c1f8bef0fe38b78f22c937c62eb7a68d44d28f8a373a2f4a2` |
| 16 | `def` | [wedge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/wedge--d37aac5e66ed140b8243c1dd.md) | 136 | `declaration-track:d37aac5e66ed140b8243c1dd6ac1370884553132613c489516a1001bc58a4c8d` |
| 17 | `def` | [wedgeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/wedgeislimit--ad806a6356197ead8b632199.md) | 139 | `declaration-track:ad806a6356197ead8b63219988643dcad3ba2e46ca8b48048f779b87f7b75ffd` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/instance--53b97bbcfff1b6e9bc9c30be.md) | 153 | `declaration-track:53b97bbcfff1b6e9bc9c30be979219d525dcc96d38b043a6bb95f66e31fec36e` |
| 19 | `lemma` | [Types.chosenEnd_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/types-chosenend-def--f97cb486cd83272ffc2e79d0.md) | 159 | `result-track:f97cb486cd83272ffc2e79d0f207774fe23a7f5eaa2cc6d1dbd4ab93d47859d3` |
| 20 | `lemma` | [chosenEnd.π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/chosenend-apply--0825f70f5010bb450fa5c6b1.md) | 163 | `result-track:0825f70f5010bb450fa5c6b13da685ca2541c167e140672bbeaedf09f63414e4` |
| 21 | `lemma` | [chosenEnd.lift_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/chosenend-lift-apply--b5969bd8dae44be456806926.md) | 167 | `result-track:b5969bd8dae44be456806926d8c895ed097ed4d6b6ebb064d5088d4bee92b448` |
| 22 | `lemma` | [chosenEnd.map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant9c6445c5df62aba609620aaf32b3a6142f5e9fb10f8e0f4d730d58fe19839b22.lean/declarations/chosenend-map-apply--b8374ac84c4793e3cd9c8885.md) | 173 | `result-track:b8374ac84c4793e3cd9c88851bfb247018053ff7f3077cc5cbfc7ad7b1644f6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
