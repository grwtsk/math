# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log2.Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e7666b99c08ae708ceaa08608e6db210fcf15f1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e7666b99c08ae708ceaa08608e6db210fcf15f1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Div.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Init.NotationExtra` — import line 11; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log2_terminates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean/declarations/log2-terminates--98ca7b8f3c98dab14a28b25f.md) | 18 | `result-track:98ca7b8f3c98dab14a28b25f4900bf8edbade09aa67097abd66d69ecb7c02d79` |
| 2 | `def` | [log2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean/declarations/log2--ee8b84f6331013867d7ca363.md) | 42 | `declaration-track:ee8b84f6331013867d7ca36327bc22ca27262418d439b2af0c3e1b5b520fc9a0` |
| 3 | `theorem` | [log2_rec_irrel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean/declarations/log2-rec-irrel--823fb5d46cc374be68d1c558.md) | 47 | `result-track:823fb5d46cc374be68d1c558cdc359cbd199e2a89fa156d970d90b2ae3015319` |
| 4 | `theorem` | [log2_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean/declarations/log2-def--4d941ba0dbbd56f2e77cd5d7.md) | 62 | `result-track:4d941ba0dbbd56f2e77cd5d710892aaab370cb3112842695f4fb178466637d1b` |
| 5 | `theorem` | [log2_le_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean/declarations/log2-le-self--fa79f119fc0b3df416f8ca27.md) | 73 | `result-track:fa79f119fc0b3df416f8ca27936b3cba3ec84748a8e7861470f192efab712fe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
