# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourthBlockData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45084201aa867661966d6273cfecd2175b03431a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45084201aa867661966d6273cfecd2175b03431a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdBlockData`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [base](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/base--5c4dfb28f6ae9e78d419def9.md) | 14 | `declaration-track:5c4dfb28f6ae9e78d419def9fb91760fc608d1e583ae0f74a132b51a1669111c` |
| 2 | `def` | [initial](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/initial--765766dbf85a1f73a99f4d6f.md) | 16 | `declaration-track:765766dbf85a1f73a99f4d6f83a0c026e465c90172db878eccd21a242a20c62c` |
| 3 | `def` | [sourceArgument](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/sourceargument--aeaf540a806800b31ccaa8b2.md) | 83 | `declaration-track:aeaf540a806800b31ccaa8b235f752328924e512da04539cf98980c44ac945ce` |
| 4 | `def` | [sourceRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/sourceradius--49df6563d6e244961da5f9e7.md) | 85 | `declaration-track:49df6563d6e244961da5f9e7fae3d0a133653a6102e94ce15becf793cf1aef57` |
| 5 | `def` | [sourceDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/sourcedisplacement--6f6cbcd184f4a23e02288f23.md) | 87 | `declaration-track:6f6cbcd184f4a23e02288f234db3deadb24d6fd13c11d319b0eb1e9ae2420a63` |
| 6 | `def` | [InputValid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/inputvalid--35958804dd1f125713924520.md) | 90 | `declaration-track:35958804dd1f12571392452079b13c93bc0cf46cc7fd4af8c974d0aae94c196d` |
| 7 | `def` | [SeedWindows](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/seedwindows--77f9e86853f0d3f583873219.md) | 94 | `declaration-track:77f9e86853f0d3f583873219fb294eb6ac49448aa08855bb3c6c3f7b316ba95f` |
| 8 | `def` | [slot](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/slot--a856fae9a31b74d0ac4bf8e4.md) | 98 | `declaration-track:a856fae9a31b74d0ac4bf8e46e78c58d02905167ff50bf3428674d236eaa6a7a` |
| 9 | `theorem` | [group_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/group-cover--58376bad3a33bb88b8e94e96.md) | 100 | `result-track:58376bad3a33bb88b8e94e96c270e09d5f31d0ad1d84f5d3f5e9a3261e434dc5` |
| 10 | `theorem` | [group_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourthBlockData.lean/declarations/group-unique--ade7e84a4903fc8848ab95f0.md) | 103 | `result-track:ade7e84a4903fc8848ab95f079c5c2fa70add1b38e075ddc73f270ab0cb893bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
