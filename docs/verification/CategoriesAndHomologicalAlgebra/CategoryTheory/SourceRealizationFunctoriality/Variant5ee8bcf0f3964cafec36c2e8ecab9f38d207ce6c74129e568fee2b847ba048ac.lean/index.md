# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceRealizationFunctoriality.Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a368753210d4611ed48d79991cc5cb2b03fd1a0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a368753210d4611ed48d79991cc5cb2b03fd1a0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Prismatic.Totalization` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SourceRealization.Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/declarations/sourcerealization-hom--d84a8977abed04625576971b.md) | 22 | `declaration-track:d84a8977abed04625576971bb4421a43061a9f6c2a775d57d12cf50bfab60110` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/declarations/id--aa846cd11c9655942c11a2ac.md) | 39 | `declaration-track:aa846cd11c9655942c11a2ac8122322fb9359cb041fd806eebaa3666f9658373` |
| 3 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/declarations/comp--14ee1a537393e5d9e6e6b86d.md) | 50 | `declaration-track:14ee1a537393e5d9e6e6b86df8764a86e0300106b3532c47fe12c2c84a4ab186` |
| 4 | `def` | [toPrismaticMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/declarations/toprismaticmap--519ebb6afcca0be0a49751ad.md) | 64 | `declaration-track:519ebb6afcca0be0a49751ad270a38970c380a036220ea09b7a4388971277e15` |
| 5 | `theorem` | [toPrismaticMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/declarations/toprismaticmap-id--807a9d21c5ba939ebe137a70.md) | 76 | `result-track:807a9d21c5ba939ebe137a700d7a00078e6bb5ef1dcc384f136c93c57c4c4ddc` |
| 6 | `theorem` | [toPrismaticMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/declarations/toprismaticmap-comp--2f58763ec240ee5d2b75f1ea.md) | 86 | `result-track:2f58763ec240ee5d2b75f1ea8ce6e745827e478a7529b5efbe6c6a12ce46bd45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
