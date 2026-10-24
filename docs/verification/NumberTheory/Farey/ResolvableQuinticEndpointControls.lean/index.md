# Verification target: GRWTSK.NumberTheory.Farey.ResolvableQuinticEndpointControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28d8456db1dc7c6243b51275b8216e3f1ff89c71",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28d8456db1dc7c6243b51275b8216e3f1ff89c71`.

Source path: `GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ResolvableQuintic`](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomialResolves_mul_of_nonneg_at_endpoints](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/declarations/polynomialresolves-mul-of-nonneg-at-endpoints--520abc3da9e0092f216519f0.md) | 36 | `result-track:520abc3da9e0092f216519f079e60d630741c7769f9d834acbfabd7ed12b3d91` |
| 2 | `def` | [endpointWitnessCell](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/declarations/endpointwitnesscell--3ff3f49be556c3eb020eac2f.md) | 49 | `declaration-track:3ff3f49be556c3eb020eac2f3aed7163d001639b58a92ad67235986d326db6e6` |
| 3 | `def` | [endpointWitnessFactor](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/declarations/endpointwitnessfactor--faa5a4737017776dc5a75d75.md) | 60 | `declaration-track:faa5a4737017776dc5a75d75902cb12e8879476114982a99dc3f80207bacc47c` |
| 4 | `def` | [endpointWitnessLinear](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/declarations/endpointwitnesslinear--202d3dac65ecc8ab07cd5db5.md) | 64 | `declaration-track:202d3dac65ecc8ab07cd5db57720c12ee5eae19a6f2bbdf60404c2ace027b12d` |
| 5 | `theorem` | [endpointWitnessFactor_positive](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/declarations/endpointwitnessfactor-positive--106d378119225e200ac9f37a.md) | 67 | `result-track:106d378119225e200ac9f37a3ba11019613a23f9c5b13e99a650ab9f38577199` |
| 6 | `theorem` | [endpointWitnessLinear_resolves](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/declarations/endpointwitnesslinear-resolves--4d13767ed147d2b2a86b3ae5.md) | 76 | `result-track:4d13767ed147d2b2a86b3ae5d13d23daa80c78ce011f1ed542070c2793553d20` |
| 7 | `theorem` | [endpointWitnessProduct_resolves](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/declarations/endpointwitnessproduct-resolves--d9d7c1ee1fd58b66ee3ca10f.md) | 86 | `result-track:d9d7c1ee1fd58b66ee3ca10f0dfcf4f03470e257931a13521eecda5fd484da93` |
| 8 | `theorem` | [endpointWitness_extra_root](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/declarations/endpointwitness-extra-root--a00c7b281a1d349923bbd74d.md) | 94 | `result-track:a00c7b281a1d349923bbd74daa0b64d7cc24822e7bf688377950eb3f957f70c0` |
| 9 | `theorem` | [exists_endpoint_positive_factor_with_extra_rational_root](../../../../mathematics/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/declarations/exists-endpoint-positive-factor-with-extra-rational-root--fa4dd291223bc09e7fcce3bb.md) | 108 | `result-track:fa4dd291223bc09e7fcce3bbe087b6bf11f55011f74bb99a127023bf7a371fb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
