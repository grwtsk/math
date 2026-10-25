# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rounding.Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abf5ce7397df7a7706e1eb0f2787ad969d8b7963",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abf5ce7397df7a7706e1eb0f2787ad969d8b7963`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean.json)

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
| 1 | `structure` | [ExactRationalCoordinate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/exactrationalcoordinate--681f275e5525d5a82418da2e.md) | 28 | `declaration-track:681f275e5525d5a82418da2e8266b265afd12719d6b175ca7cafcf6fecb78448` |
| 2 | `def` | [inboundRound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/inboundround--076562e33c0e871aba7e41ef.md) | 37 | `declaration-track:076562e33c0e871aba7e41ef0613105ae346ac674bfa2cd17ff9c2a0b3b9273a` |
| 3 | `def` | [outboundRound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/outboundround--5bd37605d7f977f417b3f1a0.md) | 43 | `declaration-track:5bd37605d7f977f417b3f1a00d9da66c643f2a8c4cedcf0d68f65297c41b5125` |
| 4 | `theorem` | [inboundRound_below_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/inboundround-below-half--c9f26e4c00c6503ec426082a.md) | 50 | `result-track:c9f26e4c00c6503ec426082a3e34bf5c3dd9ddba4406703fea705889d54dcfc3` |
| 5 | `theorem` | [inboundRound_at_half_up](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/inboundround-at-half-up--eb9bf5e13fccacd74f02a3e4.md) | 56 | `result-track:eb9bf5e13fccacd74f02a3e4c09a38d17b20a087428c84641476ec0938cc31b3` |
| 6 | `theorem` | [inboundRound_above_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/inboundround-above-half--16a09639fc12e3df1c90a52c.md) | 62 | `result-track:16a09639fc12e3df1c90a52c8695bfda03ee8b5226f84cc86e6117cf79cd4888` |
| 7 | `theorem` | [outboundRound_below_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/outboundround-below-half--6c2b98644f5476fceadbcf76.md) | 68 | `result-track:6c2b98644f5476fceadbcf76811587ba856457001cf246f1a7b2060dc5b94fdb` |
| 8 | `theorem` | [outboundRound_at_half_down](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/outboundround-at-half-down--0106372e44d7bcc3835e4672.md) | 74 | `result-track:0106372e44d7bcc3835e4672c2d2c00cc50a3ba7eb6f8cdefd54c3e156467295` |
| 9 | `theorem` | [outboundRound_above_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/outboundround-above-half--f38b56b293ac7e374c4603cd.md) | 80 | `result-track:f38b56b293ac7e374c4603cdcd1a31a2fb43e8e3d4a154accc20de73df301d6a` |
| 10 | `theorem` | [inbound_rounding_result_adjacent_to_floor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/inbound-rounding-result-adjacent-to-floor--2b46d1428e4cc0d5fb819e92.md) | 86 | `result-track:2b46d1428e4cc0d5fb819e9243a9e1f467babe7dde18a1435372838a1b2b1d67` |
| 11 | `theorem` | [outbound_rounding_result_adjacent_to_floor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/outbound-rounding-result-adjacent-to-floor--95c446a8863175b34adcea3f.md) | 94 | `result-track:95c446a8863175b34adcea3f3bf739fad06b861d0c7471c0b456534e27a2b848` |
| 12 | `def` | [clampCandidateIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/clampcandidateindex--0f29819137e070644b3ebde9.md) | 101 | `declaration-track:0f29819137e070644b3ebde9829613b901bfc1668406b1a8a27b41a1a17f47a8` |
| 13 | `theorem` | [rounding_preserves_bounds_after_clamp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant7a9ffbcafcb0fc34857fbe226695f43ebeaf7e4ad19abf563179b1cd8b4a1926.lean/declarations/rounding-preserves-bounds-after-clamp--86d4d830a2ec686c32811d31.md) | 106 | `result-track:86d4d830a2ec686c32811d31bd49a83cf7f0cb0bc4bb3c85114c91ef1f77fcd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
