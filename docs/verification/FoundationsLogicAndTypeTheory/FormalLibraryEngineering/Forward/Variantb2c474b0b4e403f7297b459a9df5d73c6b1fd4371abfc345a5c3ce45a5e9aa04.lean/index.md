# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Forward.Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27a3d0e5d0552a058da36ce716ffaa5f54c13838",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27a3d0e5d0552a058da36ce716ffaa5f54c13838`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Do.Control` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Do.InferControlInfo` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Elab.Binders` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabDoForward](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean/declarations/elabdoforward--3c2bd91d1d86c7fb4a4a3924.md) | 29 | `declaration-track:3c2bd91d1d86c7fb4a4a3924a41ba2af752b4be44fb2c8c30e70bec2367bf89b` |
| 2 | `def` | [forwardHint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean/declarations/forwardhint--c96dc4cad840c183ec9d3add.md) | 34 | `declaration-track:c96dc4cad840c183ec9d3add5346a53d24524fb2711c845f81e126cc39a40456` |
| 3 | `def` | [validateForwarder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean/declarations/validateforwarder--3888d7d8f787b406be0854f3.md) | 46 | `declaration-track:3888d7d8f787b406be0854f38ccb00ac1658d73b3e503efcb4561a1f6bad6245` |
| 4 | `def` | [tryElabForwardApp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantb2c474b0b4e403f7297b459a9df5d73c6b1fd4371abfc345a5c3ce45a5e9aa04.lean/declarations/tryelabforwardapp--d1bcaf6294175aed3e0592df.md) | 81 | `declaration-track:d1bcaf6294175aed3e0592df53ce518d4f8a4681e320fe64e243dfc8550d9d14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
