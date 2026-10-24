# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Differentiable.Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a692cd880dab521366a7686b158392db46d96a88",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a692cd880dab521366a7686b158392db46d96a88`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Comp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiableOn_id'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean/declarations/differentiableon-id--41315285f8741e9c2d65eac9.md) | 35 | `result-track:41315285f8741e9c2d65eac91ae64e10c5c51c02c9c077ed3c890c356937a035` |
| 2 | `theorem` | [Differentiable.comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean/declarations/differentiable-comp--ee01cf9db8c9a6ee66a34303.md) | 38 | `result-track:ee01cf9db8c9a6ee66a34303a064870afcdb996e24bee3e240a13743aa4d4fab` |
| 3 | `theorem` | [DifferentiableAt.comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean/declarations/differentiableat-comp--9c99ec2c417f658ec3c1adca.md) | 42 | `result-track:9c99ec2c417f658ec3c1adcac3716b389095a023b0f937aef72d76e9341891e6` |
| 4 | `theorem` | [DifferentiableOn.comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb.lean/declarations/differentiableon-comp--85d4797ceed603bd3865a73a.md) | 46 | `result-track:85d4797ceed603bd3865a73a685df485b6ffc3bc83e6e76880d5fd14901319da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
