# Verification target: GRWTSK.Topology.GeneralTopology.Compactness.Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1203a57f92dfebd7dd49dc69e723ce0f922d57ee",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1203a57f92dfebd7dd49dc69e723ce0f922d57ee`.

Source path: `GRWTSK/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mathlib.Certificate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [real_Icc_isCompact](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/declarations/real-icc-iscompact--645d8edd84ec568910669e17.md) | 30 | `result-track:645d8edd84ec568910669e17fafa9c74ef13c237ae9bcc6a73c578bb17474c3e` |
| 2 | `theorem` | [continuousOn_Icc_attains_max](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/declarations/continuouson-icc-attains-max--35fe4c292d1c3c32bcec6f01.md) | 37 | `result-track:35fe4c292d1c3c32bcec6f014f9a271e182456348421fe3530b8052caa6d05fb` |
| 3 | `theorem` | [continuousOn_Icc_attains_min](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/declarations/continuouson-icc-attains-min--c04424dbf7c38376a50d1c89.md) | 49 | `result-track:c04424dbf7c38376a50d1c89063f55a66aeb8393500c5b24781f86cf03a4e2f0` |
| 4 | `def` | [compactnessContext](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/declarations/compactnesscontext--31e0a9275009d898c1c824af.md) | 60 | `declaration-track:31e0a9275009d898c1c824af4e13cb10bea99fa6223172e5292f08c3908ded1c` |
| 5 | `def` | [compactnessClaim](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/declarations/compactnessclaim--74f85b8dcc499ef08f9f1cf2.md) | 67 | `declaration-track:74f85b8dcc499ef08f9f1cf215a8e8757a4de1f5fc7333a2e96b9d23a03f8333` |
| 6 | `def` | [compactnessMathlibProofCertificate](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/declarations/compactnessmathlibproofcertificate--959496a01825e998437f0666.md) | 83 | `declaration-track:959496a01825e998437f0666ecc987ce1f60aae02eff2893765268975a064ac4` |
| 7 | `theorem` | [compactness_through_boundary_calculus](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/declarations/compactness-through-boundary-calculus--7f8a29f9414f5e4773df004e.md) | 100 | `result-track:7f8a29f9414f5e4773df004e485b530031159a064a4b2f1a4451b31b11639d6f` |
| 8 | `theorem` | [compactness_no_direct_crossing](../../../../../mathematics/Topology/GeneralTopology/Compactness/Variant258aa764042f9da4dfced12fdd118ff702c31ba4a3f23c3c0bada3231aa31d84.lean/declarations/compactness-no-direct-crossing--10d09984e90811fe8fd7bdec.md) | 113 | `result-track:10d09984e90811fe8fd7bdec547a4600552a4aeac5e62fd329e71f1125779e2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
