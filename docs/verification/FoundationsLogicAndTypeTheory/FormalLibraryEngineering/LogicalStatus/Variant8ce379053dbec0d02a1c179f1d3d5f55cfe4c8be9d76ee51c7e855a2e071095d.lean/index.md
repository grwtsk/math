# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogicalStatus.Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3fc2ab1779860c41472fbc76c1515b67bf3929",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3fc2ab1779860c41472fbc76c1515b67bf3929`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LogicalStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/logicalstatus--05b0e1c61ddf01be1f5eb8fa.md) | 21 | `declaration-track:05b0e1c61ddf01be1f5eb8fad5954e84b8bfb0c1dc9d68e679bcb70c5fba1a64` |
| 2 | `structure` | [Claim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/claim--49b7b6a75f6479bb9d89a95f.md) | 28 | `declaration-track:49b7b6a75f6479bb9d89a95f261b39f317b7c8e3547f6042654e3746ff5ac891` |
| 3 | `structure` | [Certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/certificate--a9b5fbfa5d51ae27a87bc052.md) | 32 | `declaration-track:a9b5fbfa5d51ae27a87bc0523598359a0cfcd14984e2e5463fff46b65ac9f71b` |
| 4 | `structure` | [ConditionalCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/conditionalcertificate--4ce9b44c02db63a8e74f854e.md) | 36 | `declaration-track:4ce9b44c02db63a8e74f854e3853edf74b455ad34df9717e11c97415038ea820` |
| 5 | `def` | [logicalStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/logicalstatus--6c764712d3e3abe93a43d38e.md) | 42 | `declaration-track:6c764712d3e3abe93a43d38e1500e5d5976da3dbeae2a3ed8ed5da6eae76dd1d` |
| 6 | `def` | [toConditional](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/toconditional--ccb0d3eb8f5d6f739cd0b781.md) | 46 | `declaration-track:ccb0d3eb8f5d6f739cd0b781d78fbc1f9e62981f6b7cf5082f2d1b368679f4ba` |
| 7 | `def` | [logicalStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/logicalstatus--9feb17250c125cc64350f90e.md) | 54 | `declaration-track:9feb17250c125cc64350f90eeb84832a6997ffc6b1beb66dc1e915ee14cbdc79` |
| 8 | `def` | [mapHypothesis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/maphypothesis--2ed574c3197c50607b8c3c1f.md) | 58 | `declaration-track:2ed574c3197c50607b8c3c1f870f312fba3c982dbb82ba2c2a8cf015f6d103d2` |
| 9 | `structure` | [ConjecturalTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/conjecturaltarget--a7c02a1988177f24ad78a7fe.md) | 69 | `declaration-track:a7c02a1988177f24ad78a7fe3cc7ab87f953024823ab8159435e4873077db4c4` |
| 10 | `def` | [logicalStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogicalStatus/Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d.lean/declarations/logicalstatus--9ecf4cd4bdd419a5a450b6d5.md) | 75 | `declaration-track:9ecf4cd4bdd419a5a450b6d597944d91efb23e311e2d1b91981c307eaa6d1d91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
