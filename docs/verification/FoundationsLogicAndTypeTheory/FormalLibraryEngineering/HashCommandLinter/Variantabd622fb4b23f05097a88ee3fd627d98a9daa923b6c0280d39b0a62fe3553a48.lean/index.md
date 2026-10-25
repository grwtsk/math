# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HashCommandLinter.Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41832c0f4570bca121e839fe6c191b3ded402c38",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41832c0f4570bca121e839fe6c191b3ded402c38`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.hashCommand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean/declarations/linter-hashcommand--3c1ca3f91d7f8bc523d27c0d.md) | 32 | `declaration-track:3c1ca3f91d7f8bc523d27c0d0c108d005e10bfdb47e11a0ebcf279e93a074279` |
| 2 | `def` | [withSetOptionIn'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean/declarations/withsetoptionin--cafff74d9794a13e56318e7c.md) | 45 | `declaration-track:cafff74d9794a13e56318e7ccf04e4cc0c7bde0e1c5752f30f2cca6d2c298899` |
| 3 | `abbrev` | [allowed_commands](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean/declarations/allowed-commands--69284fcb337c0d7de72839a6.md) | 57 | `declaration-track:69284fcb337c0d7de72839a6b00c1064d28a38a93efbd0de5ecb2ac5c1f01e1a` |
| 4 | `def` | [hashCommandLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean/declarations/hashcommandlinter--3d3f2d05f94a75f72f05d575.md) | 67 | `declaration-track:3d3f2d05f94a75f72f05d575dc5ebe56dee162e052167a361ae46865eb5ef1aa` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variantabd622fb4b23f05097a88ee3fd627d98a9daa923b6c0280d39b0a62fe3553a48.lean/declarations/initialize--2aeaf7398801d0c76f91ae65.md) | 79 | `declaration-track:2aeaf7398801d0c76f91ae65844f7136f7c5a9878b3edbc67b8329db53be35b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
