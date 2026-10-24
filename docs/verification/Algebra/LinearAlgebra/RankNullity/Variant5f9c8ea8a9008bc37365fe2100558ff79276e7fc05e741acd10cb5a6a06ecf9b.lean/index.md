# Verification target: GRWTSK.Algebra.LinearAlgebra.RankNullity.Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "090461cd2ae471d4b186902bab7ff0621c601a54",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `090461cd2ae471d4b186902bab7ff0621c601a54`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/hasranknullity--c40a3f567a3593f46a800186.md) | 46 | `declaration-track:c40a3f567a3593f46a800186e917bae89c40ed68b5a481332618d74f85420fd6` |
| 2 | `lemma` | [Submodule.rank_quotient_add_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/submodule-rank-quotient-add-rank--94a7c8bb576ac7fc2a2f91f6.md) | 54 | `result-track:94a7c8bb576ac7fc2a2f91f6a08ce0bfb49ca957b24ff5a9195f763e8c0e004e` |
| 3 | `lemma` | [exists_set_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/exists-set-linearindependent--7086556f3c1bed241e426020.md) | 59 | `result-track:7086556f3c1bed241e426020feeea08e8824d218c64b2124497b08d1514fa132` |
| 4 | `theorem` | [nontrivial_of_hasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/nontrivial-of-hasranknullity--b9b5bf5e715066a77eee742c.md) | 64 | `result-track:b9b5bf5e715066a77eee742c442ed494a062125451d956398a8fce6f0b74fa5c` |
| 5 | `theorem` | [LinearMap.lift_rank_range_add_rank_ker](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/linearmap-lift-rank-range-add-rank-ker--07bbb5ea6332b39c8d338c05.md) | 71 | `result-track:07bbb5ea6332b39c8d338c057392cb34039538affe8b21e2dde00b05bf1fe29f` |
| 6 | `theorem` | [LinearMap.rank_range_add_rank_ker](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/linearmap-rank-range-add-rank-ker--5615420af2d930aa111c5f01.md) | 78 | `result-track:5615420af2d930aa111c5f018a994661e6b63173963c9146aa14aa635969d598` |
| 7 | `theorem` | [LinearMap.lift_rank_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/linearmap-lift-rank-eq-of-surjective--43cc34d71075c947251b797b.md) | 83 | `result-track:43cc34d71075c947251b797b44ac5712ae075b9d7fe2b318fbfde9612eaf8ded` |
| 8 | `theorem` | [LinearMap.rank_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/linearmap-rank-eq-of-surjective--31b9778dd6b167c307bca561.md) | 88 | `result-track:31b9778dd6b167c307bca561d87d397b950a3ec89ecc06d7ba654c114660a67d` |
| 9 | `theorem` | [exists_linearIndepOn_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/exists-linearindepon-of-lt-rank--97be30843fc6f5c6f16303e6.md) | 92 | `result-track:97be30843fc6f5c6f16303e6251843933f6a4676069711a3291bfbe2a0ca03e4` |
| 10 | `theorem` | [exists_linearIndependent_cons_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/exists-linearindependent-cons-of-lt-rank--2ff1d82bcf8e6719c6a817ed.md) | 117 | `result-track:2ff1d82bcf8e6719c6a817eda9ee74c1e236f191f962e9130bb5be6346117b56` |
| 11 | `theorem` | [exists_linearIndependent_snoc_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/exists-linearindependent-snoc-of-lt-rank--594ef1e11682297528359a22.md) | 131 | `result-track:594ef1e11682297528359a220852cbe48e5e87b3fc2fe53bb837e710e2faf852` |
| 12 | `theorem` | [exists_linearIndependent_pair_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/exists-linearindependent-pair-of-one-lt-rank--03661c13d1841eca99f14d8f.md) | 140 | `result-track:03661c13d1841eca99f14d8fe13dd3dc5b0abc8068bf2c3360fb7802a7eeae23` |
| 13 | `theorem` | [Submodule.exists_smul_notMem_of_rank_lt](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/submodule-exists-smul-notmem-of-rank-lt--8f6e60ff209668c6b8da84b4.md) | 148 | `result-track:8f6e60ff209668c6b8da84b46b12ffcdb7510d1a8b92004890ae5c40da72916e` |
| 14 | `theorem` | [Submodule.rank_sup_add_rank_inf_eq](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/submodule-rank-sup-add-rank-inf-eq--728d28d4c00c842697c94269.md) | 164 | `result-track:728d28d4c00c842697c942699d2bcb728c6b082d85d80e220a3de54291feef1d` |
| 15 | `theorem` | [Submodule.rank_add_le_rank_add_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/submodule-rank-add-le-rank-add-rank--e10b2a09e04b65a918dd308e.md) | 175 | `result-track:e10b2a09e04b65a918dd308e3dbd5e0f1b4ccb1076c334a06feeed430b94d0db` |
| 16 | `theorem` | [exists_linearIndependent_snoc_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/exists-linearindependent-snoc-of-lt-finrank--3333f4911e193c63855fcb20.md) | 188 | `result-track:3333f4911e193c63855fcb206c221f5c76d2499ffea373abb08c87db102d4529` |
| 17 | `theorem` | [exists_linearIndependent_cons_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/exists-linearindependent-cons-of-lt-finrank--cd08ae6d903ad76817c356d7.md) | 195 | `result-track:cd08ae6d903ad76817c356d7d3e9d56ea77e4814381ca024862670d4b7d7e027` |
| 18 | `theorem` | [exists_linearIndependent_pair_of_one_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/exists-linearindependent-pair-of-one-lt-finrank--243cb7572f87c0075e166402.md) | 202 | `result-track:243cb7572f87c0075e166402a46b1dde18148d08e2a42f4c92bc95482541ae25` |
| 19 | `lemma` | [Submodule.finrank_quotient_add_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/submodule-finrank-quotient-add-finrank--e4e865b300e9f0eb7a5b7428.md) | 208 | `result-track:e4e865b300e9f0eb7a5b7428a148f818ad76bd9b0dfd4d98923ede5d01c8598d` |
| 20 | `lemma` | [Submodule.finrank_quotient](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/submodule-finrank-quotient--5cd4f29818389b63a467dca9.md) | 215 | `result-track:5cd4f29818389b63a467dca995b512d16f9a1d831f3ae73bf53fec60f2d3d0a2` |
| 21 | `lemma` | [Submodule.disjoint_ker_of_finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/submodule-disjoint-ker-of-finrank-le--b3622a4017ce077643ff365b.md) | 220 | `result-track:b3622a4017ce077643ff365b85677780ed42a8795895e4a4abbfa21237b00194` |
| 22 | `lemma` | [Submodule.exists_of_finrank_lt](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/declarations/submodule-exists-of-finrank-lt--a9754747af030a03c4452bd1.md) | 240 | `result-track:a9754747af030a03c4452bd19ffb89b7b89fb777b672293d6192a9e39146a90a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
