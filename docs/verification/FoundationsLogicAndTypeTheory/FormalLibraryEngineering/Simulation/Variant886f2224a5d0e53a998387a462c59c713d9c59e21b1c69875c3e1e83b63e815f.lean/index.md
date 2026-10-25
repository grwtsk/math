# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simulation.Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f2fcbf9e91d3770022313d91878d8b9ee893535",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f2fcbf9e91d3770022313d91878d8b9ee893535`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Relation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/stronglynormalizing--aa851d0b0116b310c5612dda.md) | 21 | `declaration-track:aa851d0b0116b310c5612ddad176c577415176adecc597370cd8c423646e49a9` |
| 2 | `inductive` | [Trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/trace--c4c0e0a8fd5129a004ceb225.md) | 25 | `declaration-track:c4c0e0a8fd5129a004ceb2252025795951e6fd1cd93796cd89393b2f049c873a` |
| 3 | `theorem` | [Trace.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/trace-trans--dd4ea9c568a987da180505a1.md) | 30 | `result-track:dd4ea9c568a987da180505a1d29c33c80fa5a13511ef6323f261cab4d164f0cc` |
| 4 | `theorem` | [trace_length_le_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/trace-length-le-rank--c51abebd351e4e3c9f091fa0.md) | 38 | `result-track:c51abebd351e4e3c9f091fa01594b5b0318d9ac727b8f2ad97210af641f917a5` |
| 5 | `theorem` | [strongly_normalizing_of_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/strongly-normalizing-of-rank--0a2568cd7cedd099fd9f05cf.md) | 48 | `result-track:0a2568cd7cedd099fd9f05cf7dd4196a58adb471b4f61654154df56cf1f91f83` |
| 6 | `theorem` | [target_path_accessible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/target-path-accessible--50caca6bce4ecb06f95b77a8.md) | 53 | `result-track:50caca6bce4ecb06f95b77a8de3750abeb748a8f8b5aec2caf797bd1286df507` |
| 7 | `theorem` | [strongly_normalizing_of_strict_simulation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/strongly-normalizing-of-strict-simulation--d8585a39f8a840f12308b9f5.md) | 60 | `result-track:d8585a39f8a840f12308b9f5adafa07bb69c6b9eb03ecb5e484d6380cb21f6a3` |
| 8 | `def` | [FiberWellFounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/fiberwellfounded--1b6513687ac398f36d06bcbb.md) | 74 | `declaration-track:1b6513687ac398f36d06bcbbacc6ed1357b3adf66023ae60ebbff25aaf3bd9e4` |
| 9 | `theorem` | [fiber_well_founded_of_measure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/fiber-well-founded-of-measure--07d6e150016b3d0868992653.md) | 78 | `result-track:07d6e150016b3d0868992653bd3af8d2bbb06236a34e017538fe159dc8d9b810` |
| 10 | `theorem` | [strongly_normalizing_of_fiber_simulation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/strongly-normalizing-of-fiber-simulation--37eb5c54c871df11bdb7e952.md) | 87 | `result-track:37eb5c54c871df11bdb7e9522d80f1ccbdb17a40e616e1aa0d2a2f36a4c10b0c` |
| 11 | `theorem` | [rank_decreases_along_path](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/rank-decreases-along-path--097766924a461ebd3f7ef6fb.md) | 111 | `result-track:097766924a461ebd3f7ef6fbac5429d0e79804ac94bc2f4abf792163f916550a` |
| 12 | `theorem` | [strict_simulation_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/strict-simulation-rank--9440bf8e70cb81b460f34332.md) | 119 | `result-track:9440bf8e70cb81b460f34332cf463a67220b7ee265f330250cc4b766ff4dde86` |
| 13 | `theorem` | [stuttering_total_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/stuttering-total-rank--42e0d9fff0e1f19262430b98.md) | 128 | `result-track:42e0d9fff0e1f19262430b98b89516f529b65ece58bc027ed5c69d588fe589fe` |
| 14 | `theorem` | [stuttering_trace_budget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/declarations/stuttering-trace-budget--1b29bfbd4131540ba2bff697.md) | 144 | `result-track:1b29bfbd4131540ba2bff697fd41d98e4cc2e20404decc63ef39ac5d03da288e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
