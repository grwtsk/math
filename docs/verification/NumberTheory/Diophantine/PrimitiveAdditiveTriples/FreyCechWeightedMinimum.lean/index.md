# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechWeightedMinimum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24c5041cc027e8ebe82362df03293179df267734",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24c5041cc027e8ebe82362df03293179df267734`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.ThreeCellWeightedMinimum`](../../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechIntegralGauge`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechIntegralGauge.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedCokernel`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ReducedStage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/reducedstage--e35b2267b3c8ca37837d6061.md) | 28 | `declaration-track:e35b2267b3c8ca37837d60610fc19c35e2bc8fa04b9571f630773f2bb3903c42` |
| 2 | `abbrev` | [Parameters](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/parameters--abe8c788072ced25b170a1dd.md) | 29 | `declaration-track:abe8c788072ced25b170a1dd3db8d328e3dac4900e5d8d4e155e66f4841d2ef8` |
| 3 | `def` | [combinedMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/combinedmap--170b9a9f4eefb7b99dec9c42.md) | 32 | `declaration-track:170b9a9f4eefb7b99dec9c42b26b0731dcc3c44c523f4a9c33ffac367600e310` |
| 4 | `theorem` | [combinedMap_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/combinedmap-agrees--3b725ecbeb30aa2ea160857e.md) | 36 | `result-track:3b725ecbeb30aa2ea160857eb139d0a680baca52ed0de69a92e392533a784e66` |
| 5 | `theorem` | [combined_image_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/combined-image-iff--de00cddaa8cb5420e2bb80e1.md) | 42 | `result-track:de00cddaa8cb5420e2bb80e1e896ebe98dece71649b21e9753b02698ca00f7f7` |
| 6 | `abbrev` | [CombinedCokernel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/combinedcokernel--459f73f79e67c1e6f025a495.md) | 66 | `declaration-track:459f73f79e67c1e6f025a4959f84021020131f629225f98bfae753dc106aca55` |
| 7 | `def` | [combinedCokernelEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/combinedcokernelequiv--b6facb50113e5f04b9c2b04f.md) | 69 | `declaration-track:b6facb50113e5f04b9c2b04ffb52d9c092371e5dd8a02b50623952c7982b3106` |
| 8 | `theorem` | [combined_index](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/combined-index--bfe1f58eb52f7ecebffc14a4.md) | 76 | `result-track:bfe1f58eb52f7ecebffc14a45662150eebaceba6d63c55f8950da8fb63003de9` |
| 9 | `theorem` | [combined_clearing_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/combined-clearing-iff--e64a7c9d8fa9dca117e3baae.md) | 86 | `result-track:e64a7c9d8fa9dca117e3baaeb26fb00895c6b736d5d93bd13661099636ac4452` |
| 10 | `theorem` | [fields_ext](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/fields-ext--bab6510bc3e65668b742525d.md) | 100 | `result-track:bab6510bc3e65668b742525dc11dde0899169d66c3920cc33455022219cd517d` |
| 11 | `theorem` | [realized_source_normal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/realized-source-normal--69b97b7b616fefb464a97899.md) | 115 | `result-track:69b97b7b616fefb464a9789955e1cfd8aa299717b2a2d0cc7d8c36e03d77ca7b` |
| 12 | `theorem` | [realized_port_source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/realized-port-source--5bcedbed1bdd136cf9aad98b.md) | 133 | `result-track:5bcedbed1bdd136cf9aad98bf888c22cfc349d24e84d6adc1507965c159c6fbe` |
| 13 | `theorem` | [realized_port_normal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/realized-port-normal--f01a1ba3ee22aa4f252cf1ab.md) | 144 | `result-track:f01a1ba3ee22aa4f252cf1ab288047162a2990211baa6d81c7b2fea75dafa696` |
| 14 | `theorem` | [two_three_grade_two_clearing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/two-three-grade-two-clearing--9d5080c59fa36d04c47e5b24.md) | 168 | `result-track:9d5080c59fa36d04c47e5b2406f0e263f338c930ce0da730a2cf5536e6395344` |
| 15 | `theorem` | [two_three_grade_two_index](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/declarations/two-three-grade-two-index--da54ebf9b52e7a90af6bf1c1.md) | 173 | `result-track:da54ebf9b52e7a90af6bf1c1cafe75e9bc8d4e64ec57f97a206471700f48ea15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
