# Verification target: GRWTSK.Topology.GeneralTopology.Attempt01.Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ea2668f3eee64d2abadca6bd0a970d685e58127",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ea2668f3eee64d2abadca6bd0a970d685e58127`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ArithmeticInterceptFinite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Monotone` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logQuotient](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/logquotient--aa7ad2e67676ad7fcf26fdd3.md) | 17 | `declaration-track:aa7ad2e67676ad7fcf26fdd35e568c9202977cc8cf53a6813eff55ecd1ae5b65` |
| 2 | `def` | [stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/stieltjessequence--1bafcd8d773837227fee57d7.md) | 19 | `declaration-track:1bafcd8d773837227fee57d7f58001e5f053d06f3c00e37595633fcecc0a8c81` |
| 3 | `def` | [lowerSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/lowersequence--9c007f0f0be4ab01499419d0.md) | 22 | `declaration-track:9c007f0f0be4ab01499419d0a370fb66262ee70f2c023f5757081f4c88a54276` |
| 4 | `def` | [firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/firststieltjesconstant--50899dd85d78ce42dae6eddb.md) | 24 | `declaration-track:50899dd85d78ce42dae6eddb5de4bac8f923e2855b8fc57fe0e74b84329ecb4b` |
| 5 | `theorem` | [logQuotient_nonneg](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/logquotient-nonneg--9a1b3f6524c9df37324847bf.md) | 26 | `result-track:9a1b3f6524c9df37324847bfb74e6c23de9f5a83ea6af76d5e7d938eddd644f2` |
| 6 | `theorem` | [logQuotient_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/logquotient-antitone--9076268c2e6b56fed8393a38.md) | 29 | `result-track:9076268c2e6b56fed8393a38074a750767c54e1ccf898fdbf23eeb318c8f2b16` |
| 7 | `theorem` | [logQuotient_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/logquotient-continuouson--1dbbb484f527c31d6c6dcdfa.md) | 37 | `result-track:1dbbb484f527c31d6c6dcdfa9fc2313c152d61d4a9cb63b504f910d09bd772f3` |
| 8 | `theorem` | [logQuotient_intervalIntegrable](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/logquotient-intervalintegrable--d90b03c75dcfc0580a522058.md) | 42 | `result-track:d90b03c75dcfc0580a522058986beef09310d120da4e8e38dbe1f206fc25f0ef` |
| 9 | `theorem` | [logQuotient_integral](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/logquotient-integral--eb8ed37b0ed9557ac0fe90a7.md) | 52 | `result-track:eb8ed37b0ed9557ac0fe90a74b41b5b5b9737ca6fee7a59f940037e7fd9050c9` |
| 10 | `theorem` | [stieltjesSequence_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/stieltjessequence-succ--f556f9091d15a03fc5b00f41.md) | 68 | `result-track:f556f9091d15a03fc5b00f419f40ac8adbe0a906ff0311f034c9a4327504464e` |
| 11 | `theorem` | [logQuotient_cell_lower](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/logquotient-cell-lower--a5cd3f9fe0985dddc26c5f13.md) | 78 | `result-track:a5cd3f9fe0985dddc26c5f1374e8107fbd9c06859325180f5c9dbc8e935e60ef` |
| 12 | `theorem` | [logQuotient_cell_upper](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/logquotient-cell-upper--8932a1c963ce6c245773edfa.md) | 84 | `result-track:8932a1c963ce6c245773edfa9f1d0d3bd2f0f17392cf0aca8d73783477eae18a` |
| 13 | `theorem` | [stieltjesSequence_succ_le](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/stieltjessequence-succ-le--5d1a7d91d16a409de95c4062.md) | 90 | `result-track:5d1a7d91d16a409de95c4062c72b142569beaa6f4807180839739bf5ad7e80dd` |
| 14 | `theorem` | [lowerSequence_le_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/lowersequence-le-succ--8842b9095aadb5d945ef2894.md) | 96 | `result-track:8842b9095aadb5d945ef2894dcf4e759276dc29ae601183b9043f312c44c2002` |
| 15 | `theorem` | [stieltjes_tail_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/stieltjes-tail-antitone--15735a621915bdd319c73c3e.md) | 103 | `result-track:15735a621915bdd319c73c3ed66ccfa9b9c7265209c2d0970f2f699d40e2b3a4` |
| 16 | `theorem` | [lower_tail_monotone](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/lower-tail-monotone--da444badf359b88412bacf52.md) | 109 | `result-track:da444badf359b88412bacf5241afcabc8b7cd31f8241e6147608115c6493bd08` |
| 17 | `theorem` | [lowerSequence_four](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/lowersequence-four--5ac2156c43d3fb8ba046bd02.md) | 115 | `result-track:5ac2156c43d3fb8ba046bd02dbe1b7179b679a65971ac3b575eeb4ace74a0380` |
| 18 | `theorem` | [lower_four_le_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/lower-four-le-stieltjes-tail--5c621955c31a396c071929fa.md) | 119 | `result-track:5c621955c31a396c071929fa4c75d1ce8051d2d191ace78cc85170e69422863e` |
| 19 | `theorem` | [stieltjes_tail_bddBelow](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/stieltjes-tail-bddbelow--d71ad42f6d16fccdec424ddc.md) | 126 | `result-track:d71ad42f6d16fccdec424ddc2be8bd64e25448f15130f040c15d80d32fa28927` |
| 20 | `theorem` | [tendsto_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/tendsto-stieltjes-tail--e144547c9f1f3962b6684d3a.md) | 131 | `result-track:e144547c9f1f3962b6684d3adbf3fc8bc64058661100fda768453d8902a5b800` |
| 21 | `theorem` | [tendsto_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/tendsto-stieltjessequence--5b049e970cc49d42012f71f2.md) | 135 | `result-track:5b049e970cc49d42012f71f2d8cd6956030e74e19373e47816fb15e7244f6f99` |
| 22 | `theorem` | [lower_four_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/declarations/lower-four-le-firststieltjesconstant--d52e124acf738f40fc8b4ef9.md) | 139 | `result-track:d52e124acf738f40fc8b4ef9b10fb9562a3c7eda5f510d945864ae79c8204115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
