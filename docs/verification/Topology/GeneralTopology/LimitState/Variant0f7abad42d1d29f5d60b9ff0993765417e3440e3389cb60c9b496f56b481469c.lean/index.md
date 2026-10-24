# Verification target: GRWTSK.Topology.GeneralTopology.LimitState.Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac29ad61ca2d1a429b91b836b566b87555053895",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac29ad61ca2d1a429b91b836b566b87555053895`.

Source path: `GRWTSK/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Boundary.ProjectiveSystem` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Frontier.OrdinalIndex` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LimitBoundaryState](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean/declarations/limitboundarystate--0631c8a31053b888e8178a2e.md) | 28 | `declaration-track:0631c8a31053b888e8178a2e980421ea24205ad7a777a7db21d01bda418f80b1` |
| 2 | `structure` | [AddressedLimitBoundaryState](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean/declarations/addressedlimitboundarystate--406141eb254d85c5811d943b.md) | 46 | `declaration-track:406141eb254d85c5811d943bee93f78334eaac73d367a90e931db0acab33f04b` |
| 3 | `inductive` | [LimitStateExistenceMode](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean/declarations/limitstateexistencemode--6819b9aa4e07f9ade2245ad9.md) | 64 | `declaration-track:6819b9aa4e07f9ade2245ad95d79f27eaa03910fbfedbbec868727295a587f69` |
| 4 | `structure` | [LimitStateNonemptyCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean/declarations/limitstatenonemptycertificate--40d4c5e4e5a58037d36eee0a.md) | 70 | `declaration-track:40d4c5e4e5a58037d36eee0af9f870621e1a83ef19c966231f77d4ccfbd27207` |
| 5 | `theorem` | [limitBoundaryState_nonempty](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean/declarations/limitboundarystate-nonempty--c1543d28459b092862a4bf75.md) | 86 | `result-track:c1543d28459b092862a4bf75af326b2dfd3e1bc8f9b36b0b63a3ef8d68c79bb9` |
| 6 | `structure` | [CoherentSectionCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean/declarations/coherentsectioncertificate--51e421cb9ebb0e2156b6d6f6.md) | 99 | `declaration-track:51e421cb9ebb0e2156b6d6f600eef698f50a7a763a391eac3ce53eaa2db59063` |
| 7 | `structure` | [LimitMetricCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitState/Variant0f7abad42d1d29f5d60b9ff0993765417e3440e3389cb60c9b496f56b481469c.lean/declarations/limitmetriccertificate--2ab119ae58aa6b32615c10e9.md) | 124 | `declaration-track:2ab119ae58aa6b32615c10e9b1fd24fc6d2201e6a377e0e94344adb4aa139e6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
