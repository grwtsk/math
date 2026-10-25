# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lift.Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc271e52f06bbf613e88a9952dc2198de9ceda3c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc271e52f06bbf613e88a9952dc2198de9ceda3c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Cases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PermuteGoals` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Order` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/canlift--f420173837a6e949f30cecb6.md) | 31 | `declaration-track:f420173837a6e949f30cecb641661f985e53b0f8c7201e46ad955f4a254869fe` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/instance--32c7bcabe9403babce8f1a29.md) | 36 | `declaration-track:32c7bcabe9403babce8f1a29eb50157619a2d9de94d2668be0bd64f7da39b716` |
| 3 | `instance` | [Pi.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/pi-canlift--d1bd5cca97ea642e42797284.md) | 40 | `declaration-track:d1bd5cca97ea642e42797284f986b0a57a740fcffe6feda3335df7bdb3ec490a` |
| 4 | `theorem` | [Subtype.exists_pi_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/subtype-exists-pi-extension--bce50f15ca029be41288d4ac.md) | 47 | `result-track:bce50f15ca029be41288d4ac11b8ceb17344214ee1ec93f98e02e346f4cda73c` |
| 5 | `instance` | [PiSubtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/pisubtype-canlift--c2360520503e6232fccf58f6.md) | 55 | `declaration-track:c2360520503e6232fccf58f61caad1f15f7282a998dea9fa553f6a0ebdaf9895` |
| 6 | `instance` | [PiSubtype.canLift'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/pisubtype-canlift--ad9246270c2c7f83e8a54ffe.md) | 61 | `declaration-track:ad9246270c2c7f83e8a54ffe8985eeb4a4a443eb2907a45e0003e2666a901b0f` |
| 7 | `instance` | [Subtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/subtype-canlift--5c53cbdeeab06899f2f816e0.md) | 66 | `declaration-track:5c53cbdeeab06899f2f816e062ad8df670c269a6a0644f061970da46a65b7f20` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/syntax--f4e0482efb80b51609e7df14.md) | 113 | `declaration-track:f4e0482efb80b51609e7df1483314d85ca7d0c9ef7410d08d7720a2a501bb475` |
| 9 | `def` | [Lift.getInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/lift-getinst--4f8bd07b3a7349e4edeb399f.md) | 117 | `declaration-track:4f8bd07b3a7349e4edeb399fb789e12d240f169c4175033affa3b451e5cc124b` |
| 10 | `def` | [Lift.main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/lift-main--366f89241e8de1632b46118a.md) | 125 | `declaration-track:366f89241e8de1632b46118ad981931a6ba16248689516c6a4b113b24ffcdbb7` |
| 11 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/elab-rules--d96786e5b69cd5e5458850bb.md) | 178 | `declaration-track:d96786e5b69cd5e5458850bbaa292fe4147db7aade4c7d3a227f37cc339b7c36` |
| 12 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/elab-rules--bb76ee30054a790b7fd6c14f.md) | 181 | `declaration-track:bb76ee30054a790b7fd6c14fbb38efb14491addd585b7297b4d5985fdf5aae4f` |
| 13 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/elab-rules--737640759c3a0ceea3407ce8.md) | 184 | `declaration-track:737640759c3a0ceea3407ce82ea4b723a05e841ead4f9cf057626ec84ceeb828` |
| 14 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant3c5b7820e67777caeb894fce7f865655c0de3a054cb8a43fe515e52e9e18b9fb.lean/declarations/elab-rules--a7d9fcab66dede74b1213d5a.md) | 187 | `declaration-track:a7d9fcab66dede74b1213d5ab267ef3a4f5068bd8e76ac6ebc29dc28ce6f1aaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
