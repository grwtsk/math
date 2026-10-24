# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f88edbf45b70c95d4eafbc74e904b7efd34e479b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f88edbf45b70c95d4eafbc74e904b7efd34e479b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Adjunctions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortExact.Preadditive` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Rank` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finrank` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_span_sum](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/declarations/disjoint-span-sum--91707d05ee49b45424cd53c1.md) | 49 | `result-track:91707d05ee49b45424cd53c1b14449bfffdb0749aea250f546285f0270d2bd02` |
| 2 | `theorem` | [linearIndependent_leftExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/declarations/linearindependent-leftexact--87c28e5a76a14aad3181d3ba.md) | 67 | `result-track:87c28e5a76a14aad3181d3babe2f6015b9e88f3a49db2e90dec52d3a09bb2cab` |
| 3 | `theorem` | [linearIndependent_shortExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/declarations/linearindependent-shortexact--189e7da8f442475569e29389.md) | 76 | `result-track:189e7da8f442475569e293893af68d2dfb4ad251dde41533278491cced42ed0a` |
| 4 | `theorem` | [span_exact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/declarations/span-exact--f9e64ef09f14588931588d62.md) | 102 | `result-track:f9e64ef09f14588931588d62f1ba72d13ba0ba285dfe81e78363775c1c35c33c` |
| 5 | `theorem` | [span_rightExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/declarations/span-rightexact--4ac82ad5ac3205b3c80e9cea.md) | 137 | `result-track:4ac82ad5ac3205b3c80e9cea07adbbb8627c1754d3df28b48a19dffbfb235b29` |
| 6 | `def` | [Basis.ofShortExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/declarations/basis-ofshortexact--d0d7fd856f17eb223f2e7084.md) | 153 | `declaration-track:d0d7fd856f17eb223f2e708468b1aed0c00259fc1c29d05ae2f412a85ceb8aad` |
| 7 | `theorem` | [free_shortExact](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/declarations/free-shortexact--c2b3e17a7913d91fa602cfe7.md) | 159 | `result-track:c2b3e17a7913d91fa602cfe747b0f1e541710145e3f5c2d87d7dae6b90f66dce` |
| 8 | `theorem` | [free_shortExact_rank_add](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/declarations/free-shortexact-rank-add--e79eb6ffa0d22cbfb69ff23c.md) | 165 | `result-track:e79eb6ffa0d22cbfb69ff23c373c1c88a31d6a0eadb7186d2620a6b016c49d5e` |
| 9 | `theorem` | [free_shortExact_finrank_add](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variantbe73acc189a93b8509d65fe3f9f382716bb58c31c74517228cbe001c1207ab57.lean/declarations/free-shortexact-finrank-add--dc3bb7f69ce7c5b9e9541e7c.md) | 174 | `result-track:dc3bb7f69ce7c5b9e9541e7c8fbb0825f00badc70133145c9eeaad431ac5b476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
