# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7573d193619ab99aee85e0aa8113386b79e9eb70",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7573d193619ab99aee85e0aa8113386b79e9eb70`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.List` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Antidiagonal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sections` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_map_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/prod-map-neg--005de832be1bb6608839139e.md) | 28 | `result-track:005de832be1bb6608839139ee2ad050eabd7bcf1d280aa8df300c20379ac018c` |
| 2 | `lemma` | [prod_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/prod-eq-zero--cca71cef3c7c251e02415b1b.md) | 36 | `result-track:cca71cef3c7c251e02415b1b1a73e4f8736068c924b973cb634ea64b4623476d` |
| 3 | `lemma` | [prod_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/prod-eq-zero-iff--2c48918780f1d4ca4657208b.md) | 41 | `result-track:2c48918780f1d4ca4657208bcdaa882cfe6fdde9c2b5fc87fdbe6d93b0bee558` |
| 4 | `lemma` | [prod_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/prod-ne-zero--37070ce2ea3353d1208f1828.md) | 44 | `result-track:37070ce2ea3353d1208f1828fb6a73c3bfd8ed38bf965cf689c1a5fb7a62c94d` |
| 5 | `lemma` | [sum_map_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/sum-map-mul-left--10bc8ca22d445327c1c0c0fe.md) | 51 | `result-track:10bc8ca22d445327c1c0c0febe0553666afb335f1dcf1caaf8f02c07013de755` |
| 6 | `lemma` | [sum_map_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/sum-map-mul-right--d03f2b7d06fa41f4fa37939e.md) | 54 | `result-track:d03f2b7d06fa41f4fa37939eb398500fcd15b519c581e0b02ff9dc6857a3eae8` |
| 7 | `lemma` | [dvd_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/dvd-sum--9abc1d7f9dc12b65025a8223.md) | 62 | `result-track:9abc1d7f9dc12b65025a82236e8bf4da3981429d0769857e4f0195e887855acf` |
| 8 | `lemma` | [prod_map_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/prod-map-sum--876b3079d8586d0b338ff656.md) | 72 | `result-track:876b3079d8586d0b338ff65681ce315476062c1dab0ac1866d6b077b532dd093` |
| 9 | `lemma` | [prod_map_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/prod-map-add--9b22f321c57877cdc45344f5.md) | 77 | `result-track:9b22f321c57877cdc45344f5bb9b9fb29eaffcd4f45b59a925af71f367f98599` |
| 10 | `theorem` | [multiset_sum_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/multiset-sum-right--986eda2e942b1ebe5946d807.md) | 96 | `result-track:986eda2e942b1ebe5946d8076cdfa441d877f6453372c210bb0e9a209edf7495` |
| 11 | `theorem` | [multiset_sum_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant86f1a9e2af9cbc84ee4e12399e3303275fa7c44b1cd24368141ef76b2580679b.lean/declarations/multiset-sum-left--5485ab5812a0a8118d53e4f6.md) | 101 | `result-track:5485ab5812a0a8118d53e4f6ab245d36de94abbb5a13c96f136f8b8969a1ad0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
