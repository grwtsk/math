# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.PrefixCoverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ad5285cb378aaa18b1c6aad05510cd3c65c14a3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ad5285cb378aaa18b1c6aad05510cd3c65c14a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage.lean.json)

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
| 1 | `def` | [workClock](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/declarations/workclock--7cbe3a9d1b2d5949cf2e6109.md) | 27 | `declaration-track:7cbe3a9d1b2d5949cf2e6109757718c9334d2590cdd8ca0d1622c5684123af33` |
| 2 | `theorem` | [workClock_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/declarations/workclock-zero--58b2c8d3c6395bad18413625.md) | 30 | `result-track:58b2c8d3c6395bad184136251b47f505021b3fcec2122c82e3694d4783f4606b` |
| 3 | `theorem` | [workClock_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/declarations/workclock-succ--0c3975f35d469f0c4326f331.md) | 31 | `result-track:0c3975f35d469f0c4326f3313a76ec5bd508769210fd462419e88f1b5a24d1f0` |
| 4 | `theorem` | [workClock_ge_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/declarations/workclock-ge-index--a6d4391c98996972005d1492.md) | 34 | `result-track:a6d4391c98996972005d1492c5d5a6ca59a4c2c1cad0a44fb0fb04b0a3c7184f` |
| 5 | `theorem` | [prefix_obligation_covered](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/declarations/prefix-obligation-covered--4d63ad10629e6c8ddbe5722b.md) | 41 | `result-track:4d63ad10629e6c8ddbe5722b64a9cdcaf21010ff5a3ab46b384c37f42e09790f` |
| 6 | `def` | [batchSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/declarations/batchsize--45225ad59710d951411e85bb.md) | 45 | `declaration-track:45225ad59710d951411e85bbf14e28ceb3cc92945b8a8e06affe11ea0cab636a` |
| 7 | `theorem` | [batchSize_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/declarations/batchsize-bounds--b10f635a48cb380c1b0e3f93.md) | 47 | `result-track:b10f635a48cb380c1b0e3f93c61d1be01a940713050e484c309169a79ce50d21` |
| 8 | `theorem` | [unbounded_clock_does_not_imply_channel_service](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/declarations/unbounded-clock-does-not-imply-channel-service--47723fcc7b61b28aa69477c1.md) | 58 | `result-track:47723fcc7b61b28aa69477c1f11faed2443b3f0f8d691195fcc5e0294fa84a6a` |
| 9 | `theorem` | [fractional_rounding_starves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence88ba7262d7d491198b36c22f.lean/declarations/fractional-rounding-starves--d9040a1acef2f991566cc76e.md) | 63 | `result-track:d9040a1acef2f991566cc76e0c1e9ae062c99fd9f91d83499897d7f556423cd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
