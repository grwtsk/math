# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IntermediateValue` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RootStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/rootstatus--de2237bf0f51fb9e20471106.md) | 42 | `declaration-track:de2237bf0f51fb9e204711066ac3a3a3de5610b6e0fa68a35e12681e69e39b3d` |
| 2 | `def` | [excludesZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/excludeszero--2a96f69c106f1fdc9f30036e.md) | 56 | `declaration-track:2a96f69c106f1fdc9f30036e1210e3d86f551818f447ba57184ae7a64b213e5f` |
| 3 | `def` | [signChange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/signchange--25b6520b65066f3c8ae26f8c.md) | 60 | `declaration-track:25b6520b65066f3c8ae26f8c205e19d0fab93784e940bd27d1420c37fd993acd` |
| 4 | `def` | [checkRootStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/checkrootstatus--14d01f407134bf8dfe2d2781.md) | 66 | `declaration-track:14d01f407134bf8dfe2d278138e02b65d43da7f6397853b44e8ede5b43ca77d0` |
| 5 | `theorem` | [excludesZero_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/excludeszero-correct--660f24fea1e855a308a9cc19.md) | 79 | `result-track:660f24fea1e855a308a9cc19d51bff9530bbf92ec910c847e4fc5199d1366106` |
| 6 | `theorem` | [signChange_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/signchange-correct--e78f1479f04de5d93a9e6baa.md) | 107 | `result-track:e78f1479f04de5d93a9e6baa00c62f61807aea53d518b4c1ec25cad1cc9291b7` |
| 7 | `def` | [excludesZero_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/excludeszero-idx--3d10dc1080bde5aa4858e7ef.md) | 182 | `declaration-track:3d10dc1080bde5aa4858e7ef5b598da19f9f80de89e2402bc4a56c4f465b144b` |
| 8 | `def` | [signChange_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/signchange-idx--1bcf05dff042658fcc160a21.md) | 187 | `declaration-track:1bcf05dff042658fcc160a217796e83411bd912e2a6fecdd0084316a38120d6b` |
| 9 | `def` | [checkRootStatus_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/checkrootstatus-idx--1a4bb9f4fb618db310cab95e.md) | 197 | `declaration-track:1a4bb9f4fb618db310cab95e1d6923499e48e96eb690de1fb0faaf6b6377681a` |
| 10 | `theorem` | [excludesZero_correct_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/excludeszero-correct-idx--100d2d18ad06fc1be92993de.md) | 210 | `result-track:100d2d18ad06fc1be92993de78b09703987b6b6b9bb1c99e05aff9247696fede` |
| 11 | `theorem` | [signChange_correct_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/signchange-correct-idx--3eb35809305f1bac7e24818b.md) | 234 | `result-track:3eb35809305f1bac7e24818b863156dc849264bf8b4c93362b77f414baa0962a` |
| 12 | `inductive` | [BisectResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/bisectresult--abf921dc4f45653ff6c5c479.md) | 321 | `declaration-track:abf921dc4f45653ff6c5c4792754ed3ae791f8662e9d1d3dcb9447c86df216ec` |
| 13 | `def` | [updateIntervalEnv'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/updateintervalenv--a0bb4225a2b41b87683e9dc2.md) | 331 | `declaration-track:a0bb4225a2b41b87683e9dc2ac4ebc6ee1a4fc9a04752f494cee2c60e1255090` |
| 14 | `theorem` | [mem_bisect_cases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/mem-bisect-cases--7ce9db484a8cc1583780d2ee.md) | 335 | `result-track:7ce9db484a8cc1583780d2ee4aa5ee8396882706d161aed0eb73465c48c80bef` |
| 15 | `def` | [bisectRootIdx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/bisectrootidx--d2c5b26dfdb71eb55228fcdd.md) | 351 | `declaration-track:d2c5b26dfdb71eb55228fcddfdb69cc8b844c49cbacacfadcd9df0564f1df6ff` |
| 16 | `theorem` | [bisectRootIdx_go_found_signChange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/bisectrootidx-go-found-signchange--ef0a79f7cf4c411b51b2b8eb.md) | 395 | `result-track:ef0a79f7cf4c411b51b2b8eb08de28e14dd7cbce13255f64730cd92d23dba455` |
| 17 | `theorem` | [bisectRootIdx_found_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/bisectrootidx-found-correct--6ed35927fe0d87b81622e741.md) | 463 | `result-track:6ed35927fe0d87b81622e741138d757f3c9963b976dcfdeae1480d150a7c3ff6` |
| 18 | `theorem` | [bisectRootIdx_go_noRoot_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/bisectrootidx-go-noroot-correct--fcb49dec168d05aefc37b305.md) | 493 | `result-track:fcb49dec168d05aefc37b3051e0bcf266d736b1a3efd7ccae45bf800b4f07ea6` |
| 19 | `theorem` | [bisectRootIdx_noRoot_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/declarations/bisectrootidx-noroot-correct--c78bd234c0add8c24d5ef9e1.md) | 593 | `result-track:c78bd234c0add8c24d5ef9e13498b48191b5162338bf3c9b93117bddaa6cdbf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
