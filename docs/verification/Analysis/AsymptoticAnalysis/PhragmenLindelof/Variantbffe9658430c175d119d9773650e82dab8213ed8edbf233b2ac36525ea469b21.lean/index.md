# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PhragmenLindelof.Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0378b6cac22f885a9ebd8bc29154c7e788f5a2b4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0378b6cac22f885a9ebd8bc29154c7e788f5a2b4`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SuperpolynomialDecay` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/macro-rules--d744d60accce300b6177ddd9.md) | 51 | `declaration-track:d744d60accce300b6177ddd9c065e8182cc6e6e57d6e42d83682abc81cfe564d` |
| 2 | `theorem` | [isBigO_sub_exp_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/isbigo-sub-exp-exp--02c9958470a37bc636e93b71.md) | 64 | `result-track:02c9958470a37bc636e93b71c092828db6a667b2b27cd09e6acc1cb39f7ff258` |
| 3 | `theorem` | [isBigO_sub_exp_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/isbigo-sub-exp-rpow--b9b5d7cd90eb6cdd282931e0.md) | 84 | `result-track:b9b5d7cd90eb6cdd282931e08738f5a0854a465c271645273c7330cefc1e412c` |
| 4 | `theorem` | [horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/horizontal-strip--fa53031a2cc77616ef112239.md) | 122 | `result-track:fa53031a2cc77616ef1122394d65f359197bc2f0d2118484335f8eea3dfd6f52` |
| 5 | `theorem` | [eq_zero_on_horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eq-zero-on-horizontal-strip--47ad95fbaecb64c7f1886298.md) | 240 | `result-track:47ad95fbaecb64c7f1886298571a1d952aeac341116602713dda36ad0d930894` |
| 6 | `theorem` | [eqOn_horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eqon-horizontal-strip--c12fbca8d379e6edfdb3069a.md) | 259 | `result-track:c12fbca8d379e6edfdb3069a3d1d5787e9e1f965a07257593d4be0952d44d3a7` |
| 7 | `theorem` | [vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/vertical-strip--ca7860ea8d3a486a10e8c0ba.md) | 286 | `result-track:ca7860ea8d3a486a10e8c0ba098cdc9cd6f0d280f0f525af0849b270a6497eb5` |
| 8 | `theorem` | [eq_zero_on_vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eq-zero-on-vertical-strip--4e7fe7cf73df888a2c77e3c2.md) | 315 | `result-track:4e7fe7cf73df888a2c77e3c25b294fa28c9f662157a57822b5181fb7c6129335` |
| 9 | `theorem` | [eqOn_vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eqon-vertical-strip--6dc44b9c3434ff663ab96e1b.md) | 334 | `result-track:6dc44b9c3434ff663ab96e1b88feb12c468cfaa5e3fde33451c893eae9b3ba07` |
| 10 | `theorem` | [quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/quadrant-i--3aa53d9dfac2bd45b3c4c386.md) | 358 | `result-track:3aa53d9dfac2bd45b3c4c3865d0eea7c953022053808711326695f324120d529` |
| 11 | `theorem` | [eq_zero_on_quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eq-zero-on-quadrant-i--b8679858e124f4bca4f9a1a9.md) | 428 | `result-track:b8679858e124f4bca4f9a1a9088c14a413b6f6675ceb0aa87c50b473d22e8fcf` |
| 12 | `theorem` | [eqOn_quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eqon-quadrant-i--17048e08f99c9884b2b638e0.md) | 447 | `result-track:17048e08f99c9884b2b638e0bda298022dfd586f4c3ebe1f5f567d209042d944` |
| 13 | `theorem` | [quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/quadrant-ii--c9eb53a4c4272c8ced03211d.md) | 469 | `result-track:c9eb53a4c4272c8ced03211d0cb7a9b7c298115ed22c4e3dba5c20a137b93a10` |
| 14 | `theorem` | [eq_zero_on_quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eq-zero-on-quadrant-ii--67331a6afe73ab5e03a4e48c.md) | 497 | `result-track:67331a6afe73ab5e03a4e48c24b78c9cd75e2a4b769fe4a71e1585143457b61e` |
| 15 | `theorem` | [eqOn_quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eqon-quadrant-ii--683e80b0f3aa9b9ce182d959.md) | 516 | `result-track:683e80b0f3aa9b9ce182d959202ecff605c84374cb02d044876b874fd8d41129` |
| 16 | `theorem` | [quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/quadrant-iii--e78dc607dc496bc15ea7efb7.md) | 537 | `result-track:e78dc607dc496bc15ea7efb7a083398bd53ddb80fc417782185b7b7c94318dd9` |
| 17 | `theorem` | [eq_zero_on_quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eq-zero-on-quadrant-iii--4e80767e23dda671336e0dd6.md) | 570 | `result-track:4e80767e23dda671336e0dd6ae4f57715c99a8222503cf150f14138259d3987d` |
| 18 | `theorem` | [eqOn_quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eqon-quadrant-iii--96bf19e51ef84652e1666dfb.md) | 588 | `result-track:96bf19e51ef84652e1666dfbf27c1a3e1bacfddbba40cb6832452e5d3aced405` |
| 19 | `theorem` | [quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/quadrant-iv--f5cb0f2dd34771f286edf902.md) | 609 | `result-track:f5cb0f2dd34771f286edf902a5ed2395717a75dc038bd1227f694a050cf28b18` |
| 20 | `theorem` | [eq_zero_on_quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eq-zero-on-quadrant-iv--569f59bc8acd18188aaa6133.md) | 640 | `result-track:569f59bc8acd18188aaa6133ec6300e19dfeada7afbf4df84967aefdc28ec485` |
| 21 | `theorem` | [eqOn_quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eqon-quadrant-iv--ef6f7948d671465f6ab9de7e.md) | 659 | `result-track:ef6f7948d671465f6ab9de7eda2d640b42eef09407e745fb0abcfed8fb108661` |
| 22 | `theorem` | [right_half_plane_of_tendsto_zero_on_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/right-half-plane-of-tendsto-zero-on-real--83bcede855035ece1d1b21ab.md) | 687 | `result-track:83bcede855035ece1d1b21ab69f87193cc49b8ebb54986e8f43e560d8686c517` |
| 23 | `theorem` | [right_half_plane_of_bounded_on_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/right-half-plane-of-bounded-on-real--4972c3d9cfb6eccd2106ea84.md) | 760 | `result-track:4972c3d9cfb6eccd2106ea8474226a19142ef16a806a9c1ee88d20a329714134` |
| 24 | `theorem` | [eq_zero_on_right_half_plane_of_superexponential_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eq-zero-on-right-half-plane-of-superexponential-decay--c270546bc13050bf1450261e.md) | 804 | `result-track:c270546bc13050bf1450261e82c4efa4009b1a81498f620cd30846924baefb0c` |
| 25 | `theorem` | [eqOn_right_half_plane_of_superexponential_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/declarations/eqon-right-half-plane-of-superexponential-decay--de5e6d0c0b14c96d02b5c2c8.md) | 861 | `result-track:de5e6d0c0b14c96d02b5c2c861923b01e4305e4331573b4751ecf4bcec6b6c94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
