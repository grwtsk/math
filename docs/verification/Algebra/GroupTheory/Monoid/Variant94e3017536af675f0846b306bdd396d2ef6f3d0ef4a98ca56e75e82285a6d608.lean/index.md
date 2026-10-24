# Verification target: GRWTSK.Algebra.GroupTheory.Monoid.Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cdd8a5198b6aaf36b7288addaa76b2cc175e548",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cdd8a5198b6aaf36b7288addaa76b2cc175e548`.

Source path: `GRWTSK/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Units` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natCast_mul](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/natcast-mul--185bde7f01e6c25296197ec6.md) | 39 | `result-track:185bde7f01e6c25296197ec6fe9fe895da80cf7dd559c68720052a383fe7c09c` |
| 2 | `theorem` | [mul_top](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/mul-top--f96beff78dd11e28d32028e3.md) | 43 | `result-track:f96beff78dd11e28d32028e3f26c37692bbb75bd92847beb29bb0dd51e93f7cc` |
| 3 | `theorem` | [top_mul](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/top-mul--1acc454bdcaf6cca956d9fa3.md) | 44 | `result-track:1acc454bdcaf6cca956d9fa34635868b30f9d867ce9a6353c00265d788559754` |
| 4 | `theorem` | [mul_top'](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/mul-top--d2914d60210b2b7d29d13cd6.md) | 47 | `result-track:d2914d60210b2b7d29d13cd6a6687959bdb667b623a80c3556b2b2de74b88e31` |
| 5 | `theorem` | [top_mul'](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/top-mul--64151c28fe39b10439140b03.md) | 50 | `result-track:64151c28fe39b10439140b033a6edb8a2bc8d646080d43d7a514b2c91e5321f4` |
| 6 | `lemma` | [top_pow](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/top-pow--5ddf536a63fb80af186be253.md) | 52 | `result-track:5ddf536a63fb80af186be253dcf2a5485202dd52bd8e404ef58a7beead7ee3c8` |
| 7 | `lemma` | [pow_eq_top_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/pow-eq-top-iff--0cc8c4ceb9f2eaf08917b3c5.md) | 54 | `result-track:0cc8c4ceb9f2eaf08917b3c50932ea706af3b4b2489d19d0a89b1fb874ff17fc` |
| 8 | `lemma` | [pow_ne_top_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/pow-ne-top-iff--2b27e739c23cefb3c912773d.md) | 56 | `result-track:2b27e739c23cefb3c912773d25a74004322bbd89d04bd72b8fc4137b9f5b9003` |
| 9 | `lemma` | [pow_lt_top_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/pow-lt-top-iff--a68a3d4459bdfb33fd48c90c.md) | 58 | `result-track:a68a3d4459bdfb33fd48c90c348843dabf47e1e83526593074493918e05fa099` |
| 10 | `lemma` | [eq_top_of_pow](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/eq-top-of-pow--ef13eea165805d730adc4fab.md) | 60 | `result-track:ef13eea165805d730adc4fab93e20147df56de225d8157f14d7eebb498cf1aee` |
| 11 | `theorem` | [lift_add](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/lift-add--b47c086ba5300ae9fbb15807.md) | 62 | `result-track:b47c086ba5300ae9fbb15807cb246484db938a042f4f270c5464894953991780` |
| 12 | `def` | [toNatHom](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/tonathom--82a7484edd67cf440accae58.md) | 68 | `declaration-track:82a7484edd67cf440accae58aa99bdb61e3c797b116bcd612e180575cbd1a9b3` |
| 13 | `lemma` | [coe_toNatHom](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/coe-tonathom--475054c6ec28b3db00946790.md) | 74 | `result-track:475054c6ec28b3db00946790cb8d46d876af60509d0f72d01318ebb2cc8277a1` |
| 14 | `lemma` | [toNatHom_apply](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/tonathom-apply--d68234425f3fdbb0d62c8eb0.md) | 76 | `result-track:d68234425f3fdbb0d62c8eb012e333430a7eab0d874bf64e9bfd01bb6b90a95f` |
| 15 | `theorem` | [toNat_mul](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/tonat-mul--59ae8b291f591742d8530a7a.md) | 78 | `result-track:59ae8b291f591742d8530a7abe0f055d095fd28dd53502ce4af5a1d7ff93a719` |
| 16 | `lemma` | [add_one_pos](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-one-pos--1f2f72a2f703f4516878ea05.md) | 86 | `result-track:1f2f72a2f703f4516878ea050c7cbe5f00586b832702d48b7a97dda962a6fa3b` |
| 17 | `lemma` | [natCast_lt_succ](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/natcast-lt-succ--15d68f8b1456ce80bf09baa5.md) | 89 | `result-track:15d68f8b1456ce80bf09baa5230cd34acdd90320ec6b3618fec798c732620cc5` |
| 18 | `lemma` | [le_sub_of_add_le_left](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/le-sub-of-add-le-left--912ff013d06098197533054e.md) | 94 | `result-track:912ff013d06098197533054ef0dae95d7107e14176156b11575007b05968a06a` |
| 19 | `lemma` | [le_sub_of_add_le_right](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/le-sub-of-add-le-right--7a8bab00df8285619b290a38.md) | 97 | `result-track:7a8bab00df8285619b290a38e2fe3b8ab12df5cacbf1828bf289229c79195e36` |
| 20 | `lemma` | [lt_add_left](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/lt-add-left--d4fdaf0eeeb94806c8dcdaa3.md) | 100 | `result-track:d4fdaf0eeeb94806c8dcdaa330d31807723df4b4f0d85b452b134cda0a9b41f9` |
| 21 | `lemma` | [sub_sub_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/sub-sub-cancel--9a3c99d65d6b2b762f3c8d58.md) | 104 | `result-track:9a3c99d65d6b2b762f3c8d58207388c857b40bd61bf955d83195c3902917d7e4` |
| 22 | `lemma` | [add_left_injective_of_ne_top](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-left-injective-of-ne-top--0ab5a501fe18e5161d98a48e.md) | 107 | `result-track:0ab5a501fe18e5161d98a48ee6b579c11e04ab285a172c444cec2321a3cb2458` |
| 23 | `lemma` | [add_right_injective_of_ne_top](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-right-injective-of-ne-top--d8d91423c0122a4dd25cf4a8.md) | 113 | `result-track:d8d91423c0122a4dd25cf4a8f192bb3a0ecf6031ca3f225675f972f15d620dd3` |
| 24 | `lemma` | [mul_right_strictMono](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/mul-right-strictmono--51563c085a702795c6b083d7.md) | 117 | `result-track:51563c085a702795c6b083d7feafdddeb1e313b33ab2157e75b2b62332a178e2` |
| 25 | `lemma` | [mul_left_strictMono](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/mul-left-strictmono--e2c89c143d46bd7df1be8688.md) | 120 | `result-track:e2c89c143d46bd7df1be8688e31e9cc7eaa4cc839891a3ec1fa2f45bab4bc7db` |
| 26 | `lemma` | [mul_le_mul_left_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/mul-le-mul-left-iff--c8db5a442445eae6a146ff0f.md) | 124 | `result-track:c8db5a442445eae6a146ff0f7cc4e3846aad5fb9d5398c8b2a01896f55a9a610` |
| 27 | `lemma` | [mul_le_mul_right_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/mul-le-mul-right-iff--a7a5dbdc851d463b77825d1e.md) | 128 | `result-track:a7a5dbdc851d463b77825d1eb4535ed299efa219e7c6e38cd18ee5265ea7a8f6` |
| 28 | `lemma` | [mul_le_mul_of_le_right](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/mul-le-mul-of-le-right--89185c6c3e010a724be4355c.md) | 132 | `result-track:89185c6c3e010a724be4355cc927a92ea1e34efa2a6128e906f37cd2155b3e4e` |
| 29 | `lemma` | [self_le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/self-le-mul-right--eda62a7f9a92b41e5e0fcfb9.md) | 136 | `result-track:eda62a7f9a92b41e5e0fcfb99978da8569b9292eacdfbf392ea313d03c07de81` |
| 30 | `lemma` | [self_le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/self-le-mul-left--214d61c982f8a36813f1d073.md) | 150 | `result-track:214d61c982f8a36813f1d073ef6aefd0cf16aeb4f363bf207ff03d7c5abd3c95` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/instance--7dcbb62491b4bc1de75cd18c.md) | 154 | `declaration-track:7dcbb62491b4bc1de75cd18c8d0c23a492e53c06563030b1917a414a3e5a0ca3` |
| 32 | `lemma` | [add_one_natCast_le_withTop_of_lt](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-one-natcast-le-withtop-of-lt--314afd43af03e621379bf587.md) | 169 | `result-track:314afd43af03e621379bf5871f2a6981f60024c30d132ad98bd18725c0326ec1` |
| 33 | `lemma` | [coe_top_add_one](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/coe-top-add-one--26f1cc5e83243a1d0aa6602d.md) | 175 | `result-track:26f1cc5e83243a1d0aa6602d81b97c8da7b6c375d9e9f56ad4a2039d47b4d739` |
| 34 | `lemma` | [add_one_eq_coe_top_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-one-eq-coe-top-iff--b44db9784dd48297dd3ff0cb.md) | 177 | `result-track:b44db9784dd48297dd3ff0cbd44fcde5a825b66c72070eafb8e632555bea82f1` |
| 35 | `lemma` | [natCast_ne_coe_top](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/natcast-ne-coe-top--5af2b1e453fb3ae61132b2d7.md) | 185 | `result-track:5af2b1e453fb3ae61132b2d7ca862e3c78e7246df17c5fb8d3f918b6ed088631` |
| 36 | `lemma` | [one_le_iff_ne_zero_withTop](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/one-le-iff-ne-zero-withtop--2d15e030e5729cbb0a8695d9.md) | 187 | `result-track:2d15e030e5729cbb0a8695d94044de7aa9f26a944141578b79a4ecd858588f6a` |
| 37 | `lemma` | [natCast_le_of_coe_top_le_withTop](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/natcast-le-of-coe-top-le-withtop--8b432762d4a6dd228ca526df.md) | 191 | `result-track:8b432762d4a6dd228ca526dff0c63668416dfd719c887a1f433fd71e4578b37f` |
| 38 | `lemma` | [natCast_lt_of_coe_top_le_withTop](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/natcast-lt-of-coe-top-le-withtop--455191cb337228abc6c584d1.md) | 194 | `result-track:455191cb337228abc6c584d11ce1273f334e09f610c01c486d57f466dc4c71bb` |
| 39 | `lemma` | [map_natCast_nonneg](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/map-natcast-nonneg--39cd8b17cc406e3c7e8d4ed9.md) | 200 | `result-track:39cd8b17cc406e3c7e8d4ed95adcf1a114c8a05d398e5a38431f7ead82db1f4b` |
| 40 | `lemma` | [map_natCast_strictMono](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/map-natcast-strictmono--afe1077884ce36a38292e7df.md) | 205 | `result-track:afe1077884ce36a38292e7df7a4797695cbeae8fae7729fd2f9e703d9a4f8443` |
| 41 | `lemma` | [map_natCast_injective](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/map-natcast-injective--b3186634934fd904042aca24.md) | 208 | `result-track:b3186634934fd904042aca246e2d6b2de455959c3042b5aae73f9beb9bb9fa95` |
| 42 | `lemma` | [map_natCast_inj](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/map-natcast-inj--b06c4da9ba7fcf7257cebf44.md) | 211 | `result-track:b06c4da9ba7fcf7257cebf448838532d88e53101ea51523c20fbaec812d9015f` |
| 43 | `lemma` | [map_natCast_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/map-natcast-eq-zero--05309538381cb99b7f59d27a.md) | 214 | `result-track:05309538381cb99b7f59d27aa8844f3d1da96da08cabaa8b2650b514616aaa51` |
| 44 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.MulTopPrime.Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.AddMonoidHom.ENatMap](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/root-grwtsk-algebra-grouptheory-multopprime-variant06a9bc7b4535cb91cd83a--b285037ba12d9ebdc98e037b.md) | 221 | `declaration-track:b285037ba12d9ebdc98e037b43b5370f0db090e641ba86102c35205e32f6bd2e` |
| 45 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.MulTopPrime.Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.MonoidWithZeroHom.ENatMap](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/root-grwtsk-algebra-grouptheory-multopprime-variant06a9bc7b4535cb91cd83a--adcf3b6754ad9337bcc50331.md) | 227 | `declaration-track:adcf3b6754ad9337bcc50331b32a8cddd56ad545df16ef4e2c01b05db362e412` |
| 46 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.MulTopPrime.Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.RingHom.ENatMap](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/root-grwtsk-algebra-grouptheory-multopprime-variant06a9bc7b4535cb91cd83a--429ddc23ab75652006bf3253.md) | 250 | `declaration-track:429ddc23ab75652006bf3253521d0df29010d64dabc40d2809988b25a3abebdf` |
| 47 | `lemma` | [map_natCast_mul](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/map-natcast-mul--0a2ef6dbfb307c7e28ae77e5.md) | 256 | `result-track:0a2ef6dbfb307c7e28ae77e5a79b3b0ea506cb5e3aafa09a6d725f9b5487c0b8` |
| 48 | `lemma` | [add_natCast_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-natcast-cancel--6a42bd49f0c486950bd8d0fb.md) | 263 | `result-track:6a42bd49f0c486950bd8d0fbbfbe64636a8ff667a8d018eebd3821d09ad514a6` |
| 49 | `lemma` | [add_one_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-one-cancel--c4124880345daa1eee0b838f.md) | 267 | `result-track:c4124880345daa1eee0b838fcc87818983b1f6265412c1f4da3672ddfee347a5` |
| 50 | `lemma` | [add_ofNat_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-ofnat-cancel--6420ea76d30da3c686575227.md) | 270 | `result-track:6420ea76d30da3c6865752272e9e9e66043733b303613ae50265ef860febecf6` |
| 51 | `lemma` | [natCast_add_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/natcast-add-cancel--a1217c272b0c24fb0aea37c3.md) | 275 | `result-track:a1217c272b0c24fb0aea37c35df42d7f57f720405ead09bd8846f71ea28b6d75` |
| 52 | `lemma` | [one_add_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/one-add-cancel--f9755cf0b94b2ddf376e2391.md) | 279 | `result-track:f9755cf0b94b2ddf376e2391dd99fb13d3649f81847f071c45650157963cc3b4` |
| 53 | `lemma` | [ofNat_add_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/ofnat-add-cancel--44bd29eb93bd85e299d019da.md) | 282 | `result-track:44bd29eb93bd85e299d019da7b976b68dc904ff96ca9938c8344e4369e3ad6da` |
| 54 | `lemma` | [add_le_add_natCast_right_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-le-add-natcast-right-iff--df216d4f5be2df7fb08751f9.md) | 286 | `result-track:df216d4f5be2df7fb08751f93dcd83340e6f60436b96adbaf636da59e05c4370` |
| 55 | `lemma` | [add_le_add_one_right_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-le-add-one-right-iff--cd249ced3483892f422d0541.md) | 289 | `result-track:cd249ced3483892f422d054136bfb0eabdf5399990c6d3f11f67951c4b6d1e8f` |
| 56 | `lemma` | [add_le_add_natCast_left_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-le-add-natcast-left-iff--a8e1003453c0c81557bef984.md) | 292 | `result-track:a8e1003453c0c81557bef984ccb9a9f733028d825ac98bfa2233d6efee9b64ed` |
| 57 | `lemma` | [add_le_add_one_left_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant94e3017536af675f0846b306bdd396d2ef6f3d0ef4a98ca56e75e82285a6d608.lean/declarations/add-le-add-one-left-iff--f9df11aac366c42f15cc9dee.md) | 295 | `result-track:f9df11aac366c42f15cc9dee0d8831f125f495dbd481aa3015d9d66617937a13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
