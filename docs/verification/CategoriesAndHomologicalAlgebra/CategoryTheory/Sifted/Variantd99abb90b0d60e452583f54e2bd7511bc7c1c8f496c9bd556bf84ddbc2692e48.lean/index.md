# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sifted.Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "420f951f1881b1e140f260ae6c664b15a16e0642",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `420f951f1881b1e140f260ae6c664b15a16e0642`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean.json)

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
| 1 | `abbrev` | [IsSiftedOrEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/issiftedorempty--2b180f7e4353bc48b6198169.md) | 59 | `declaration-track:2b180f7e4353bc48b6198169d44bee7f3f866377d6ef8082682375366618be57` |
| 2 | `class` | [IsSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/issifted--0c6c4f4080c2956b583353b1.md) | 64 | `declaration-track:0c6c4f4080c2956b583353b1f476cf0f2b2d1146b1f2607915b321aeb5a9a24a` |
| 3 | `lemma` | [isSifted_of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/issifted-of-equiv--79b1345ea7f2c10f2fe4e4ec.md) | 79 | `result-track:79b1345ea7f2c10f2fe4e4ec2664a3eaa92e76be250c59a8eb517656144c473a` |
| 4 | `lemma` | [isSifted_iff_asSmallIsSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/issifted-iff-assmallissifted--45a8bbff86fbda4d42bcec68.md) | 91 | `result-track:45a8bbff86fbda4d42bcec685fbda0b92aa8d244ea73daf5c5073e2d628257f9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/instance--eeda38479e5c6ba8951cb004.md) | 96 | `declaration-track:eeda38479e5c6ba8951cb0049389207715b6a09233beebe49ea5989de6f7e3e5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/instance--09faa33bb59f262e94b5ed96.md) | 111 | `declaration-track:09faa33bb59f262e94b5ed96c47cc7d4b155c998c1eade291474612724faaa6f` |
| 7 | `instance` | [isSifted_of_hasBinaryCoproducts_and_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/issifted-of-hasbinarycoproducts-and-nonempty--0e401a5c81a56505c8688427.md) | 127 | `declaration-track:0e401a5c81a56505c8688427e6b6c95b1f17a1f3bfc5a157b9ef99983baa2d31` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/instance--e153b93149b592e0a7fc1a3c.md) | 134 | `declaration-track:e153b93149b592e0a7fc1a3cc1e433dbcb262f321d3e5e36681b5a4f33e1952a` |
| 9 | `instance` | [prod_isSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/prod-issifted--47bd0573a3b572d77cb39799.md) | 140 | `declaration-track:47bd0573a3b572d77cb397993351f877ce601b9051ccaf94afaddb13fa4b7d12` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/instance--984801a187b45dbf086d090d.md) | 153 | `declaration-track:984801a187b45dbf086d090d8df2b8b6c47572d25a8a95b520df5b683501bfee` |
| 11 | `lemma` | [factorization_prodComparison_colim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/factorization-prodcomparison-colim--e975527b80e0cb636646560b.md) | 177 | `result-track:e975527b80e0cb636646560b37ad1b504cba62c763f1395706b6ecf8d180d32f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/instance--efcae412a329d4e0aadbe850.md) | 193 | `declaration-track:efcae412a329d4e0aadbe850a40a42958cbab06614a4f20b43807f5bc715f84e` |
| 13 | `instance` | [colim_preservesLimits_pair_of_sSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/colim-preserveslimits-pair-of-ssifted--fe4dee9b06000a8ea51d2e07.md) | 197 | `declaration-track:fe4dee9b06000a8ea51d2e070a0e133865177dbd8165ab4f82e4f18ea5eefb83` |
| 14 | `instance` | [colim_preservesBinaryProducts_of_isSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/colim-preservesbinaryproducts-of-issifted--289a1d4bc78f5fd96582397a.md) | 202 | `declaration-track:289a1d4bc78f5fd96582397aaa18e1332b726a12676c9d941d0bfb978f3b5196` |
| 15 | `instance` | [colim_preservesTerminal_of_isSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/colim-preservesterminal-of-issifted--ff434a9adc44c66ddb4935ac.md) | 209 | `declaration-track:ff434a9adc44c66ddb4935acd47cb1ab684d5cea580e5dbdcaad439f5d1430de` |
| 16 | `instance` | [colim_preservesLimitsOfShape_pempty_of_isSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/colim-preserveslimitsofshape-pempty-of-issifted--2394e9696cf5f108a2b90320.md) | 219 | `declaration-track:2394e9696cf5f108a2b9032097912fddaaac07fc9cf854e9c2bc96cf0c33ec8a` |
| 17 | `instance` | [colim_preservesFiniteProducts_of_isSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/colim-preservesfiniteproducts-of-issifted--26d6b003a4743801200ac299.md) | 224 | `declaration-track:26d6b003a4743801200ac299ad98c27625d6a19893eeefaf2597f73df0bf8df4` |
| 18 | `theorem` | [isSiftedOrEmpty_of_colim_preservesBinaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/issiftedorempty-of-colim-preservesbinaryproducts--23ed52ca30ccd550bef191ba.md) | 238 | `result-track:23ed52ca30ccd550bef191ba6e71e36e4d0b932d5cf753176579ad4b336d978d` |
| 19 | `lemma` | [isSiftedOrEmpty_of_colim_preservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/issiftedorempty-of-colim-preservesfiniteproducts--75211300d94a038057ec1ff5.md) | 252 | `result-track:75211300d94a038057ec1ff55b68bc7f2f4062e560f2b39dbd3438e4830d45e0` |
| 20 | `lemma` | [nonempty_of_colim_preservesLimitsOfShapeFinZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/nonempty-of-colim-preserveslimitsofshapefinzero--6c139bd076bf1dfc1b801707.md) | 257 | `result-track:6c139bd076bf1dfc1b80170738ee5266496a1c379a70eb4630da4807be63f8aa` |
| 21 | `theorem` | [of_colim_preservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/of-colim-preservesfiniteproducts--85f9dc94064849acfcb89d8b.md) | 273 | `result-track:85f9dc94064849acfcb89d8b50051b2ddc1386243579280e839d93de9585ed7c` |
| 22 | `theorem` | [of_final_functor_from_sifted'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/of-final-functor-from-sifted--387bab6a4b2a1c4dbb6be331.md) | 284 | `result-track:387bab6a4b2a1c4dbb6be3317fab380b34c7a4b203d644acaa8bcc8cd208f39f` |
| 23 | `theorem` | [IsSifted.of_final_functor_from_sifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantd99abb90b0d60e452583f54e2bd7511bc7c1c8f496c9bd556bf84ddbc2692e48.lean/declarations/issifted-of-final-functor-from-sifted--cd1cec53862f8f374a66a2e9.md) | 299 | `result-track:cd1cec53862f8f374a66a2e96e949d58bab6eb502fcfb92134767146c7bcc5d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
