# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "771a1f527272db0b41522f4cee03aff1db6c4934",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `771a1f527272db0b41522f4cee03aff1db6c4934`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean.json)

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
| 1 | `def` | [precomposingCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/precomposingcat--f4f91fd4a5962b0adfca6ff6.md) | 32 | `declaration-track:f4f91fd4a5962b0adfca6ff60051b3833fc1b992b8ead3c475777f5f86499631` |
| 2 | `def` | [postcomposingCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/postcomposingcat--f24fdd94f08d32323ed27af9.md) | 39 | `declaration-track:f24fdd94f08d32323ed27af98ab3cc543c79bf1c68edaf50381bfdd4eb0462b3` |
| 3 | `def` | [leftUnitorNatIsoCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/leftunitornatisocat--289c8b8da3ab16455fcc897e.md) | 46 | `declaration-track:289c8b8da3ab16455fcc897e0e1b6418ac55bf7a00e80bd10bbdb3a67e8bcd29` |
| 4 | `def` | [associatorNatIsoRightCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/associatornatisorightcat--8098446daf716d4e74889e27.md) | 52 | `declaration-track:8098446daf716d4e74889e27ae96ff13f1a415759da65c4b84b28111d2ad4679` |
| 5 | `def` | [associatorNatIsoMiddleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/associatornatisomiddlecat--991b446aa5362455dc311e57.md) | 60 | `declaration-track:991b446aa5362455dc311e57b096d148ed6cf197c4950bd6baaedd8a1e28f68b` |
| 6 | `def` | [rightUnitorNatIsoCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/rightunitornatisocat--7ac41e9953bd1ad9361ad5d5.md) | 68 | `declaration-track:7ac41e9953bd1ad9361ad5d5ef956e8fdd0eded4f05c7e5be62f0092cf7975af` |
| 7 | `def` | [associatorNatIsoLeftCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/associatornatisoleftcat--8954985be001de10d52d569c.md) | 74 | `declaration-track:8954985be001de10d52d569cbd55996ec0c7d1dba842f24f903962931858a4c9` |
| 8 | `def` | [yoneda₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/yoneda--f28557ceb28a4c2cd6a1eed6.md) | 88 | `declaration-track:f28557ceb28a4c2cd6a1eed671449ab0b8bf91af2633f2ab164d48ef71927994` |
| 9 | `def` | [postcomp₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/postcomp--2c2f3494e4e87fc662627396.md) | 98 | `declaration-track:2c2f3494e4e87fc66262739610bf96d9e4d5d69c1f86514ddda386cc17d3ffe5` |
| 10 | `def` | [postcomposing₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/postcomposing--5d23039a3d88278873c74598.md) | 109 | `declaration-track:5d23039a3d88278873c74598bf424c18f8304cc988d1c4669d02dcc0f5364252` |
| 11 | `def` | [yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/declarations/yoneda--72e80ddff2d2c1edef5d5344.md) | 122 | `declaration-track:72e80ddff2d2c1edef5d5344b47e087d15e09ff63603e80a336d90c80fc32b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
