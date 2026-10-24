# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszQuadraticHolomorphy.Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20cfc8e71b1aa1c24cb76abb33226dc07c674575",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20cfc8e71b1aa1c24cb76abb33226dc07c674575`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszQuadraticLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/declarations/profile--33477450016d5454e593c33a.md) | 30 | `declaration-track:33477450016d5454e593c33ac5786c4939b92544eed52b1a54844b5e76c3f271` |
| 2 | `theorem` | [time_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/declarations/time-exp-bound--f62c4914012aded94e13e7af.md) | 34 | `result-track:f62c4914012aded94e13e7af9f0a8802319b6a090e86bfa76a1fa54b6e591df2` |
| 3 | `theorem` | [derivative_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/declarations/derivative-norm-bound--3f3ba267e556b3bfd83282fa.md) | 41 | `result-track:3f3ba267e556b3bfd83282fadef88a0a6a4a59b6f0b79cdb0e374e51a91cbd19` |
| 4 | `theorem` | [kernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/declarations/kernel-hasderivat--ec66e9e61dec38096f63ae2d.md) | 64 | `result-track:ec66e9e61dec38096f63ae2d3449aa34a71ec342248a5c363a5e09e8cbc6a633` |
| 5 | `theorem` | [actualFixedCenteredRieszLaplace_hasDerivAt_of_quadratic_area](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/declarations/actualfixedcenteredrieszlaplace-hasderivat-of-quadratic-area--6b964c142550e05790557f82.md) | 74 | `result-track:6b964c142550e05790557f8295316660dd0d9a8174abb537e389e90953674ad5` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_analyticOnNhd_of_quadratic_area](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07.lean/declarations/actualfixedcenteredrieszlaplace-analyticonnhd-of-quadratic-area--1831bf26d646e4acdb140071.md) | 133 | `result-track:1831bf26d646e4acdb140071711402671edcf4114467fbdc1607f74d1b090b75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
