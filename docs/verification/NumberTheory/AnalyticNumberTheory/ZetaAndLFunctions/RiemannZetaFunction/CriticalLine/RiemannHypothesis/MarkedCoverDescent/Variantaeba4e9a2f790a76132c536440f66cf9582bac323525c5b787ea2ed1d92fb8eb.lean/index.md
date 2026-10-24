# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MarkedCoverDescent.Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c58d9a829fbdd989d190e5dfe0343fe51bf3b3f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c58d9a829fbdd989d190e5dfe0343fe51bf3b3f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CenteredPermutation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cocycle](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/cocycle--42621d989ff52d26acc7c427.md) | 29 | `declaration-track:42621d989ff52d26acc7c427b98b674fa696826dae763ca6db417ab22da11d11` |
| 2 | `def` | [transition](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/transition--fb9216733bf3bf76d9879dcc.md) | 37 | `declaration-track:fb9216733bf3bf76d9879dcc0cb04ffc946b4a90523be3b4fbf812441afb99bb` |
| 3 | `def` | [Coherent](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/coherent--79b01dcf663a5d1f17bb1e1b.md) | 46 | `declaration-track:79b01dcf663a5d1f17bb1e1b9c926d14e6bd79fde8ed350489f274e0da1c89f7` |
| 4 | `theorem` | [explicit_frames_satisfy_cocycle](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/explicit-frames-satisfy-cocycle--3ec388f8ebe2eb3ea92511ea.md) | 49 | `result-track:3ec388f8ebe2eb3ea92511ea2774179104b31486214f89e0f5d7c444839a9fa0` |
| 5 | `theorem` | [cocycle_requires_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/cocycle-requires-identity--ac07cdf48263f478441e03e7.md) | 54 | `result-track:ac07cdf48263f478441e03e75d84c973e6109756f96be6ecb0706410c35c5de7` |
| 6 | `theorem` | [cocycle_requires_inverse](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/cocycle-requires-inverse--77cb330dbf2ed1eac50aa012.md) | 59 | `result-track:77cb330dbf2ed1eac50aa012ba44611f28386a842e802d45b9e99a1863185091` |
| 7 | `theorem` | [anchored_family_is_coherent](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/anchored-family-is-coherent--4ccb7330d02c4aa679572c8e.md) | 63 | `result-track:4ccb7330d02c4aa679572c8ee17bcc36d1f14ee1ed01c11a79bbd90a37c98ba2` |
| 8 | `theorem` | [every_coherent_family_reconstructs_from_anchor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/every-coherent-family-reconstructs-from-anchor--2c7824b06b28759eb156a382.md) | 69 | `result-track:2c7824b06b28759eb156a3824f02f14ede878cc76a9b28a956d8de7e78a033fe` |
| 9 | `theorem` | [coherent_families_with_same_anchor_are_equal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/coherent-families-with-same-anchor-are-equal--dd80715d1feb5ff9a925b1e3.md) | 75 | `result-track:dd80715d1feb5ff9a925b1e31a0211eb2895af593f51d516bc008a9b822a7965` |
| 10 | `theorem` | [compatible_readout_is_anchor_independent](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/compatible-readout-is-anchor-independent--c90924c9a7301b81d6a92e64.md) | 82 | `result-track:c90924c9a7301b81d6a92e64a1d0b23fa2a8408cec187e931eb5ac565a7e0c93` |
| 11 | `def` | [negationTransitions](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/negationtransitions--d0f8cd035e8f9c30dfe57100.md) | 94 | `declaration-track:d0f8cd035e8f9c30dfe571006ccb67c775dd9aff98e7b183a90d422deca4f3c6` |
| 12 | `theorem` | [invertible_marked_transitions_need_not_be_cocyclic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/declarations/invertible-marked-transitions-need-not-be-cocyclic--210bad06c5ca04ed33c98d1a.md) | 97 | `result-track:210bad06c5ca04ed33c98d1ab4a8729911eaf020a7cd5f73b7bf44cb68f0dc08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
