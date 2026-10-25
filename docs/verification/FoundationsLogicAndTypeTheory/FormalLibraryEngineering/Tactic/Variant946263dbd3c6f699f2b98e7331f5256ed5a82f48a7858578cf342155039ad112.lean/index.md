# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a0ca8f13e64e94b3d804ae1345d2075516029af",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a0ca8f13e64e94b3d804ae1345d2075516029af`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Lean.NameMapAttribute` — import line 7; external provider; requires a separately pinned dependency.
- `Architect.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/state--e17145766023c30dd9460832.md) | 24 | `declaration-track:e17145766023c30dd946083268114f70612b7df62b06df54ad1799116af24b5c` |
| 2 | `abbrev` | [Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/entry--09a8bd9031eb51593020a6c6.md) | 25 | `declaration-track:09a8bd9031eb51593020a6c64ca3491753d01420b8f6698c93adb39b62fee31c` |
| 3 | `def` | [addEntryFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/addentryfn--9b1e42b50dc2613ab19770bf.md) | 27 | `declaration-track:9b1e42b50dc2613ab19770bf3eece9ec156bd635de46eab2a4fec7e3eb7bd0d5` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/initialize--efc217504216d18c18dcb807.md) | 33 | `declaration-track:efc217504216d18c18dcb807525f7400e49d0f0de6dccf46e81a6c817c4d6dc6` |
| 5 | `def` | [addProofDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/addproofdocstring--b540661a973719d612f14794.md) | 44 | `declaration-track:b540661a973719d612f1479428a787ffb4c746718fe017deb39e2aa9c0b1ff4e` |
| 6 | `def` | [getProofDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/getproofdocstring--d008f13f4500c81439fc2f73.md) | 47 | `declaration-track:d008f13f4500c81439fc2f73ce168e69712ef58e1aed9e73438352205d8e925b` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/elab--2cd5ec2d2167f0e61c4d2259.md) | 51 | `declaration-track:2cd5ec2d2167f0e61c4d225955129d9926371551b934e3191f91eff4da08e4fb` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/elab--47d135a1d79d9f58ea0d0894.md) | 70 | `declaration-track:47d135a1d79d9f58ea0d089449ed9607b35a818ac99bbfd49a76b6b05ef5c14b` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/elab--9365a225396c5ad0757c6bf6.md) | 88 | `declaration-track:9365a225396c5ad0757c6bf6796879d77773ab5b245f981113e972b442d8b7e5` |
| 10 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant946263dbd3c6f699f2b98e7331f5256ed5a82f48a7858578cf342155039ad112.lean/declarations/macro--dfcaf4eb4a5fb8277672635e.md) | 102 | `declaration-track:dfcaf4eb4a5fb8277672635ee74368a3a0ff08b971c8f51418361a9b15a805af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
