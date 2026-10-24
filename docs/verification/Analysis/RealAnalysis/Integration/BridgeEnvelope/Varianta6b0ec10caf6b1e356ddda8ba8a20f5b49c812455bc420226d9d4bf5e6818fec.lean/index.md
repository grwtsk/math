# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BridgeEnvelope.Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df0d13c10c93bcb16f6e3a1e9c482c266038a574",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df0d13c10c93bcb16f6e3a1e9c482c266038a574`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 1; external provider; requires a separately pinned dependency.
- `ActualPrimeError` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralBridge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/declarations/integralbridge--a55a7a178303dc90bc729bd4.md) | 15 | `declaration-track:a55a7a178303dc90bc729bd448475cd5b67289d0fbb4249f11b4e621790f8735` |
| 2 | `theorem` | [segment_integral_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/declarations/segment-integral-bounds--26b18561d7dabdef3e855c52.md) | 18 | `result-track:26b18561d7dabdef3e855c524ddd14abf8c1f9e9d80ac7ea30618fe42ef77888` |
| 3 | `theorem` | [integralBridge_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/declarations/integralbridge-abs-le--8a4923689b0ca7a573691ab6.md) | 33 | `result-track:8a4923689b0ca7a573691ab637f064b671d7b21ba1338b8b12c979dde64c62ef` |
| 4 | `theorem` | [actual_discrepancy_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/declarations/actual-discrepancy-bounds--3d7880af66f6c38dec878d6b.md) | 65 | `result-track:3d7880af66f6c38dec878d6b9787a35d13300a315ab2eb3a743e87904c007dbd` |
| 5 | `theorem` | [actual_bridge_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/declarations/actual-bridge-eq--01918bd4aedf92fe41223d35.md) | 78 | `result-track:01918bd4aedf92fe41223d356d4974906dd935350e04a31f417b3afed2f39cfc` |
| 6 | `theorem` | [actual_bridge_abs_le_chord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/declarations/actual-bridge-abs-le-chord--75b9d977a5731b6ae64a647b.md) | 83 | `result-track:75b9d977a5731b6ae64a647b95e6b600771aa89168421057ce94c87fdf75184b` |
| 7 | `theorem` | [chord_le_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/declarations/chord-le-scale--8e0a1fc84713e38edb60fa10.md) | 94 | `result-track:8e0a1fc84713e38edb60fa1023a79c0ad80d22bb8f10c2ffb3e02349bd446500` |
| 8 | `theorem` | [actual_bridge_abs_le_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/declarations/actual-bridge-abs-le-scale--fb2c03fb3a67ece503b2d28b.md) | 99 | `result-track:fb2c03fb3a67ece503b2d28bd30b9e14d891e99d9882f8b352ef9fd8acd8ee3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
