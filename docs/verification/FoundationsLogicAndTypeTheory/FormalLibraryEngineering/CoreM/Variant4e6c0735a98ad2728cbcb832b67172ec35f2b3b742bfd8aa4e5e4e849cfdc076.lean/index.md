# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreM.Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d21bcd962e44a4ab32c6b0c11027608247ebdb6d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d21bcd962e44a4ab32c6b0c11027608247ebdb6d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.CoreM` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.withHeartbeats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean/declarations/lean-withheartbeats--771a0647e9923704ad6966eb.md) | 30 | `declaration-track:771a0647e9923704ad6966eb473806ef8dbd9c1b9d50e287ae0c1011d7285b04` |
| 2 | `def` | [getMaxHeartbeats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean/declarations/getmaxheartbeats--f95cce26576ba2c045879f1b.md) | 37 | `declaration-track:f95cce26576ba2c045879f1bb09f08796c8cdb857e97043cf27b912a787e329f` |
| 3 | `def` | [getInitHeartbeats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean/declarations/getinitheartbeats--e43a4d6884fbd534bb19ce55.md) | 40 | `declaration-track:e43a4d6884fbd534bb19ce558e634ec6c2ed7c041378194a93c0722c76a73ec0` |
| 4 | `def` | [getRemainingHeartbeats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean/declarations/getremainingheartbeats--ce669c64602d2154286ad830.md) | 43 | `declaration-track:ce669c64602d2154286ad83056ba47def5f689e8a044768e57cd7aa1809a4513` |
| 5 | `def` | [heartbeatsPercent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean/declarations/heartbeatspercent--44b9a09407e07d3598819dad.md) | 50 | `declaration-track:44b9a09407e07d3598819dad8682aa657f17e7bb9d879caefbb9aa88f97b895d` |
| 6 | `def` | [reportOutOfHeartbeats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant4e6c0735a98ad2728cbcb832b67172ec35f2b3b742bfd8aa4e5e4e849cfdc076.lean/declarations/reportoutofheartbeats--6acd20e7cff9162bc733bf08.md) | 54 | `declaration-track:6acd20e7cff9162bc733bf084c88aea2d3f5e16ab4b49b605f52f5c93dd2f1e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
