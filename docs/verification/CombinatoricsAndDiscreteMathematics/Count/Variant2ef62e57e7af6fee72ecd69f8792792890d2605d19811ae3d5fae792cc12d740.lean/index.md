# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Count.Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2a47a394b185bb456e5c9098125b2ee5762165e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2a47a394b185bb456e5c9098125b2ee5762165e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Range` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count--3ce452e17d1e0e10ce278237.md) | 33 | `declaration-track:3ce452e17d1e0e10ce278237820b4af5ecf381084e296e95d227ccc11a1b6ecf` |
| 2 | `theorem` | [count_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-zero--f5225e9ce19bef153beccbbe.md) | 37 | `result-track:f5225e9ce19bef153beccbbefca1b8db48b51fee502a4d44677a6e2c77732a43` |
| 3 | `def` | [CountSet.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/countset-fintype--6c93204b5227d662413a9d12.md) | 41 | `declaration-track:6c93204b5227d662413a9d129a187157f7a9c8831be182e13f3f9c0023e90141` |
| 4 | `theorem` | [count_eq_card_filter_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-eq-card-filter-range--40961d38ea47005c41153646.md) | 51 | `result-track:40961d38ea47005c411536469d06acafe9ed2bc08bd8916bb5f05d2ef26b42ca` |
| 5 | `theorem` | [count_eq_card_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-eq-card-fintype--d501e54c34ed82e92b65e8b8.md) | 56 | `result-track:d501e54c34ed82e92b65e8b858df8c759a9d3692189232897d0ac357ed0550f9` |
| 6 | `theorem` | [count_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-le--afd542bd61ca98e3ec029591.md) | 60 | `result-track:afd542bd61ca98e3ec02959179ab07c9b34f52110f9e29b45fb7b03a49ed8088` |
| 7 | `theorem` | [count_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-succ--6a79ed131b767074830f4f24.md) | 64 | `result-track:6a79ed131b767074830f4f2412c7473d45aa6ec3d54c1323873e3b828ad406e5` |
| 8 | `theorem` | [count_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-monotone--2f4df7bee377b4dec3ab9c98.md) | 68 | `result-track:2f4df7bee377b4dec3ab9c98f71964ec82e796a9a5b571a13cf7b085f4246e90` |
| 9 | `theorem` | [count_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-add--8d3e6ece6d9bbdd1ded43a86.md) | 71 | `result-track:8d3e6ece6d9bbdd1ded43a8635be2eea0ba311a16f83431fffb9622560a10397` |
| 10 | `theorem` | [count_add'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-add--ef46dd84baacb1fa9d181578.md) | 82 | `result-track:ef46dd84baacb1fa9d181578a589917b84f3a47e0ed07c598d148c7a732ed04f` |
| 11 | `theorem` | [count_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-one--827a5da7bd7a85f238c6c4b8.md) | 86 | `result-track:827a5da7bd7a85f238c6c4b8de2f2590e0c7904db9c7581ab3616b6f2a8fc130` |
| 12 | `theorem` | [count_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-succ--0ee1df382e45fe43d1dccad8.md) | 88 | `result-track:0ee1df382e45fe43d1dccad8e01d1e0839145e0f1db23a20fd6719b043030d77` |
| 13 | `theorem` | [count_lt_count_succ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-lt-count-succ-iff--30af1a92432f87695155a75b.md) | 95 | `result-track:30af1a92432f87695155a75b79dd06633356f046b6acac5f0d4258852d015423` |
| 14 | `theorem` | [count_succ_eq_succ_count_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-succ-eq-succ-count-iff--109a58c850721897bb0c6426.md) | 98 | `result-track:109a58c850721897bb0c64261be3fceb9697ee9dba60103182ba7f56ac2d78da` |
| 15 | `theorem` | [count_succ_eq_count_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-succ-eq-count-iff--1cdc216682f9f62a2d162246.md) | 101 | `result-track:1cdc216682f9f62a2d1622467fe0993668d61290b5bda3420dd7ea69c0bb3543` |
| 16 | `theorem` | [lt_of_count_lt_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/lt-of-count-lt-count--4d467b2a152252898b8a9015.md) | 108 | `result-track:4d467b2a152252898b8a901555d7b46687f2ff7bfb8b223cded7b78165e9db5d` |
| 17 | `theorem` | [count_strict_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-strict-mono--3b26750ec9b2853f302305d8.md) | 111 | `result-track:3b26750ec9b2853f302305d8b3c1c904a4aeda1e44e627daf7168cfe0fba1379` |
| 18 | `theorem` | [count_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-injective--1525557cd759418825a0fa4c.md) | 114 | `result-track:1525557cd759418825a0fa4cd10f6b89cd0d0e92ed676ad840c6910bdd7c8e2a` |
| 19 | `theorem` | [count_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-le-card--e0fc512c7e246af0bac16622.md) | 120 | `result-track:e0fc512c7e246af0bac16622e06076b41f12a00018e2bfe1f4293d543ac50b84` |
| 20 | `theorem` | [count_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-lt-card--731448ad08d08cf4c12481af.md) | 124 | `result-track:731448ad08d08cf4c12481aff31ab773ca4991b81bd84b2bcc781071f829e213` |
| 21 | `theorem` | [count_iff_forall](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-iff-forall--09a098e3f3178fca56aa2daf.md) | 127 | `result-track:09a098e3f3178fca56aa2daf2d53167fff8bc98c97772e954d4b46263deaa263` |
| 22 | `theorem` | [count_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-true--54199d1a8db13ea07554abba.md) | 133 | `result-track:54199d1a8db13ea07554abba51023dfe751d8c2a1eb76070bf17ee594aff603c` |
| 23 | `theorem` | [count_iff_forall_not](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-iff-forall-not--973c05cbe786964ef66c41b3.md) | 135 | `result-track:973c05cbe786964ef66c41b391274f92b56ed74df114d477b2c5e00eb0ea3f43` |
| 24 | `theorem` | [count_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-false--94529cdd304f5922cbba23ad.md) | 141 | `result-track:94529cdd304f5922cbba23ad944c1a64e9dfa5c44d60b37807aa87d09a86ef52` |
| 25 | `theorem` | [count_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/declarations/count-mono-left--feb7055a0b1c51bf1b1562b0.md) | 147 | `result-track:feb7055a0b1c51bf1b1562b0f54218738ec586a779d4d577141053e3eb7e3310` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
