# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c20d4ecc0a177e4501313e1ad4231b4ff7f02ab6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c20d4ecc0a177e4501313e1ad4231b4ff7f02ab6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMonad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e.lean/declarations/instmonad--7db9e4f06981391487d5a55d.md) | 18 | `declaration-track:7db9e4f06981391487d5a55d8138ec712f3eb5d55954e08ed3ed0299ec28fbe9` |
| 2 | `theorem` | [pure_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e.lean/declarations/pure-def--2662c35b27a1a7d2109e7c13.md) | 23 | `result-track:2662c35b27a1a7d2109e7c13430e364dcddf8b713c40184548a1ca76cd4b6680` |
| 3 | `instance` | [instLawfulMonad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e.lean/declarations/instlawfulmonad--7a2d5533e4a7efa00520e9aa.md) | 25 | `declaration-track:7a2d5533e4a7efa00520e9aaa8db5eedae30e24e1fe3b08fb87a78d0b5d59691` |
| 4 | `instance` | [instAlternative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e.lean/declarations/instalternative--6bb7bebee9304e19e24e7e1b.md) | 31 | `declaration-track:6bb7bebee9304e19e24e7e1b4376dad0f5206b7a3b4edb8bd1f9a6afacdbd8e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
