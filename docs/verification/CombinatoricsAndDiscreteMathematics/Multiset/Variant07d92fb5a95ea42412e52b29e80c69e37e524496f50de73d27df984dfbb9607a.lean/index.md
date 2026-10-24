# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebaffd89acfd3d48a5d45489ba06656b54b49ede",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebaffd89acfd3d48a5d45489ba06656b54b49ede`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.List` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_le_prod_of_one_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/one-le-prod-of-one-le--929e79537c73ab8145d5ced6.md) | 37 | `result-track:929e79537c73ab8145d5ced6f428306bc21def960248b82b47f05293e1bd6b1d` |
| 2 | `lemma` | [single_le_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/single-le-prod--68c4070947f1839b3f1d3de2.md) | 41 | `result-track:68c4070947f1839b3f1d3de2ce99fc2f24dd6bf7661eee116d2567414500ad1b` |
| 3 | `lemma` | [prod_le_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/prod-le-pow-card--475d199ab9f47f987df9b08f.md) | 45 | `result-track:475d199ab9f47f987df9b08f308c6ff0d52a5f849f12143dca1cfd0c573993f0` |
| 4 | `lemma` | [all_one_of_le_one_le_of_prod_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/all-one-of-le-one-le-of-prod-eq-one--ef9b9347517a9773e4b6a57b.md) | 50 | `result-track:ef9b9347517a9773e4b6a57bb5998b4e686c65025ed3fc24fb9b437616ecbe10` |
| 5 | `lemma` | [prod_le_prod_of_rel_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/prod-le-prod-of-rel-le--f0683f0756f2c5f3442f5139.md) | 57 | `result-track:f0683f0756f2c5f3442f5139002eccf52f88e916247661a5d2f7d8f4bd0d7e6e` |
| 6 | `lemma` | [prod_map_le_prod_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/prod-map-le-prod-map--be832b759ee89e248fe33c09.md) | 65 | `result-track:be832b759ee89e248fe33c09fd27a9239d17a64072dbe556c2d3f3985077ca1a` |
| 7 | `lemma` | [prod_map_le_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/prod-map-le-prod--fed5d030238daf46094bd624.md) | 70 | `result-track:fed5d030238daf46094bd624b0cd543c4d95d25bb1bf66254b406bc28ac99001` |
| 8 | `lemma` | [prod_le_prod_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/prod-le-prod-map--193840972986c9745f695ee2.md) | 74 | `result-track:193840972986c9745f695ee2224be455bce02b94f6446b8eda9c3156811e2813` |
| 9 | `lemma` | [pow_card_le_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/pow-card-le-prod--a1c866247a0df7ada0e1d626.md) | 78 | `result-track:a1c866247a0df7ada0e1d6261a7c9c0227649f3f7cdaa79bbec0adf11b417288` |
| 10 | `lemma` | [le_prod_of_submultiplicative_on_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/le-prod-of-submultiplicative-on-pred--3b034ebf748a3092c8f074aa.md) | 88 | `result-track:3b034ebf748a3092c8f074aaee946f57dd4dfc87bb4f9d89f2c6cc0459dc1823` |
| 11 | `lemma` | [le_prod_of_submultiplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/le-prod-of-submultiplicative--92c0e0833321c284e438f456.md) | 102 | `result-track:92c0e0833321c284e438f456effc593dd20c81bef372ad1cd10a1bf8c8c25844` |
| 12 | `lemma` | [le_prod_nonempty_of_submultiplicative_on_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/le-prod-nonempty-of-submultiplicative-on-pred--90d1150a0623870cb9546289.md) | 108 | `result-track:90d1150a0623870cb95462890f0024ad06782928138fc59fb796b464d3f1dff2` |
| 13 | `lemma` | [le_prod_nonempty_of_submultiplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/le-prod-nonempty-of-submultiplicative--3abd85729ce85678b541e0f1.md) | 124 | `result-track:3abd85729ce85678b541e0f168ca8eadc87d71d23067e268a40e17931ba29f29` |
| 14 | `lemma` | [prod_lt_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/prod-lt-prod--3de5cb80e8d0f11c3e32f7dd.md) | 135 | `result-track:3de5cb80e8d0f11c3e32f7ddb14f3e2951fbba17947b61d8c92adb56bba86da6` |
| 15 | `lemma` | [prod_lt_prod_of_nonempty'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/prod-lt-prod-of-nonempty--ecef369908cb7bbf9f778210.md) | 142 | `result-track:ecef369908cb7bbf9f778210c7c5e243b36c74cf9d7c3b6284aebfe49af74c4f` |
| 16 | `lemma` | [prod_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/prod-eq-one-iff--be990f3a39e5b59cde7f1d95.md) | 152 | `result-track:be990f3a39e5b59cde7f1d95b69a4b07c92280c21204f4efac82f748c9fcef21` |
| 17 | `lemma` | [le_prod_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/le-prod-of-mem--68279186d20abfa5904550f2.md) | 155 | `result-track:68279186d20abfa5904550f278d69069dc1fb6bbcd9f6bcc7218b95e0acf644c` |
| 18 | `lemma` | [max_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/max-le-of-forall-le--73fcc96a07057891196042ba.md) | 162 | `result-track:73fcc96a07057891196042baeebfa986d6afbbf6187fcb816372877a5635d07d` |
| 19 | `lemma` | [max_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/max-prod-le--5bcb7c4df75d7f0ddefc681d.md) | 168 | `result-track:5bcb7c4df75d7f0ddefc681db168f9b1b73900856e0183b7007f285865f3cb96` |
| 20 | `lemma` | [prod_min_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/prod-min-le--1528d0069c40854992380572.md) | 176 | `result-track:1528d0069c4085499238057211c4196dd19b5e1399a9fef8c6eade381361cb45` |
| 21 | `lemma` | [abs_sum_le_sum_abs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/declarations/abs-sum-le-sum-abs--ebb1cb98ae0ee284eb530506.md) | 183 | `result-track:ebb1cb98ae0ee284eb530506f592ffccc350174582b3013d93dfdc891e210b1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
