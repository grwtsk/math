# Verification target: GRWTSK.Algebra.LinearAlgebra.QuantitativeGapMetric.Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77ec1b46b082e20d05014533755ad2a5eed0b519",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77ec1b46b082e20d05014533755ad2a5eed0b519`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuantitativeGap` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteQuadraticCertificate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean/declarations/weightedadjoint--f83484512f06412be40e7507.md) | 32 | `declaration-track:f83484512f06412be40e75077fea7f83437dbea4802ca5b65a95d438ccc0a3c7` |
| 2 | `theorem` | [metric_pullback_identity](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean/declarations/metric-pullback-identity--7da8c48e9cf9c5e74ed5b683.md) | 36 | `result-track:7da8c48e9cf9c5e74ed5b6833a129f887796c34f592110ee64b7056ac5657f68` |
| 3 | `theorem` | [quadratic_congruence](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean/declarations/quadratic-congruence--3ff3050903276b4a9bf6d5b6.md) | 44 | `result-track:3ff3050903276b4a9bf6d5b68cc96fcc4000a8947b71e4e738e2f7b483db694e` |
| 4 | `theorem` | [weighted_coercivity](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean/declarations/weighted-coercivity--c7ee04ebbc9cf948097180bd.md) | 52 | `result-track:c7ee04ebbc9cf948097180bd7ef639b5d8653a22a029bc2dd19602f26df38231` |
| 5 | `theorem` | [certificate_gap](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean/declarations/certificate-gap--9c2859b5cc16a85d84265b66.md) | 76 | `result-track:9c2859b5cc16a85d84265b66c80477e2ba77025992cb546dff979862bbf6deb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
