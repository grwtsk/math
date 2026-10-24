# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootActualXiConditionalHolomorphy.Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3e2939c9f787ea5013555cddce184dc91a5f865",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3e2939c9f787ea5013555cddce184dc91a5f865`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiConditionalComplexLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [time_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean/declarations/time-exp-bound--4a5fcb69232ef1bd8d7ef364.md) | 28 | `result-track:4a5fcb69232ef1bd8d7ef364cf61e7b2eec995c075332a16b5477c6d9c3c40c6` |
| 2 | `theorem` | [derivative_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean/declarations/derivative-norm-bound--581c2da26d34aa1f13a9fa20.md) | 35 | `result-track:581c2da26d34aa1f13a9fa2050196b4cca2de03d2472f05745bdd33645e8cc05` |
| 3 | `theorem` | [kernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean/declarations/kernel-hasderivat--6226cb5bbe21be2465593796.md) | 58 | `result-track:6226cb5bbe21be246559379671644341db1ab5740368ae7c503ad0caf6530dd8` |
| 4 | `theorem` | [actualXiComplexLaplace_hasDerivAt_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean/declarations/actualxicomplexlaplace-hasderivat-of-future-average--f472d0fc28ea401d9c1ec431.md) | 68 | `result-track:f472d0fc28ea401d9c1ec431a283bd1feea4cb4d749940154357ca26c4ac52ca` |
| 5 | `theorem` | [actualXiComplexLaplace_analyticOnNhd_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variantfe1d4f84b844c32580fc7d573cc79698de9ea834af9dc9f53781af87c9f6c23c.lean/declarations/actualxicomplexlaplace-analyticonnhd-of-future-average--df9a5c5b6c47a024ef977439.md) | 120 | `result-track:df9a5c5b6c47a024ef9774390c0d7e7de75a9966836135e8dfc9ec9539b5b068` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
