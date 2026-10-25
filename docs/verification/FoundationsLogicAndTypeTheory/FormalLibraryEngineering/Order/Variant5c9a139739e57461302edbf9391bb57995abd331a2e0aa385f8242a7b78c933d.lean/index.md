# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9952fb17cf46af71f294509f86aac79b03b6506f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9952fb17cf46af71f294509f86aac79b03b6506f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Order.CollectFacts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Order.Preprocessing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Order.Graph.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Order.Graph.Tarjan` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findContradictionWithNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/declarations/findcontradictionwithne--2cef90c2a044a205ede1803f.md) | 142 | `declaration-track:2cef90c2a044a205ede1803fd5897c224236a9e7b2116e771f2219704d9fde0c` |
| 2 | `def` | [findContradictionWithNle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/declarations/findcontradictionwithnle--817648fc458e3c688e87be60.md) | 158 | `declaration-track:817648fc458e3c688e87be601311f99760946ec579b7475bc7ab00cdf649955f` |
| 3 | `def` | [updateGraphWithNlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/declarations/updategraphwithnlt--b8add6362e464bcc16226812.md) | 168 | `declaration-track:b8add6362e464bcc1622681233625b53a1679ae2526f78a40ad8748d3643e0c4` |
| 4 | `inductive` | [OrderType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/declarations/ordertype--ad37430c27e3b3bc20315f82.md) | 188 | `declaration-track:ad37430c27e3b3bc20315f82ec0a1a60f9acaac16f906db7b6556b4b698b1d0b` |
| 5 | `def` | [findBestOrderInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/declarations/findbestorderinstance--d554c5151adc069d0753d116.md) | 194 | `declaration-track:d554c5151adc069d0753d116c1dbd80b09a995ed5cabaf1e338f40f1d5d1884f` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/declarations/elab--caca95a06bab36d5a07bb0c8.md) | 205 | `declaration-track:caca95a06bab36d5a07bb0c844c560f91ab2309a1963af5e4825241ffe2c4c9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
