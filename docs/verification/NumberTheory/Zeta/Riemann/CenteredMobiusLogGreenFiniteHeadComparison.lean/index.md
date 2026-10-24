# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteHeadComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "003237bb5d9da57abccb82b30445a170a6deb814",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `003237bb5d9da57abccb82b30445a170a6deb814`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureGlobal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureGlobal.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thinGreen_plus_centeredMobiusLog_eq_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean/declarations/thingreen-plus-centeredmobiuslog-eq-residual--c9c976cac8376d00536da27b.md) | 17 | `result-track:c9c976cac8376d00536da27b88692e19859aa935053329d31b258d03303a5aea` |
| 2 | `theorem` | [norm_thinGreen_plus_centeredMobiusLog_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean/declarations/norm-thingreen-plus-centeredmobiuslog-le--85d9966002975082bc81f360.md) | 25 | `result-track:85d9966002975082bc81f3603ac4647e5b081b28f5ee756b625af1f7884371c5` |
| 3 | `def` | [nonzeroFourierHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean/declarations/nonzerofourierhead--ada3fc72e63ac1ae4d84988e.md) | 35 | `declaration-track:ada3fc72e63ac1ae4d84988e62e0a02712daedb9d17cf11cd58080f4e6cfcbcf` |
| 4 | `def` | [centeredGreenComparisonHeadError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean/declarations/centeredgreencomparisonheaderror--9b7460ddd56448e637e02ff7.md) | 39 | `declaration-track:9b7460ddd56448e637e02ff7018a050cde1599ced7155867e1ee86da0243f34b` |
| 5 | `theorem` | [centeredGreenComparisonHeadError_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean/declarations/centeredgreencomparisonheaderror-le--ae6f3306a39855b727439068.md) | 46 | `result-track:ae6f3306a39855b727439068788eae478faac6db0dee8be86751665f05ee6b2a` |
| 6 | `theorem` | [card_nonzeroFourierHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean/declarations/card-nonzerofourierhead--1b6a0571f71e97615925a71d.md) | 82 | `result-track:1b6a0571f71e97615925a71dbddc40b3eb4051b5b130e5b95444480d8960d53d` |
| 7 | `theorem` | [centeredGreenComparisonHeadError_le_explicit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHeadComparison.lean/declarations/centeredgreencomparisonheaderror-le-explicit--5762c5804b469bc2c2bad232.md) | 95 | `result-track:5762c5804b469bc2c2bad2323db73010658bdbff281476096850efac18c612d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
