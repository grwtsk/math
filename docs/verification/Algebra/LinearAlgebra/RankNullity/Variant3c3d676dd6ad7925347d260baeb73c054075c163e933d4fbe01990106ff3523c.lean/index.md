# Verification target: GRWTSK.Algebra.LinearAlgebra.RankNullity.Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fe0c83eda59b8d829f0f7f82423ea5e67a1a547",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fe0c83eda59b8d829f0f7f82423ea5e67a1a547`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean.json)

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
| 1 | `class` | [HasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/hasranknullity--24a661d3c1f6d4c55594caf9.md) | 60 | `declaration-track:24a661d3c1f6d4c55594caf9dc63642d8711c069bdff27071b743669f3b0c4ec` |
| 2 | `lemma` | [Submodule.rank_quotient_add_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/submodule-rank-quotient-add-rank--bafa560c6cb317e63f3dbaa9.md) | 68 | `result-track:bafa560c6cb317e63f3dbaa99914e5bb3d4e6161a0f3e939a09d6a6043f2713c` |
| 3 | `lemma` | [exists_set_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/exists-set-linearindependent--a9999e2b6bf49087adff1ddf.md) | 73 | `result-track:a9999e2b6bf49087adff1ddf2ad6ee9d5d12d195f07a6ac4f50e87f62d580187` |
| 4 | `theorem` | [nontrivial_of_hasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/nontrivial-of-hasranknullity--173d1b8468e6b46fa0e9e65e.md) | 78 | `result-track:173d1b8468e6b46fa0e9e65e8aca63254e144a3d353a3883b87b4d1fb72e9090` |
| 5 | `theorem` | [LinearMap.lift_rank_range_add_rank_ker](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/linearmap-lift-rank-range-add-rank-ker--93367699ed63a5360d9c8d4a.md) | 85 | `result-track:93367699ed63a5360d9c8d4aa9fc9a47dbccd13bd3a384797a598d0c7dfc944f` |
| 6 | `theorem` | [LinearMap.rank_range_add_rank_ker](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/linearmap-rank-range-add-rank-ker--02e8747d734a7cb91ebee059.md) | 92 | `result-track:02e8747d734a7cb91ebee059599ceb8a9c32128d734bf8435c22d4e1ef70142b` |
| 7 | `theorem` | [LinearMap.lift_rank_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/linearmap-lift-rank-eq-of-surjective--db430a3136cbda8c3891baa4.md) | 97 | `result-track:db430a3136cbda8c3891baa40cde90f3eaa93b90dba3cd3afe4cea83eb33d709` |
| 8 | `theorem` | [LinearMap.rank_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/linearmap-rank-eq-of-surjective--ea124df2d7141b85f127a908.md) | 102 | `result-track:ea124df2d7141b85f127a9086492c5a74a7effbb3995ca6962d84dff5fd13008` |
| 9 | `theorem` | [LinearMap.lift_rank_comap_le](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/linearmap-lift-rank-comap-le--0f90f26df1501f3e9f28687e.md) | 106 | `result-track:0f90f26df1501f3e9f28687e98f3b397c10558f764fb63c714135b461d1ac604` |
| 10 | `lemma` | [LinearMap.rank_quot_submodule_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/linearmap-rank-quot-submodule-map-eq--f0ef2cad74d9a7ba8571a96f.md) | 118 | `result-track:f0ef2cad74d9a7ba8571a96f8660f1a492ce441b06e7ee4db56a66f8293d32d0` |
| 11 | `theorem` | [LinearMap.lift_rank_quot_map_le](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/linearmap-lift-rank-quot-map-le--f5bf9ee038139ff3f3c75425.md) | 136 | `result-track:f5bf9ee038139ff3f3c7542574887f624f0d4bc53735ddfd7d489c5cbf910b79` |
| 12 | `theorem` | [exists_linearIndepOn_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/exists-linearindepon-of-lt-rank--ef5f32f0cfbf98c3f85b9082.md) | 145 | `result-track:ef5f32f0cfbf98c3f85b9082c0bc362f1f89d15ab07ca168fd1c94a898a095b8` |
| 13 | `theorem` | [exists_linearIndependent_cons_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/exists-linearindependent-cons-of-lt-rank--d7e762efa559c0dc962acd11.md) | 167 | `result-track:d7e762efa559c0dc962acd117aba916a8a2bd6d2792b1e07e88620718258365c` |
| 14 | `theorem` | [exists_linearIndependent_snoc_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/exists-linearindependent-snoc-of-lt-rank--7a8633c613772c6a2c0185ca.md) | 181 | `result-track:7a8633c613772c6a2c0185ca87856ffb0eb6f8d166bf13a32d3c41f9a9952bbe` |
| 15 | `theorem` | [exists_linearIndependent_pair_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/exists-linearindependent-pair-of-one-lt-rank--14a12c6fdb653db94c9193f0.md) | 190 | `result-track:14a12c6fdb653db94c9193f02a3194678a721e41ae7bbcb7341d1cdca5d352a0` |
| 16 | `theorem` | [Submodule.exists_smul_notMem_of_rank_lt](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/submodule-exists-smul-notmem-of-rank-lt--4a801bbb3e78a0899235cb3f.md) | 198 | `result-track:4a801bbb3e78a0899235cb3f43a3104066cf981ca62fb888820200d6e7fd66cf` |
| 17 | `theorem` | [Submodule.rank_sup_add_rank_inf_eq](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/submodule-rank-sup-add-rank-inf-eq--0d0baa2d7c478f011b18f60a.md) | 211 | `result-track:0d0baa2d7c478f011b18f60a64ea072b836c7e0adaacff2eccbb38a44df2f80d` |
| 18 | `theorem` | [Submodule.rank_add_le_rank_add_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/submodule-rank-add-le-rank-add-rank--0ad20bc5170b9edf4ac043bf.md) | 222 | `result-track:0ad20bc5170b9edf4ac043bf0f0e9dc4dfb571cd2ed4b564201928efdca1f867` |
| 19 | `theorem` | [exists_linearIndependent_snoc_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/exists-linearindependent-snoc-of-lt-finrank--99fb913cf6f11e2b4dd2c38a.md) | 235 | `result-track:99fb913cf6f11e2b4dd2c38aae968f375abd7c05bd1f0cfd505f4fb606e69196` |
| 20 | `theorem` | [exists_linearIndependent_cons_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/exists-linearindependent-cons-of-lt-finrank--f2e342593d1e9d64f67a2542.md) | 242 | `result-track:f2e342593d1e9d64f67a25429860fdefc7a3a7acf31637b41ec0ebb42576fec1` |
| 21 | `theorem` | [exists_linearIndependent_pair_of_one_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/exists-linearindependent-pair-of-one-lt-finrank--03eaf3efb640124f3220ce3b.md) | 249 | `result-track:03eaf3efb640124f3220ce3b7232d64996d5ee1c3ecfb8657126d6d6764d9cb2` |
| 22 | `lemma` | [Submodule.finrank_quotient_add_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/submodule-finrank-quotient-add-finrank--38879be2f372ea7222109eca.md) | 255 | `result-track:38879be2f372ea7222109ecaa3ab491a3abe2a62b79a4ed181a6a2bfaa74c3dc` |
| 23 | `lemma` | [Submodule.finrank_quotient](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/submodule-finrank-quotient--264537b4afd5dab095f5803f.md) | 262 | `result-track:264537b4afd5dab095f5803fc1fab9c6e70a75f21d3a3290ebba2d8da2499712` |
| 24 | `lemma` | [Submodule.disjoint_ker_of_finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/submodule-disjoint-ker-of-finrank-le--3876e0a1146799a6e816761c.md) | 267 | `result-track:3876e0a1146799a6e816761cfd1f7c1b10113ef07a90e0e50d49be6642ab84d4` |
| 25 | `lemma` | [Submodule.exists_of_finrank_lt](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/declarations/submodule-exists-of-finrank-lt--07f6bd17644736a9ed5d6958.md) | 287 | `result-track:07f6bd17644736a9ed5d69589f3cdeb63997444608979fd7dfd351ab93be6799` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
