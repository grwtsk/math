# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceProperPowerCell.Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e657aafd70157c7d9bd82eaa41ef3178143fc9d0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e657aafd70157c7d9bd82eaa41ef3178143fc9d0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeMertens` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerTailBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/declarations/powertailbudget--6722f331a1d439167a00f3cf.md) | 16 | `declaration-track:6722f331a1d439167a00f3cf2d486b057c3e0888cdf41270ad6084ead16b2ef2` |
| 2 | `theorem` | [log_le_half_sub_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/declarations/log-le-half-sub-inv--601e9831d3277feed902ad2e.md) | 18 | `result-track:601e9831d3277feed902ad2eb2bbc89ab51e1ec34b133aed399022b61670294d` |
| 3 | `theorem` | [powerTailBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/declarations/powertailbudget-nonneg--f6ac3ed69dc8a1b0cdeb38ed.md) | 39 | `result-track:f6ac3ed69dc8a1b0cdeb38ed651fccb60da3ddc4518360aa4ac187015bf0616a` |
| 4 | `theorem` | [integer_cell_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/declarations/integer-cell-le--f5b3db1411012df6bfa68705.md) | 45 | `result-track:f5b3db1411012df6bfa68705926d6b9b4445df65e3070b188831d65dd4d82a96` |
| 5 | `theorem` | [finite_integer_tail_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/declarations/finite-integer-tail-le--2089fce6a968905f7bb1e21b.md) | 66 | `result-track:2089fce6a968905f7bb1e21b10124e22644bea54f5ee0425b5d0e0ae220b59c0` |
| 6 | `theorem` | [finite_integer_tail_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/declarations/finite-integer-tail-budget--876ca0040682dc88b9b79157.md) | 77 | `result-track:876ca0040682dc88b9b79157c55e1753eb9d54bbea533d9cc960a1ec8cd9e695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
