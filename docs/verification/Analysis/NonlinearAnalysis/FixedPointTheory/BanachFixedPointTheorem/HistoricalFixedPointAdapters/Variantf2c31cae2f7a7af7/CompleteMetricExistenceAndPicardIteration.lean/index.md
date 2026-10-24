# Verification target: GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.BanachFixedPointTheorem.HistoricalFixedPointAdapters.Variantf2c31cae2f7a7af7.CompleteMetricExistenceAndPicardIteration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cd0eaad8c41e23dcb4b571e55fa88536dc665ee",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NonlinearAnalysis/FixedPointTheory/BanachFixedPointTheorem/HistoricalFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteMetricExistenceAndPicardIteration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/BanachFixedPointTheorem/HistoricalFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteMetricExistenceAndPicardIteration.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/BanachFixedPointTheorem/HistoricalFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteMetricExistenceAndPicardIteration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cd0eaad8c41e23dcb4b571e55fa88536dc665ee`.

Source path: `GRWTSK/Analysis/NonlinearAnalysis/FixedPointTheory/BanachFixedPointTheorem/HistoricalFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteMetricExistenceAndPicardIteration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NonlinearAnalysis/FixedPointTheory/BanachFixedPointTheorem/HistoricalFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteMetricExistenceAndPicardIteration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.FixedPoints` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [banachPoint](../../../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/BanachFixedPointTheorem/HistoricalFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteMetricExistenceAndPicardIteration.lean/declarations/banachpoint--37583bdd19db1503606010d5.md) | 44 | `declaration-track:37583bdd19db1503606010d5fc34628547b111996c79647592703f392d35213a` |
| 2 | `theorem` | [banach_exists](../../../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/BanachFixedPointTheorem/HistoricalFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteMetricExistenceAndPicardIteration.lean/declarations/banach-exists--9b397a7cab9622268e73a77a.md) | 48 | `result-track:9b397a7cab9622268e73a77a32f1bc51bdb14f0878141c2c3d92e9633e165020` |
| 3 | `theorem` | [banach_fixed](../../../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/BanachFixedPointTheorem/HistoricalFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteMetricExistenceAndPicardIteration.lean/declarations/banach-fixed--f11ac9e961d9ca7e049d053d.md) | 52 | `result-track:f11ac9e961d9ca7e049d053dedccd38c15af01dbd0ee9aa33c8a5d03657ab0a5` |
| 4 | `theorem` | [banach_iteration](../../../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/BanachFixedPointTheorem/HistoricalFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteMetricExistenceAndPicardIteration.lean/declarations/banach-iteration--025bc9a076c02a49e20a850d.md) | 56 | `result-track:025bc9a076c02a49e20a850d03dee224e10678de58a7adb02c605a1ff067d973` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
