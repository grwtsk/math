# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiMetricDefect.Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0ad548ef18eeb4d56c3459bfbc5a8a5bd2eb8b4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0ad548ef18eeb4d56c3459bfbc5a8a5bd2eb8b4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiSectionStrip` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenvector_defect_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0.lean/declarations/eigenvector-defect-identity--1a875bf0803d1022787bb8da.md) | 23 | `result-track:1a875bf0803d1022787bb8dae326e8b8605f059b268e10e733171ad2bb7aac1f` |
| 2 | `theorem` | [eigenvalue_im_le_of_relative_defect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0.lean/declarations/eigenvalue-im-le-of-relative-defect--6288c38e891e7dd60210b88e.md) | 36 | `result-track:6288c38e891e7dd60210b88ea32ac882f911893585644a2ae22e79e80c98c0cf` |
| 3 | `theorem` | [no_vanishing_relative_defect_for_sections](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0.lean/declarations/no-vanishing-relative-defect-for-sections--d3e62c9a767e26ff428d14ca.md) | 53 | `result-track:d3e62c9a767e26ff428d14cacaddfa12578c77b30f4e59b5ca25b1dd3265a3f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
