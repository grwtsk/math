# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondBlockData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b60c5048f39271fa20aefc1c83786c5eb33eaec",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b60c5048f39271fa20aefc1c83786c5eb33eaec`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlockData`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [base](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/base--651d6cb0c7d3a66c9289c53e.md) | 24 | `declaration-track:651d6cb0c7d3a66c9289c53eb4247dcc51ae2a3da035c32410d3e1a2f3bcbc2f` |
| 2 | `def` | [initial](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/initial--c73187120fa3c55adcd01730.md) | 26 | `declaration-track:c73187120fa3c55adcd0173098bfcbdb19aa62d1a6cb724c318eb90935b33b87` |
| 3 | `def` | [sourceArgument](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/sourceargument--5e4cf119f1ccc78f90c96cef.md) | 94 | `declaration-track:5e4cf119f1ccc78f90c96cefd327c469661fb61758cd692a824df8b8f1dd3a70` |
| 4 | `def` | [sourceRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/sourceradius--d45fe4b2d98f43b021580360.md) | 96 | `declaration-track:d45fe4b2d98f43b021580360f5587d3ef0c404bb7c9161f0d7e5227da54b9b21` |
| 5 | `def` | [sourceDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/sourcedisplacement--9632409089034049a4ad222a.md) | 98 | `declaration-track:9632409089034049a4ad222a2b85bb26eebf0452b1d4d0987c048500c9e00493` |
| 6 | `def` | [InputValid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/inputvalid--bcaa88a45698ca860a6d8e0b.md) | 101 | `declaration-track:bcaa88a45698ca860a6d8e0b6e55a28ff4a7aa716f3688ab7691193839291c04` |
| 7 | `def` | [SeedWindows](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/seedwindows--a9300a74f267d821208a6b1d.md) | 105 | `declaration-track:a9300a74f267d821208a6b1dae3fb44bc2a6cef005b890cbf1a45c6361646008` |
| 8 | `def` | [slot](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/slot--4231232c208d6b639586c0fb.md) | 110 | `declaration-track:4231232c208d6b639586c0fbbbbbee91db015969b15a567614c1904f7a090a25` |
| 9 | `theorem` | [group_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/group-cover--e4fd0fd59af8561a7ba2520d.md) | 112 | `result-track:e4fd0fd59af8561a7ba2520d27b35a1b426f20b9a16f84b4302172a499c58125` |
| 10 | `theorem` | [group_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/declarations/group-unique--d2f3a2453d67f95130bb43a0.md) | 115 | `result-track:d2f3a2453d67f95130bb43a083811b3efcc931354a2fd40672536251bbfae386` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
