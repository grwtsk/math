# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monotone.Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "695f6c48a5bb284d389bd6605d7ac08c90b1b03d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `695f6c48a5bb284d389bd6605d7ac08c90b1b03d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BoundedOrder.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StrictMono.apply_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/strictmono-apply-eq-top-iff--f9d95ce4f905d93e70417b42.md) | 36 | `result-track:f9d95ce4f905d93e70417b42a95d4eacd0992ebd26a4a77f3b1d6c0bfe6a8697` |
| 2 | `theorem` | [StrictAnti.apply_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/strictanti-apply-eq-top-iff--a4e0c80c8d9d089bbd5ee3f4.md) | 39 | `result-track:a4e0c80c8d9d089bbd5ee3f4d5ae99e9fad28ad645ffddcaf161345f06b36ac2` |
| 3 | `theorem` | [StrictMono.maximal_preimage_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/strictmono-maximal-preimage-top--b1ce28cef672bec4abaca652.md) | 44 | `result-track:b1ce28cef672bec4abaca65264afef9f6fd6696645a8b2bb8166447c09f70ea6` |
| 4 | `theorem` | [StrictMono.apply_eq_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/strictmono-apply-eq-bot-iff--de7eb7b585c418d8414f554f.md) | 56 | `result-track:de7eb7b585c418d8414f554fd4eb3165993b732f7cbcfb0cc759d4dab61890b0` |
| 5 | `theorem` | [StrictAnti.apply_eq_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/strictanti-apply-eq-bot-iff--83c8d561b00123d91919fb0a.md) | 59 | `result-track:83c8d561b00123d91919fb0adfd1251c34743566174617bf0d840bb3132b78f8` |
| 6 | `theorem` | [StrictMono.minimal_preimage_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/strictmono-minimal-preimage-bot--02d415e8b383e3b67d49dd7f.md) | 64 | `result-track:02d415e8b383e3b67d49dd7f2221cb09637fe40a8e5b296e5c23869cd020338c` |
| 7 | `theorem` | [monotone_and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/monotone-and--2e61257fee6a45001faaabe6.md) | 83 | `result-track:2e61257fee6a45001faaabe6c2a84193ed3193d4b13f88604422c027d602b8a6` |
| 8 | `theorem` | [monotone_or](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/monotone-or--4baaea36392f48a64ffa8ee0.md) | 88 | `result-track:4baaea36392f48a64ffa8ee0e5d19d60ca33cad8ba97f2ce9cb7089b2affaa36` |
| 9 | `theorem` | [monotone_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/monotone-le--be842162cc48587c2b0e646b.md) | 92 | `result-track:be842162cc48587c2b0e646b46efd3c883cc80de4c470d2cbd8b390ef7bb3b99` |
| 10 | `theorem` | [monotone_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/monotone-lt--2f2b3cd3e2ef19e098b135ac.md) | 94 | `result-track:2f2b3cd3e2ef19e098b135ac58bbf45f88fe5c9d4a8253ac89e5892d482e84f6` |
| 11 | `theorem` | [antitone_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/antitone-le--43ed5928832b7b5536101f83.md) | 96 | `result-track:43ed5928832b7b5536101f8393597a01671b789d007a2884ab3a3a212c8a1c07` |
| 12 | `theorem` | [antitone_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/antitone-lt--542dcdf84a289b1e17aaf652.md) | 98 | `result-track:542dcdf84a289b1e17aaf65247f7da6b6fdc1633abd6794f102150fea60301f1` |
| 13 | `theorem` | [Monotone.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/monotone-forall--c75b0c26871b1cade59f94a5.md) | 100 | `result-track:c75b0c26871b1cade59f94a5a240fff27874a76f8ed8cbdf01ba71e4dd53d5d2` |
| 14 | `theorem` | [Antitone.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/antitone-forall--686023eae3333010cb52ae81.md) | 104 | `result-track:686023eae3333010cb52ae810f70ca84e5218bbc86e065d1d782c788c151f6e2` |
| 15 | `theorem` | [Monotone.ball](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/monotone-ball--d77ed3d8ebb280a74f891ddc.md) | 108 | `result-track:d77ed3d8ebb280a74f891ddc831ffc458e185e893676dad36cd5c0db758669fa` |
| 16 | `theorem` | [Antitone.ball](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/antitone-ball--969a3bed393d7118fb55496e.md) | 111 | `result-track:969a3bed393d7118fb55496edbcc9c6af70c1902a934c805a469f90e1479a907` |
| 17 | `theorem` | [Monotone.exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/monotone-exists--662dab5e784a8558d7947b9d.md) | 114 | `result-track:662dab5e784a8558d7947b9d7e489ea98486574e15f1c4a1e4a212678a5ba1d4` |
| 18 | `theorem` | [Antitone.exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/antitone-exists--1f7bde579ad2fbd8f5a0bf2c.md) | 118 | `result-track:1f7bde579ad2fbd8f5a0bf2c969a296c7535a47d5ae494733bb9718157259478` |
| 19 | `theorem` | [forall_ge_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/forall-ge-iff--708869bbff7e1ded6fcde654.md) | 122 | `result-track:708869bbff7e1ded6fcde6542cdd48d231beaf651ef7833a2f93cdba8c17f6e1` |
| 20 | `theorem` | [forall_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant14c3ceec706897b78af26d1a752d04f48c481cd20e3950bec1b51c69b8a7f1b4.lean/declarations/forall-le-iff--95329c0e1890fa9718e98835.md) | 126 | `result-track:95329c0e1890fa9718e9883582466a01f97d237b87256218f56364c2267c3b2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
