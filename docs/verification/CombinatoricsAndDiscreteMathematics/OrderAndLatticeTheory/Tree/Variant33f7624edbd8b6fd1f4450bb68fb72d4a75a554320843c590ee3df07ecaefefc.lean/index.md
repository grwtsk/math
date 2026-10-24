# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tree.Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c15357418c9f4dbebea0d1fd6988c71d57192a3",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c15357418c9f4dbebea0d1fd6988c71d57192a3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Archimedean` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/findatom--fba52b8518b77e238d043601.md) | 34 | `declaration-track:fba52b8518b77e238d043601dda04126d04eec1db5bc652d49a1eb2f58bd323d` |
| 2 | `lemma` | [findAtom_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/findatom-le--bb4fce7952791d1cd64f6f35.md) | 38 | `result-track:bb4fce7952791d1cd64f6f35aec531d0b8803ba7883a74aaa62cc1b574b2a1d8` |
| 3 | `lemma` | [findAtom_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/findatom-bot--c43f0d68b139c88816f131c8.md) | 42 | `result-track:c43f0d68b139c88816f131c8bd2c7c48111aa7cf4217b898c3d2721796519680` |
| 4 | `lemma` | [pred_findAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/pred-findatom--613ca2301e47494fc3a031ef.md) | 47 | `result-track:613ca2301e47494fc3a031ef8c58c298003775ed49d9be4a67dbba2940a2d173` |
| 5 | `lemma` | [findAtom_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/findatom-eq-bot--8c9ec3e8fdf33e321a7161df.md) | 61 | `result-track:8c9ec3e8fdf33e321a7161df26c6059903144bd2dd2cde31a77019547eb75ab2` |
| 6 | `lemma` | [findAtom_ne_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/findatom-ne-bot--c0033b9039f2fc436c95d81b.md) | 70 | `result-track:c0033b9039f2fc436c95d81b7299f4677b4ebceb9ee3d7d3780f7facf44d497b` |
| 7 | `lemma` | [isAtom_findAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/isatom-findatom--e4649e70901a2e706745e2ec.md) | 73 | `result-track:e4649e70901a2e706745e2ec565a610113750b92f1306a75b55dda6029befa4c` |
| 8 | `lemma` | [isAtom_findAtom_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/isatom-findatom-iff--fe7ba0bc09fbb298df1f74bc.md) | 82 | `result-track:fe7ba0bc09fbb298df1f74bc4f1ec62388d80ac75e71b4bf2c0e31049e1acd42` |
| 9 | `instance` | [instIsAtomic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/instisatomic--0252727c2642c97f093041e8.md) | 89 | `declaration-track:0252727c2642c97f093041e8bd39e0dd37b21a2cf1d29ec97960e0ff358d3b23` |
| 10 | `structure` | [RootedTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree--d6c55e283a0571bf51be292b.md) | 100 | `declaration-track:d6c55e283a0571bf51be292b42d9a65039d7dafdb34fa747bb9489bd1b6a2d06` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/instance--ef72f76cbdf5a59fb2e20ffe.md) | 115 | `declaration-track:ef72f76cbdf5a59fb2e20ffe41ffef8656db6196471bd670db593b36c8148883` |
| 12 | `def` | [SubRootedTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/subrootedtree--4eadd9f5aaf182a9cc73300d.md) | 123 | `declaration-track:4eadd9f5aaf182a9cc73300d08cbcaf3228410358b2538db41fc7835369fb80d` |
| 13 | `def` | [SubRootedTree.root](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/subrootedtree-root--5aac1cfd771d5b580a95d07e.md) | 128 | `declaration-track:5aac1cfd771d5b580a95d07ef8f1f013d0328dc066d0732bef9977e8da3cf663` |
| 14 | `def` | [RootedTree.subtree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree-subtree--eed0c7e7476fba3c4ba2de60.md) | 133 | `declaration-track:eed0c7e7476fba3c4ba2de601eb8a1f3ede2ed2ff70f3c33d9d4f2acdb17468c` |
| 15 | `lemma` | [RootedTree.root_subtree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree-root-subtree--98936165b2f41cd0589c690f.md) | 136 | `result-track:98936165b2f41cd0589c690f5a6e9e7e8486e49157f9ee461669d5baef3548e1` |
| 16 | `lemma` | [RootedTree.subtree_root](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree-subtree-root--4e5747d545ad64fb20a8f50a.md) | 139 | `result-track:4e5747d545ad64fb20a8f50a2fe3e47fb9fc53020d753db1cd094e8d19d1269f` |
| 17 | `lemma` | [SubRootedTree.ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/subrootedtree-ext--31496a1b01397ea223ad47f1.md) | 142 | `result-track:31496a1b01397ea223ad47f148144b9ae7288391057017118093d6577377c2e7` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/instance--f3ec6b48cfca5df5ce797cc7.md) | 145 | `declaration-track:f3ec6b48cfca5df5ce797cc7e26d110a47a0812b2e1a7e45ebcbc0e902fbd91f` |
| 19 | `lemma` | [SubRootedTree.mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/subrootedtree-mem-iff--2a0c943beab619f0ce57e782.md) | 150 | `result-track:2a0c943beab619f0ce57e782198997d693059e7ae120018990e443abe658c914` |
| 20 | `def` | [SubRootedTree.coeTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/subrootedtree-coetree--753832ff4a1d8e09664e2c32.md) | 157 | `declaration-track:753832ff4a1d8e09664e2c32fefa759c76f234a4aebe70c33efa42c77fbdd941` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/instance--477d3108bcefabd59890136b.md) | 160 | `declaration-track:477d3108bcefabd59890136bc94cb7ce06f87d708225a7d9db493d35d72b79ac` |
| 22 | `lemma` | [SubRootedTree.bot_mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/subrootedtree-bot-mem-iff--c09f8901f24be1c8d4144b6d.md) | 164 | `result-track:c09f8901f24be1c8d4144b6d8621c5852bc4a1f5ac2f3648df0984d93f374e9f` |
| 23 | `def` | [RootedTree.subtrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree-subtrees--bc207a2a1f2300bc5857dd02.md) | 172 | `declaration-track:bc207a2a1f2300bc5857dd02b600c82a11c8ab383c02033851cbadbd14b5556d` |
| 24 | `lemma` | [SubRootedTree.root_ne_bot_of_mem_subtrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/subrootedtree-root-ne-bot-of-mem-subtrees--3aff2bbadd6e311edd31c916.md) | 177 | `result-track:3aff2bbadd6e311edd31c916b061b2164bf0bb72d6cf0e377e6fb4924d5c1a79` |
| 25 | `lemma` | [RootedTree.mem_subtrees_disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree-mem-subtrees-disjoint-iff--d680f00b396ed4a185ba8134.md) | 182 | `result-track:d680f00b396ed4a185ba813449cdca77d29081894688396bcd3e5a9c7eac45e2` |
| 26 | `lemma` | [RootedTree.subtrees_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree-subtrees-disjoint--82343fa6e453efb969ce72a5.md) | 205 | `result-track:82343fa6e453efb969ce72a5b8c8ae327320a25274d5408f40f077df01db9b0a` |
| 27 | `def` | [RootedTree.subtreeOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree-subtreeof--e300a9043f39f8d6fac577ba.md) | 217 | `declaration-track:e300a9043f39f8d6fac577ba051a9647bc20644e7f49b87df010081018fb3e81` |
| 28 | `lemma` | [RootedTree.mem_subtreeOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree-mem-subtreeof--3fc1c62cfcf01ede66595f97.md) | 221 | `result-track:3fc1c62cfcf01ede66595f974e10df394a8a9a06eb4e5700ae367944a9a356e5` |
| 29 | `lemma` | [RootedTree.subtreeOf_mem_subtrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc.lean/declarations/rootedtree-subtreeof-mem-subtrees--13a06bc77725064548b3c023.md) | 225 | `result-track:13a06bc77725064548b3c023f879c11dacef2f9d4f5468384feb2933fe1f619d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
