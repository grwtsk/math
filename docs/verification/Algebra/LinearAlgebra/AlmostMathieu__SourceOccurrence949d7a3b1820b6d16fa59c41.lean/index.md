# Verification target: GRWTSK.LinearAlgebra.AlmostMathieu

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e0c35141e8e84c0223da87bee58f26ea1d3914d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/AlmostMathieu.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e0c35141e8e84c0223da87bee58f26ea1d3914d`.

Source path: `GRWTSK/LinearAlgebra/AlmostMathieu.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/AlmostMathieu.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.SchrodingerTransfer`](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrence1b935086502b7f96acb46a5b.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [potential](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/declarations/potential--dc644fa2499568ac4a88efc3.md) | 16 | `declaration-track:dc644fa2499568ac4a88efc3f90e831b3260f6f09cdd0e72e6755ec932ce3149` |
| 2 | `def` | [transfer](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/declarations/transfer--aa8b1aa1c14313ea5c0341d5.md) | 20 | `declaration-track:aa8b1aa1c14313ea5c0341d5d71eb03f539807073ec67bc616d19340a899cc71` |
| 3 | `theorem` | [recurrence_iff_transfer](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/declarations/recurrence-iff-transfer--5108ee63bec3facd3727b13c.md) | 24 | `result-track:5108ee63bec3facd3727b13c171cbc7b8a0e66ed69bb894804dd771790c87892` |
| 4 | `theorem` | [det_transfer](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/declarations/det-transfer--c25343c33c386af7d6d96b7e.md) | 30 | `result-track:c25343c33c386af7d6d96b7ef325e7caaf320faa50d29f53a21c3745dd529731` |
| 5 | `theorem` | [det_one_does_not_bound_trace](../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/declarations/det-one-does-not-bound-trace--370f88ce895646de6de8d4aa.md) | 36 | `result-track:370f88ce895646de6de8d4aa535fdaffc39dc160676b0ddbfb90c58273c23dc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
