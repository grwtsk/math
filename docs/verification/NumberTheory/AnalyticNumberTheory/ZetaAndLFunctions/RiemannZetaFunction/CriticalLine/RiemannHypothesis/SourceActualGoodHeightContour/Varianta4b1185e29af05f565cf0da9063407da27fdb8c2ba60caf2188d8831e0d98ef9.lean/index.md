# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualGoodHeightContour.Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e73aaabfef6a9740fc89768f0dd03a53b5c90fd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e73aaabfef6a9740fc89768f0dd03a53b5c90fd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualPrimeBumpDictionary` — import line 1; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Contour` — import line 2; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.GoodHeights` — import line 3; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.FullLine` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualGoodHeightIndex](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean/declarations/actualgoodheightindex--fddcb11bb5ebe28ddf8f8686.md) | 22 | `declaration-track:fddcb11bb5ebe28ddf8f86863b583deccdb0f9523db0a4a69174c2eae6da9aaf` |
| 2 | `theorem` | [actualGoodHeightIndex_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean/declarations/actualgoodheightindex-bounds--1ff352387fd8578ebe204024.md) | 25 | `result-track:1ff352387fd8578ebe20402488c1a701373421a9008025b23532fc0efd84900b` |
| 3 | `theorem` | [actualInitialPrimeMellin_poles_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean/declarations/actualinitialprimemellin-poles-zero--bcf2aa4b38b60f70666293f7.md) | 37 | `result-track:bcf2aa4b38b60f70666293f74303df3dbc8f501c2ff06aa8f9e39ca84c6f2b39` |
| 4 | `theorem` | [actualInitialPrimeTwoTail_above_movingHeight_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean/declarations/actualinitialprimetwotail-above-movingheight-norm-le--cfadc31758e4cfff155e4fc3.md) | 43 | `result-track:cfadc31758e4cfff155e4fc36827f13018aa8dc42533f05de9efdb130567fac6` |
| 5 | `theorem` | [actual_source_growing_goodheight_residue_ledger](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Varianta4b1185e29af05f565cf0da9063407da27fdb8c2ba60caf2188d8831e0d98ef9.lean/declarations/actual-source-growing-goodheight-residue-ledger--1534bb00528799392e25ab91.md) | 84 | `result-track:1534bb00528799392e25ab915a33cf5565a8f33d0b2bb0c82f762dc5aa27e8b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
