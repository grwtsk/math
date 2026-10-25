# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShiftLeft.Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b08345f004b158fd8c60d06f8f0fce9762cbe690",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b08345f004b158fd8c60d06f8f0fce9762cbe690`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean.json)

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
| 1 | `def` | [blastShiftLeftConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/blastshiftleftconst--d18fb1cfdc69433f054549a9.md) | 39 | `declaration-track:d18fb1cfdc69433f054549a967d29a0c86a80a4c7e9ebc000e160c8cc07b8fa2` |
| 2 | `theorem` | [blastShiftLeftConst.go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/blastshiftleftconst-go-le-size--071ccd44bb088e9287d433c7.md) | 60 | `result-track:071ccd44bb088e9287d433c774af2dd07727c1283b18f8a3d3dc7df3bad92c36` |
| 3 | `theorem` | [blastShiftLeftConst.go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/blastshiftleftconst-go-decl-eq--35c8c23ebf70afdbb6b732db.md) | 72 | `result-track:35c8c23ebf70afdbb6b732db75fec4bb08641d15311e98fa1456159051433a4a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/instance--e7c050a7c3d931d0d4d7d9dd.md) | 90 | `declaration-track:e7c050a7c3d931d0d4d7d9ddbc522d0880cfbadb7c75def7651d742688d32bb0` |
| 5 | `structure` | [TwoPowShiftTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/twopowshifttarget--96d244dbd9a210a8127f7ce3.md) | 103 | `declaration-track:96d244dbd9a210a8127f7ce38930b141362c2b62d29e21e73f3447056aa4b7d3` |
| 6 | `def` | [twoPowShift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/twopowshift--3e870cf07231ef7ad9da6eec.md) | 109 | `declaration-track:3e870cf07231ef7ad9da6eec9c4df1a095e6c2accc100ffc3a28a850f6a97c9a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/instance--5097a551a7c5d23dcd1054d1.md) | 123 | `declaration-track:5097a551a7c5d23dcd1054d1aaa1f2ee93205276f90ada7701c9c93ec761cc27` |
| 8 | `def` | [blastShiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/blastshiftleft--2b470d16e697ad3f1808a1f2.md) | 145 | `declaration-track:2b470d16e697ad3f1808a1f25cd9f9414bd85b93d38f7fc24c12b507be41b17b` |
| 9 | `theorem` | [blastShiftLeft.go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/blastshiftleft-go-le-size--b5396e71ad6643ee6db059d7.md) | 173 | `result-track:b5396e71ad6643ee6db059d7140ebf7411559cb0e28d508990f7357017bf967a` |
| 10 | `theorem` | [blastShiftLeft.go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/blastshiftleft-go-decl-eq--6524b84012d2ec759dbd4575.md) | 184 | `result-track:6524b84012d2ec759dbd45759f870c2b5325ba63ad5003b3241d0b6a053eb47a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/declarations/instance--3928a3c2c5fbeacb7712382a.md) | 202 | `declaration-track:3928a3c2c5fbeacb7712382a3ce56807690f1f99eb3b9a67a27a754de9735758` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
