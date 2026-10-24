# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tree.Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48782d2e6baeb905f47b95a31507352d84872147",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48782d2e6baeb905f47b95a31507352d84872147`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Archimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/findatom--ab6463fb88c426ff23fba41c.md) | 42 | `declaration-track:ab6463fb88c426ff23fba41c00dc00ab6974d5e2960f18886e7270793d48f9f6` |
| 2 | `lemma` | [findAtom_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/findatom-le--0b404519e25eda069f926654.md) | 46 | `result-track:0b404519e25eda069f926654fd2c0c8ccd5ee23c82b31b2690ded59cdcc8b25a` |
| 3 | `lemma` | [findAtom_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/findatom-bot--eb30b021436cd291b4fb9165.md) | 50 | `result-track:eb30b021436cd291b4fb9165c3145238503de011fb36571e1478b39e71fe8fb3` |
| 4 | `lemma` | [pred_findAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/pred-findatom--87ea637bf02108341a64f495.md) | 55 | `result-track:87ea637bf02108341a64f495142272d542ba3b2ea8fc135310aca3ce5a773f18` |
| 5 | `lemma` | [findAtom_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/findatom-eq-bot--d8a1d413784c16edb47de1be.md) | 69 | `result-track:d8a1d413784c16edb47de1be0b1b4bf7649d823875b733c769b45ca47b22d02e` |
| 6 | `lemma` | [findAtom_ne_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/findatom-ne-bot--8e0424af019f8eb5914fb7cf.md) | 78 | `result-track:8e0424af019f8eb5914fb7cf727daa6170fbeddc39c3a595b8455c5780f484e7` |
| 7 | `lemma` | [isAtom_findAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/isatom-findatom--1af4a28bebfe84fe133215ae.md) | 81 | `result-track:1af4a28bebfe84fe133215ae68e49642508d3635f138760fb371d16a1fc7a680` |
| 8 | `lemma` | [isAtom_findAtom_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/isatom-findatom-iff--12d6b59d4865cd2d1e5623fc.md) | 90 | `result-track:12d6b59d4865cd2d1e5623fc6ae6db76ca8c6faee6f628bef2406b8c4868bf66` |
| 9 | `instance` | [instIsAtomic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/instisatomic--d6f47f2a397b48af1c33616a.md) | 97 | `declaration-track:d6f47f2a397b48af1c33616a61c7f59576abfbf4e8a17aca2e73f2bad948bc18` |
| 10 | `structure` | [RootedTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree--c9abfd69b7015af0906ecbda.md) | 108 | `declaration-track:c9abfd69b7015af0906ecbdaef4df36c73a096c3a799af712cebb63339d5e4ee` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/instance--797e089501f7577871f50ba3.md) | 123 | `declaration-track:797e089501f7577871f50ba3f1fa92446d085e32eecc7b6077535ef035da5eea` |
| 12 | `def` | [SubRootedTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/subrootedtree--029ad98324d01aa642076748.md) | 131 | `declaration-track:029ad98324d01aa6420767484fab700d0b73ddf4a13d7a13fa3d3c3ea7a6b312` |
| 13 | `def` | [SubRootedTree.root](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/subrootedtree-root--3cf614d65a3f2ac5e875b64c.md) | 136 | `declaration-track:3cf614d65a3f2ac5e875b64c99b75a81dea6f49cfe0af708d37fa6df397ccca2` |
| 14 | `def` | [RootedTree.subtree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree-subtree--73e5b8e40093f6691db56132.md) | 141 | `declaration-track:73e5b8e40093f6691db5613267f528124fb7f6b27f67e3d4093c5e140c88fcd1` |
| 15 | `lemma` | [RootedTree.root_subtree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree-root-subtree--1276b918fb228b082b81b82d.md) | 144 | `result-track:1276b918fb228b082b81b82d7b5bdf282ad57d30d3d318484d5549d31f04c4ed` |
| 16 | `lemma` | [RootedTree.subtree_root](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree-subtree-root--64d7fa5839165eaf3fd3b9ba.md) | 147 | `result-track:64d7fa5839165eaf3fd3b9ba66c099ac315c0bebbb0d04bf582b40636fa91ba0` |
| 17 | `lemma` | [SubRootedTree.ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/subrootedtree-ext--b2c97d11fb89591fb0a7f96d.md) | 150 | `result-track:b2c97d11fb89591fb0a7f96d49ce66d6dfc6c7645e8a3f3f8d66e0a0ea315b13` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/instance--00c939ed4972ad9be6491e6c.md) | 153 | `declaration-track:00c939ed4972ad9be6491e6cab924c1fac54bb5b0d903a3e99b19f291f1643d1` |
| 19 | `lemma` | [SubRootedTree.mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/subrootedtree-mem-iff--a35534dfd1ce4511eff5276c.md) | 158 | `result-track:a35534dfd1ce4511eff5276ccb9b11759aff9d1b4dd5b1d769cc02f2c65ada22` |
| 20 | `def` | [SubRootedTree.coeTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/subrootedtree-coetree--ad8f9f218677f371a0f8b236.md) | 165 | `declaration-track:ad8f9f218677f371a0f8b2362b65e5c017099681a21b92fc9b38a547a40ddf0b` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/instance--98e6decc785e054a9dbafa19.md) | 168 | `declaration-track:98e6decc785e054a9dbafa195418141972e5d99d1851b7c3d49989437d65bf95` |
| 22 | `lemma` | [SubRootedTree.bot_mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/subrootedtree-bot-mem-iff--8456f6bf16b5d2e0af270b85.md) | 172 | `result-track:8456f6bf16b5d2e0af270b85362542183e9a9462f6b5af979b936a24a664e70b` |
| 23 | `def` | [RootedTree.subtrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree-subtrees--45d60769c82bb302b7d36676.md) | 180 | `declaration-track:45d60769c82bb302b7d36676c8e779871a57af8e24366f72bcf62d37bd93ea47` |
| 24 | `lemma` | [SubRootedTree.root_ne_bot_of_mem_subtrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/subrootedtree-root-ne-bot-of-mem-subtrees--a432a42bdf856b5f4e27bb0c.md) | 185 | `result-track:a432a42bdf856b5f4e27bb0cfbbe00ee1828c5bb6bc45edeba74b64b3f3a0328` |
| 25 | `lemma` | [RootedTree.mem_subtrees_disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree-mem-subtrees-disjoint-iff--80d3bd2826853b16269df34b.md) | 190 | `result-track:80d3bd2826853b16269df34b8c0b884cc8a5ad634cf252d1a3be50fec852efb1` |
| 26 | `lemma` | [RootedTree.subtrees_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree-subtrees-disjoint--b1ef35a04e2cb5a7ac4ce6d8.md) | 213 | `result-track:b1ef35a04e2cb5a7ac4ce6d8fea0360baa0895678440bd5e7eb34c68a90bb97f` |
| 27 | `def` | [RootedTree.subtreeOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree-subtreeof--d8e41f959b71c97a3f9cc523.md) | 225 | `declaration-track:d8e41f959b71c97a3f9cc523fdd631a17b5833ad3df5ad64dd0363d1148ec4cb` |
| 28 | `lemma` | [RootedTree.mem_subtreeOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree-mem-subtreeof--21553264b3df34be7d3eb6b1.md) | 229 | `result-track:21553264b3df34be7d3eb6b18e929271cff3b476c7b2f61971e8ed76460316fe` |
| 29 | `lemma` | [RootedTree.subtreeOf_mem_subtrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/declarations/rootedtree-subtreeof-mem-subtrees--a4cb5f76adb5e7926f4ee904.md) | 233 | `result-track:a4cb5f76adb5e7926f4ee904438d61f07497bb3ac144416116a6340772f04f33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
