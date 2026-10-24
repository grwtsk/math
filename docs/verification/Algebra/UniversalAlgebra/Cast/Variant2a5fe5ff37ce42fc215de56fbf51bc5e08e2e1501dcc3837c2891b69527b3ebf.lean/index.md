# Verification target: GRWTSK.Algebra.UniversalAlgebra.Cast.Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f67194ecb2f1e3da3f4944f75c36d215f7ef763",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f67194ecb2f1e3da3f4944f75c36d215f7ef763`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-mono--81db4d73e7c4e725e85244c2.md) | 41 | `result-track:81db4d73e7c4e725e85244c241ce04aff94c873da3f5112d72d1b57db2d4fd9e` |
| 2 | `lemma` | [GCongr.intCast_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/gcongr-intcast-mono--9fc5e15fd36b40d65a7a082b.md) | 48 | `result-track:9fc5e15fd36b40d65a7a082b097bbb52bba97654f6627c8d18a915f68c31fa0f` |
| 3 | `lemma` | [cast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-nonneg--ef969570c8fffc487ebc5591.md) | 52 | `result-track:ef969570c8fffc487ebc5591a44383d3e046d210c4e917a0b8824917bb4c9f6f` |
| 4 | `lemma` | [cast_le](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-le--894ecc22b7589281ecbc8de0.md) | 58 | `result-track:894ecc22b7589281ecbc8de051c7992b3f7f334c0a9caaef9f7d2e1ec1606cb2` |
| 5 | `lemma` | [cast_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-strictmono--8928328a31802bf7e6ff5596.md) | 61 | `result-track:8928328a31802bf7e6ff5596ebdcfcd4c934ad49bc962c1430d857f382b48ac5` |
| 6 | `lemma` | [cast_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-lt--283b07aa4b51431c15b83c64.md) | 64 | `result-track:283b07aa4b51431c15b83c64fbb823c9af8499ac0f50cc91e28d5d02c4b7d7d9` |
| 7 | `lemma` | [cast_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-nonpos--3ec82df54cc09456b8313e1f.md) | 68 | `result-track:3ec82df54cc09456b8313e1ff42ba2359314fd1f474a691f3a082b0642b867e6` |
| 8 | `lemma` | [cast_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-pos--2085e94d35312bf7cd57d2c1.md) | 70 | `result-track:2085e94d35312bf7cd57d2c111dd40ba25a549fadee23ff6959725e881d3d07f` |
| 9 | `lemma` | [cast_lt_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-lt-zero--80696dc85d7b44611519056e.md) | 72 | `result-track:80696dc85d7b44611519056e544696fd98db5cf0aa00ff4f904d4ffbbda537e0` |
| 10 | `lemma` | [cast_min](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-min--d24d77af0a7320ebcd99bc9e.md) | 80 | `result-track:d24d77af0a7320ebcd99bc9ee2e61e6556f280e657fd6be113b8c706e3688dd2` |
| 11 | `lemma` | [cast_max](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-max--a7d6b1c0dc1faf3f5c9f503e.md) | 83 | `result-track:a7d6b1c0dc1faf3f5c9f503e0bf725a7304989266cc3f06eb55f91c8e1f18a2a` |
| 12 | `lemma` | [cast_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-abs--e35f5d0dcddcc8c50101298a.md) | 86 | `result-track:e35f5d0dcddcc8c50101298aae4b76773ed5cd5c88bce819337018bc8f3d0987` |
| 13 | `lemma` | [cast_one_le_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-one-le-of-pos--10034bac34278dab390b951a.md) | 88 | `result-track:10034bac34278dab390b951af1bc6a301f57298d8b99b401164d938ea3c28cd6` |
| 14 | `lemma` | [cast_le_neg_one_of_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-le-neg-one-of-neg--b30ff6c08e6c8e620376a9ec.md) | 90 | `result-track:b30ff6c08e6c8e620376a9ecb663c6b78ceefd9480b722b687f72563e13973de` |
| 15 | `lemma` | [cast_le_neg_one_or_one_le_cast_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-le-neg-one-or-one-le-cast-of-ne-zero--23896a7466ce048325edf831.md) | 95 | `result-track:23896a7466ce048325edf83137c5edf62450d08e33e25922069c150b032735cc` |
| 16 | `lemma` | [nneg_mul_add_sq_of_abs_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/nneg-mul-add-sq-of-abs-le-one--3b9800ab1216cb44457e6e57.md) | 98 | `result-track:3b9800ab1216cb44457e6e57f675f0f72aed443252ec19739c6365923776682e` |
| 17 | `lemma` | [cast_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/cast-natabs--8caec9ae82ab6272979a7b61.md) | 113 | `result-track:8caec9ae82ab6272979a7b6172671800c5d001984b54eecc8b3865491dc2dcf3` |
| 18 | `instance` | [instIntCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/instintcast--6b144e8047ad314f169c200d.md) | 127 | `declaration-track:6b144e8047ad314f169c200debe5ba9868b5124fdc4added97c018b7627043ac` |
| 19 | `instance` | [instAddGroupWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/instaddgroupwithone--8f6e702bee2682c4f795f1d9.md) | 128 | `declaration-track:8f6e702bee2682c4f795f1d93f51bf1f264ea194eda4e648e184b6b9054665f3` |
| 20 | `instance` | [instAddCommGroupWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/instaddcommgroupwithone--3c28ca5f4d2a26ae9cde155c.md) | 129 | `declaration-track:3c28ca5f4d2a26ae9cde155c71836c543f0e0030ee8d3846cf6d9f07a107cf49` |
| 21 | `lemma` | [toDual_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/todual-intcast--aa6067167178cc59545ee646.md) | 133 | `result-track:aa6067167178cc59545ee6461813aac3e4432b37c013fe9e52fdf01bf1d06130` |
| 22 | `lemma` | [ofDual_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/ofdual-intcast--10e2d36a785fcb329d1d4ad2.md) | 135 | `result-track:10e2d36a785fcb329d1d4ad2e5e15edb5bc3a6f91945fa9298cfea56b8b1bef1` |
| 23 | `instance` | [instIntCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/instintcast--1db73ab69678b11cc8d74467.md) | 141 | `declaration-track:1db73ab69678b11cc8d74467545433a2cf9020205e8e4804366b9006d098f80b` |
| 24 | `instance` | [instAddGroupWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/instaddgroupwithone--3881ebd16dda473bfe63b509.md) | 142 | `declaration-track:3881ebd16dda473bfe63b5096547618cb0d8c4dd94945fc23e93fce528ad2254` |
| 25 | `instance` | [instAddCommGroupWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/instaddcommgroupwithone--2f8e7ab5c36718be8d28505b.md) | 143 | `declaration-track:2f8e7ab5c36718be8d28505bf90bb307a95ac9a78b405d5d4eefb8886ad7b039` |
| 26 | `lemma` | [toLex_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/tolex-intcast--95a96249e03bc11a63b4892c.md) | 147 | `result-track:95a96249e03bc11a63b4892c93e01a5e93a1905d481249bd7828349120aaf5eb` |
| 27 | `lemma` | [ofLex_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Cast/Variant2a5fe5ff37ce42fc215de56fbf51bc5e08e2e1501dcc3837c2891b69527b3ebf.lean/declarations/oflex-intcast--f15d5c3104aec5663a7792a5.md) | 149 | `result-track:f15d5c3104aec5663a7792a5ec80a304db6414f6fb7b86550986c32f081b13f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
