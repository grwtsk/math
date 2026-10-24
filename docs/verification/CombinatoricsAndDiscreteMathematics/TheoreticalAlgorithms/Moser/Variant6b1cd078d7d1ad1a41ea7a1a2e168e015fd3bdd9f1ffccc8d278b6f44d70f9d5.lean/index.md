# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Moser.Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "263e04f4f7435f73099408395186c50d88be2d2e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `263e04f4f7435f73099408395186c50d88be2d2e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.HadwigerNelson.MoserSource` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moserFourColor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/moserfourcolor--9221e16ec0e4010d58839d42.md) | 20 | `declaration-track:9221e16ec0e4010d58839d42a7f8acb3ef1c0a823d1ae535838758b9d333afac` |
| 2 | `theorem` | [moserFourColor_proper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/moserfourcolor-proper--7508ccebbf266931d01a5147.md) | 23 | `result-track:7508ccebbf266931d01a51470bc3b000ada5228197697ec90e021d372112136a` |
| 3 | `theorem` | [moser_listed_graph_exact_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/moser-listed-graph-exact-four--ec3b1726b44124f062715cc9.md) | 29 | `result-track:ec3b1726b44124f062715cc9770176af7989fecf19907c25badd4ee50bb6ce33` |
| 4 | `lemma` | [radicalProduct_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/radicalproduct-bounds--9bda3a90c5a697bedb72f848.md) | 38 | `result-track:9bda3a90c5a697bedb72f848b571ef64bf25c1066d1f459b10a032a0b5ec8895` |
| 5 | `lemma` | [moser_normSq_unit_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/moser-normsq-unit-iff--b12e76af537d54dec4fdc233.md) | 50 | `result-track:b12e76af537d54dec4fdc2334269b8fdc763d696bcd4c1ab59ee3bdfbbe7f36a` |
| 6 | `lemma` | [moserPoint_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/moserpoint-injective--6c300e3231b2a4a9a66fe17e.md) | 65 | `result-track:6c300e3231b2a4a9a66fe17e370eb427de83924f05c88b0e3ea4251909819b31` |
| 7 | `theorem` | [moser_unit_iff_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/moser-unit-iff-edge--9d0abbf97f4f1efe7a97ef9f.md) | 81 | `result-track:9d0abbf97f4f1efe7a97ef9fe42d384893d5c09b2cfdb7cc368a8dddc223ad8b` |
| 8 | `def` | [FinitePointColorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/finitepointcolorable--02a2aa40191360d710d1e3f3.md) | 95 | `declaration-track:02a2aa40191360d710d1e3f393a8ba8555e2477e1aa6848dba3fe733080831dc` |
| 9 | `lemma` | [finitePointColorable_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/finitepointcolorable-mono--8878a36f5a621fe9b9675159.md) | 98 | `result-track:8878a36f5a621fe9b96751594b143cc0f48b853a1748732465f3ba197bb4553f` |
| 10 | `theorem` | [moserFourColor_unit_proper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/moserfourcolor-unit-proper--917ec0490452faa1016109f9.md) | 106 | `result-track:917ec0490452faa1016109f954744153f65ed913cf36297e6c33848facebb547` |
| 11 | `theorem` | [moser_unit_graph_exact_four](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/moser-unit-graph-exact-four--0f65fc7a28c7724ccce2c77d.md) | 114 | `result-track:0f65fc7a28c7724ccce2c77d0f9ad3921a544906c8e0e6b7aaa7b8e8ecfaa6a4` |
| 12 | `def` | [PlaneColorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/planecolorable--d3caf1ce7c8399ce352c69fa.md) | 123 | `declaration-track:d3caf1ce7c8399ce352c69fa688708af5c65bb7dcb9a6e1e69fe29f7e26a4b2a` |
| 13 | `def` | [ExactPlaneChromaticNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/exactplanechromaticnumber--61acb0c137d523a0604a4aaa.md) | 127 | `declaration-track:61acb0c137d523a0604a4aaa88f09643fd2bb3d7529a40be0ddea1703ff49c68` |
| 14 | `theorem` | [plane_not_three_colorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variant6b1cd078d7d1ad1a41ea7a1a2e168e015fd3bdd9f1ffccc8d278b6f44d70f9d5.lean/declarations/plane-not-three-colorable--e273cd25da4babc5e8a77335.md) | 131 | `result-track:e273cd25da4babc5e8a77335d9038e56bdc8b0c56a2b2d9189e742f85d015229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
