# Verification target: GRWTSK.Algebra.LinearAlgebra.RankNullity.Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daaf467a9ec0eca0330d167d074eeb610d1c6549",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daaf467a9ec0eca0330d167d074eeb610d1c6549`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean.json)

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
| 1 | `class` | [HasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/hasranknullity--dbd0bd84ae6a566f4e56e656.md) | 52 | `declaration-track:dbd0bd84ae6a566f4e56e656fb410e314c7ae725ac0cd23c69c893439677d54a` |
| 2 | `lemma` | [Submodule.rank_quotient_add_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/submodule-rank-quotient-add-rank--fc6a0b2101ed9f0b31156a68.md) | 60 | `result-track:fc6a0b2101ed9f0b31156a68ad8ca088a9741f5e3e2b46c271e4ca7f908f48ba` |
| 3 | `lemma` | [exists_set_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/exists-set-linearindependent--28a3b846e2590ddf5511dc8c.md) | 65 | `result-track:28a3b846e2590ddf5511dc8ca060581aa9067f7819266e13c7935a606061ae90` |
| 4 | `theorem` | [nontrivial_of_hasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/nontrivial-of-hasranknullity--5f1a8599c0f1b66eae60097b.md) | 70 | `result-track:5f1a8599c0f1b66eae60097b4384e0bcf4800eea9c90ba5b40104dbbe2cf5ca4` |
| 5 | `theorem` | [LinearMap.lift_rank_range_add_rank_ker](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/linearmap-lift-rank-range-add-rank-ker--bbbfd743fbedf195bb0d4b42.md) | 77 | `result-track:bbbfd743fbedf195bb0d4b426f632a802788f87dffa230e806673f124b1cfd6e` |
| 6 | `theorem` | [LinearMap.rank_range_add_rank_ker](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/linearmap-rank-range-add-rank-ker--02892f398f824b1f5461c147.md) | 84 | `result-track:02892f398f824b1f5461c147b75aaa332d26a539ced00d1d2894e5d8b299fec8` |
| 7 | `theorem` | [LinearMap.lift_rank_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/linearmap-lift-rank-eq-of-surjective--608047792f653488b065273d.md) | 89 | `result-track:608047792f653488b065273d6f650c444d2b091b25636a583599ea9f50cb661c` |
| 8 | `theorem` | [LinearMap.rank_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/linearmap-rank-eq-of-surjective--7b0b442eb0bc2f7cf2bc35d8.md) | 94 | `result-track:7b0b442eb0bc2f7cf2bc35d8a0095cc85e2b93821e524b6ad3b5abb1cb42b70a` |
| 9 | `theorem` | [LinearMap.lift_rank_comap_le](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/linearmap-lift-rank-comap-le--da7bcac90b4b8e7b5dfe9cfe.md) | 98 | `result-track:da7bcac90b4b8e7b5dfe9cfe7199e76f33248a8512df10728e9460b590374a81` |
| 10 | `lemma` | [LinearMap.rank_quot_submodule_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/linearmap-rank-quot-submodule-map-eq--5c6c1d7cd9244b1f11815e5f.md) | 110 | `result-track:5c6c1d7cd9244b1f11815e5f69a0484ab84212d9067e970dd9afa1e1ba8865d3` |
| 11 | `theorem` | [LinearMap.lift_rank_quot_map_le](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/linearmap-lift-rank-quot-map-le--c5005d58c53146ad93222d15.md) | 128 | `result-track:c5005d58c53146ad93222d15a4c096cb04b751e41dd6d964012c38233d73cd4b` |
| 12 | `theorem` | [exists_linearIndepOn_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/exists-linearindepon-of-lt-rank--95b35347ea341effbc0ca77b.md) | 137 | `result-track:95b35347ea341effbc0ca77bb059f2f112f2756ea780924ff347c3bf646f6a4e` |
| 13 | `theorem` | [exists_linearIndependent_cons_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/exists-linearindependent-cons-of-lt-rank--e2decd85dca6e7072acbe3e3.md) | 159 | `result-track:e2decd85dca6e7072acbe3e32adfb013388ec2693422328539fc25405b71ab0a` |
| 14 | `theorem` | [exists_linearIndependent_snoc_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/exists-linearindependent-snoc-of-lt-rank--b9fae10e1bb5a1c9b011964b.md) | 173 | `result-track:b9fae10e1bb5a1c9b011964b7e3f8e8314551f3d9cfcc5d5093b35e20a7409d7` |
| 15 | `theorem` | [exists_linearIndependent_pair_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/exists-linearindependent-pair-of-one-lt-rank--9c95f66acd50ec9b095bb731.md) | 182 | `result-track:9c95f66acd50ec9b095bb731c842a3f1cf2e81cb6d39b3cd8c92d6a51b7294d5` |
| 16 | `theorem` | [Submodule.exists_smul_notMem_of_rank_lt](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/submodule-exists-smul-notmem-of-rank-lt--dbdcee56d41a2aa0f886682f.md) | 190 | `result-track:dbdcee56d41a2aa0f886682fdf4cc7592f553533f555d35815bbb93491232b99` |
| 17 | `theorem` | [Submodule.rank_sup_add_rank_inf_eq](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/submodule-rank-sup-add-rank-inf-eq--b37c814ed5fc7be2931a2b7c.md) | 203 | `result-track:b37c814ed5fc7be2931a2b7c0bfcf1d2c4949be05d04947ea01120efe39a2938` |
| 18 | `theorem` | [Submodule.rank_add_le_rank_add_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/submodule-rank-add-le-rank-add-rank--5bb16add08681b6696829880.md) | 214 | `result-track:5bb16add08681b6696829880f5751ca20e611f0295d831155da90fd695105086` |
| 19 | `theorem` | [exists_linearIndependent_snoc_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/exists-linearindependent-snoc-of-lt-finrank--964a3ac735b268c030459ca8.md) | 227 | `result-track:964a3ac735b268c030459ca88435e172f8c95c9c7acdfb948a95a0daf13ce313` |
| 20 | `theorem` | [exists_linearIndependent_cons_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/exists-linearindependent-cons-of-lt-finrank--24a806119bf781b1a621810b.md) | 234 | `result-track:24a806119bf781b1a621810bb881933c013045355ae83af21e4672f72c3f5cb9` |
| 21 | `theorem` | [exists_linearIndependent_pair_of_one_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/exists-linearindependent-pair-of-one-lt-finrank--e34515ef1b31a43d5c29d8ab.md) | 241 | `result-track:e34515ef1b31a43d5c29d8ab5fd0eb743efb5b5096093718e9c9a2b1da30c526` |
| 22 | `lemma` | [Submodule.finrank_quotient_add_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/submodule-finrank-quotient-add-finrank--56786ed34ede05016541a2d7.md) | 247 | `result-track:56786ed34ede05016541a2d7da63879fe901a515c288d763c5b9efd874d09525` |
| 23 | `lemma` | [Submodule.finrank_quotient](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/submodule-finrank-quotient--5ce00783cf38ad54bdcaf4d1.md) | 254 | `result-track:5ce00783cf38ad54bdcaf4d17fa2dda0a764c2589babde8f20adf64779c8b0c2` |
| 24 | `lemma` | [Submodule.disjoint_ker_of_finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/submodule-disjoint-ker-of-finrank-le--2e8439e7015edeab8ff65552.md) | 259 | `result-track:2e8439e7015edeab8ff65552b6b1815896324ee197c4ab8759ef353d075d40d8` |
| 25 | `lemma` | [Submodule.exists_of_finrank_lt](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/declarations/submodule-exists-of-finrank-lt--d3f2292ec4e290179d1c0fb9.md) | 279 | `result-track:d3f2292ec4e290179d1c0fb9f436868319b8a136c4d28b7e75775c8f2fbd5564` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
