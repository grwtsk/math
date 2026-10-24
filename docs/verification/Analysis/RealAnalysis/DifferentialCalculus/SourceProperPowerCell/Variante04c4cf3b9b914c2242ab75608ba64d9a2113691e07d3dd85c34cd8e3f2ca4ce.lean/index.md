# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceProperPowerCell.Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66120c8768710337e574eb61a7657db85af4abde",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66120c8768710337e574eb61a7657db85af4abde`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeMertens` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerTailBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/declarations/powertailbudget--73f9a408fb10d9d7ef99e53d.md) | 24 | `declaration-track:73f9a408fb10d9d7ef99e53d145677705c5ff0fb767e9720ef04913a1224e5b3` |
| 2 | `theorem` | [log_le_half_sub_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/declarations/log-le-half-sub-inv--cf7b09110cbc60824f443e71.md) | 26 | `result-track:cf7b09110cbc60824f443e71ce48dc2a765e4c4b65ffafdd05f9128977a43b30` |
| 3 | `theorem` | [powerTailBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/declarations/powertailbudget-nonneg--2c1ee7c5e8b3ad9ef3f3b973.md) | 46 | `result-track:2c1ee7c5e8b3ad9ef3f3b973642ff9fcf16306850ca8d316a760929dd3795b09` |
| 4 | `theorem` | [integer_cell_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/declarations/integer-cell-le--c8e60f02031118eb821e89ec.md) | 52 | `result-track:c8e60f02031118eb821e89ec942feb0b3c7a632af46d0460fa8bffd8ee7c104e` |
| 5 | `theorem` | [finite_integer_tail_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/declarations/finite-integer-tail-le--1d5de849ea204f08438df0d0.md) | 79 | `result-track:1d5de849ea204f08438df0d0f30e8a5aeec23e27e5267b6e745c29e46e73264a` |
| 6 | `theorem` | [finite_integer_tail_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce.lean/declarations/finite-integer-tail-budget--ca5a833de616fc5ce9f39d10.md) | 91 | `result-track:ca5a833de616fc5ce9f39d10b5b465cbac739a9146a92bcf943fa3a06b29c70f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
