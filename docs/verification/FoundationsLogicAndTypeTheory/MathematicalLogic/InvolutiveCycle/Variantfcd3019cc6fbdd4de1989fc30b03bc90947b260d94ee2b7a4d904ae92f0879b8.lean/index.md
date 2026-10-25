# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvolutiveCycle.Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d10e4a8844d6b179501d02123121b28752582e00",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d10e4a8844d6b179501d02123121b28752582e00`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.Involution` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CycleDirection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/cycledirection--ae0a9d3455fc89e09156da6f.md) | 18 | `declaration-track:ae0a9d3455fc89e09156da6f799551c61b97e940fbb565928ed74ceb1c4d2eb2` |
| 2 | `def` | [opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/opposite--34bea3a11bea5e1a0a5e6db0.md) | 26 | `declaration-track:34bea3a11bea5e1a0a5e6db0acd47987776b1fc431fab34e5d6205bb2646d8e1` |
| 3 | `theorem` | [opposite_opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/opposite-opposite--d538fd8711e305e6829c84e4.md) | 31 | `result-track:d538fd8711e305e6829c84e49d1ecf3034d93ef80f475e97da9b3b39c1f6a46e` |
| 4 | `def` | [cycleSuccessor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/cyclesuccessor--8963fbbd8fbf1a153c56a536.md) | 37 | `declaration-track:8963fbbd8fbf1a153c56a536516111bed4320cbbaa22dcb2c6be816ae9b0c28a` |
| 5 | `def` | [cyclePredecessor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/cyclepredecessor--1700c9877a059c21914d7c8a.md) | 42 | `declaration-track:1700c9877a059c21914d7c8a7ba64e16b030b3181d6438a584a96e60cfb9a708` |
| 6 | `theorem` | [cyclePredecessor_successor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/cyclepredecessor-successor--81a1b57a412af8bde42caa1b.md) | 47 | `result-track:81a1b57a412af8bde42caa1bc943fd712843f0ecf1689f35807effb2574f4dce` |
| 7 | `theorem` | [cycleSuccessor_predecessor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/cyclesuccessor-predecessor--30ab3eb5dea53b62b2ca9af8.md) | 53 | `result-track:30ab3eb5dea53b62b2ca9af89de9e6a83d7eda5d4031570fc5d6f9b94fb0de75` |
| 8 | `structure` | [InvolutiveCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/involutivecycle--c7268e43044dac0b27d6c071.md) | 59 | `declaration-track:c7268e43044dac0b27d6c0715c8ede876c81a8b4b7e153ab47ea99d786b15fad` |
| 9 | `theorem` | [orbit_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/orbit-injective--ea95df008dc7f7eed3cc5e24.md) | 72 | `result-track:ea95df008dc7f7eed3cc5e244bd45f9f3d4e7a59b924bd7d78d6f810441f8a2e` |
| 10 | `theorem` | [edge_returns](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/edge-returns--52827fcff1a3ded608f103be.md) | 76 | `result-track:52827fcff1a3ded608f103be9f7836cbae2496de33533208f624e156c7949eb5` |
| 11 | `def` | [transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/transport--b8214535d58c0cd39d85767e.md) | 84 | `declaration-track:b8214535d58c0cd39d85767eb7eda8ff35bc30cce98231f641175d7e8c715ba8` |
| 12 | `theorem` | [transport_orbit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/transport-orbit--d982e33ab790758186aefd2f.md) | 95 | `result-track:d982e33ab790758186aefd2fccea09f6a0e367514798611c383595b6b8faff6f` |
| 13 | `theorem` | [transport_edge_act](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/transport-edge-act--b9970e013afb2bfc1ea84a79.md) | 102 | `result-track:b9970e013afb2bfc1ea84a79791dd767d1981c6436ecb7f552fc7b11033c4433` |
| 14 | `structure` | [DirectedCycleQuantum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/directedcyclequantum--3af1979cf4f4f3af13854f47.md) | 112 | `declaration-track:3af1979cf4f4f3af13854f4744576cf7f2c7a198f92a8614cf13258db2d7b2af` |
| 15 | `def` | [reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/reverse--5460ebf60dd0a25e49c5ab05.md) | 122 | `declaration-track:5460ebf60dd0a25e49c5ab0553e9adc344189aa036176da23ce3fdc54f17576d` |
| 16 | `theorem` | [reverse_direction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/reverse-direction--a6d60eff4e342f978dd1c18f.md) | 126 | `result-track:a6d60eff4e342f978dd1c18ff08adc604ee9b1ec52646a7a632b4b8d7875521a` |
| 17 | `theorem` | [reverse_reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/reverse-reverse--210a9c8216c9cf6a34efe566.md) | 131 | `result-track:210a9c8216c9cf6a34efe5663771c0e64129649f975ac17d8967f2a9598e1a37` |
| 18 | `def` | [transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/transport--0995b6e2a080d603f375586b.md) | 137 | `declaration-track:0995b6e2a080d603f375586bfa89ad8dfbf862b9063e1a0c4d45486ffb4cda97` |
| 19 | `theorem` | [transport_direction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8.lean/declarations/transport-direction--6a37c85078f26e09280597e5.md) | 144 | `result-track:6a37c85078f26e09280597e522528325705c6e486cca85afbe491c0d989814b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
