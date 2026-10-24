# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "426bdc656c14ec4998c59b74a33f828e1b474852",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `426bdc656c14ec4998c59b74a33f828e1b474852`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.List` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Antidiagonal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sections` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_map_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/prod-map-neg--b90f0564193907bdff5c3a8e.md) | 20 | `result-track:b90f0564193907bdff5c3a8eca7eade222646a6c88142c2dd2e572aef62ebe41` |
| 2 | `lemma` | [prod_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/prod-eq-zero--9da720240578af988dfa9661.md) | 28 | `result-track:9da720240578af988dfa96612360531ac7ee6f4af4e7c5726e7b0ae344dfacff` |
| 3 | `lemma` | [prod_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/prod-eq-zero-iff--735732bb530a1f8900982e1d.md) | 33 | `result-track:735732bb530a1f8900982e1d489c31e4d8e5413dbeafbbb1895ef468eb44315f` |
| 4 | `lemma` | [prod_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/prod-ne-zero--e874d9d376e3a32149a0eed9.md) | 36 | `result-track:e874d9d376e3a32149a0eed9c9d9f6e6cc7a9d7832119cf8afb78e77748df78a` |
| 5 | `lemma` | [sum_map_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/sum-map-mul-left--4513937234322d1df2d2e45f.md) | 43 | `result-track:4513937234322d1df2d2e45f9896c6142bafe79bfc973f08d9076c348c95bf45` |
| 6 | `lemma` | [sum_map_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/sum-map-mul-right--108a5192ee7dbe0eb3eda1ac.md) | 46 | `result-track:108a5192ee7dbe0eb3eda1ac3138668e611f5a14225655772469fe16d92d2973` |
| 7 | `lemma` | [dvd_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/dvd-sum--54eab88aa09caeeeb6b6e2a3.md) | 54 | `result-track:54eab88aa09caeeeb6b6e2a35a7ee5f0a98d74084c0845c437774fa19f43ec6f` |
| 8 | `lemma` | [prod_map_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/prod-map-sum--550b6385c53412353e66b112.md) | 64 | `result-track:550b6385c53412353e66b1127464c466bf744b1ddf817212aaef6ae6f1586bce` |
| 9 | `lemma` | [prod_map_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/prod-map-add--3363f01bb0ce68f5a9428092.md) | 69 | `result-track:3363f01bb0ce68f5a9428092d6867b2a3072795b460ab2bc9b1ea8621117eca5` |
| 10 | `theorem` | [multiset_sum_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/multiset-sum-right--0142646340efd6bb5b6b85b7.md) | 88 | `result-track:0142646340efd6bb5b6b85b7e894d96f27bb5fdd627d65969ae79c0c6d9e44a6` |
| 11 | `theorem` | [multiset_sum_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant445b840d46fa536f2a781efd71f3a7285e6ce875452f13a3ac5e98837e80189e.lean/declarations/multiset-sum-left--5852bfe6cc6436cc2ec4d9f8.md) | 93 | `result-track:5852bfe6cc6436cc2ec4d9f81d4de841f1e699aab494d56dcd4373e686db979e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
