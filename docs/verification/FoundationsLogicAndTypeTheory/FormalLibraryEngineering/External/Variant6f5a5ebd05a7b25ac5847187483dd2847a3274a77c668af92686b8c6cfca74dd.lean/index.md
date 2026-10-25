# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.External.Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfac3a5846b86818aeec8b2eae89a53a05626000",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfac3a5846b86818aeec8b2eae89a53a05626000`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.BVDecide.LRAT.Parser` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SolverResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/declarations/solverresult--800f01dc5d9ad36da3452950.md) | 35 | `declaration-track:800f01dc5d9ad36da3452950a301f530904978cf7c367cb9bbd031d94a77b18e` |
| 2 | `def` | [parsePartialAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/declarations/parsepartialassignment--e612563ff58545f367d64f4e.md) | 51 | `declaration-track:e612563ff58545f367d64f4e04d7e42fbfa25d85863b99810abb6a441f5a1316` |
| 3 | `def` | [parseLines](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/declarations/parselines--b6764a7c1c4f5e7a5f0e4d41.md) | 68 | `declaration-track:b6764a7c1c4f5e7a5f0e4d4111142c3ea18b9acc6d6c1a28303d6730346380f7` |
| 4 | `def` | [parseHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/declarations/parseheader--7090316b46dc6f5f1f1ca2fe.md) | 80 | `declaration-track:7090316b46dc6f5f1f1ca2fec74e806632034fc1a404561f831c63bfaf890a0f` |
| 5 | `def` | [parse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/declarations/parse--cee44cf4235f353872f3d33f.md) | 90 | `declaration-track:cee44cf4235f353872f3d33fd63cb259681f4b3dc0b81954b61863d0350d63d5` |
| 6 | `inductive` | [TimedOut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/declarations/timedout--a6e69685f3ca6dbe957115e4.md) | 98 | `declaration-track:a6e69685f3ca6dbe957115e46b2e0a523da4afa0abd4377b72f5aeed0e81e2a9` |
| 7 | `def` | [runInterruptible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/declarations/runinterruptible--d85a50cd1bc4d5b9b8bb0b03.md) | 106 | `declaration-track:d85a50cd1bc4d5b9b8bb0b03983c814fa5a00fa62ee069c775071da53d76b2f3` |
| 8 | `def` | [satQuery](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd.lean/declarations/satquery--dbb9357882878da56941095e.md) | 155 | `declaration-track:dbb9357882878da56941095e5311e8005f9c20b2e0238a8b020f03c8ab95f2f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
