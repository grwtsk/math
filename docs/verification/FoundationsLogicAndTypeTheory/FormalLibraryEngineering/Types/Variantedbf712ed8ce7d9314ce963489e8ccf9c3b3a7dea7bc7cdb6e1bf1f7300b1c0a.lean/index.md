# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ce1ded316881f7067dcee9dc8c996fe726620fd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ce1ded316881f7067dcee9dc8c996fe726620fd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/declarations/initialize--1f94205ce9ac6aa29a711aee.md) | 34 | `declaration-track:1f94205ce9ac6aa29a711aee7a3a7f6727b0cc8a17228fea21652d04f5854737` |
| 2 | `register_option` | [leancert.debug](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/declarations/leancert-debug--21f91c04d64c3bb1ce4f1198.md) | 37 | `declaration-track:21f91c04d64c3bb1ce4f119809137dc68824bf388b88471841ebc186d8a2567c` |
| 3 | `def` | [isLeanCertDebugEnabled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/declarations/isleancertdebugenabled--61ea14a3a642f2a8bb4a9663.md) | 43 | `declaration-track:61ea14a3a642f2a8bb4a9663b1e0351b93108cf556cfdff0bee5fc5fc222349d` |
| 4 | `structure` | [IntervalInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/declarations/intervalinfo--ebef8e9db1a0945aea3f0f63.md) | 47 | `declaration-track:ebef8e9db1a0945aea3f0f635cd365f7c3f0cfd9b1470a62a42a20ffdfe7883a` |
| 5 | `inductive` | [BoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/declarations/boundgoal--c9fe4679272a19c9906e206e.md) | 55 | `declaration-track:c9fe4679272a19c9906e206e52e357eef20bec8152580c41536535ab2e6cc689` |
| 6 | `structure` | [VarIntervalInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/declarations/varintervalinfo--7de13cbb2080459ac859e126.md) | 67 | `declaration-track:7de13cbb2080459ac859e1266f3cceff803359c5a1e954a45250d0c9d0461f28` |
| 7 | `inductive` | [MultivariateBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/declarations/multivariateboundgoal--8ebfd5e6e00624467bd6558d.md) | 85 | `declaration-track:8ebfd5e6e00624467bd6558dd97c4ee2bffb68bc1e1cd4b66f49b606680e6526` |
| 8 | `inductive` | [GlobalBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/declarations/globalboundgoal--72c713385345080485c486b1.md) | 93 | `declaration-track:72c713385345080485c486b14f4b5b10d69c2a4913133bd69c5fb416e1410efd` |
| 9 | `inductive` | [RootGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantedbf712ed8ce7d9314ce963489e8ccf9c3b3a7dea7bc7cdb6e1bf1f7300b1c0a.lean/declarations/rootgoal--ba257f83af94783bd7ffffc8.md) | 101 | `declaration-track:ba257f83af94783bd7ffffc82b16730f137f6b73f1e9e793d13d4bb667357fd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
