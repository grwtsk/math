# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceProperPowerCell.Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebec3de3b4c25e92651ed11e612086bde57e4c0a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebec3de3b4c25e92651ed11e612086bde57e4c0a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean.json)

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
| 1 | `def` | [powerTailBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean/declarations/powertailbudget--e7b50464199992f851f6cd87.md) | 16 | `declaration-track:e7b50464199992f851f6cd87e5b8e4d2c0ed7dcc6c882acf823daf02d1aebb67` |
| 2 | `theorem` | [log_le_half_sub_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean/declarations/log-le-half-sub-inv--dff10b8a4cdc0ddd5a6d2c7c.md) | 18 | `result-track:dff10b8a4cdc0ddd5a6d2c7c7043c207930fd34bfdd17d047969f7e8899a1dcd` |
| 3 | `theorem` | [powerTailBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean/declarations/powertailbudget-nonneg--a0ee17c8200fc8d1fac00b5a.md) | 38 | `result-track:a0ee17c8200fc8d1fac00b5a851ee81e21e74ac8d9089ac6489cd63fc4925639` |
| 4 | `theorem` | [integer_cell_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean/declarations/integer-cell-le--5bb4300273fb447f9eedf64c.md) | 44 | `result-track:5bb4300273fb447f9eedf64cf5ded5a9117fce743ecae08a92e592b3cc67277d` |
| 5 | `theorem` | [finite_integer_tail_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean/declarations/finite-integer-tail-le--40178bf9ce633e02f3077db3.md) | 71 | `result-track:40178bf9ce633e02f3077db3f7eca63c3182ebe7609cf23f88fe59c454cb3852` |
| 6 | `theorem` | [finite_integer_tail_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantd569ec0f88d0bc9aa0c378c55701cbdf9ef7cd233325bc370d402e6e9781fb97.lean/declarations/finite-integer-tail-budget--ed658d08b1957f3d3916bd38.md) | 83 | `result-track:ed658d08b1957f3d3916bd382cf99439ec6b528980be04685b98c00af2934c98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
