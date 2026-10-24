# Verification target: GRWTSK.Algebra.LinearAlgebra.Span.Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f350cc94a23630e4b261ea24217524d527df386",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f350cc94a23630e4b261ea24217524d527df386`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.ContinuousLinearMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toSpanSingleton_homothety](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/tospansingleton-homothety--765ec046c68ee84337359f76.md) | 37 | `result-track:765ec046c68ee84337359f76feb1e7e56ff9d617048632e8212df2d995ccb4a6` |
| 2 | `theorem` | [_root_.LinearEquiv.toSpanNonzeroSingleton_homothety](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/root-linearequiv-tospannonzerosingleton-homothety--b8cbc5875c97b704982bf72b.md) | 53 | `result-track:b8cbc5875c97b704982bf72bf4c63bec1b5afc61a6805da624def7c97e834943` |
| 3 | `def` | [toSpanNonzeroSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/tospannonzerosingleton--1f817508abcb34f3711619c7.md) | 64 | `declaration-track:1f817508abcb34f3711619c7a0449e694c5194e954bf0395650a8fefc6d4e260` |
| 4 | `def` | [coord](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/coord--f05c77b59435d08d28f6a9e8.md) | 70 | `declaration-track:f05c77b59435d08d28f6a9e8ff56538c62cb08fd5298eab1b88d30bb59b21e2d` |
| 5 | `theorem` | [coe_toSpanNonzeroSingleton_symm](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/coe-tospannonzerosingleton-symm--1c61b502a744e62fc919b395.md) | 74 | `result-track:1c61b502a744e62fc919b395cc9cb836532daba5275367ddca13156d8e91b09a` |
| 6 | `theorem` | [coord_toSpanNonzeroSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/coord-tospannonzerosingleton--a2cb5bcfe4ce2493bc2f8701.md) | 79 | `result-track:a2cb5bcfe4ce2493bc2f8701c69de92a3b424f355703646397486ef4079a3242` |
| 7 | `theorem` | [toSpanNonzeroSingleton_coord](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/tospannonzerosingleton-coord--5851bc326562b74cb2cedccf.md) | 84 | `result-track:5851bc326562b74cb2cedccf22dfd6fc6d6c2f7184ae4fba1250f1934cc8b898` |
| 8 | `theorem` | [coord_self](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/coord-self--685a0d565567c9d7f50ad323.md) | 89 | `result-track:685a0d565567c9d7f50ad323b289402af49f78b369a2a4f8034e7d24c82fa663` |
| 9 | `def` | [toSpanUnitSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/tospanunitsingleton--8f3b342faf9472fb76e0cabb.md) | 103 | `declaration-track:8f3b342faf9472fb76e0cabbfba8e4d2aa3f3a5b5e42ea7788d02e02507562fe` |
| 10 | `theorem` | [toSpanUnitSingleton_apply](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.lean/declarations/tospanunitsingleton-apply--60556f467dfe1cf4b8adafc1.md) | 110 | `result-track:60556f467dfe1cf4b8adafc123e8e91548fa20ae10196e7de777fc0c518015b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
