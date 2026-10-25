# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Backtrack.Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37ae8e817a99db1b3d7c1e899ce49af79b2295d8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37ae8e817a99db1b3d7c1e899ce49af79b2295d8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BacktrackConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean/declarations/backtrackconfig--a9da81725a4778017a523d3b.md) | 46 | `declaration-track:a9da81725a4778017a523d3b6928c551736764634e7e0850a6653540c0176a2d` |
| 2 | `def` | [ppMVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean/declarations/ppmvarid--99b636c6fbf4b6ad45a54a5c.md) | 78 | `declaration-track:99b636c6fbf4b6ad45a54a5c01c9e8230558a4df0d1f95a468a7dadcf2b784b8` |
| 3 | `def` | [ppMVarIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean/declarations/ppmvarids--048bf3a9c15ff28aaef66b2a.md) | 83 | `declaration-track:048bf3a9c15ff28aaef66b2a1c62a9954e5c5b1ccd3e11a7bb21ffd635788e00` |
| 4 | `def` | [tryAllM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean/declarations/tryallm--390a7af41d74fd8dde72595b.md) | 87 | `declaration-track:390a7af41d74fd8dde72595b5bcc437f5b10c814c8f334e07adfb9e0e3482baa` |
| 5 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean/declarations/run--a6cb1993e2ffb9d08247055d.md) | 102 | `declaration-track:a6cb1993e2ffb9d08247055dc4bc050d504f5c8f6731129a1ab307b71151322b` |
| 6 | `def` | [processIndependentGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean/declarations/processindependentgoals--2f6481850abdb91a245d6b19.md) | 157 | `declaration-track:2f6481850abdb91a245d6b191b30416a42f2d38fdb781a3f1261d4e5e95500f0` |
| 7 | `def` | [backtrack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant386a1e26c677332101735c5347615f3e4f71a7ff40e90c5df45d5bfa5fcd30e8.lean/declarations/backtrack--a57223504a587e4f808205b2.md) | 206 | `declaration-track:a57223504a587e4f808205b2392447eb12c12a1b7288bdbd2419a93bf10a5119` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
