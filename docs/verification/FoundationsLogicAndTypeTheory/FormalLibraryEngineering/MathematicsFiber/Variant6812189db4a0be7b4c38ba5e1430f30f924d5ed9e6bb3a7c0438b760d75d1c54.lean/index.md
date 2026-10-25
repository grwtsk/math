# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathematicsFiber.Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c61ef862fbe9116a3728c2180a7dd92a14ba9c08",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c61ef862fbe9116a3728c2180a7dd92a14ba9c08`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Export.Project` — import line 1; external provider; requires a separately pinned dependency.
- `URSMContracts` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectExportMetadata](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54.lean/declarations/projectexportmetadata--dbfee2fc5844a76f42fe6d00.md) | 10 | `declaration-track:dbfee2fc5844a76f42fe6d00eb80ac7e24580162f9f65f95f2a1a46d968f6957` |
| 2 | `def` | [projectKeyOfFiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54.lean/declarations/projectkeyoffiber--cc7254fe75e9b818cfc76e6c.md) | 23 | `declaration-track:cc7254fe75e9b818cfc76e6c0e5f0f090c57c3d0d3142a6fe377e100686be200` |
| 3 | `def` | [projectExportOfFiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54.lean/declarations/projectexportoffiber--0596f775edf1bc37f3ee18a5.md) | 30 | `declaration-track:0596f775edf1bc37f3ee18a5fa3efc31d3ee9126334abf38128f8d310de45c7d` |
| 4 | `theorem` | [projectExportOfFiber_key](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54.lean/declarations/projectexportoffiber-key--4289ecb670e43fec5b2c56e0.md) | 48 | `result-track:4289ecb670e43fec5b2c56e065450356e6423b655af9785f0dcf0973a09ddc10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
