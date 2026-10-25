# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SnapshotAuthority.Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a99b19bfc1717b08c608e7c307b76f2274fd9444",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a99b19bfc1717b08c608e7c307b76f2274fd9444`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Core.SemanticIdentity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SnapshotStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/snapshotstatus--a08fd6f93c3bb4d22954c1f4.md) | 20 | `declaration-track:a08fd6f93c3bb4d22954c1f409b14e7d714be704381c22b243cc2cded50631f2` |
| 2 | `structure` | [ProjectionSnapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/projectionsnapshot--3e78f177e4bab6e0929d9b08.md) | 28 | `declaration-track:3e78f177e4bab6e0929d9b084bb0bc3e16824220caaf985859a85ad120e828e1` |
| 3 | `inductive` | [SnapshotEventKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/snapshoteventkind--ab0d1f0d1753c9ec59504923.md) | 40 | `declaration-track:ab0d1f0d1753c9ec595049231f8eeb2c85148725670870bc26b7e3527b7f4246` |
| 4 | `structure` | [SnapshotAuthorityEvent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/snapshotauthorityevent--8183ba29049cf4ef0fdf5727.md) | 48 | `declaration-track:8183ba29049cf4ef0fdf572733656597b19fd42ebb8c7b89f7c106b1464ca230` |
| 5 | `structure` | [CommittedSnapshotRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/committedsnapshotroot--4f9faead44ee6d8d3fdb5014.md) | 61 | `declaration-track:4f9faead44ee6d8d3fdb50141cb973824125142d73d814f01ab0c79913619613` |
| 6 | `inductive` | [SnapshotStatusTransition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/snapshotstatustransition--a8e467e3bdf8e033cbf97bca.md) | 69 | `declaration-track:a8e467e3bdf8e033cbf97bca65501ea2c200427ba6984b1277568d09e101b1e0` |
| 7 | `inductive` | [SnapshotEventTransition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/snapshoteventtransition--8883557ce4fc0dc8cdbd4b54.md) | 88 | `declaration-track:8883557ce4fc0dc8cdbd4b542cfffcdee7ebb341c651d88b9826c2872e7b9615` |
| 8 | `theorem` | [statusTransition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/statustransition--75d8bceaba421fe582a28a15.md) | 106 | `result-track:75d8bceaba421fe582a28a152aaafa4c7424a7fb66b72984d6701eb9b00df3c7` |
| 9 | `theorem` | [into_active_is_activation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/into-active-is-activation--806fab54f3231ab59fda7680.md) | 120 | `result-track:806fab54f3231ab59fda7680e0bb332952c9b94cd7d54db7c9da8df977ba7d8f` |
| 10 | `theorem` | [revokedStale_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/revokedstale-terminal--5ca5061a1f4512ff3ab730c1.md) | 129 | `result-track:5ca5061a1f4512ff3ab730c152d0ddb3c85c331c36ebd1d764cff2b89ea6a178` |
| 11 | `theorem` | [superseded_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/superseded-terminal--7e831a44645d64ff7a4704e9.md) | 137 | `result-track:7e831a44645d64ff7a4704e95736b227cb7ad973e7ef3f99f05d43de991be5fe` |
| 12 | `theorem` | [revokedStale_cannot_reactivate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/revokedstale-cannot-reactivate--6b5f16df0b08291f3ac7c9c9.md) | 147 | `result-track:6b5f16df0b08291f3ac7c9c909b2250479befa12e0eabb905418f4edeff5dffe` |
| 13 | `theorem` | [superseded_cannot_reactivate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/superseded-cannot-reactivate--15590825f798d72447145c9a.md) | 153 | `result-track:15590825f798d72447145c9acfc8f8a2a40ee1c39c8f5113209ff3e699e77e77` |
| 14 | `inductive` | [CommittedSnapshotReplay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/committedsnapshotreplay--9320218ed9d7046a52a38b26.md) | 166 | `declaration-track:9320218ed9d7046a52a38b26329ce670f8a655d1b2f64b614599215a592cd395` |
| 15 | `theorem` | [targets_snapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/targets-snapshot--a4aba1cea43aa74242eb6b6a.md) | 194 | `result-track:a4aba1cea43aa74242eb6b6ab821aea2db6b6cb4bd688105e1ce6ec359169c22` |
| 16 | `theorem` | [active_head_is_activation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/active-head-is-activation--d4070175e270233941cb3cdc.md) | 207 | `result-track:d4070175e270233941cb3cdcedc4458fd5538163c5a7060a29b04dcf100da90b` |
| 17 | `theorem` | [revokedStale_has_no_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/revokedstale-has-no-extension--2f462de680b1ae857cbbbeaa.md) | 220 | `result-track:2f462de680b1ae857cbbbeaabf025bebda0161b7bf708b2f5a86ad484e482625` |
| 18 | `theorem` | [superseded_has_no_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/superseded-has-no-extension--9f90e51567f95926f812064f.md) | 230 | `result-track:9f90e51567f95926f812064f2558ea89ef0d0c80742dd8b72af700e1a1f88d1c` |
| 19 | `structure` | [VerifiedActiveSnapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/verifiedactivesnapshot--23c1dfaaf908ae0295e2d2a9.md) | 245 | `declaration-track:23c1dfaaf908ae0295e2d2a9a143c73d3839279f83922faf504d584e4598d343` |
| 20 | `def` | [head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/head--771047dde42120968956417b.md) | 262 | `declaration-track:771047dde42120968956417b2ce2ed8baacf4b8239cd93acb4ab9f87f65f5e68` |
| 21 | `def` | [sequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/sequence--1edad021c19694f22a8a3f0f.md) | 268 | `declaration-track:1edad021c19694f22a8a3f0f4b9727a36b249ad9664f1de033f0c092dcc2422f` |
| 22 | `def` | [epoch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/epoch--fcfdd4ffb4c0fb39808386cf.md) | 274 | `declaration-track:fcfdd4ffb4c0fb39808386cf225f040ba6278c597fc4525e55e22fbc2797645c` |
| 23 | `def` | [event](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/event--2ae6f0cd4de2afc9cae77d75.md) | 280 | `declaration-track:2ae6f0cd4de2afc9cae77d7590db88e3d6bbd542d0636f9414274a898e26b178` |
| 24 | `theorem` | [replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/replay--3c9e9e6dc9704889c146d1a1.md) | 286 | `result-track:3c9e9e6dc9704889c146d1a159964c5ccb816a29129fac2aebbf65d2a6f2fc39` |
| 25 | `theorem` | [event_targets_snapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/event-targets-snapshot--5dd75c7faf7040d4a053e1bf.md) | 293 | `result-track:5dd75c7faf7040d4a053e1bf3530c1f1dcc05676ff627e91b6a774ba5f08a23c` |
| 26 | `theorem` | [event_is_activation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/event-is-activation--a9f8b6d543716f9d96179fcf.md) | 300 | `result-track:a9f8b6d543716f9d96179fcf15f3f59d1ed03435ea3a921c31c94ae960b32631` |
| 27 | `structure` | [SnapshotSuccessor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/snapshotsuccessor--08b4fd52492f0b1a66912ac2.md) | 312 | `declaration-track:08b4fd52492f0b1a66912ac23b58e24dc86565a63bb85007d75670cc9c2b3585` |
| 28 | `structure` | [HistoricallyValidAtCreation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/declarations/historicallyvalidatcreation--b6d01963f2f5cdbbbd8d0c33.md) | 320 | `declaration-track:b6d01963f2f5cdbbbd8d0c33aac5759cbef6df7e867d9543b199e15f12ac6eb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
