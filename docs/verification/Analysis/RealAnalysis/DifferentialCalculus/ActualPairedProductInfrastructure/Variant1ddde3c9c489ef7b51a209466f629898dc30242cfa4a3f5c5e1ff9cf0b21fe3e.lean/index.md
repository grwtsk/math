# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPairedProductInfrastructure.Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b061977332ab52ddcdccbf8cab989528b2d73e16",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b061977332ab52ddcdccbf8cab989528b2d73e16`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean/declarations/deriv-square--4672c0d2b899b12552678d3e.md) | 27 | `result-track:4672c0d2b899b12552678d3edf258c2d0da4d0eb7657e0eaeaece83ab2f6caec` |
| 2 | `theorem` | [meromorphicOrderAt_comp_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean/declarations/meromorphicorderat-comp-square--35d9f47c3c4a7bcea462e64c.md) | 32 | `result-track:35d9f47c3c4a7bcea462e64c59511f4df1827a58f6c1da13972b6c6bb6d968db` |
| 3 | `theorem` | [tendstoLocallyUniformlyOn_iterate_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean/declarations/tendstolocallyuniformlyon-iterate-deriv--c1d8084da31ec2162eadec73.md) | 42 | `result-track:c1d8084da31ec2162eadec7346ae262d2a3ea515cfcfac779f590f6e8479a0ec` |
| 4 | `theorem` | [tendsto_iteratedDeriv_zero_of_locallyUniform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean/declarations/tendsto-iteratedderiv-zero-of-locallyuniform--2e407ee2fc2c7da42f475faa.md) | 58 | `result-track:2e407ee2fc2c7da42f475faac765ca021d6c5614252533b2afbd85d5ea47d988` |
| 5 | `theorem` | [tendsto_taylorCoefficient_zero_of_locallyUniform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e.lean/declarations/tendsto-taylorcoefficient-zero-of-locallyuniform--3f5c5a42fef363191a19195f.md) | 71 | `result-track:3f5c5a42fef363191a19195fc7cd9323a0dff3b54f4a74c79377c2bb9ece6381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
