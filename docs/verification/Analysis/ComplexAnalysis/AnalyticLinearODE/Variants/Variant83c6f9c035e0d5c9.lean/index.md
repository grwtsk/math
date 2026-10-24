# Verification target: GRWTSK.Analysis.Complex.AnalyticLinearODE

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06289e6f69e4a1ef6fffe91a6b89121008ea7013",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/AnalyticLinearODE.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE/Variants/Variant83c6f9c035e0d5c9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE/Variants/Variant83c6f9c035e0d5c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06289e6f69e4a1ef6fffe91a6b89121008ea7013`.

Source path: `GRWTSK/Analysis/Complex/AnalyticLinearODE.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/AnalyticLinearODE.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [no_finite_order_zero](../../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE/Variants/Variant83c6f9c035e0d5c9.lean/declarations/no-finite-order-zero--c05947d4dc205e2006ac8390.md) | 24 | `result-track:c05947d4dc205e2006ac8390a50184663dc3249fe32190dad0e55c5b219deb04` |
| 2 | `theorem` | [finite_order_on_connected](../../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE/Variants/Variant83c6f9c035e0d5c9.lean/declarations/finite-order-on-connected--a818fc3b7957b4558edfbe7a.md) | 57 | `result-track:a818fc3b7957b4558edfbe7afd4f8be0594fd7150764629c0533821a2cc9b6b5` |
| 3 | `theorem` | [nonvanishing](../../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE/Variants/Variant83c6f9c035e0d5c9.lean/declarations/nonvanishing--58cea1de4557f310ed727bf3.md) | 68 | `result-track:58cea1de4557f310ed727bf3c2133588c1235fdec92cf855a39349dd6c41f531` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
