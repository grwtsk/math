# Verification target: GRWTSK.Algebra.UniversalAlgebra.DenselyOrdered.Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1bd1983375e5fb42d868528687aad480c01f8b7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1bd1983375e5fb42d868528687aad480c01f8b7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_of_forall_lt_one_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/declarations/le-of-forall-lt-one-mul-le--7fc2f20dc0295c9a0ad52183.md) | 23 | `result-track:7fc2f20dc0295c9a0ad52183117fd092cf9496a2fcd8a7cb0a4788eaf5c91700` |
| 2 | `theorem` | [le_of_forall_one_lt_div_le](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/declarations/le-of-forall-one-lt-div-le--0fb298e1bb827c998d8bdff3.md) | 27 | `result-track:0fb298e1bb827c998d8bdff33af72eebbcb0f85227435d48bea9ecbbe84c0b15` |
| 3 | `theorem` | [le_iff_forall_lt_one_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/declarations/le-iff-forall-lt-one-mul-le--c279c1bf8be3d8383a2724a5.md) | 32 | `result-track:c279c1bf8be3d8383a2724a52e08cd924bb2b160e2f8d62505af0f6679e24a47` |
| 4 | `lemma` | [exists_lt_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/declarations/exists-lt-mul-left--6e9c1081a3eda15222b543da.md) | 40 | `result-track:6e9c1081a3eda15222b543da6cc0314c70f38bb0ebe828498bf373450d0141e8` |
| 5 | `lemma` | [exists_lt_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/declarations/exists-lt-mul-right--63daec87e3d808fa7996b5cf.md) | 47 | `result-track:63daec87e3d808fa7996b5cf401227572f7d7c488dd27ce105b4aaa4b84bad55` |
| 6 | `lemma` | [exists_mul_left_lt](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/declarations/exists-mul-left-lt--aaba356a835818a0735fef32.md) | 54 | `result-track:aaba356a835818a0735fef3253a1b3386c49a8dffe054649682c24725abf437c` |
| 7 | `lemma` | [exists_mul_right_lt](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/declarations/exists-mul-right-lt--47b8c8eb39cb74d39845d832.md) | 61 | `result-track:47b8c8eb39cb74d39845d8322a991298d462207131d72f428901df2a3f948cad` |
| 8 | `lemma` | [le_mul_of_forall_lt](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/declarations/le-mul-of-forall-lt--c8d6b32f969a2e9df6d91e02.md) | 68 | `result-track:c8d6b32f969a2e9df6d91e02531fd43fb6ea76d66b58305471fd96882e4b43cd` |
| 9 | `lemma` | [mul_le_of_forall_lt](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e.lean/declarations/mul-le-of-forall-lt--24f6dbb42fa2d917b4263586.md) | 77 | `result-track:24f6dbb42fa2d917b426358676db018f73d7afe155437483f80442b84aa89456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
