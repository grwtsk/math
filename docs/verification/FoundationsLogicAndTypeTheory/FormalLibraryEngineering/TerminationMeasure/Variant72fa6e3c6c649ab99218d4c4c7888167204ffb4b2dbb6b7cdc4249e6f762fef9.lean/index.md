# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TerminationMeasure.Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc1af642e40df11c9fd800aef65914851e877af7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc1af642e40df11c9fd800aef65914851e877af7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TerminationMeasure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/declarations/terminationmeasure--eb005d76b809a15b3053b898.md) | 45 | `declaration-track:eb005d76b809a15b3053b8986f3a8d98887da58ed82d9878455759a30d8c281f` |
| 2 | `abbrev` | [TerminationMeasures](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/declarations/terminationmeasures--4fd27df3362bdf00469d8e09.md) | 52 | `declaration-track:4fd27df3362bdf00469d8e09f6228ec106b9b6e8b0d35a651c04919ca7813709` |
| 3 | `def` | [TerminationMeasure.elab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/declarations/terminationmeasure-elab--b6e93d838c14948af4aa1747.md) | 60 | `declaration-track:b6e93d838c14948af4aa17474af2399bc12900639b90fe89f81b10f19e3dba0a` |
| 4 | `def` | [TerminationMeasure.structuralArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/declarations/terminationmeasure-structuralarg--6a6f3e851618e67c571b9591.md) | 97 | `declaration-track:6a6f3e851618e67c571b95917f07afa5dd94d140141b37f835a4ce22b3d4e03d` |
| 5 | `def` | [TerminationMeasure.delab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/declarations/terminationmeasure-delab--b423535d53e56eac5b792197.md) | 113 | `declaration-track:b423535d53e56eac5b792197332785dc5aa8bbd535c2c8be0583c3acb1b4183b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
