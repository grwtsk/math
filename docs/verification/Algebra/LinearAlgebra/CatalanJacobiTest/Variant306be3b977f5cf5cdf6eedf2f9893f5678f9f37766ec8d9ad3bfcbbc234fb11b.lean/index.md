# Verification target: GRWTSK.Algebra.LinearAlgebra.CatalanJacobiTest.Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39da14536f6413ab19e984562b75a9212cd679d5",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39da14536f6413ab19e984562b75a9212cd679d5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DyckWord` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Catalan` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [consEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/consembedding--c1436428459f547e8fe1f122.md) | 9 | `declaration-track:c1436428459f547e8fe1f122549743fa8de9cda316c642bb36aeb31d7a7f27c8` |
| 2 | `lemma` | [consEmbedding_apply](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/consembedding-apply--a2eb724de597f2765e8df6ec.md) | 12 | `result-track:a2eb724de597f2765e8df6ec642ab7b0b7999c5b16fcf7c7feac47feff1f729e` |
| 3 | `def` | [paths](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/paths--7af3f67ecf86d3a6bebb808a.md) | 15 | `declaration-track:7af3f67ecf86d3a6bebb808a2f4746d76ba2018a4a37a27dd317673c8bb6addf` |
| 4 | `def` | [Nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/nonnegative--409dc7f77fcf1baf34a03d82.md) | 21 | `declaration-track:409dc7f77fcf1baf34a03d823a90b2c04ee0d9f14cdce407adb3141dc0262d3c` |
| 5 | `lemma` | [nonnegative_cons_U](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/nonnegative-cons-u--5fde10053d589878917e09fb.md) | 24 | `result-track:5fde10053d589878917e09fb2d07935a319cd935eee28425e4761791e1a33853` |
| 6 | `lemma` | [nonnegative_cons_D](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/nonnegative-cons-d--a6270972f1132d37a03d5bf6.md) | 34 | `result-track:a6270972f1132d37a03d5bf675081cbe90b8f102f1c5cc4b2bd49eb2ffe51bdc` |
| 7 | `lemma` | [not_nonnegative_cons_D_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/not-nonnegative-cons-d-zero--a2ad760f1bebcdd3f89cee10.md) | 46 | `result-track:a2ad760f1bebcdd3f89cee10ab213ea5fdf83deab7f758ba4bd74cc0b998c1c4` |
| 8 | `lemma` | [mem_paths](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/mem-paths--52201e8bc03cc2c6b9fb52ea.md) | 52 | `result-track:52201e8bc03cc2c6b9fb52ea32176a0cd182f6774d57d57822a3a51e1de4b2aa` |
| 9 | `lemma` | [paths_union_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/paths-union-disjoint--b75954f4aaf8bbe3af012fe7.md) | 79 | `result-track:b75954f4aaf8bbe3af012fe74c04e394a4ca8ee837ba786888fa1282634788f2` |
| 10 | `lemma` | [card_paths_succ_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/card-paths-succ-zero--67f41d42b84dbe74dc22364f.md) | 84 | `result-track:67f41d42b84dbe74dc22364f0e9d83cf7dbff1b3629c59496663f8e33fa66a79` |
| 11 | `lemma` | [card_paths_succ_succ](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/card-paths-succ-succ--2d58cc931e4be0d1f3570223.md) | 87 | `result-track:2d58cc931e4be0d1f3570223ce68a9a205a880094b10828c4f04ff3fe980495b` |
| 12 | `lemma` | [length_eq_counts](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/length-eq-counts--4f41c1ce08173ae23190d071.md) | 93 | `result-track:4f41c1ce08173ae23190d07105ca21c3be88a814e5445fe9228df84b5e588a80` |
| 13 | `def` | [returningPathsEquivDyck](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/returningpathsequivdyck--88496f78940b95a37e294970.md) | 100 | `declaration-track:88496f78940b95a37e2949701288f0aece55e391fac1ec41a2a1dd69b672f949` |
| 14 | `lemma` | [card_paths_even](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/card-paths-even--85f71138faa888ac08ddf884.md) | 118 | `result-track:85f71138faa888ac08ddf884438991aef731ed9f936b2375360964d0c661370e` |
| 15 | `lemma` | [paths_odd_eq_empty](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/paths-odd-eq-empty--71bad5fada81bddf15d9a1ec.md) | 122 | `result-track:71bad5fada81bddf15d9a1ecc905a547a5578bd9972dec275ebbdd13a7f43c1e` |
| 16 | `lemma` | [paths_eq_empty_of_length_lt_height](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/paths-eq-empty-of-length-lt-height--1021f8a0c7976f3cd37b5cff.md) | 130 | `result-track:1021f8a0c7976f3cd37b5cffc7f9ed05fb16ab0b03e03a8bc5cf79ef0f11270c` |
| 17 | `def` | [Jfree](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/jfree--bab6634e82910e3286f342e5.md) | 141 | `declaration-track:bab6634e82910e3286f342e59a75a8dca868b6f814e8891c92372e8822ff8ac5` |
| 18 | `lemma` | [Jfree_apply_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/jfree-apply-zero--be70b30c2791a2d0ed52e65d.md) | 145 | `result-track:be70b30c2791a2d0ed52e65d22b0072e0d1a661afb5592d81ead32ada6e185b3` |
| 19 | `lemma` | [Jfree_apply_succ](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/jfree-apply-succ--f6e45fd67b9ea7af5e16660b.md) | 149 | `result-track:f6e45fd67b9ea7af5e16660b1c971193faba3811b1f025da72ae42d225c068e6` |
| 20 | `def` | [basisVector](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/basisvector--d2d6ae82f722b88455ccd45f.md) | 154 | `declaration-track:d2d6ae82f722b88455ccd45fa3da67a35eea8d594769c0e9b5410d74b4a2c192` |
| 21 | `lemma` | [Jfree_basis_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/jfree-basis-zero--5a626fc682d046ff2a11b3d8.md) | 156 | `result-track:5a626fc682d046ff2a11b3d85af1e60d62354e220597a8747310ab02d65dcd6d` |
| 22 | `lemma` | [Jfree_basis_succ](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/jfree-basis-succ--c4b652efe044158e0b34f1b4.md) | 165 | `result-track:c4b652efe044158e0b34f1b4e56931b56aa8e4db5a741ff28100e5f1fd6e92fd` |
| 23 | `def` | [cyclicCoefficient](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/cycliccoefficient--948bfbb356ad2dfe992ac60e.md) | 177 | `declaration-track:948bfbb356ad2dfe992ac60e6392c35e5711176a8bc34c0b8f9d9288ec94cb6e` |
| 24 | `lemma` | [power_basis_eq_card_paths](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/power-basis-eq-card-paths--071e3541897825c27ee49a13.md) | 180 | `result-track:071e3541897825c27ee49a13ed3793ea44e3e7a856bd71b0973a8619a074302a` |
| 25 | `lemma` | [cyclicCoefficient_even](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/cycliccoefficient-even--88de1e5de0d1e9985a742cf4.md) | 192 | `result-track:88de1e5de0d1e9985a742cf4267392b6a7f242c8d1ce95761193b405b4f2c29f` |
| 26 | `lemma` | [cyclicCoefficient_odd](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/cycliccoefficient-odd--4eb7a7a02ed2302c56f033b9.md) | 196 | `result-track:4eb7a7a02ed2302c56f033b9d2c1e1b97964c2549e1badb96ab746da4df2ae2d` |
| 27 | `lemma` | [cyclicCoefficient_one](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/cycliccoefficient-one--a66c2b0d83329371db82d9af.md) | 200 | `result-track:a66c2b0d83329371db82d9af2b9349db711ec1e6607f8627555ad6a1c369a2ee` |
| 28 | `lemma` | [power_basis_support_bound](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/power-basis-support-bound--1a0a08f2c875d90f7c675df6.md) | 203 | `result-track:1a0a08f2c875d90f7c675df696410b378a3603c952bee24e67302819a10ea591` |
| 29 | `def` | [pairing](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/pairing--6a60449dda6bf9b95ae48741.md) | 210 | `declaration-track:6a60449dda6bf9b95ae48741a5a0c489e83a21b95e599751b3329ec7208f6d5d` |
| 30 | `lemma` | [pairing_basis_zero](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/pairing-basis-zero--b11464e2f885f133a9f95c81.md) | 212 | `result-track:b11464e2f885f133a9f95c8154660c20b1c0dc32c2850c323983ba232dc6f4cb` |
| 31 | `lemma` | [free_even_moment](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/free-even-moment--187caf5e258bd04daed370b8.md) | 215 | `result-track:187caf5e258bd04daed370b8e140e0f9c2e15d4fc9daf0d0d63864d3a2698cc2` |
| 32 | `lemma` | [free_odd_moment](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/free-odd-moment--2e4c2f6e16838af17d802ee0.md) | 220 | `result-track:2e4c2f6e16838af17d802ee08c43f3c31cbe4b6ad3c0a4ce1485fb3727be3c1f` |
| 33 | `def` | [evenMomentSeries](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/evenmomentseries--1a1709bfbab6b6cc62fcc804.md) | 229 | `declaration-track:1a1709bfbab6b6cc62fcc804a061e300e7ae722de4f5f2dd8e00099a6246896e` |
| 34 | `lemma` | [evenMomentSeries_eq_catalanSeries](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/evenmomentseries-eq-catalanseries--f9781949a8bd827712405636.md) | 232 | `result-track:f9781949a8bd827712405636aa79c357b4e52f3ee4a50202a1e2bee0fa7d0d6b` |
| 35 | `lemma` | [evenMomentSeries_fixed_point](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/evenmomentseries-fixed-point--c24765e3f0cf52b8cec1faa7.md) | 236 | `result-track:c24765e3f0cf52b8cec1faa7ee3ac66dc48ea49a67f3d324cb41dd37361baf9c` |
| 36 | `lemma` | [cyclicCoefficient_even_normalization](../../../../../mathematics/Algebra/LinearAlgebra/CatalanJacobiTest/Variant306be3b977f5cf5cdf6eedf2f9893f5678f9f37766ec8d9ad3bfcbbc234fb11b.lean/declarations/cycliccoefficient-even-normalization--60ec95fff52330775754bcd4.md) | 241 | `result-track:60ec95fff52330775754bcd4ab311df9ada6069754273a8cece89c01d2ecd624` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
