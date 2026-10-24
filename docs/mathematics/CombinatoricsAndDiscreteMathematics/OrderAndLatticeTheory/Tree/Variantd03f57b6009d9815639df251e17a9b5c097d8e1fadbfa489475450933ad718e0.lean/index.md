# GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tree.Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48782d2e6baeb905f47b95a31507352d84872147`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [findAtom](declarations/findatom--ab6463fb88c426ff23fba41c.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [findAtom_le](declarations/findatom-le--0b404519e25eda069f926654.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [findAtom_bot](declarations/findatom-bot--eb30b021436cd291b4fb9165.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [pred_findAtom](declarations/pred-findatom--87ea637bf02108341a64f495.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [findAtom_eq_bot](declarations/findatom-eq-bot--d8a1d413784c16edb47de1be.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [findAtom_ne_bot](declarations/findatom-ne-bot--8e0424af019f8eb5914fb7cf.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isAtom_findAtom](declarations/isatom-findatom--1af4a28bebfe84fe133215ae.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [isAtom_findAtom_iff](declarations/isatom-findatom-iff--12d6b59d4865cd2d1e5623fc.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instIsAtomic](declarations/instisatomic--d6f47f2a397b48af1c33616a.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [RootedTree](declarations/rootedtree--c9abfd69b7015af0906ecbda.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance--797e089501f7577871f50ba3.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [SubRootedTree](declarations/subrootedtree--029ad98324d01aa642076748.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [SubRootedTree.root](declarations/subrootedtree-root--3cf614d65a3f2ac5e875b64c.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [RootedTree.subtree](declarations/rootedtree-subtree--73e5b8e40093f6691db56132.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [RootedTree.root_subtree](declarations/rootedtree-root-subtree--1276b918fb228b082b81b82d.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [RootedTree.subtree_root](declarations/rootedtree-subtree-root--64d7fa5839165eaf3fd3b9ba.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [SubRootedTree.ext](declarations/subrootedtree-ext--b2c97d11fb89591fb0a7f96d.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance--00c939ed4972ad9be6491e6c.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [SubRootedTree.mem_iff](declarations/subrootedtree-mem-iff--a35534dfd1ce4511eff5276c.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [SubRootedTree.coeTree](declarations/subrootedtree-coetree--ad8f9f218677f371a0f8b236.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance--98e6decc785e054a9dbafa19.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [SubRootedTree.bot_mem_iff](declarations/subrootedtree-bot-mem-iff--8456f6bf16b5d2e0af270b85.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [RootedTree.subtrees](declarations/rootedtree-subtrees--45d60769c82bb302b7d36676.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [SubRootedTree.root_ne_bot_of_mem_subtrees](declarations/subrootedtree-root-ne-bot-of-mem-subtrees--a432a42bdf856b5f4e27bb0c.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [RootedTree.mem_subtrees_disjoint_iff](declarations/rootedtree-mem-subtrees-disjoint-iff--80d3bd2826853b16269df34b.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [RootedTree.subtrees_disjoint](declarations/rootedtree-subtrees-disjoint--b1ef35a04e2cb5a7ac4ce6d8.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [RootedTree.subtreeOf](declarations/rootedtree-subtreeof--d8e41f959b71c97a3f9cc523.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [RootedTree.mem_subtreeOf](declarations/rootedtree-mem-subtreeof--21553264b3df34be7d3eb6b1.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [RootedTree.subtreeOf_mem_subtrees](declarations/rootedtree-subtreeof-mem-subtrees--a4cb5f76adb5e7926f4ee904.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
