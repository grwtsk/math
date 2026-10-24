# Verification target: GRWTSK.Analysis.ComplexAnalysis.VerticalReflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c797536a75b7ac2a2d2209f5eac1e06a8e0c7024",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/VerticalReflection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c797536a75b7ac2a2d2209f5eac1e06a8e0c7024`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/VerticalReflection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/VerticalReflection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalReflection](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/criticalreflection--d87acbcd4bc8f318ec8536df.md) | 20 | `declaration-track:d87acbcd4bc8f318ec8536dfbfa9d3b8b0dd79bf8a57aaa53cef2d64ebd5c3f2` |
| 2 | `def` | [criticalCenter](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/criticalcenter--dec308044cb70e47ec1b4c37.md) | 24 | `declaration-track:dec308044cb70e47ec1b4c37aac8f21d4196c6fa977ccb0afbc44ce896fdf179` |
| 3 | `def` | [horizontalDefect](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/horizontaldefect--954bd56448ea030cf61d5673.md) | 26 | `declaration-track:954bd56448ea030cf61d5673a9d43244eff99ec4f0692fee5e9727933157852a` |
| 4 | `theorem` | [critical_reflection_re](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/critical-reflection-re--6ee30204035c96f0913f4021.md) | 28 | `result-track:6ee30204035c96f0913f40212d51275d17284ca0713a2e6eb7179dea90865c73` |
| 5 | `theorem` | [critical_reflection_im](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/critical-reflection-im--b50025aafdf586f31de1e6a7.md) | 31 | `result-track:b50025aafdf586f31de1e6a776a92c7c1092ca98df159395bce119a015f9da30` |
| 6 | `theorem` | [critical_reflection_involutive](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/critical-reflection-involutive--85244425a41c297ef3a28bc3.md) | 34 | `result-track:85244425a41c297ef3a28bc39d46e29e5697358a63fdf2f03a10ab6dac0d9d75` |
| 7 | `theorem` | [critical_reflection_fixed_iff](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/critical-reflection-fixed-iff--ed29115d391f604d7a909991.md) | 38 | `result-track:ed29115d391f604d7a909991409324377defc63ae5b1a7508d0f1adc5d57dbad` |
| 8 | `theorem` | [center_defect_reconstruct](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/center-defect-reconstruct--2f335250872e92e684939db8.md) | 51 | `result-track:2f335250872e92e684939db8e38de46f178b707a5e516308ff88cac29a319624` |
| 9 | `def` | [criticalPacket](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/criticalpacket--c9a74e2f6c9ad1846fc04f69.md) | 58 | `declaration-track:c9a74e2f6c9ad1846fc04f69892ba41ec2b842e6e16a9be354a0feb32d4938a7` |
| 10 | `theorem` | [critical_packet_reconstruct](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/critical-packet-reconstruct--c5b4c67367e84c43151c331b.md) | 61 | `result-track:c5b4c67367e84c43151c331b2678c1b1f5e8393a1ecd86598ce867d06a3b9bf3` |
| 11 | `theorem` | [critical_packet_injective](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/critical-packet-injective--bf3e0536768eab1793ddf0d5.md) | 65 | `result-track:bf3e0536768eab1793ddf0d5e1d5a9788386bfbc78fc1af1fec57078817feb44` |
| 12 | `theorem` | [reflected_defect](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/reflected-defect--ad0dbd67e53bab2ddad78a2b.md) | 70 | `result-track:ad0dbd67e53bab2ddad78a2b3771edbd8916d2e24c356c1649b3f210d7839bc6` |
| 13 | `theorem` | [center_on_critical_line](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/center-on-critical-line--58ffa8c21dcf9937ed4ab3e5.md) | 75 | `result-track:58ffa8c21dcf9937ed4ab3e5645965c9b3f385aa6b55bbe476f7174056ba95f3` |
| 14 | `theorem` | [center_equals_source_iff](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/center-equals-source-iff--28d34c6ab83a6ac003f0ede7.md) | 77 | `result-track:28d34c6ab83a6ac003f0ede717c31cc9df91aead42e3094977457652a54b0bc1` |
| 15 | `theorem` | [critical_line_of_defect_vanishing](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/critical-line-of-defect-vanishing--cdb1cfa1f295d616f1f88aa8.md) | 90 | `result-track:cdb1cfa1f295d616f1f88aa8d706be0ab38d3221798d6a22b2072fd81c554ff1` |
| 16 | `theorem` | [critical_projection_discards_defect](../../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrenceda885bc6f9d2f3de0f477bca.lean/declarations/critical-projection-discards-defect--2feb96a167350e2522d0b232.md) | 97 | `result-track:2feb96a167350e2522d0b2321c6899ec8693ff1893c2109046bbb055f6b80042` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
