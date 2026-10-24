# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt07.Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3daf8cedfb39952dbb48574216622766ecedb67",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3daf8cedfb39952dbb48574216622766ecedb67`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEndpointCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/declarations/sourcenormalization-tendsto--9e778388422814237a7cc29d.md) | 22 | `result-track:9e778388422814237a7cc29daf45a523881549f3020ccefa8794e4f0d54e9e8c` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/declarations/endpointpolynomialcorrelation-continuous--d092d24b891ba9a17f4f554b.md) | 33 | `result-track:d092d24b891ba9a17f4f554b5ab15e277e3a27e550af2dde86052265367bbfa6` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/declarations/endpointpolynomialcorrelation-at-zero--73e0a2554fcbaf1e23753af0.md) | 39 | `result-track:73e0a2554fcbaf1e23753af07384e5835f56623cef70d80678a905d8bec365e3` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/declarations/actual-endpoint-scaled-tendsto--7e11aa0d968c4f553dedc3e4.md) | 46 | `result-track:7e11aa0d968c4f553dedc3e42c2ff10a77186d88121eb00da2d64701e5cf72a9` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/declarations/actual-endpoint-normalized-tendsto--afe5e9b585e8f874c309e461.md) | 59 | `result-track:afe5e9b585e8f874c309e46177dfd7c894389a78fc089bc8570d26b577f37cd8` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/declarations/actual-endpoint-excursion-tendsto--ccc03ae93ff813e2d037e910.md) | 71 | `result-track:ccc03ae93ff813e2d037e9109d407c851e3ee7126cd88d383160daf3e1699a7a` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/declarations/actual-positivemass-tendsto--e8166e6038c3f919cac2fd97.md) | 93 | `result-track:e8166e6038c3f919cac2fd97b2a8c39e0856d902f483d6f0f8f5b92de52661b0` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/declarations/actual-negativemass-tendsto--6a56f1c56118627ec7b21075.md) | 101 | `result-track:6a56f1c56118627ec7b210753aa337c0c5ccda4d18c952bb537dd7ad398adc45` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887.lean/declarations/actual-massratio-tendsto--189df2e0f964984addd172a9.md) | 107 | `result-track:189df2e0f964984addd172a9c187f7075271cf6d5d278b4fbda2e777ffb75bd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
