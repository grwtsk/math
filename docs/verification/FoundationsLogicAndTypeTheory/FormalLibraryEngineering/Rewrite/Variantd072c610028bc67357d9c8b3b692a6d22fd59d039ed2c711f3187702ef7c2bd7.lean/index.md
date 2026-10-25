# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b3cfa8902e2f3e11457f1b8e71f6a088f72432d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b3cfa8902e2f3e11457f1b8e71f6a088f72432d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Eqns` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabRewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/declarations/elabrewrite--821a6aa1022da533042a0cdf.md) | 25 | `declaration-track:821a6aa1022da533042a0cdf3b111cba12bd80a900ff16c06fc491a983f349a1` |
| 2 | `def` | [finishElabRewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/declarations/finishelabrewrite--d58cebfe78cc3b789fff7469.md) | 46 | `declaration-track:d58cebfe78cc3b789fff74697127b216974180da2a541832b855afcd4c0ae7ee` |
| 3 | `def` | [rewriteTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/declarations/rewritetarget--b5702d1c268a6c74fa2a449c.md) | 53 | `declaration-track:b5702d1c268a6c74fa2a449c7ef7ceba2024ddf8b664ad7c39200fa97763fab4` |
| 4 | `def` | [rewriteLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/declarations/rewritelocaldecl--c37eda0a9bb0f3cf856e0597.md) | 60 | `declaration-track:c37eda0a9bb0f3cf856e0597a3860eac54f5cb3aec68875e2588d060b36588c9` |
| 5 | `def` | [withRWRulesSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/declarations/withrwrulesseq--dbec974dabdb1b6e0029a596.md) | 71 | `declaration-track:dbec974dabdb1b6e0029a596bc9bab74c74cc148e451110499a6df0803de1aa8` |
| 6 | `def` | [evalRewriteSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantd072c610028bc67357d9c8b3b692a6d22fd59d039ed2c711f3187702ef7c2bd7.lean/declarations/evalrewriteseq--dab4f126a2ee5142fd4d1fe3.md) | 109 | `declaration-track:dab4f126a2ee5142fd4d1fe3351bde97456a920bad3dca9a7ca29ba57389a2b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
