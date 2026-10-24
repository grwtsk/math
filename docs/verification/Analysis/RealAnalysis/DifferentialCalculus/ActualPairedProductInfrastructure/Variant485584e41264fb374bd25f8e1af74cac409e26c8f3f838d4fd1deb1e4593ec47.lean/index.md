# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPairedProductInfrastructure.Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9cebb037cd9c13757574c81723cfb1ecbdcf537",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9cebb037cd9c13757574c81723cfb1ecbdcf537`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean/declarations/deriv-square--30605718461ae16eb0201743.md) | 35 | `result-track:30605718461ae16eb0201743c3fedcab4264c1951624a5d3afaf60c7c8f57997` |
| 2 | `theorem` | [meromorphicOrderAt_comp_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean/declarations/meromorphicorderat-comp-square--72de16f383c2cae60ba419a7.md) | 40 | `result-track:72de16f383c2cae60ba419a7af66fd94b8cf98be2d98957a5ce23a9db168f3fd` |
| 3 | `theorem` | [tendstoLocallyUniformlyOn_iterate_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean/declarations/tendstolocallyuniformlyon-iterate-deriv--018c80901169a3cd4745b38f.md) | 50 | `result-track:018c80901169a3cd4745b38ffb0c895a0112ac5f41c8c84b3402931f133c6f5b` |
| 4 | `theorem` | [tendsto_iteratedDeriv_zero_of_locallyUniform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean/declarations/tendsto-iteratedderiv-zero-of-locallyuniform--6db602c6fefa952d66761e30.md) | 66 | `result-track:6db602c6fefa952d66761e30734304db713a2676c995e4a5b25dc2f85e700bbe` |
| 5 | `theorem` | [tendsto_taylorCoefficient_zero_of_locallyUniform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean/declarations/tendsto-taylorcoefficient-zero-of-locallyuniform--4461827e2bae4f8099453899.md) | 79 | `result-track:4461827e2bae4f80994538996bcfc264fd6b42480a92adf046d7d388dd7f598e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
