# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearCombination.Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c318bc8a942fe6d18f5209ddb2c1c02d1b26283",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c318bc8a942fe6d18f5209ddb2c1c02d1b26283`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.LinearCombination.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring.Compare` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expanded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/declarations/expanded--205c4bff4a69c28822bada6f.md) | 51 | `declaration-track:205c4bff4a69c28822bada6f719e7d5d12081a954da9493a9d3a67f7d9c4484e` |
| 2 | `def` | [rescale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/declarations/rescale--ce8530ee97f8dd4120b2bb1d.md) | 69 | `declaration-track:ce8530ee97f8dd4120b2bb1d131b75e9fa1142ab6d425588c534f9a07704e2e0` |
| 3 | `def` | [expandLinearCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/declarations/expandlinearcombo--5e140e899faef53837cfe65e.md) | 97 | `declaration-track:5e140e899faef53837cfe65e6a4e7de79ba2c1527232cd453cfa15b2ce777bbd` |
| 4 | `def` | [elabLinearCombination](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/declarations/elablinearcombination--7248fc7b8b01fc565738e833.md) | 163 | `declaration-track:7248fc7b8b01fc565738e833fc4b18e709573e8ba0b465496d1e73b9425f98a9` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/declarations/syntax--3198f6a75b21855a7b19aa75.md) | 219 | `declaration-track:3198f6a75b21855a7b19aa757347db5f69aa6a8322bf963f40293dffb0b8d00b` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/declarations/syntax--3fc95f85b646ccb8e15862fc.md) | 225 | `declaration-track:3fc95f85b646ccb8e15862fcab68aa6751c37aaa4f6c573ca124587ea8a2b87b` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/declarations/syntax--c89531fbf62e24f5e8bc2222.md) | 299 | `declaration-track:c89531fbf62e24f5e8bc22228860f43c37dddc5bbdc2afb5860f84dcd3c5c1b2` |
| 8 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/declarations/elab-rules--202f0f006caa1b9a2ccdef1b.md) | 301 | `declaration-track:202f0f006caa1b9a2ccdef1b5f05a9975a40023fb2d4bcc00e027b6f27c87373` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
