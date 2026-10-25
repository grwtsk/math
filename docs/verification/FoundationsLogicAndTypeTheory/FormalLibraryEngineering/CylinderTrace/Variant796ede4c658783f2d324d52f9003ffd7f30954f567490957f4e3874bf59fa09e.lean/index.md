# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderTrace.Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a9a127eaae34c0d76074e9d2f55997a68551a74",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a9a127eaae34c0d76074e9d2f55997a68551a74`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Trace.CylinderAlgebra` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CylinderTraceCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean/declarations/cylindertracecertificate--3f1ec9b59450c95e589726ef.md) | 17 | `declaration-track:3f1ec9b59450c95e589726ef6a1cf4c72ad561db6d189045fbf08308fa2b3190` |
| 2 | `def` | [cylinderTraceValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean/declarations/cylindertracevalue--268da61d067b6f862938e2ce.md) | 44 | `declaration-track:268da61d067b6f862938e2ce4dc80505fbd71c1cb7eda03e6dd479b43a725c14` |
| 3 | `theorem` | [cylinder_trace_well_defined](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean/declarations/cylinder-trace-well-defined--e7bed340a0b444d8d9cf7a98.md) | 50 | `result-track:e7bed340a0b444d8d9cf7a9895767eface0795a44e39a737506d9b8ff4501cbc` |
| 4 | `theorem` | [cylinder_trace_positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean/declarations/cylinder-trace-positive--ab7fd694949089dc1b74c8db.md) | 59 | `result-track:ab7fd694949089dc1b74c8db793b74f38db58e7d3b2d7b2cc9ec600524c18422` |
| 5 | `theorem` | [cylinder_trace_tracial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant796ede4c658783f2d324d52f9003ffd7f30954f567490957f4e3874bf59fa09e.lean/declarations/cylinder-trace-tracial--dfde587ea4fa7e5789aac59e.md) | 67 | `result-track:dfde587ea4fa7e5789aac59e3a8d1a87bd509f2bb0f489b395f224e9141f0a22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
