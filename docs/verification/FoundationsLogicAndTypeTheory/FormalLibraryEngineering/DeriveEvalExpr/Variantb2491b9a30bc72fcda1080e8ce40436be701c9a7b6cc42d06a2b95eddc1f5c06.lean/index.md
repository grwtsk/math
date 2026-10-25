# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveEvalExpr.Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54ee15bc8be1151680816ccbbe0c3b925094863c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54ee15bc8be1151680816ccbbe0c3b925094863c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval.Util` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.DeclNameGen` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withSimpleEvalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean/declarations/withsimpleevalexpr--50c64bfa321c9f5bf6dcc0de.md) | 24 | `declaration-track:50c64bfa321c9f5bf6dcc0de28e95da0634358a4fe823b7eca2b52020d57a11e` |
| 2 | `def` | [ensureEvalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean/declarations/ensureevalexpr--917f1edcda26b08634bef916.md) | 40 | `declaration-track:917f1edcda26b08634bef916c646b48246284214ebdf41765c29423882bf336d` |
| 3 | `def` | [evalMetaEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean/declarations/evalmetaeval--ca3eaa2cd9545008d8237f28.md) | 100 | `declaration-track:ca3eaa2cd9545008d8237f28d5524e92d27d4a0125410f16907505cd995cba83` |
| 4 | `def` | [deriveEvalExprUsingMetaEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean/declarations/deriveevalexprusingmetaeval--d38346b3519d571e70a941ea.md) | 114 | `declaration-track:d38346b3519d571e70a941ea8331bdfd99634458b1a478e1e6aaa59b5316f2e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
