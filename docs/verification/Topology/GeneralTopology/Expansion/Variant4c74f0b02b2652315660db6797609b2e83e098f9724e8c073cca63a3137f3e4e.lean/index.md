# Verification target: GRWTSK.Topology.GeneralTopology.Expansion.Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1adb9714b1806fb04c9e13dcf5d4aed46c27ca0b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1adb9714b1806fb04c9e13dcf5d4aed46c27ca0b`.

Source path: `GRWTSK/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Kernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expandedSummand](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/expandedsummand--5c6f6e9bf21d14d0260cf2a7.md) | 38 | `declaration-track:5c6f6e9bf21d14d0260cf2a7f08df4a858c554d964bd6af634540887b83bf812` |
| 2 | `theorem` | [shifted_value_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/shifted-value-ne-zero--0738a7aa78e72e126e219966.md) | 49 | `result-track:0738a7aa78e72e126e219966d8176e6a4f23eb35e075a7c4b14394a125f0d546` |
| 3 | `theorem` | [actual_scaled_square](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/actual-scaled-square--2123a4e1cbf62165cbd24a01.md) | 55 | `result-track:2123a4e1cbf62165cbd24a0157a5ecb4f7b121d8f3b5d763a785161d76d4fc5f` |
| 4 | `theorem` | [numerator_square_expansion](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/numerator-square-expansion--efd109e4882175fc4f6a6781.md) | 80 | `result-track:efd109e4882175fc4f6a6781a67af203a95e6ba6372c4a009bda8bef0f172704` |
| 5 | `theorem` | [expanded_summand_eq](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/expanded-summand-eq--e068e8f5368b82615bc72a49.md) | 107 | `result-track:e068e8f5368b82615bc72a499578a7cf8b970002d8390647d02bf397ead67e75` |
| 6 | `theorem` | [equation17](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/equation17--30a3b99ff9f5d3b95746000d.md) | 119 | `result-track:30a3b99ff9f5d3b95746000d2d96ae867672e074469f175300a3585c8c671e90` |
| 7 | `theorem` | [transformPolynomial_norm_le_one_add](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/transformpolynomial-norm-le-one-add--ee41364b02951eb4ee0f20f4.md) | 140 | `result-track:ee41364b02951eb4ee0f20f4163349f9ef5b3525bb0f335a0dfcd7383d075ef7` |
| 8 | `theorem` | [transformPolynomial_norm_le_scale](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/transformpolynomial-norm-le-scale--ac53ff02708f4e38e6408ded.md) | 180 | `result-track:ac53ff02708f4e38e6408deda452223611d1ebfa76d8e32b8d86450939ba584b` |
| 9 | `theorem` | [modeCoefficient_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/modecoefficient-norm-le--3cae620f1733de5773689cfd.md) | 205 | `result-track:3cae620f1733de5773689cfd30e6908387ac0342b77ba2cd4ade08ae279ebde3` |
| 10 | `def` | [modeWeight](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/modeweight--1f80401a66be006d94480ed7.md) | 232 | `declaration-track:1f80401a66be006d94480ed785162c3d9fd7e15bc19748d652a93d9478b2b595` |
| 11 | `theorem` | [modeWeight_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/modeweight-nonneg--6421c337d3168bda7acae8fc.md) | 236 | `result-track:6421c337d3168bda7acae8fcdf69fc8dee40f0efb663540a887db274e44e4390` |
| 12 | `def` | [modeTailConstant](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/modetailconstant--d88cbda86146c7847624c54d.md) | 242 | `declaration-track:d88cbda86146c7847624c54db91b42af63728682d675989973c2fbc5f5594914` |
| 13 | `theorem` | [modeWeight_tail_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/modeweight-tail-le--64e92f094665c1237d733be5.md) | 245 | `result-track:64e92f094665c1237d733be521f44c7611213c2134a2bf8662d2bc90e48af63f` |
| 14 | `theorem` | [eventually_one_le_shifted_norm](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/eventually-one-le-shifted-norm--fbebf85238163d6284813107.md) | 294 | `result-track:fbebf85238163d628481310792b5c5ab74ffd3d8d9f3996d91cf3e33789089f9` |
| 15 | `theorem` | [modeWeight_summable](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/modeweight-summable--2aff20f9817821a6e2ff2a4f.md) | 310 | `result-track:2aff20f9817821a6e2ff2a4f5722a7f1dd7adc3743040effbc2b8cf124139ab9` |
| 16 | `def` | [growthFactor](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/growthfactor--2786dfeebc9d08cc65214543.md) | 319 | `declaration-track:2786dfeebc9d08cc652145435fe5b24caa9c404d051ab1ddab886d924f93fe2a` |
| 17 | `theorem` | [growthFactor_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/growthfactor-nonneg--8236dead1e1fe697c6f8aa81.md) | 322 | `result-track:8236dead1e1fe697c6f8aa8197416dd0d237bd8e0a2ab3caac0ef91704a06836` |
| 18 | `theorem` | [expandedSummand_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/expandedsummand-norm-le--b5b61d18fecaad0bb8f0ed52.md) | 329 | `result-track:b5b61d18fecaad0bb8f0ed52e72b067f7a05c4ff84dec5d0068446ec6e816400` |
| 19 | `theorem` | [expandedSummand_norm_le_on_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/expandedsummand-norm-le-on-icc--67aa181320cca91c28e27f63.md) | 431 | `result-track:67aa181320cca91c28e27f63fc0e69a81a866ed0ce108df9e11735ca0d49ede7` |
| 20 | `theorem` | [expanded_hasSumUniformlyOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/expanded-hassumuniformlyon-icc--1a3f38ea9c9934baa2f16d20.md) | 455 | `result-track:1a3f38ea9c9934baa2f16d204157946006a8032732e612b77ffb18fe3b799e9e` |
| 21 | `theorem` | [expandedSummand_continuous](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/expandedsummand-continuous--1e320bf6aad7c20df4039dc8.md) | 469 | `result-track:1e320bf6aad7c20df4039dc868739ac7592c39ce2336319f2470df84c8367a81` |
| 22 | `theorem` | [expanded_sum_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/expanded-sum-continuouson-icc--60e8822284bf3d44ff644911.md) | 479 | `result-track:60e8822284bf3d44ff644911af73e280c5f29628796d3e2527060f10a28c1676` |
| 23 | `theorem` | [weightedSource_continuousOn_Icc](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/weightedsource-continuouson-icc--59f26c60be6421abccc0a7de.md) | 496 | `result-track:59f26c60be6421abccc0a7debdc2ca25d2f111fd3a67c159797d98569d208770` |
| 24 | `theorem` | [weightedSource_im](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/weightedsource-im--16f9a44e33934be7ac3837be.md) | 506 | `result-track:16f9a44e33934be7ac3837bef738321eb84b02c769f5eee4d4b33d0a5fc9464e` |
| 25 | `def` | [growthConstant](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/growthconstant--cd820ebe12c38eeb631d7d7c.md) | 512 | `declaration-track:cd820ebe12c38eeb631d7d7c91adc35067c4aad830b0e3e07385ab9326926f79` |
| 26 | `theorem` | [growthConstant_nonneg](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/growthconstant-nonneg--46b7c88e32b71076c918785d.md) | 515 | `result-track:46b7c88e32b71076c918785ddb641054a9722052d16326766bfd4bb177d2d3b3` |
| 27 | `theorem` | [expanded_sum_norm_le](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/expanded-sum-norm-le--2cb132c226395e4df3f539e9.md) | 522 | `result-track:2cb132c226395e4df3f539e9284769cb7b6f613f0c4108c16a1611ec00d59f74` |
| 28 | `theorem` | [weightedSource_growth](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/weightedsource-growth--4fac7469af0a7a208a282c94.md) | 562 | `result-track:4fac7469af0a7a208a282c9400d01127ea0b2daf2977b4c15f36cdd3c5414130` |
| 29 | `def` | [Equation17GrowthCheckpoint](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/equation17growthcheckpoint--ab185437cc6a7e10aaf8f978.md) | 570 | `declaration-track:ab185437cc6a7e10aaf8f97836fd6c30ebe4eff8c02b8f363b9ad99faf2e35c6` |
| 30 | `theorem` | [equation17_growth_checkpoint](../../../../../mathematics/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/declarations/equation17-growth-checkpoint--55b16b3b456c79c12d89c9f9.md) | 595 | `result-track:55b16b3b456c79c12d89c9f92eb1249b6bcd394365130173f0f3ab7504d87f26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
