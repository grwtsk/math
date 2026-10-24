# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30d364a42b27b33410705d6d7954aec9d891b6a7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30d364a42b27b33410705d6d7954aec9d891b6a7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.PortFiberHolomorphy`](../../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Topology.Algebra.PortFiberRing`](../../../../../mathematics/Topology/Algebra/PortFiberRing.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Logic.SimultaneousProofArchitecture`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis`](../../../../../mathematics/NumberTheory/Zeta/Riemann/Hypothesis.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RiemannTarget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/riemanntarget--6cbf705d16895f7af27f1a66.md) | 14 | `declaration-track:6cbf705d16895f7af27f1a66134d14264653cd26cee6ec7a1f3a5af406d7c93c` |
| 2 | `structure` | [BoundStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/boundstage--51ff91a923fd757dcebf421f.md) | 21 | `declaration-track:51ff91a923fd757dcebf421f9b5af1a0764e650419bc0ee814cf486522602526` |
| 3 | `def` | [ofPort](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/ofport--e09b2132a346492057159ccd.md) | 35 | `declaration-track:e09b2132a346492057159ccd06fd6c6950810f2066eee6b3b36fc4874bed02e3` |
| 4 | `structure` | [Architecture](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/architecture--977f0fffba36eeced9a59953.md) | 54 | `declaration-track:977f0fffba36eeced9a599538b9474db502a0154e7ab85dc92d01e8eb6f09d4e` |
| 5 | `def` | [LocalClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/localclaim--5ffdf0c12a6191ce90e0b57c.md) | 63 | `declaration-track:5ffdf0c12a6191ce90e0b57c51c9d6a644a25ad736d4cdcb1baea8959dcb188b` |
| 6 | `def` | [toBundle](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/tobundle--d24d672ad437c3d4aa532784.md) | 67 | `declaration-track:d24d672ad437c3d4aa5327840b45664606ff8e47418a2606d509ebeef372e744` |
| 7 | `theorem` | [allLocal](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/alllocal--4e4b93db546be3f90a99c33e.md) | 73 | `result-track:4e4b93db546be3f90a99c33ee7b2f0a073406f40638e4382ae8f73e8c558d513` |
| 8 | `def` | [withTargetDisposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/withtargetdisposition--f71b5be109497cfb0cb10467.md) | 77 | `declaration-track:f71b5be109497cfb0cb1046720f9cc3cf74e0743c5ece49a212c658952cfdfe8` |
| 9 | `inductive` | [StageIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/stageindex--7d6a1b1cb4e4da7440f0d982.md) | 87 | `declaration-track:7d6a1b1cb4e4da7440f0d98221b81f242056f44a60d24361a50cec7e082ef0d3` |
| 10 | `def` | [holomorphicPath](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/holomorphicpath--680c7c1133d5b57ba5979e70.md) | 93 | `declaration-track:680c7c1133d5b57ba5979e70fe9619b4ca19b659869fe30d2305c3b1e340bfc3` |
| 11 | `def` | [holomorphicPort](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/holomorphicport--45cd001fe20c98ac82e70f67.md) | 97 | `declaration-track:45cd001fe20c98ac82e70f67f5636535c92edd1113bc1a48f9496a0f247563be` |
| 12 | `def` | [holomorphicCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/holomorphiccertificate--3451a970ca5946c3119e5d3e.md) | 100 | `declaration-track:3451a970ca5946c3119e5d3ee62698f89d71ad76a1b2b80f19aad649eab1f4d7` |
| 13 | `def` | [holomorphicStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/holomorphicstage--e39039183d64a49000ef9261.md) | 105 | `declaration-track:e39039183d64a49000ef926112790ce936317e08d2454ead27261d548b4e3292` |
| 14 | `def` | [ringPath](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/ringpath--a1b843d3e29b27a86e48bd64.md) | 120 | `declaration-track:a1b843d3e29b27a86e48bd64d20be13a76e79e20f37ecbde1f6faa6bb0129c32` |
| 15 | `def` | [ringPort](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/ringport--46518abe247c5360d810f2f1.md) | 124 | `declaration-track:46518abe247c5360d810f2f1d3786152a2d682b2fec25ab06fa3c67a9d8b57f8` |
| 16 | `def` | [ringCertificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/ringcertificate--4b81c7653e6431664e1c2528.md) | 127 | `declaration-track:4b81c7653e6431664e1c2528751e51a8fe501995eef9b7848e1a619510f595d9` |
| 17 | `def` | [topologicalRingStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/topologicalringstage--3dfb992bee0f2c3c559c377f.md) | 133 | `declaration-track:3dfb992bee0f2c3c559c377fef625261ade5e0db738b4aadd3efae5e50fc6cf0` |
| 18 | `def` | [stage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/stage--e866499370de4a59f2311de4.md) | 150 | `declaration-track:e866499370de4a59f2311de46bd44a3ba7f5dcc67a3696c35b77cff1a48be1a1` |
| 19 | `def` | [architecture](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/architecture--090c3b88faade60b71e6fdc8.md) | 155 | `declaration-track:090c3b88faade60b71e6fdc8f64f5b33013526d512ec5dadc811417d97e476b3` |
| 20 | `theorem` | [all_local_stages](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/all-local-stages--0996578b816e2b9349a7721e.md) | 161 | `result-track:0996578b816e2b9349a7721e115595a7ea2df8ac1c5fc36106562b8283ba1ab6` |
| 21 | `theorem` | [rh_disposition_is_unresolved](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/declarations/rh-disposition-is-unresolved--c317876b76709dba32f4a8b4.md) | 165 | `result-track:c317876b76709dba32f4a8b42598c06db9f948781787f943baf1828cfcffb0a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
