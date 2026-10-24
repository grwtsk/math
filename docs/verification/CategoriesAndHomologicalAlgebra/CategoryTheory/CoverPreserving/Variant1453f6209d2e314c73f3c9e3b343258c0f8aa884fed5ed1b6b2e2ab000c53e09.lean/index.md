# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoverPreserving.Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c40537dce3241a2472bb5c3f3820451eec48d65e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c40537dce3241a2472bb5c3f3820451eec48d65e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean.json)

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
| 1 | `structure` | [CoverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/coverpreserving--a78aa08dbc5e0d972c04c19c.md) | 67 | `declaration-track:a78aa08dbc5e0d972c04c19c5fb67a65cdcf8ac047baba9746355a068e5daaf9` |
| 2 | `theorem` | [idCoverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/idcoverpreserving--ba15d930e1ce5684c6982bd7.md) | 71 | `result-track:ba15d930e1ce5684c6982bd79fa6743f05bdf0ceb3b60af0e133572e14aae96e` |
| 3 | `theorem` | [CoverPreserving.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/coverpreserving-comp--6a3394c196d05292cc3c1bd5.md) | 75 | `result-track:6a3394c196d05292cc3c1bd538d5f5152af19bd36f84bbfaa83d02d09d1f93c5` |
| 4 | `structure` | [CompatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/compatiblepreserving--39d20fa897904cfc00730fe5.md) | 87 | `declaration-track:39d20fa897904cfc00730fe588224428a9ca0e57ba78c0c0c524c1712018faba` |
| 5 | `theorem` | [Presieve.FamilyOfElements.Compatible.functorPushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/presieve-familyofelements-compatible-functorpushforward--154e7c1178091d4ace339726.md) | 100 | `result-track:154e7c1178091d4ace339726d33d281cf2707c6521f8cfd22837b597df0c756f` |
| 6 | `theorem` | [CompatiblePreserving.apply_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/compatiblepreserving-apply-map--b541f74664c1fec9588ff64b.md) | 112 | `result-track:b541f74664c1fec9588ff64b4ea2f3a6c9e3cfd6f5d4383de2fc962f38d710d3` |
| 7 | `theorem` | [compatiblePreservingOfFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/compatiblepreservingofflat--e47f05b13d9ec1eb0abc45f3.md) | 125 | `result-track:e47f05b13d9ec1eb0abc45f323c9f6247dc0a8ee2af88d3dada44f5ae299fe7a` |
| 8 | `theorem` | [compatiblePreservingOfDownwardsClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/compatiblepreservingofdownwardsclosed--c1f4487fdb6d6b4b93d403db.md) | 154 | `result-track:c1f4487fdb6d6b4b93d403dbbccd31310b4816e73128075160cf0733917c9cb6` |
| 9 | `lemma` | [Functor.isContinuous_of_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/functor-iscontinuous-of-coverpreserving--db0b4ef6e5f079fccd71c0ab.md) | 169 | `result-track:db0b4ef6e5f079fccd71c0ab17185b444b187d3eb29a12fb867ccabaffa5f066` |
| 10 | `lemma` | [CoverPreserving.of_isContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/coverpreserving-of-iscontinuous--b5f9e341e52ed64e0f6b73a1.md) | 185 | `result-track:b5f9e341e52ed64e0f6b73a17a6f265725d508f094e74ba7a2609b4e08a33c9d` |
| 11 | `lemma` | [Functor.isContinuous_iff_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/functor-iscontinuous-iff-coverpreserving--4e280d9e2440a4802da6ebad.md) | 199 | `result-track:4e280d9e2440a4802da6ebad4d5283f430fa9a65cda6a4e390f9af8a05a71980` |
| 12 | `lemma` | [Functor.PreservesOneHypercovers.of_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant1453f6209d2e314c73f3c9e3b343258c0f8aa884fed5ed1b6b2e2ab000c53e09.lean/declarations/functor-preservesonehypercovers-of-coverpreserving--28f4504ac9a8fad0a928804b.md) | 208 | `result-track:28f4504ac9a8fad0a928804b054cf560b72ca64c99afd379d65802eea9b2b3a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
