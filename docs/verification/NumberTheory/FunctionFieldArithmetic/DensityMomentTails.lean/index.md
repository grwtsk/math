# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMomentTails

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2abcf5fbd94bff1ac777d18dbce34601a7e01346",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2abcf5fbd94bff1ac777d18dbce34601a7e01346`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityHalfMoment`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityCorrectionReciprocalMass`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityClosedReciprocalHead](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/declarations/densityclosedreciprocalhead--c27cddd2e5e73ecc009723bb.md) | 19 | `declaration-track:c27cddd2e5e73ecc009723bb1597ba146ee9cdc03296ed5ed48f4a07840b25f4` |
| 2 | `def` | [densityReciprocalTail](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/declarations/densityreciprocaltail--33a4ed0d72c4780e9c04636f.md) | 22 | `declaration-track:33a4ed0d72c4780e9c04636f0fa684ff933104d25c48bac36d4208241686b3d8` |
| 3 | `theorem` | [density_reciprocal_tail_summable](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/declarations/density-reciprocal-tail-summable--bbff5933de4d3eda94e76062.md) | 25 | `result-track:bbff5933de4d3eda94e76062a12572469e535cee5cdaed2fcf3e757ed81b7225` |
| 4 | `theorem` | [density_reciprocal_head_summable](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/declarations/density-reciprocal-head-summable--4a751520352d03b36006149e.md) | 30 | `result-track:4a751520352d03b36006149efca9fa09ab6361075ad4930cd4cd8e28448796e6` |
| 5 | `theorem` | [density_reciprocal_closed_head_tail](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/declarations/density-reciprocal-closed-head-tail--8f1e0b4273dba59aeac55ed1.md) | 35 | `result-track:8f1e0b4273dba59aeac55ed15feb8e5a8155e98b5da9143c1d0e8f3c74f0b7ea` |
| 6 | `theorem` | [density_reciprocal_tail_atom](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/declarations/density-reciprocal-tail-atom--0b91e0fe7f9d9f40e9ff330e.md) | 46 | `result-track:0b91e0fe7f9d9f40e9ff330e667765cbabd957b945863577440d4e92c7f1cc05` |
| 7 | `theorem` | [density_reciprocal_tail_term](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/declarations/density-reciprocal-tail-term--b26b8b06a94442fafeff4d66.md) | 49 | `result-track:b26b8b06a94442fafeff4d66d43b5c78c624d19f02335cf0d8ca771214ce82f8` |
| 8 | `theorem` | [density_reciprocal_tail_le_half](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/declarations/density-reciprocal-tail-le-half--93dc3a28e15ef5685171d70b.md) | 67 | `result-track:93dc3a28e15ef5685171d70bda99f079f5c23931078a728bf9c0ea54f152e2f2` |
| 9 | `theorem` | [density_reciprocal_tail_bound](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMomentTails.lean/declarations/density-reciprocal-tail-bound--835bd77bef7d46ad4f58bff8.md) | 76 | `result-track:835bd77bef7d46ad4f58bff88e1754626b64bb340ffb316d0fd71f9a59404f3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
