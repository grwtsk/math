# Verification target: GRWTSK.Algebra.UniversalAlgebra.Star.Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4e7290794d364af7d5b1ed523165b091b8c810f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Star/Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4e7290794d364af7d5b1ed523165b091b8c810f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Star/Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Star/Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Submonoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [addSubmonoid_closure_range_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532.lean/declarations/addsubmonoid-closure-range-pow--bfb16e3670f963fb0ef431e6.md) | 22 | `result-track:bfb16e3670f963fb0ef431e63c3a642d662162e2c3de0dfeeec77accab78d23a` |
| 2 | `lemma` | [addSubmonoid_closure_range_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532.lean/declarations/addsubmonoid-closure-range-mul-self--b4bca995e9a1f764958dbce0.md) | 30 | `result-track:b4bca995e9a1f764958dbce03e80d83eb4e3295aa71a3da5a508af9a45069860` |
| 3 | `instance` | [instStarOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant6ee35dfa4aa3ddad836b2d2d411db3d1d89a8580a31ce68e08ab39adafc4d532.lean/declarations/inststarorderedring--ac6b7f0ee09d7ee0a8e7c3d7.md) | 33 | `declaration-track:ac6b7f0ee09d7ee0a8e7c3d7e797628e400acccf7ae16d7b9879fcf2631dfdd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
