# Verification target: GRWTSK.Logic.FiniteSequences.PrefixCoverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ad5285cb378aaa18b1c6aad05510cd3c65c14a3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/FiniteSequences/PrefixCoverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ad5285cb378aaa18b1c6aad05510cd3c65c14a3`.

Source path: `GRWTSK/Logic/FiniteSequences/PrefixCoverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/FiniteSequences/PrefixCoverage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [workClock](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/declarations/workclock--d741d8be8e21f7831247c14c.md) | 27 | `declaration-track:d741d8be8e21f7831247c14cd39769343fb0418d49542415bcb91d28fb4c2e9a` |
| 2 | `theorem` | [workClock_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/declarations/workclock-zero--3a34aaaab7eca586eac4de9f.md) | 30 | `result-track:3a34aaaab7eca586eac4de9f0798952b31445f9126b8b90c5aabd31265dfbb2a` |
| 3 | `theorem` | [workClock_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/declarations/workclock-succ--8c2d9d74ece3b903b7d1650f.md) | 31 | `result-track:8c2d9d74ece3b903b7d1650f4206d44aa9f897d231eb0115fb7b6f87c59742c7` |
| 4 | `theorem` | [workClock_ge_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/declarations/workclock-ge-index--7b574dd1ecd42a204d05b27b.md) | 34 | `result-track:7b574dd1ecd42a204d05b27b2fd56b2d42d8520310eb0805e14287e9e0eed6f0` |
| 5 | `theorem` | [prefix_obligation_covered](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/declarations/prefix-obligation-covered--b986cf136e6896d2063e4911.md) | 41 | `result-track:b986cf136e6896d2063e4911e0bfe0839f35923701eb586fb5cba6128fabb5f3` |
| 6 | `def` | [batchSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/declarations/batchsize--ecdc8b757a8acfbbbce3e0f9.md) | 45 | `declaration-track:ecdc8b757a8acfbbbce3e0f9c4a9e9fd87bba517b332de304f9aae3c695f463c` |
| 7 | `theorem` | [batchSize_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/declarations/batchsize-bounds--0bc68e1a18862570d4be7861.md) | 47 | `result-track:0bc68e1a18862570d4be7861c733a705876ab5e330b1f7755cb78686ed0dea05` |
| 8 | `theorem` | [unbounded_clock_does_not_imply_channel_service](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/declarations/unbounded-clock-does-not-imply-channel-service--4b6a066475f0a7c0a5617a1d.md) | 58 | `result-track:4b6a066475f0a7c0a5617a1dc5ff0eda6808d302bca65155626de47bac705148` |
| 9 | `theorem` | [fractional_rounding_starves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/declarations/fractional-rounding-starves--61c0397911fccb5f48b65f35.md) | 63 | `result-track:61c0397911fccb5f48b65f35348966dbb1fe5371e9c2ce11b97e60b842dabdf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
