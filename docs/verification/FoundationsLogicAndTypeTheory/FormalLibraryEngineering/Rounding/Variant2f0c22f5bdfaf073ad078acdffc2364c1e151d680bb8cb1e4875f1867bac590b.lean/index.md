# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rounding.Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93253c9db683605d3e1ad0dede46921f39e9ddd5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93253c9db683605d3e1ad0dede46921f39e9ddd5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExactRationalCoordinate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/exactrationalcoordinate--7b5443dc226291a5dc60fd8f.md) | 20 | `declaration-track:7b5443dc226291a5dc60fd8ff96f47f70a81e7412ad46349e92f63440986d0a0` |
| 2 | `def` | [inboundRound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/inboundround--1b11832a67006c053290bc66.md) | 29 | `declaration-track:1b11832a67006c053290bc6655062fecc5839ed2a13ab30f373650074fa07239` |
| 3 | `def` | [outboundRound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/outboundround--cbeaafb649c6e48ef065efa0.md) | 35 | `declaration-track:cbeaafb649c6e48ef065efa0de2a865e13c2b9548f057513314ddcd45e374864` |
| 4 | `theorem` | [inboundRound_below_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/inboundround-below-half--3e6365fe53f656d0dd43005c.md) | 42 | `result-track:3e6365fe53f656d0dd43005ce6e59ecdfc3fe53120a40493fcc500b9c784b4f8` |
| 5 | `theorem` | [inboundRound_at_half_up](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/inboundround-at-half-up--d18e8ee1cfabcdf1c6fbe099.md) | 48 | `result-track:d18e8ee1cfabcdf1c6fbe099c33011d273450cae3eaa3dbd1c89f55c8ea9faa8` |
| 6 | `theorem` | [inboundRound_above_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/inboundround-above-half--76d570f035e03e7c35359164.md) | 54 | `result-track:76d570f035e03e7c35359164294ebc81a411fa17f55b3c42aac74f19128dab21` |
| 7 | `theorem` | [outboundRound_below_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/outboundround-below-half--f4befe28bb595d4bc696304c.md) | 60 | `result-track:f4befe28bb595d4bc696304ce49e101d3138fc797c58e4b6b8463eb9e6581e2f` |
| 8 | `theorem` | [outboundRound_at_half_down](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/outboundround-at-half-down--8c4ef3cd4e4890219fd4d503.md) | 66 | `result-track:8c4ef3cd4e4890219fd4d503e8530fbff134ae3b5efddf90585179a1f62d9d4c` |
| 9 | `theorem` | [outboundRound_above_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/outboundround-above-half--b523610287343274d6bfade4.md) | 72 | `result-track:b523610287343274d6bfade46c0a41a5e78c2afc25874ad8dc0c30cc9c835664` |
| 10 | `theorem` | [inbound_rounding_result_adjacent_to_floor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/inbound-rounding-result-adjacent-to-floor--7f7eb48541d0a0419937df6f.md) | 78 | `result-track:7f7eb48541d0a0419937df6fd8a8c34247ba363f595081873f2fb422ffb0f3a6` |
| 11 | `theorem` | [outbound_rounding_result_adjacent_to_floor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/outbound-rounding-result-adjacent-to-floor--e267d2e6b1e90a88f1478a3e.md) | 86 | `result-track:e267d2e6b1e90a88f1478a3ed614308ed2d1d40f6349e69d74898febf35c7113` |
| 12 | `def` | [clampCandidateIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/clampcandidateindex--3130a257ccba2a02484f6724.md) | 93 | `declaration-track:3130a257ccba2a02484f6724a4b21cb7a830cad174d405ac822cc97204e850fc` |
| 13 | `theorem` | [rounding_preserves_bounds_after_clamp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean/declarations/rounding-preserves-bounds-after-clamp--90a71bb1622d8a6555269d56.md) | 98 | `result-track:90a71bb1622d8a6555269d56ed09974b5c4c044ff3280cb07de315b3d4b57587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
