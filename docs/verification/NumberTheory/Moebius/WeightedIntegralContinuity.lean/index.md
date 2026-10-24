# Verification target: GRWTSK.NumberTheory.Moebius.WeightedIntegralContinuity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "874e9702580bca18c2ae7cd010f33a350fc7ff92",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/WeightedIntegralContinuity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `874e9702580bca18c2ae7cd010f33a350fc7ff92`.

Source path: `GRWTSK/NumberTheory/Moebius/WeightedIntegralContinuity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/WeightedIntegralContinuity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds`](../../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Topology.Piecewise` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pickup_nonpositive](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/declarations/pickup-nonpositive--cc0288e0ee55a6e62a402775.md) | 27 | `result-track:cc0288e0ee55a6e62a402775b97eb797e39248df7d0884c0ecc2263318eb4137` |
| 2 | `theorem` | [response_continuous](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/declarations/response-continuous--294d3364bf78c7750cfd212e.md) | 32 | `result-track:294d3364bf78c7750cfd212ef18bc23864c760284dfeb1c60c164387ee689117` |
| 3 | `def` | [fixedInventorySignal](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/declarations/fixedinventorysignal--6d354330edd22b227fcb2bc3.md) | 43 | `declaration-track:6d354330edd22b227fcb2bc3619d3bfb89f3ef2bccdb8c53ad03138df01a8ed2` |
| 4 | `theorem` | [fixed_inventory_signal_continuous](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/declarations/fixed-inventory-signal-continuous--0b5de7542d3c8bd7d17a86c6.md) | 46 | `result-track:0b5de7542d3c8bd7d17a86c69ff734a67ccd7da261b054f4de3f80d226e7c9fb` |
| 5 | `theorem` | [actual_waveform_on_inventory_all](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/declarations/actual-waveform-on-inventory-all--794b7a17b8b6d3da6d50bc47.md) | 53 | `result-track:794b7a17b8b6d3da6d50bc4790488032f58700ac8ff0c63c6a57eb65c68fea26` |
| 6 | `theorem` | [pickup_continuous](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/declarations/pickup-continuous--48200d6a0aa7aef492a0b6ef.md) | 70 | `result-track:48200d6a0aa7aef492a0b6efa445279836135ae9930c0247556012c6a2cfd116` |
| 7 | `theorem` | [reset_pickup_continuous](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/declarations/reset-pickup-continuous--80b10ccbe09276f1a3007690.md) | 83 | `result-track:80b10ccbe09276f1a3007690674c665fd64980d6d26d44feb81269e6ffabeeae` |
| 8 | `theorem` | [positive_envelope_attained](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/declarations/positive-envelope-attained--838a4afa4b8567b01665bb25.md) | 88 | `result-track:838a4afa4b8567b01665bb2591cf7cb70322cf5173492fb73eac3269b96a4387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
