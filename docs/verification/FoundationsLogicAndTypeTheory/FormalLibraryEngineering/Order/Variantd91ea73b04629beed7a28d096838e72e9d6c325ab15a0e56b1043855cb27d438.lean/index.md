# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f5fbec2c7060cf4a24f4c6e8ad304dd1f4c95dd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f5fbec2c7060cf4a24f4c6e8ad304dd1f4c95dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Order.CollectFacts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Order.Preprocessing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Order.Graph.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Order.Graph.Tarjan` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findContradictionWithNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean/declarations/findcontradictionwithne--4c02f398e96863febf033c37.md) | 134 | `declaration-track:4c02f398e96863febf033c37436a9433e6e4a763c8047380be785b24f3eedcc4` |
| 2 | `def` | [findContradictionWithNle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean/declarations/findcontradictionwithnle--280d579d512dd087ffa7849c.md) | 150 | `declaration-track:280d579d512dd087ffa7849c6ff11969a25689811ae8ae833a724dd3f654c8b1` |
| 3 | `def` | [updateGraphWithNlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean/declarations/updategraphwithnlt--936bb0141052b6fcd95c226b.md) | 160 | `declaration-track:936bb0141052b6fcd95c226b7b46df8b8bfd00639b02a7d28ea294e9ffde51e0` |
| 4 | `inductive` | [OrderType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean/declarations/ordertype--fd76e9b4ee74202223a9ba92.md) | 180 | `declaration-track:fd76e9b4ee74202223a9ba92b2b0d79e5bc2aca52bd4dbdf719cd1b69c874a7c` |
| 5 | `def` | [findBestOrderInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean/declarations/findbestorderinstance--5c891f2b548989c3f874f348.md) | 186 | `declaration-track:5c891f2b548989c3f874f34879112c07c5fbdf2a0b83c284928a27e7b423c56a` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd91ea73b04629beed7a28d096838e72e9d6c325ab15a0e56b1043855cb27d438.lean/declarations/elab--01f7ec4b263e4c435ea030e3.md) | 197 | `declaration-track:01f7ec4b263e4c435ea030e35f29137c847fe5f0f8e9e304de5b291366e91aa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
