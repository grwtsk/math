# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d020bf661694c3d0d8bd0c5d3718a8154181b177",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d020bf661694c3d0d8bd0c5d3718a8154181b177`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Scalar` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smulCommClass_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smulcommclass-finset--92c346422931b5285ff573e8.md) | 42 | `declaration-track:92c346422931b5285ff573e877244e7e2735f57b848af7e18e2d63435add48e4` |
| 2 | `instance` | [smulCommClass_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smulcommclass-finset--21486cb4149a7de3721ea0fc.md) | 47 | `declaration-track:21486cb4149a7de3721ea0fc9dba95ead9e2de86942c0dee06e0c2208dd386f4` |
| 3 | `instance` | [smulCommClass_finset''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smulcommclass-finset--6f8acd8efcd36be0d5de4d0b.md) | 52 | `declaration-track:6f8acd8efcd36be0d5de4d0b688eafd3248287ad5cb42a939665cbd9dd9f1303` |
| 4 | `instance` | [smulCommClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smulcommclass--f16d24cde311f484da473c81.md) | 58 | `declaration-track:f16d24cde311f484da473c8107f9ae06921ffd0f48a5f34758acf85596b2e975` |
| 5 | `instance` | [isScalarTower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/isscalartower--2a0e1a9f920afb62f71de034.md) | 63 | `declaration-track:2a0e1a9f920afb62f71de03494c80ae3f4cf3d2666fb5fd78d308a576a1c9c89` |
| 6 | `instance` | [isScalarTower'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/isscalartower--d1c2ebcacb67eff8cc465688.md) | 70 | `declaration-track:d1c2ebcacb67eff8cc4656884a3bcd6763dd4414dc755b0de31c9efa700f9031` |
| 7 | `instance` | [isScalarTower''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/isscalartower--41b098eea8638f6bb98178f8.md) | 75 | `declaration-track:41b098eea8638f6bb98178f88eaffd9345819fc889b269a9b502a4fbc42d850f` |
| 8 | `instance` | [isCentralScalar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/iscentralscalar--cee876be572bf460d4fe9de9.md) | 80 | `declaration-track:cee876be572bf460d4fe9de94f6e98f6786f832c0b7ee61d1e6975e82941c4b4` |
| 9 | `def` | [mulAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/mulaction--2c276bc47fbabe21886097f0.md) | 95 | `declaration-track:2c276bc47fbabe21886097f00809e00772363a9959d8499ff1d1aebeae2ab358` |
| 10 | `def` | [mulActionFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/mulactionfinset--1b9c841138278ac6f5b220a5.md) | 105 | `declaration-track:1b9c841138278ac6f5b220a5744d00a8d6328ebb493ed7be3b39bc9d66fc0241` |
| 11 | `lemma` | [mul_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/mul-singleton--6bc8b78b261368f6782c4247.md) | 119 | `result-track:6bc8b78b261368f6782c4247faea51f89075586d5b417b8947a13dd259e71010` |
| 12 | `lemma` | [singleton_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/singleton-mul--1a8d064e37db488f3941fc6b.md) | 120 | `result-track:1a8d064e37db488f3941fc6b58e099ed19e73a265f89a64ca9cfc489dcbf3476` |
| 13 | `lemma` | [smul_finset_subset_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smul-finset-subset-mul--1f673af63d6426c79c5edcf1.md) | 122 | `result-track:1f673af63d6426c79c5edcf1559dcad85700a4439fb1494f9b82c81c19a6e120` |
| 14 | `theorem` | [op_smul_finset_subset_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/op-smul-finset-subset-mul--6fe24ea11e68c1c5db85b978.md) | 125 | `result-track:6fe24ea11e68c1c5db85b97854d022347bde512ef8afebda8605d8740ce8b163` |
| 15 | `theorem` | [biUnion_op_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/biunion-op-smul-finset--b1a74a2a536b0815fd623b0a.md) | 129 | `result-track:b1a74a2a536b0815fd623b0abd6cefdb2688d5203ae9b567a10989f3b8c0f6ca` |
| 16 | `theorem` | [mul_subset_iff_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/mul-subset-iff-left--14647d0ee3fa928709bf92a0.md) | 133 | `result-track:14647d0ee3fa928709bf92a0c2e9d3cff93ad9f3ab420c49c1b05d9808033bd8` |
| 17 | `theorem` | [mul_subset_iff_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/mul-subset-iff-right--6ff755abbc0db2ea1ff26856.md) | 137 | `result-track:6ff755abbc0db2ea1ff268563b7a40c3eaa8b5e7240c81b61cbe71c369c2124f` |
| 18 | `theorem` | [op_smul_finset_mul_eq_mul_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/op-smul-finset-mul-eq-mul-smul-finset--ca2e86515be69f4d3814bf04.md) | 147 | `result-track:ca2e86515be69f4d3814bf04ab3208de3743563a5bf87ac8f5a976b3de2645b5` |
| 19 | `theorem` | [pairwiseDisjoint_smul_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/pairwisedisjoint-smul-iff--4b0f3e5e5b4cb1ea1049a113.md) | 157 | `result-track:4b0f3e5e5b4cb1ea1049a113957e677194d14fce9a8a92fca9dfc2803fb6cd1b` |
| 20 | `theorem` | [image_smul_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/image-smul-distrib--2f87043c9dd9ac58fa7e56a2.md) | 164 | `result-track:2f87043c9dd9ac58fa7e56a2143b6bef32b2916df7fc5a281a26c60c18107b77` |
| 21 | `theorem` | [smul_mem_smul_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smul-mem-smul-finset-iff--48ac28aac5817ab9b31e990f.md) | 173 | `result-track:48ac28aac5817ab9b31e990f12c3968f94f0da1ab3799451db6f4195ea52883f` |
| 22 | `theorem` | [inv_smul_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/inv-smul-mem-iff--6260eca431723c80364624aa.md) | 177 | `result-track:6260eca431723c80364624aab7a49be57f87517b774c9df642efdb0f0be3ede1` |
| 23 | `theorem` | [mem_inv_smul_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/mem-inv-smul-finset-iff--c86fb701ffe70ac147e35464.md) | 181 | `result-track:c86fb701ffe70ac147e3546460af6f7e2b7607fbb304dde4df2d237cd24d6420` |
| 24 | `theorem` | [smul_finset_subset_smul_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smul-finset-subset-smul-finset-iff--0c75fbf5a5b967c9ec5cfdd6.md) | 185 | `result-track:0c75fbf5a5b967c9ec5cfdd63288bb62d6134179793282da923722b721c8cfca` |
| 25 | `theorem` | [smul_finset_subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smul-finset-subset-iff--8a0f43bd267798d8752f1cfd.md) | 189 | `result-track:8a0f43bd267798d8752f1cfd8129f183a20bcf24987ede1962b2f548ebd2a8b1` |
| 26 | `theorem` | [subset_smul_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/subset-smul-finset-iff--32b4f259a25be52cf4d5710b.md) | 195 | `result-track:32b4f259a25be52cf4d5710b0840472e156611deb2639cc993ddfdebf6928aea` |
| 27 | `theorem` | [smul_finset_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smul-finset-inter--40e85279ecaed1f7048fe2b0.md) | 201 | `result-track:40e85279ecaed1f7048fe2b0f071eb44fbc38dc648e8cd262c9fa143eb712dc1` |
| 28 | `theorem` | [smul_finset_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smul-finset-sdiff--f13b7ac0a7f40f1fe5a3e9d7.md) | 205 | `result-track:f13b7ac0a7f40f1fe5a3e9d7f823e4eeb93027895d0e40fb5c766de34dc8f117` |
| 29 | `theorem` | [smul_finset_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smul-finset-symmdiff--57d55ded1827017466eba809.md) | 210 | `result-track:57d55ded1827017466eba809b5139ca8ffff03a5f78103c3748b887340738d04` |
| 30 | `theorem` | [smul_finset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smul-finset-univ--4983e8358f5516c36d07159b.md) | 214 | `result-track:4983e8358f5516c36d07159b23437734960235c1898a339bbf11b2d3023eab73` |
| 31 | `theorem` | [smul_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/smul-univ--a44bc6adf09e8590e1a38997.md) | 218 | `result-track:a44bc6adf09e8590e1a38997c14f7b6af5e2e67558469b61b7e6a1767e7b5b45` |
| 32 | `theorem` | [card_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/card-smul-finset--75d4e13dea88552779c181cd.md) | 224 | `result-track:75d4e13dea88552779c181cd15310c84beaeb6dc1b418f22419566266b6651c7` |
| 33 | `theorem` | [card_dvd_card_smul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/card-dvd-card-smul-right--e0f1d705376b29b17326d87d.md) | 231 | `result-track:e0f1d705376b29b17326d87db0e83e398935416cf4cd4702238297ad895e9834` |
| 34 | `theorem` | [card_dvd_card_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/card-dvd-card-mul-left--330c107a904c0fb6d1181fce.md) | 241 | `result-track:330c107a904c0fb6d1181fcea1436027665365561e695cb2fcafaac1990ab641` |
| 35 | `theorem` | [card_dvd_card_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/card-dvd-card-mul-right--0790432349e17cf7d0134b9c.md) | 250 | `result-track:0790432349e17cf7d0134b9ca83229c367dd8b79895fb4f60f0039acb37296d8` |
| 36 | `lemma` | [inv_smul_finset_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/inv-smul-finset-distrib--b152a9abe0f62a23561a02c7.md) | 255 | `result-track:b152a9abe0f62a23561a02c7ded0dc24cca4dcc8a2c6af1b98a5df52126ce47f` |
| 37 | `lemma` | [inv_op_smul_finset_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/inv-op-smul-finset-distrib--90befe4c28c27f460903433a.md) | 259 | `result-track:90befe4c28c27f460903433a6bdabb0a73c63f1ec4e22edaaae173359c2386bf` |
| 38 | `lemma` | [piFinset_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/pifinset-smul--ca1f94b0719d27f82c355e30.md) | 269 | `result-track:ca1f94b0719d27f82c355e3073fa7b598e730235d4d52d768930e8386a986102` |
| 39 | `lemma` | [piFinset_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/pifinset-smul-finset--8c3df06c12cd7d958a3a3e00.md) | 273 | `result-track:8c3df06c12cd7d958a3a3e0075678b111a6023417e8857178758da16650786b2` |
| 40 | `instance` | [Nat.decidablePred_mem_vadd_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant34c5d87ec47516703b488abf40e8df641b42b5d265fc9599bf299a323bc9e0c6.lean/declarations/nat-decidablepred-mem-vadd-set--491c0a34ea2df2843dc35f86.md) | 281 | `declaration-track:491c0a34ea2df2843dc35f86d0269c70ce03255b02f719a53bdae42949337763` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
