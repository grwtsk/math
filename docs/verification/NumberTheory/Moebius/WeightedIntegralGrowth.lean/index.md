# Verification target: GRWTSK.NumberTheory.Moebius.WeightedIntegralGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e040f3c1acddb5544af6ae9d58c7636f765b8158",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/WeightedIntegralGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e040f3c1acddb5544af6ae9d58c7636f765b8158`.

Source path: `GRWTSK/NumberTheory/Moebius/WeightedIntegralGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/WeightedIntegralGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral`](../../../../mathematics/NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MaterialPickupPoly](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/declarations/materialpickuppoly--f99bb4a2ea9f7463393db1cd.md) | 25 | `declaration-track:f99bb4a2ea9f7463393db1cd71ec64149fafa0f2ac6b9961f48f33ba8a05be1e` |
| 2 | `theorem` | [pickup_bound_iff_material_bound](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/declarations/pickup-bound-iff-material-bound--b40daa6a943f32738a4de60c.md) | 30 | `result-track:b40daa6a943f32738a4de60c7d42bed9e5e18233504133babac64b4392e4c671` |
| 3 | `theorem` | [whole_pickup_poly_iff_material](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/declarations/whole-pickup-poly-iff-material--e987495d2f86f45682182f05.md) | 44 | `result-track:e987495d2f86f45682182f05b097d745b4068159ad8f172adb40eeffd115186c` |
| 4 | `theorem` | [pickup_reset_bound](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/declarations/pickup-reset-bound--4e797a0cbf4c826ce7125ab3.md) | 53 | `result-track:4e797a0cbf4c826ce7125ab3e5504a5e0a2784b94cd498bb5b2d1cea0b4738a9` |
| 5 | `theorem` | [pickup_reset_signed_bound](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/declarations/pickup-reset-signed-bound--de289166ae035cea7b781d91.md) | 85 | `result-track:de289166ae035cea7b781d91371a92169086297ed99f3c7d3ec130a5970ea31f` |
| 6 | `theorem` | [whole_pickup_poly_reset](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/declarations/whole-pickup-poly-reset--2538735e47e803df2505476d.md) | 96 | `result-track:2538735e47e803df2505476df775fe751dfd2c5f40f956e1258fe409baed31ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
