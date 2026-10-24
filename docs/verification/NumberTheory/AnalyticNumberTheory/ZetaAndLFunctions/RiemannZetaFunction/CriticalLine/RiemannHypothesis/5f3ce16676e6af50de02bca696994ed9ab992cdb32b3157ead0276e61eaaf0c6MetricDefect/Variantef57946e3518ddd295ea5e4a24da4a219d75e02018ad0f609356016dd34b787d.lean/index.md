# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect.Variantef57946e3518ddd295ea5e4a24da4a219d75e02018ad0f609356016dd34b787d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "189ed9f3d08ff52d102f21afe5a071156a919210",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variantef57946e3518ddd295ea5e4a24da4a219d75e02018ad0f609356016dd34b787d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variantef57946e3518ddd295ea5e4a24da4a219d75e02018ad0f609356016dd34b787d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variantef57946e3518ddd295ea5e4a24da4a219d75e02018ad0f609356016dd34b787d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `189ed9f3d08ff52d102f21afe5a071156a919210`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variantef57946e3518ddd295ea5e4a24da4a219d75e02018ad0f609356016dd34b787d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variantef57946e3518ddd295ea5e4a24da4a219d75e02018ad0f609356016dd34b787d.lean.json)

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
| 1 | `theorem` | [eigenvector_defect_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variantef57946e3518ddd295ea5e4a24da4a219d75e02018ad0f609356016dd34b787d.lean/declarations/eigenvector-defect-identity--f8d1863698950f6d526d40f7.md) | 18 | `result-track:f8d1863698950f6d526d40f7570483697bbfe6f03a47726058a86c2313ec4e60` |
| 2 | `theorem` | [eigenvalue_im_le_of_relative_defect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variantef57946e3518ddd295ea5e4a24da4a219d75e02018ad0f609356016dd34b787d.lean/declarations/eigenvalue-im-le-of-relative-defect--cbd3bc989d4e9bc2d0a9be08.md) | 30 | `result-track:cbd3bc989d4e9bc2d0a9be08560e33cd4d73d6031e08f2992ef43dd72697634e` |
| 3 | `theorem` | [no_vanishing_relative_defect_for_sections](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variantef57946e3518ddd295ea5e4a24da4a219d75e02018ad0f609356016dd34b787d.lean/declarations/no-vanishing-relative-defect-for-sections--56eb3f6aaa26b4f8fc2705da.md) | 45 | `result-track:56eb3f6aaa26b4f8fc2705da4a9e67c7cfe9bbc5dbf18829d3051f999964ffbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
