# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be82844f3c7cf334a191b92b4b962f36d537117f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineGaugeMetric.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be82844f3c7cf334a191b92b4b962f36d537117f`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineGaugeMetric.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineGaugeMetric.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineMetric`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineMetric.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportMetric](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/transportmetric--476a99c853d2e32f4f86ad9e.md) | 25 | `declaration-track:476a99c853d2e32f4f86ad9e8e6e16edd6d5ef6bfdd4b2db6bae9cae739dd1ca` |
| 2 | `theorem` | [transport_weight_mul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/transport-weight-mul--2ad223b5f223b5043122a16f.md) | 43 | `result-track:2ad223b5f223b5043122a16f73abe5528a3cbb9e3ac49b7e34f7174ffbc025a9` |
| 3 | `theorem` | [transportMetric_symm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/transportmetric-symm--83d66ef797003d3e369bb0ee.md) | 54 | `result-track:83d66ef797003d3e369bb0ee603afbf4328e09d900088c1cdf309846b99c01eb` |
| 4 | `theorem` | [pairing_transport](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/pairing-transport--4bd49386338b478a9dfca8f6.md) | 64 | `result-track:4bd49386338b478a9dfca8f6820d7448212c90baacfe5bcb55cc1b982fae35a5` |
| 5 | `theorem` | [squaredNorm_transport](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/squarednorm-transport--cdc7404bb86608f2784fbc26.md) | 75 | `result-track:cdc7404bb86608f2784fbc26bb54e2b9eb755a7fab08baa27792efb6cf6e6026` |
| 6 | `theorem` | [fiberNorm_transport](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/fibernorm-transport--2e6ff0df2766325bd4c9f386.md) | 85 | `result-track:2e6ff0df2766325bd4c9f386aa120a3005e55f3cc71dfc0929d75f7328da88bb` |
| 7 | `theorem` | [transportMetric_unique](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/transportmetric-unique--5ca6b38e369979716ac85ed8.md) | 93 | `result-track:5ca6b38e369979716ac85ed8e0ba040af33fffd0d3be5eb7a77d403b59840886` |
| 8 | `theorem` | [pairing_transport_to_selected](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/pairing-transport-to-selected--7419e4e00b3b396a55bbb153.md) | 108 | `result-track:7419e4e00b3b396a55bbb153d35fa7012fed6dc98c6285051785d23f1905c57d` |
| 9 | `theorem` | [positive_weights_can_mismatch](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/positive-weights-can-mismatch--50f8d94c13fc2a08dba182e2.md) | 123 | `result-track:50f8d94c13fc2a08dba182e27687f68d29037a668702fe6ea3968d8b0f8c67cb` |
| 10 | `theorem` | [doubling_target_weight](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/declarations/doubling-target-weight--8a74ed97eee2db40adb8f8f4.md) | 134 | `result-track:8a74ed97eee2db40adb8f8f4700728442dec0764027b37492da2e4e5d6e13bb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
