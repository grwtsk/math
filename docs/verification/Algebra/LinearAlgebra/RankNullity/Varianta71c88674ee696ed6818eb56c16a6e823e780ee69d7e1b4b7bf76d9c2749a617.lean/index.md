# Verification target: GRWTSK.Algebra.LinearAlgebra.RankNullity.Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1749d0b32d20d69938015b8b42e408f4834e66f7",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1749d0b32d20d69938015b8b42e408f4834e66f7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/hasranknullity--6cbf8fadd664a586b61eccf4.md) | 54 | `declaration-track:6cbf8fadd664a586b61eccf4febe5757e4738da66caa15b1e3e53424d9724a24` |
| 2 | `lemma` | [Submodule.rank_quotient_add_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/submodule-rank-quotient-add-rank--75d8b1ccbb2e12d37c832e64.md) | 62 | `result-track:75d8b1ccbb2e12d37c832e64bab22e7d3bc74bd8b2fffb23cdec1b23aa7ab35c` |
| 3 | `lemma` | [exists_set_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/exists-set-linearindependent--f5e6a891bc680e69e251bfda.md) | 67 | `result-track:f5e6a891bc680e69e251bfda66aef32ee119496d09b8a7daee611dde8a9fe8af` |
| 4 | `theorem` | [nontrivial_of_hasRankNullity](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/nontrivial-of-hasranknullity--6bc48192129adb186b13c348.md) | 72 | `result-track:6bc48192129adb186b13c348674af6c56d8516d31de31a19457e193f730b50d8` |
| 5 | `theorem` | [LinearMap.lift_rank_range_add_rank_ker](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/linearmap-lift-rank-range-add-rank-ker--be867232cd3b4ea04ad89f83.md) | 79 | `result-track:be867232cd3b4ea04ad89f837be2ddc4d1f008604d4a7d108185d8d7afe3463d` |
| 6 | `theorem` | [LinearMap.rank_range_add_rank_ker](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/linearmap-rank-range-add-rank-ker--7309871f5a2cacb0e3630ed8.md) | 86 | `result-track:7309871f5a2cacb0e3630ed8c8cb20dec4db2302166ead278e95ce8284083d17` |
| 7 | `theorem` | [LinearMap.lift_rank_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/linearmap-lift-rank-eq-of-surjective--59a4c7ed33fffa513ab6d6cd.md) | 91 | `result-track:59a4c7ed33fffa513ab6d6cd038474d24fa2dffb66f4944dc3b69e12f640e218` |
| 8 | `theorem` | [LinearMap.rank_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/linearmap-rank-eq-of-surjective--2cd7011b17341710d2ab0bdc.md) | 96 | `result-track:2cd7011b17341710d2ab0bdc50dac9fc1a394e49223aa1cc178aa16ba750cf3d` |
| 9 | `theorem` | [exists_linearIndepOn_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/exists-linearindepon-of-lt-rank--00c67f7141d1d32c16fea3c7.md) | 100 | `result-track:00c67f7141d1d32c16fea3c77b70c71e65d2f819b6e669697ec82edf8113f54d` |
| 10 | `theorem` | [exists_linearIndependent_cons_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/exists-linearindependent-cons-of-lt-rank--bf31b78bab1573dffd8072d2.md) | 125 | `result-track:bf31b78bab1573dffd8072d222c18071c2ca7dd68b9dcaef5ef557b156b42fd1` |
| 11 | `theorem` | [exists_linearIndependent_snoc_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/exists-linearindependent-snoc-of-lt-rank--4c78b4381368d59d4881d5fe.md) | 139 | `result-track:4c78b4381368d59d4881d5feeb344eb3c3e308ce5f9ae4777e64c2246cc1507a` |
| 12 | `theorem` | [exists_linearIndependent_pair_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/exists-linearindependent-pair-of-one-lt-rank--2ff60083e4daa7c412afdcf5.md) | 148 | `result-track:2ff60083e4daa7c412afdcf5b5e0a99715842db39ef52a2903bdb05c60107f23` |
| 13 | `theorem` | [Submodule.exists_smul_notMem_of_rank_lt](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/submodule-exists-smul-notmem-of-rank-lt--bf0f574325bbc30bdebec1da.md) | 156 | `result-track:bf0f574325bbc30bdebec1da088826caa712e15419a120e5e70cd77a7f0b1c81` |
| 14 | `theorem` | [Submodule.rank_sup_add_rank_inf_eq](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/submodule-rank-sup-add-rank-inf-eq--dd525d8c6ba2ee6c9f0a43a6.md) | 172 | `result-track:dd525d8c6ba2ee6c9f0a43a6a945002bbc5d00d08eb98aada45e96efe8bb29b5` |
| 15 | `theorem` | [Submodule.rank_add_le_rank_add_rank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/submodule-rank-add-le-rank-add-rank--c6be605c089c7695fbdae8a2.md) | 183 | `result-track:c6be605c089c7695fbdae8a25e16a21ee53f670064e8b909d2d0706f499a581c` |
| 16 | `theorem` | [exists_linearIndependent_snoc_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/exists-linearindependent-snoc-of-lt-finrank--d2ddeb5e7672c9ff5a25a224.md) | 196 | `result-track:d2ddeb5e7672c9ff5a25a224be9b8d8463a713ba022784ee427a120aa7241d5a` |
| 17 | `theorem` | [exists_linearIndependent_cons_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/exists-linearindependent-cons-of-lt-finrank--99914c8ea9bd7285d5032a71.md) | 203 | `result-track:99914c8ea9bd7285d5032a71fde547604055cb57d427590382743aa4cff5b93e` |
| 18 | `theorem` | [exists_linearIndependent_pair_of_one_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/exists-linearindependent-pair-of-one-lt-finrank--cfed7e7a1654fe1ea1ba215f.md) | 210 | `result-track:cfed7e7a1654fe1ea1ba215f0e8b3ed8fda6f9819dca76239495eabffd030573` |
| 19 | `lemma` | [Submodule.finrank_quotient_add_finrank](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/submodule-finrank-quotient-add-finrank--909b031f66b2372ada33cfd1.md) | 216 | `result-track:909b031f66b2372ada33cfd1ee2ea4e47defa762b7d9f7db05ddc37e1c07ec97` |
| 20 | `lemma` | [Submodule.finrank_quotient](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/submodule-finrank-quotient--2791300ab1481b180bb59f4b.md) | 223 | `result-track:2791300ab1481b180bb59f4bfff5a17b473caf84d90bba972d58c53e00c955e3` |
| 21 | `lemma` | [Submodule.disjoint_ker_of_finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/submodule-disjoint-ker-of-finrank-le--a8369725f7a24b57d17a056a.md) | 228 | `result-track:a8369725f7a24b57d17a056a52ce9d2b93894513cec18bdfe57967268290a110` |
| 22 | `lemma` | [Submodule.exists_of_finrank_lt](../../../../../mathematics/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/declarations/submodule-exists-of-finrank-lt--f2c989693cba4d52ee0c8a39.md) | 248 | `result-track:f2c989693cba4d52ee0c8a39176914a81232efc6cc4156e267fa573ab9dfd28d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
