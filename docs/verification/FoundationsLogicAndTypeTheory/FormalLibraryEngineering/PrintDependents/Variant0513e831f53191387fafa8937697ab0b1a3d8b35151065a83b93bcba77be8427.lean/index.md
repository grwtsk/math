# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintDependents.Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc31f342054fd3b8513458184af160475b1d55fc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc31f342054fd3b8513458184af160475b1d55fc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Lean.Delaborator` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean/declarations/state--b856801134b3fe2082682e38.md) | 32 | `declaration-track:b856801134b3fe2082682e38a5de14b3bf83fbef622da1456224985ec81ecf2d` |
| 2 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean/declarations/m--377c55063b989cfa525d5f18.md) | 39 | `declaration-track:377c55063b989cfa525d5f1893f5099258ae1c90c110692c4882762485e43bb9` |
| 3 | `def` | [mkState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean/declarations/mkstate--cf4bb913e279c510ef035579.md) | 47 | `declaration-track:cf4bb913e279c510ef035579ed236d53cd7268bc627f52610b414f2d57132548` |
| 4 | `def` | [collect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean/declarations/collect--bc6833708599b42d5cb8cfc1.md) | 51 | `declaration-track:bc6833708599b42d5cb8cfc1cc25f17a0888700b3b38d79810928855f54ee1b1` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean/declarations/elab--e6a85dec6dac828ee6199c62.md) | 97 | `declaration-track:e6a85dec6dac828ee6199c62c93c6b2123708e132955fd32c4c2f0d1db3c7393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
