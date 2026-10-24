# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivalenceGroupAddGroup.Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcf2e1021df57bb270d4dd0cdc07fc443c071152",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcf2e1021df57bb270d4dd0cdc07fc443c071152`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toAddGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean/declarations/toaddgrp--8cee25899bdc959a8921c131.md) | 26 | `declaration-track:8cee25899bdc959a8921c131ab5a54fdf1c72f045e1ff8d908a86597c2441d35` |
| 2 | `def` | [toAddCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean/declarations/toaddcommgrp--5a5183e4259bf9b46b7208ed.md) | 37 | `declaration-track:5a5183e4259bf9b46b7208ed1cbf7a9fa3ebc38ada4db0e8871b31b8861f4e6f` |
| 3 | `def` | [toGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean/declarations/togrp--a8d9e06cd19d90d0a98e93dc.md) | 48 | `declaration-track:a8d9e06cd19d90d0a98e93dc600a216ab77c5dd59f640ed91f259c8cbdcec640` |
| 4 | `def` | [toCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean/declarations/tocommgrp--4004dac044aea7878d458f9b.md) | 59 | `declaration-track:4004dac044aea7878d458f9b3eb43e0962007eb0e5c3c325268d8f089e3fb5de` |
| 5 | `def` | [groupAddGroupEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean/declarations/groupaddgroupequivalence--6af5c9eaa4d8a93754247dc2.md) | 68 | `declaration-track:6af5c9eaa4d8a93754247dc2037789ccc269d47e14e1d4b1492dd91187c79a3d` |
| 6 | `def` | [commGroupAddCommGroupEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5.lean/declarations/commgroupaddcommgroupequivalence--594a092a1805c8c1da704f24.md) | 77 | `declaration-track:594a092a1805c8c1da704f2456c778c5457898c6a69ceca44c47750f7924c8dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
