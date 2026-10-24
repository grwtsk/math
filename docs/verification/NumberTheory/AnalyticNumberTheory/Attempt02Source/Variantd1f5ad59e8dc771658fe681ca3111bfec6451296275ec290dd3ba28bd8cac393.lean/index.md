# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Attempt02Source.Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c23990bb38bcb5b77a4a27e872b4e4a7e494265",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c23990bb38bcb5b77a4a27e872b4e4a7e494265`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceExactRestrictedStrip` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactStripCost](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/exactstripcost--7d2a464ca401ecaab810b70b.md) | 35 | `declaration-track:7d2a464ca401ecaab810b70ba11786deb64f93f3c1a4d05c75eed623dc7fccd6` |
| 2 | `def` | [exactOverlapResidualBudget](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/exactoverlapresidualbudget--13af5ca26a7a65ecf020895f.md) | 39 | `declaration-track:13af5ca26a7a65ecf020895f671155864d6dd676a0c1f90d0aa6a5495dd1cad3` |
| 3 | `theorem` | [exactStripCost_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/exactstripcost-nonneg--6d0686401ebaf4e114fcc5ec.md) | 42 | `result-track:6d0686401ebaf4e114fcc5ec3df61ee32c64fc742db0c6f8b31573afecc8783f` |
| 4 | `theorem` | [exactOverlapResidualBudget_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/exactoverlapresidualbudget-nonneg--59a09a4e00ab0ae4aed2ba18.md) | 48 | `result-track:59a09a4e00ab0ae4aed2ba18041b3541398bc5ce25e1d8ec00736d40ea40f16f` |
| 5 | `theorem` | [residual_upper_of_overlap_with_ledger](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/residual-upper-of-overlap-with-ledger--f10153af2f949592a7953a3a.md) | 52 | `result-track:f10153af2f949592a7953a3a7fb295d643abca5f6bb940214b2c5c69dcd525f2` |
| 6 | `theorem` | [residual_tail_of_overlap_with_exact_strip](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/residual-tail-of-overlap-with-exact-strip--32d6944a2012417eeb67533b.md) | 70 | `result-track:32d6944a2012417eeb67533b59bf2bb6a5a218dc2bd18aaed33ca6fa276c5cc7` |
| 7 | `theorem` | [quadratic_lower_of_residual_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/quadratic-lower-of-residual-upper--932088c5da5ad5e48b845021.md) | 78 | `result-track:932088c5da5ad5e48b845021cbbcc9baaa09cbb99c13af195ebcb3dccc640bdb` |
| 8 | `theorem` | [all_real_lower_of_overlap_with_ledger](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/all-real-lower-of-overlap-with-ledger--5e32b8e2bcfc0bab9226609d.md) | 90 | `result-track:5e32b8e2bcfc0bab9226609d7640713aee67da02136f338c17ae6bf26a1bacfd` |
| 9 | `theorem` | [all_real_lower_of_overlap_with_exact_strip](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/all-real-lower-of-overlap-with-exact-strip--2d0b41ea359ef183ba628557.md) | 110 | `result-track:2d0b41ea359ef183ba628557041bcbc07eb1c5a0a28c91fcd575abb40fba9f42` |
| 10 | `theorem` | [estimate_of_overlap_with_exact_strip](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/declarations/estimate-of-overlap-with-exact-strip--b4e1b1e2b34ecac1ac5671d6.md) | 121 | `result-track:b4e1b1e2b34ecac1ac5671d6d323eb28d5a7b24d9a7699da7ab41c4aee5cfdea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
