# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect.Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6e295b838731e28904f58a8f0ab73ff09b87b8b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6e295b838731e28904f58a8f0ab73ff09b87b8b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean.json)

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
| 1 | `theorem` | [eigenvector_defect_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean/declarations/eigenvector-defect-identity--96df68b08079763bc397c21b.md) | 10 | `result-track:96df68b08079763bc397c21b9ef6990cb804da055e8cc12650a1e171a5599a44` |
| 2 | `theorem` | [eigenvalue_im_le_of_relative_defect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean/declarations/eigenvalue-im-le-of-relative-defect--da091ae9003ec28a672ef4e0.md) | 22 | `result-track:da091ae9003ec28a672ef4e072cb05fb6bb1ee7038cb6c915718efdf3c1e8051` |
| 3 | `theorem` | [no_vanishing_relative_defect_for_sections](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean/declarations/no-vanishing-relative-defect-for-sections--651b5bd7b270f285a784326f.md) | 37 | `result-track:651b5bd7b270f285a784326f65e0a2fd98dfd7ae51a25a80f0e0362a2cbb5d4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
