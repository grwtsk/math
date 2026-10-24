# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CompleteMultipartite.Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7322db20ad95657f8b6bc1b7ef7837fc6149030",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7322db20ad95657f8b6bc1b7ef7837fc6149030`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Coloring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Hasse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompleteMultipartite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/iscompletemultipartite--1eb24df0baa1f267a85e55f3.md) | 33 | `declaration-track:1eb24df0baa1f267a85e55f3822b29721d148d05c34929c61b47375d4a36e93b` |
| 2 | `def` | [IsCompleteMultipartite.setoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/iscompletemultipartite-setoid--7c6bed0ed462883860249c37.md) | 37 | `declaration-track:7c6bed0ed462883860249c37366809a7be947610fc53ff31da5f8aa371e7ff92` |
| 3 | `lemma` | [completeMultipartiteGraph.isCompleteMultipartite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/completemultipartitegraph-iscompletemultipartite--4218c0ba33ab9858a37027e4.md) | 40 | `result-track:4218c0ba33ab9858a37027e43eb43bb893bc10b4e903b3bc9001ebcb2ecca2e4` |
| 4 | `def` | [IsCompleteMultipartite.iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/iscompletemultipartite-iso--8b8a432cc4a9d67dbe7ad415.md) | 47 | `declaration-track:8b8a432cc4a9d67dbe7ad415365da248ab4261a62a80aa25679462fd1ed8441c` |
| 5 | `lemma` | [isCompleteMultipartite_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/iscompletemultipartite-iff--242998ef5bff2cec829543b8.md) | 59 | `result-track:242998ef5bff2cec829543b8d81d744902c103774157ed80b926ab6c0feff3aa` |
| 6 | `lemma` | [IsCompleteMultipartite.colorable_of_cliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/iscompletemultipartite-colorable-of-cliquefree--b6cbc3e5b118185e3ac81d50.md) | 68 | `result-track:b6cbc3e5b118185e3ac81d50f4e8237c41ff8557daca7fa518a03c42182f0b76` |
| 7 | `structure` | [IsPathGraph3Compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/ispathgraph3compl--51ddee05623f9523bab1d780.md) | 80 | `declaration-track:51ddee05623f9523bab1d7807afca0376abeead1d9b6f4655b3520657d3358db` |
| 8 | `lemma` | [ne_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/ne-fst--3bf90616be1129110df8a543.md) | 89 | `result-track:3bf90616be1129110df8a5435c58fb55365158520b250e34e415661c6ae3a50b` |
| 9 | `lemma` | [ne_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/ne-snd--8d4d5de7da9a456ff345c5ab.md) | 92 | `result-track:8d4d5de7da9a456ff345c5ab6222a2239ca5b56553f5f19b87ac8e7ee623f164` |
| 10 | `lemma` | [fst_ne_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/fst-ne-snd--d6a8532dcb89f92643987031.md) | 95 | `result-track:d6a8532dcb89f9264398703153eedccf6129731d3d532b5cbe0ea3ba9bad1cc8` |
| 11 | `lemma` | [symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/symm--8ae84a3f5667327a7bdabe0d.md) | 97 | `result-track:8ae84a3f5667327a7bdabe0d700ed405b99aa76acc349422080df11fe230e516` |
| 12 | `lemma` | [exists_isPathGraph3Compl_of_not_isCompleteMultipartite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/exists-ispathgraph3compl-of-not-iscompletemultipartite--22d8c99ef3d3a364b1cfb3d2.md) | 103 | `result-track:22d8c99ef3d3a364b1cfb3d26cd53ba8b79ffa859ecd97e83b58481cf094d554` |
| 13 | `lemma` | [not_isCompleteMultipartite_iff_exists_isPathGraph3Compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/not-iscompletemultipartite-iff-exists-ispathgraph3compl--c910a91478cdcab4f6403444.md) | 111 | `result-track:c910a91478cdcab4f64034444ade5b5e698e941f53b582eb1432edf331143a2c` |
| 14 | `def` | [IsPathGraph3Compl.pathGraph3ComplEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/ispathgraph3compl-pathgraph3complembedding--bb4eb2a0aa9f1c17d42cf9b8.md) | 119 | `declaration-track:bb4eb2a0aa9f1c17d42cf9b8895361628d3706cf7edf635189756d63a62475f5` |
| 15 | `def` | [pathGraph3ComplEmbeddingOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/pathgraph3complembeddingof--1c8ecf5bd762c71005726eb8.md) | 143 | `declaration-track:1c8ecf5bd762c71005726eb842e59db7d58b7f9203ff7056613821fa3f03e692` |
| 16 | `lemma` | [not_isCompleteMultipartite_of_pathGraph3ComplEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/not-iscompletemultipartite-of-pathgraph3complembedding--0ec9f6b5e096f9d992d6b47f.md) | 148 | `result-track:0ec9f6b5e096f9d992d6b47f50ad77d4c71b51479a5313abb9253f043ec15e75` |
| 17 | `theorem` | [IsCompleteMultipartite.comap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant3157b4f7a4ec09621805e6314ea683037c01892841a15df8538e8f89fce9a3d0.lean/declarations/iscompletemultipartite-comap--c6d45b47f2218632858c03d2.md) | 156 | `result-track:c6d45b47f2218632858c03d232eb3fff2afe9715431df4efc0c69365d905c3b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
