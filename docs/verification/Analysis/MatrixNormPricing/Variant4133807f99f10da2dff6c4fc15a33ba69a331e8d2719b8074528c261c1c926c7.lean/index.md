# Verification target: GRWTSK.Analysis.MatrixNormPricing.Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdf9f4a7224fb7b0a8b9f7accb86308359b4f51e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/index.md) · [Full source](../../../../mathematics/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdf9f4a7224fb7b0a8b9f7accb86308359b4f51e`.

Source path: `GRWTSK/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedGramPricing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticForm](../../../../mathematics/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/declarations/quadraticform--ad23def637957331022a20fb.md) | 23 | `declaration-track:ad23def637957331022a20fbf8b217d50201237882ce7670afa26e7405d2b605` |
| 2 | `def` | [operatorNorm](../../../../mathematics/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/declarations/operatornorm--24a9da40e76ffa16af616cfa.md) | 26 | `declaration-track:24a9da40e76ffa16af616cfa39a9e1b94f47fa10c9395b10bc09c4b64104db39` |
| 3 | `theorem` | [quadraticForm_le_operatorNorm](../../../../mathematics/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/declarations/quadraticform-le-operatornorm--c50be8346c1f111d3de8f15e.md) | 29 | `result-track:c50be8346c1f111d3de8f15e32b1352af5775ccf0e1ad356b275ce6e8eb12434` |
| 4 | `theorem` | [diagonal_entry_le_operatorNorm](../../../../mathematics/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/declarations/diagonal-entry-le-operatornorm--4f45b7e131b7ba78320fa3ba.md) | 45 | `result-track:4f45b7e131b7ba78320fa3ba230f0f63591cc25fc30fff0faf27efd7fb50e595` |
| 5 | `def` | [anchoredMatrix](../../../../mathematics/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/declarations/anchoredmatrix--6811f64357a75037716e67c8.md) | 49 | `declaration-track:6811f64357a75037716e67c84f92ea05dd9d35b5f9832adb46af5f9bce0885c9` |
| 6 | `theorem` | [anchored_matrix_anchor_bound](../../../../mathematics/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/declarations/anchored-matrix-anchor-bound--a3fac5eee4935769a22c91d3.md) | 57 | `result-track:a3fac5eee4935769a22c91d34ffe64f3865fe363861fc5d46544b508ee4441ff` |
| 7 | `theorem` | [anchored_matrix_shell_bound](../../../../mathematics/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/declarations/anchored-matrix-shell-bound--1b92bcea5d22875a4e3db706.md) | 62 | `result-track:1b92bcea5d22875a4e3db706bcb0e3253e002b186b158dbe30e189fa35154644` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
