# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Propagate.Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdee1361c3427e6b51ab21fc5834b0b8f0d70fc9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdee1361c3427e6b51ab21fc5834b0b8f0d70fc9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.RingId` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommRingM` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommSemiringM` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [propagateNatBinOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean/declarations/propagatenatbinop--69dd0c711cb9b84b6a0c36fb.md) | 50 | `declaration-track:69dd0c711cb9b84b6a0c36fb55fcebb48658d14e4a651051d4abfac5ca78b9f9` |
| 2 | `def` | [supportedSemiring](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean/declarations/supportedsemiring--03b240129cb5de92ea73507a.md) | 75 | `declaration-track:03b240129cb5de92ea73507a0fc4771f262aebc16c3e4702298c20dab319ccfa` |
| 3 | `def` | [isSupportedSemiringQuick](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean/declarations/issupportedsemiringquick--d8e8cc775361ce6c91a41da0.md) | 78 | `declaration-track:d8e8cc775361ce6c91a41da008132676a83cdb93a45a718ddd369d348db38ef9` |
| 4 | `def` | [isUnsupportedSemiring?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean/declarations/isunsupportedsemiring--226345b662d6a4e4620a629c.md) | 89 | `declaration-track:226345b662d6a4e4620a629c5f8bc54afc791bf0b2497175e94afd4873d43e96` |
| 5 | `def` | [isOfNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209.lean/declarations/isofnat--d66e1ad61b5158f85ecf64d1.md) | 106 | `declaration-track:d66e1ad61b5158f85ecf64d1a6ad5da4bdfc30755b4aa1d831444ea4c4408709` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
