# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lift.Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6838eebe90c197dbfcd973f132479de339c54270",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6838eebe90c197dbfcd973f132479de339c54270`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/canlift--747417be6a9dc4314d5dc2fa.md) | 36 | `declaration-track:747417be6a9dc4314d5dc2fa9d7b9682d8483e96aefe525a074e502cb8f05a3d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/instance--290760d7c2b4122ae19577bf.md) | 40 | `declaration-track:290760d7c2b4122ae19577bff37bc1a3548d86a9f807b3a4ab4b86f454daed7c` |
| 3 | `instance` | [Pi.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/pi-canlift--56ef52161da5fae69e35d98b.md) | 44 | `declaration-track:56ef52161da5fae69e35d98baae9dab6cd4f900bd4d5bb596261fa0ec1cb3f56` |
| 4 | `instance` | [Prod.instCanLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/prod-instcanlift--462786355c0760e9b8d61540.md) | 51 | `declaration-track:462786355c0760e9b8d61540bbfbd85d80d98a58b2085a8ffc44e89c650e2881` |
| 5 | `theorem` | [Subtype.exists_pi_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/subtype-exists-pi-extension--b19a2ed6af9fad1d1f78129f.md) | 60 | `result-track:b19a2ed6af9fad1d1f78129f505042d3f94fbc2f9967af5f677a60797c9ccff8` |
| 6 | `instance` | [PiSubtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/pisubtype-canlift--ebee540aefa5da6ee12144bc.md) | 67 | `declaration-track:ebee540aefa5da6ee12144bc5e8b6db01aa322323cecd1bf5a275a581470674f` |
| 7 | `instance` | [PiSubtype.canLift'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/pisubtype-canlift--7b79b29abaa9bda027fe7bd0.md) | 72 | `declaration-track:7b79b29abaa9bda027fe7bd035068eded63f475a88cdab8477fa1c3cc3957002` |
| 8 | `instance` | [Subtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/subtype-canlift--7ed5e7a7e17db47833242e6c.md) | 76 | `declaration-track:7ed5e7a7e17db47833242e6c051b2ef607ffe459f9b137c1ce1966ce805c33ea` |
| 9 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/syntax--5390d754fb611e0871c6584b.md) | 153 | `declaration-track:5390d754fb611e0871c6584b0542ddf82f9f7d8f9e51a775abd326397313e647` |
| 10 | `def` | [Lift.getInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/lift-getinst--8d29f08a8444b5d76a5a98a0.md) | 157 | `declaration-track:8d29f08a8444b5d76a5a98a0ad160484d759f513f0224f62f295fdc59da2cc52` |
| 11 | `def` | [Lift.main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/lift-main--d0ab419c30d17638340d461e.md) | 165 | `declaration-track:d0ab419c30d17638340d461ebdfd97812d35273e1aba3d2ac88e09f21f870f76` |
| 12 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant86fafd6bfc4fc56e0ae8ae0e7be80abae475408686be01bb7af5ff8d7e25b0f1.lean/declarations/elab-rules--bc71171cf704cd96ca4f764c.md) | 216 | `declaration-track:bc71171cf704cd96ca4f764c01374fdea3a81ba1085f18f47c853dd0a196e44b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
