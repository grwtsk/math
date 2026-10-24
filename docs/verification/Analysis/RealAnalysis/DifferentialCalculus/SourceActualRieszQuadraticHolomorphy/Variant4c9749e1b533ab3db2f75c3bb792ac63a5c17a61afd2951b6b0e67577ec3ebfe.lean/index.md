# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszQuadraticHolomorphy.Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40956adf66168330a2ded1f3b2de9f4791b3abe6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40956adf66168330a2ded1f3b2de9f4791b3abe6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszQuadraticLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/declarations/profile--6c579902e3570f2fa630e279.md) | 22 | `declaration-track:6c579902e3570f2fa630e2795418d6c7d1d704dbbb250f21029080db46b100e2` |
| 2 | `theorem` | [time_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/declarations/time-exp-bound--7c064ac1f7f326aab874b28e.md) | 26 | `result-track:7c064ac1f7f326aab874b28eac29f21f2035df566f720f5b5c5015fe74afbf57` |
| 3 | `theorem` | [derivative_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/declarations/derivative-norm-bound--e0d6ff842279ff179608be5f.md) | 33 | `result-track:e0d6ff842279ff179608be5fa7da1fbedc8b3de4ff2ab169209e1e3c23de9ebe` |
| 4 | `theorem` | [kernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/declarations/kernel-hasderivat--58b6d5278fdbad622cb9236d.md) | 56 | `result-track:58b6d5278fdbad622cb9236d67a72647b39fd43f1459975543c56d72b2a39fe2` |
| 5 | `theorem` | [actualFixedCenteredRieszLaplace_hasDerivAt_of_quadratic_area](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/declarations/actualfixedcenteredrieszlaplace-hasderivat-of-quadratic-area--660b51644e3c09a9fc97a00f.md) | 66 | `result-track:660b51644e3c09a9fc97a00ff4d2b5d5474253790f8b498a8809a3a1ad9fd970` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_analyticOnNhd_of_quadratic_area](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/declarations/actualfixedcenteredrieszlaplace-analyticonnhd-of-quadratic-area--0296b899a04fe984eb29b771.md) | 125 | `result-track:0296b899a04fe984eb29b771351187e7c43cff9b72579a4ea9f83ec692568a53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
