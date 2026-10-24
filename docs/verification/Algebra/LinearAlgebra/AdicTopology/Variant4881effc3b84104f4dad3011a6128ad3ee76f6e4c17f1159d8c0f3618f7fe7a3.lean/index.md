# Verification target: GRWTSK.Algebra.LinearAlgebra.AdicTopology.Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a90498b2a6754a53586c5ca5174f97b7548b2a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a90498b2a6754a53586c5ca5174f97b7548b2a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adic_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/adic-basis--5176443a6bbd2bca1f8d442c.md) | 63 | `result-track:5176443a6bbd2bca1f8d442c5970cce2bc3e1013cf3f56ba6caad67a34c2a256` |
| 2 | `def` | [ringFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/ringfilterbasis--975b1969793603f367341a55.md) | 86 | `declaration-track:975b1969793603f367341a55c59573351bff435d72a1742ee9b29d7f354466c8` |
| 3 | `def` | [adicTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/adictopology--5dab33f11fa9c754f26e7f6b.md) | 92 | `declaration-track:5dab33f11fa9c754f26e7f6b611046922030ce756d03d4a514e5888824a3aa4c` |
| 4 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/nonarchimedean--9b252188fbe4b543ad3a6907.md) | 96 | `result-track:9b252188fbe4b543ad3a690718af9201de186ba931570897d8bdb5af5d2798f1` |
| 5 | `theorem` | [hasBasis_nhds_zero_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/hasbasis-nhds-zero-adic--6b4fc61900b05592a6d95b30.md) | 101 | `result-track:6b4fc61900b05592a6d95b303f7c8cc58605021628d354ec3186246792675902` |
| 6 | `theorem` | [hasBasis_nhds_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/hasbasis-nhds-adic--3116bd9f70aefd5f17ba1b2b.md) | 115 | `result-track:3116bd9f70aefd5f17ba1b2b129396534f6c1f8edd9f7f58ce15a9d8c12ce5a2` |
| 7 | `theorem` | [adic_module_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/adic-module-basis--301269c4c5a6b94e4d951e1c.md) | 125 | `result-track:301269c4c5a6b94e4d951e1ceb8f6f665e1473eb2630080ab2ff87cb1ea87654` |
| 8 | `def` | [adicModuleTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/adicmoduletopology--d4e333f16127adddd30439a4.md) | 140 | `declaration-track:d4e333f16127adddd30439a4c9e1dae0e94a6149888b35fddd293e357434999a` |
| 9 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/openaddsubgroup--f23ff4ce966b459108d5ca67.md) | 147 | `declaration-track:f23ff4ce966b459108d5ca67c6b5fa8e3d6ebd102027132ec60ac838b6d9d0d1` |
| 10 | `def` | [IsAdic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/isadic--55d42efc6ff3882acd1dadf5.md) | 161 | `declaration-track:55d42efc6ff3882acd1dadf5369709ab1277683698b72ff00a5d397cf29cd61b` |
| 11 | `theorem` | [isAdic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/isadic-iff--d25944fbb3283eb882db3386.md) | 167 | `result-track:d25944fbb3283eb882db3386e5be312681db4f69c38ad709020a25a57ab4ce6b` |
| 12 | `theorem` | [is_ideal_adic_pow](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/is-ideal-adic-pow--70b312c597f606a28eb4f91b.md) | 198 | `result-track:70b312c597f606a28eb4f91b5f14ae1e0ee32d8145e3341ecba0d84d1155df1c` |
| 13 | `theorem` | [is_bot_adic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/is-bot-adic-iff--0d26c9d168ac740606b409c2.md) | 216 | `result-track:0d26c9d168ac740606b409c2d3469a3fce590eee0230cb735429f10017c28f99` |
| 14 | `class` | [WithIdeal](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/withideal--1c893ccaf1a60b4e675003a0.md) | 234 | `declaration-track:1c893ccaf1a60b4e675003a0dae0a60db4b1429b83fac33cfe98a04e9d58d2cf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/instance--03a7c262359efa4466dac218.md) | 244 | `declaration-track:03a7c262359efa4466dac218d5c627bfec1d701fc082ef38ad96b00a35531cfd` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/instance--158910e6c5045cc26f6f4513.md) | 247 | `declaration-track:158910e6c5045cc26f6f4513af6002f0956274cd79b843d2bfa54a8f9e40a5cf` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/instance--821e441759072fdfc9e35d25.md) | 250 | `declaration-track:821e441759072fdfc9e35d25c51128e35894977138d34eddd786abb23b5fa621` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/instance--73590f44e0d0d6c33defaf65.md) | 253 | `declaration-track:73590f44e0d0d6c33defaf650599910875a373fd079ead0776cfcf54852057c5` |
| 19 | `def` | [topologicalSpaceModule](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/topologicalspacemodule--2092b34697965ef2cd99bb8f.md) | 258 | `declaration-track:2092b34697965ef2cd99bb8f3916fff167e3e1268dc971eeff17677ec60ee8f6` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/example--1844e21403ed6a5bf7e1139d.md) | 266 | `declaration-track:1844e21403ed6a5bf7e1139d503748740ed28b7b29690f756d1a590e82754582` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/example--e976afec129b3cb5a219931a.md) | 268 | `declaration-track:e976afec129b3cb5a219931a2e96313c9d16bb5e47106acc5e00c4b99cbcba20` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/example--e2563d31c97393820846669c.md) | 270 | `declaration-track:e2563d31c97393820846669c1cdcd91216b4a1d2a4f5770231a8876744f92681` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/example--2201bcd272d16eb533e9e181.md) | 273 | `declaration-track:2201bcd272d16eb533e9e181c7457f93073ec80dedf5446ddc53f6244c339f5c` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/declarations/example--4bc2e014a96f784f76a34c34.md) | 276 | `declaration-track:4bc2e014a96f784f76a34c3416667266bbbff6679f6adeb3e1558cdd6f183335` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
