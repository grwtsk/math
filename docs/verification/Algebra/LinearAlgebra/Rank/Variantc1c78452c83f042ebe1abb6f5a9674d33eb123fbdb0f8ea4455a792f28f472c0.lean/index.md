# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71665b68d9db1603c30cba633b908fef4ff8ebcc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71665b68d9db1603c30cba633b908fef4ff8ebcc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank--d0c3dd56bc4e60cdede3e373.md) | 72 | `declaration-track:d0c3dd56bc4e60cdede3e37379fd8514fe71a6487e9489c0ea4c8a5f7a3744ed` |
| 2 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/polycharpoly-coeff-rank-ne-zero--939ab1059b5206827a47cfd5.md) | 74 | `result-track:939ab1059b5206827a47cfd5d6d6a3c309f2a399c8719d4614c6ed1b7a343bfb` |
| 3 | `lemma` | [rank_eq_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank-eq-nattrailingdegree--f59ef9d36fe00f0f3fa98ebd.md) | 78 | `result-track:f59ef9d36fe00f0f3fa98ebd9f8058116212d31f84cda7eabbaa1934fc4076ae` |
| 4 | `lemma` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank-le-card--7526413b74fb896246d1afb0.md) | 85 | `result-track:7526413b74fb896246d1afb0824fdb51264e7c1a94ae724ad67e53ed8d77eb70` |
| 5 | `lemma` | [rank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank-le-finrank--969967debf5998aaa47b8775.md) | 89 | `result-track:969967debf5998aaa47b877511caeb74a3d0eb36b93b14597c7a779064c9e55c` |
| 6 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank-le-nattrailingdegree-charpoly-ad--2184d94c8e9247d6e010fc2c.md) | 94 | `result-track:2184d94c8e9247d6e010fc2c6a683855d354896f598f3c7086f4e153e93c4a9f` |
| 7 | `def` | [IsRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/isregular--18c3954df7f08346876b6efc.md) | 101 | `declaration-track:18c3954df7f08346876b6efc631b45cc59bde2faab2ccfc53db583ac96e97c1d` |
| 8 | `lemma` | [isRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/isregular-def--7be89aa30f6cdbe7198d0519.md) | 103 | `result-track:7be89aa30f6cdbe7198d051949bf0edd4192e975bd67e7ad7edd7682e48431ba` |
| 9 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero--7e7d67bb47acf0079ece66d4.md) | 106 | `result-track:7e7d67bb47acf0079ece66d4e0dd3e5dbc1ddd0ddddcca332ad08e26f1dd4e8b` |
| 10 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank--ee231c74ee4ec3870aae987a.md) | 112 | `result-track:ee231c74ee4ec3870aae987a30f1b7c671ba3610d4f14a4cf968d0dc5fee8487` |
| 11 | `lemma` | [exists_isRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/exists-isregular-of-finrank-le-card--ac8ac31278f70c492721317f.md) | 121 | `result-track:ac8ac31278f70c492721317f8386ee5b545725a17d2c8ee1cdde26a782d2dfcf` |
| 12 | `lemma` | [exists_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/exists-isregular--6b94cfdf6872cd9900d3cd77.md) | 125 | `result-track:6b94cfdf6872cd9900d3cd774cf693489aa5bbac913a50a9eb3c0e58de2a3fc9` |
| 13 | `abbrev` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank--889ac998149aa928fe06aa55.md) | 146 | `declaration-track:889ac998149aa928fe06aa554b2ee45f90984736f84fa0e9d8ad750934083376` |
| 14 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/polycharpoly-coeff-rank-ne-zero--776f37d6d6e857f125af3515.md) | 148 | `result-track:776f37d6d6e857f125af3515773e98ced611da5fd35394f687b65094452d6cd0` |
| 15 | `lemma` | [rank_eq_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank-eq-nattrailingdegree--e2aa1a374e779e3627bd993b.md) | 152 | `result-track:e2aa1a374e779e3627bd993be60ee8ad27c5fc234853df1c04978634c5c142e6` |
| 16 | `lemma` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank-le-card--e76ff1ef8eaecf2d28d6c63e.md) | 159 | `result-track:e76ff1ef8eaecf2d28d6c63e853eebb7b4c93d175c0e8d8774f82f1a7d291f06` |
| 17 | `lemma` | [rank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank-le-finrank--c366173b67863dcf5619badc.md) | 162 | `result-track:c366173b67863dcf5619badcf335e49b7f39e9422ab4367484cdeef1e73303b9` |
| 18 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank-le-nattrailingdegree-charpoly-ad--b853278de493f0d2da5272e9.md) | 167 | `result-track:b853278de493f0d2da5272e9168e6358f90b41ae5bff8019b1fde5d62daa40e4` |
| 19 | `abbrev` | [IsRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/isregular--e36d7151eaa9abeda76c3f3a.md) | 174 | `declaration-track:e36d7151eaa9abeda76c3f3a20c9befb47d2f83580be784dc61e9350b47a79ce` |
| 20 | `lemma` | [isRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/isregular-def--6fc64588df6132d0ab97783a.md) | 176 | `result-track:6fc64588df6132d0ab97783aa7e8fc1f3a1c6182592025093fd7c4da32809508` |
| 21 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero--0084c950decdd05c91a1d16d.md) | 179 | `result-track:0084c950decdd05c91a1d16d239b124fca3da582ac0e830ecee9069b69ca3d33` |
| 22 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank--3dc4d587389eeb575b1851cd.md) | 185 | `result-track:3dc4d587389eeb575b1851cd86866d8b3a956a07a58aea4736f9cd3fc0f57eb8` |
| 23 | `lemma` | [exists_isRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/exists-isregular-of-finrank-le-card--2ac6f48f1566f910101a144a.md) | 194 | `result-track:2ac6f48f1566f910101a144aa99f7058d3e863070c49ff78cddfbeb4ceb0222f` |
| 24 | `lemma` | [exists_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/exists-isregular--ac2cc4ea6868ef6a6547631e.md) | 198 | `result-track:ac2cc4ea6868ef6a6547631ebdfc7b86391b7daeda75560657d3835ff177b0ec` |
| 25 | `lemma` | [finrank_engel](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/finrank-engel--cdf4cc592d4969ba4c79cbc4.md) | 211 | `result-track:cdf4cc592d4969ba4c79cbc419c36945da26fc1a6efb3a8ac07523a2a99edfda` |
| 26 | `lemma` | [rank_le_finrank_engel](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/rank-le-finrank-engel--6ed8ff715a5309d23c2f08ab.md) | 215 | `result-track:6ed8ff715a5309d23c2f08ab5c78c29e9f9e6352133fe68436fb59f6dca11273` |
| 27 | `lemma` | [isRegular_iff_finrank_engel_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variantc1c78452c83f042ebe1abb6f5a9674d33eb123fbdb0f8ea4455a792f28f472c0.lean/declarations/isregular-iff-finrank-engel-eq-rank--f6cf2668712a9e2324fc7c19.md) | 220 | `result-track:f6cf2668712a9e2324fc7c193020a85eac97dbf8baa7c4f8c561352e236f8137` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
