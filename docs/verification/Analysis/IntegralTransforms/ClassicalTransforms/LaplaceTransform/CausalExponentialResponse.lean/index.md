# Verification target: GRWTSK.Analysis.LaplaceTransform.CausalExponentialResponse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7b5727f170b4abc83449832084a8ceeb23f36e1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LaplaceTransform/CausalExponentialResponse.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7b5727f170b4abc83449832084a8ceeb23f36e1`.

Source path: `GRWTSK/Analysis/LaplaceTransform/CausalExponentialResponse.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LaplaceTransform/CausalExponentialResponse.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy`](../../../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [laplaceResponse](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/laplaceresponse--c16c7fc40864c257175e8653.md) | 24 | `declaration-track:c16c7fc40864c257175e8653b643b5576460a608a9a4269852251fd27261dc35` |
| 2 | `def` | [atomInverseHalf](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/atominversehalf--eda8329c9b2a0f3c5159c8f4.md) | 27 | `declaration-track:eda8329c9b2a0f3c5159c8f4f00ffc5320d562698dc7fce8af07eae97912fba8` |
| 3 | `def` | [ungatedLaplaceResponse](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/ungatedlaplaceresponse--77de1119c077759d8e9ece7e.md) | 29 | `declaration-track:77de1119c077759d8e9ece7e7fbd251b992ed17bfee794f5a784e91003a29b56` |
| 4 | `theorem` | [weighted_kernel_identity](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/weighted-kernel-identity--993a854638288f1330106364.md) | 33 | `result-track:993a854638288f13301063644b1b0f617b9a799b54a4456c11227a4a49946966` |
| 5 | `theorem` | [laplace_response_indicator](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/laplace-response-indicator--668319f9c1655a7432efa30e.md) | 50 | `result-track:668319f9c1655a7432efa30e9c214e7953fea9673ebcd1ddf642ccd84378bd41` |
| 6 | `theorem` | [ungated_laplace_response_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/ungated-laplace-response-integrable--37cebcfabcd5f6859cf58e75.md) | 65 | `result-track:37cebcfabcd5f6859cf58e75c34d4e58cfb0318d30e4cef8d6de63107e61aa65` |
| 7 | `theorem` | [laplace_response_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/laplace-response-integrable--7f977eb9dd3b2dbad045be7f.md) | 77 | `result-track:7f977eb9dd3b2dbad045be7f9da2a6112ec9faa71ae86b316133775647ea13a6` |
| 8 | `theorem` | [laplace_response_integral](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/laplace-response-integral--703e1f5c662f5b05f95641c3.md) | 84 | `result-track:703e1f5c662f5b05f95641c3e938e13a71c761ce20d515262069d4c1602ac389` |
| 9 | `theorem` | [atom_inverse_half_eq_exp](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/atom-inverse-half-eq-exp--f0628a0b75c63ae89791f73f.md) | 112 | `result-track:f0628a0b75c63ae89791f73f19e6984f44bab6aba4fc80fadc487b3d8c18e8df` |
| 10 | `theorem` | [laplace_response_integral_cpow](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/declarations/laplace-response-integral-cpow--e069fda977944be01fdf0fe6.md) | 122 | `result-track:e069fda977944be01fdf0fe6fbc46a191bddc5cd311efc97bc4e4eb8e45184e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
