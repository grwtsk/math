# Verification target: GRWTSK.Algebra.LinearAlgebra.Closed.Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78f36cae5b216f8dcb918b7100f1b5a55ee7c9bb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78f36cae5b216f8dcb918b7100f1b5a55ee7c9bb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean.json)

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
| 1 | `def` | [monoidalClosedHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/declarations/monoidalclosedhomequiv--43463cbea7a1c84657d8f352.md) | 37 | `declaration-track:43463cbea7a1c84657d8f35248dfdc9c30a9ad2f30ed0fecf1c92009b359a867` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/declarations/instance--31bfc56e34003cfa8ea10f50.md) | 47 | `declaration-track:31bfc56e34003cfa8ea10f50e962dcd5aa28fe7628a6c91d4b3a81288f8391dd` |
| 3 | `theorem` | [ihom_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/declarations/ihom-map-apply--22216a03f4302690e980d113.md) | 60 | `result-track:22216a03f4302690e980d113770ee623f75ecdc6f16d965b2ee3d5989fed9936` |
| 4 | `theorem` | [monoidalClosed_curry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/declarations/monoidalclosed-curry--14992c59e5a9d3fe61e3d997.md) | 66 | `result-track:14992c59e5a9d3fe61e3d99787091a3524d0c9ff806f3da59b6baf7947fa0060` |
| 5 | `theorem` | [monoidalClosed_uncurry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/declarations/monoidalclosed-uncurry--2fe7f9562455114bcdfc5b61.md) | 71 | `result-track:2fe7f9562455114bcdfc5b61cabaa6304176bd05f669c5e1d56f4c22ca58c69b` |
| 6 | `theorem` | [ihom_ev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/declarations/ihom-ev-app--5dc4859029f8050b35b6f33b.md) | 79 | `result-track:5dc4859029f8050b35b6f33b64ec636d188411dabc33fe3f7a72e2b6fa09318f` |
| 7 | `theorem` | [ihom_coev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/declarations/ihom-coev-app--ea77b7ed540d5934c1053032.md) | 90 | `result-track:ea77b7ed540d5934c1053032bbcec05089cbceb36fee4cca3d256e9d3b93ecf2` |
| 8 | `theorem` | [monoidalClosed_pre_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant989946a47071b8c3c7aedfb97754d173f62d4c1050b40bec63bd6c08a983cc8b.lean/declarations/monoidalclosed-pre-app--d7c8cd1c60be5d0215eea9a9.md) | 94 | `result-track:d7c8cd1c60be5d0215eea9a9c21227c0c66338aacf8b639952e2cb7a124b2d39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
