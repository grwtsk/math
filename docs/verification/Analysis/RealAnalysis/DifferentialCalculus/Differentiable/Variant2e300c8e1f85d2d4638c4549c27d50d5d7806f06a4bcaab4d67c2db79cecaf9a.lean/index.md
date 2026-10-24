# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Differentiable.Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a3f08344f1002f6a37548dd74959027d25d53fa",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a3f08344f1002f6a37548dd74959027d25d53fa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Comp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiableOn_id'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean/declarations/differentiableon-id--19e7fd003f507b5567fdee40.md) | 43 | `result-track:19e7fd003f507b5567fdee409df8546c0fe3a13d4f3b790caa34a539b4148ac2` |
| 2 | `theorem` | [Differentiable.comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean/declarations/differentiable-comp--6eeee839f9c7615e9a8b6d7e.md) | 46 | `result-track:6eeee839f9c7615e9a8b6d7e276206bebfb1f2279fbe31cd707ac8032ef04dd2` |
| 3 | `theorem` | [DifferentiableAt.comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean/declarations/differentiableat-comp--5161f5d245ab6725e05a98f7.md) | 50 | `result-track:5161f5d245ab6725e05a98f7bdf27f2fc3a0129699ca6e6734c994f0ba5565b5` |
| 4 | `theorem` | [DifferentiableOn.comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Differentiable/Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a.lean/declarations/differentiableon-comp--b96c5e58da610e7d0598e5e3.md) | 54 | `result-track:b96c5e58da610e7d0598e5e3e20feb0e2929179e2674730fccf10325f845ed14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
