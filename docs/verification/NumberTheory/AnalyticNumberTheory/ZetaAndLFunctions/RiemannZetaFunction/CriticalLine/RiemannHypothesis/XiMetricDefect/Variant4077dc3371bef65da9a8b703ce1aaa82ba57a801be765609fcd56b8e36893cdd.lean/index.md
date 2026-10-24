# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiMetricDefect.Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a939af2707cdd879f4660e08ba5ff26d83fc970c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a939af2707cdd879f4660e08ba5ff26d83fc970c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiSectionStrip` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenvector_defect_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean/declarations/eigenvector-defect-identity--1aabba7dcfb98e4d0ed0b053.md) | 31 | `result-track:1aabba7dcfb98e4d0ed0b05343977f8a760fe1b3f37c9ffcadaa49fc5f2575ba` |
| 2 | `theorem` | [eigenvalue_im_le_of_relative_defect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean/declarations/eigenvalue-im-le-of-relative-defect--9a29633f807491feec38e4df.md) | 44 | `result-track:9a29633f807491feec38e4dfdc39f3d3840eb19a797984f90a11b708b1c46cb5` |
| 3 | `theorem` | [no_vanishing_relative_defect_for_sections](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean/declarations/no-vanishing-relative-defect-for-sections--ba2e61ec26913a33db379969.md) | 61 | `result-track:ba2e61ec26913a33db37996987923c39e6ff65b720346a89b4153ecba76b5c23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
