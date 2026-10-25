# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "030bfd733d749aff69908e412a1991b264eb234d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `030bfd733d749aff69908e412a1991b264eb234d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Part` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Upto` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Stream.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/declarations/fix--11add4c1234857437e5a80ad.md) | 34 | `declaration-track:11add4c1234857437e5a80ade8a456f38e184781aa70a1aa2659b653a4f4d1a1` |
| 2 | `def` | [Fix.approx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/declarations/fix-approx--2b26ebfad5c8bf90bccdf53e.md) | 49 | `declaration-track:2b26ebfad5c8bf90bccdf53e26f23d5841dbbb84a382683d6ceb33bf5b596a08` |
| 3 | `def` | [fixAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/declarations/fixaux--f61d3f910a055208c52842a5.md) | 55 | `declaration-track:f61d3f910a055208c52842a5a372e3cf0cb6e9aaa2a3264b4e9afd85658629aa` |
| 4 | `def` | [fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/declarations/fix--1563048557cb78931737ea05.md) | 68 | `declaration-track:1563048557cb78931737ea05f13b4fd5436f21030a5f5fb9c84d2112d3a216af` |
| 5 | `theorem` | [fix_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/declarations/fix-def--1e9fd63913d7c64ae9f35f05.md) | 73 | `result-track:1e9fd63913d7c64ae9f35f05dbcb4badaaccde78de65f12cad7d552b1edb95c7` |
| 6 | `theorem` | [fix_def'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/declarations/fix-def--9fe63e595369d43cacfb8933.md) | 110 | `result-track:9fe63e595369d43cacfb893301cb06509df10aa5d696bdea04be918a25312f49` |
| 7 | `instance` | [hasFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/declarations/hasfix--ea53cdc9a1e9d35a26038d8d.md) | 121 | `declaration-track:ea53cdc9a1e9d35a26038d8d53832e8b188655e9c3fa1ab59ca172e10c1868b9` |
| 8 | `instance` | [Part.hasFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef.lean/declarations/part-hasfix--47365c00707f4a21ef3c5608.md) | 131 | `declaration-track:47365c00707f4a21ef3c5608980db7bc1b0a31209e2d207a9a81620baa43eca7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
