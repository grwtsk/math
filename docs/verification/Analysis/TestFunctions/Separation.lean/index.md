# Verification target: GRWTSK.Analysis.TestFunctions.Separation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "377dff55ada8f679a60abdfd345ef72898dda1b1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunctions/Separation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/Separation.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/Separation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `377dff55ada8f679a60abdfd345ef72898dda1b1`.

Source path: `GRWTSK/Analysis/TestFunctions/Separation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunctions/Separation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_nonzero_of_not_contDiffOn_two](../../../../mathematics/Analysis/TestFunctions/Separation.lean/declarations/exists-nonzero-of-not-contdiffon-two--739621a50d305dad90f87bc0.md) | 26 | `result-track:739621a50d305dad90f87bc0a05a4b641ede5894685bea4fa26698179fe3dd14` |
| 2 | `theorem` | [exists_smooth_test_positive_pairing](../../../../mathematics/Analysis/TestFunctions/Separation.lean/declarations/exists-smooth-test-positive-pairing--9e607d8592c8834fcc94746a.md) | 35 | `result-track:9e607d8592c8834fcc94746aeb706bccc552f07f3080b33451a45bb865ce6812` |
| 3 | `theorem` | [eq_zero_on_of_smooth_test_pairings_zero](../../../../mathematics/Analysis/TestFunctions/Separation.lean/declarations/eq-zero-on-of-smooth-test-pairings-zero--9734f45cd9d79c5afad390d2.md) | 68 | `result-track:9734f45cd9d79c5afad390d2f026e06d9f2a1cc0c4975b68a41b8bcb08d166cf` |
| 4 | `theorem` | [exists_smooth_test_of_not_contDiffOn_two](../../../../mathematics/Analysis/TestFunctions/Separation.lean/declarations/exists-smooth-test-of-not-contdiffon-two--3657dec5557127e1f0a88ca6.md) | 80 | `result-track:3657dec5557127e1f0a88ca66b43a9a2e83414cde24a47be0b5b54c363bdb358` |
| 5 | `def` | [pointSpike](../../../../mathematics/Analysis/TestFunctions/Separation.lean/declarations/pointspike--f4a3daef40128c74dfa792b1.md) | 88 | `declaration-track:f4a3daef40128c74dfa792b1fb302f6c9e5ea55e13674d0113bab1bbd492ebfc` |
| 6 | `theorem` | [point_spike_pairings_zero](../../../../mathematics/Analysis/TestFunctions/Separation.lean/declarations/point-spike-pairings-zero--81572f6aab65c28a7c686389.md) | 91 | `result-track:81572f6aab65c28a7c68638921851d083f0ee48056ba5b71b096c2bfc9dbba75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
