# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e18fa990dc4c82e51b31dd069727d8ca7f9c7103",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e18fa990dc4c82e51b31dd069727d8ca7f9c7103`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLattice.SetLike` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/tree--9d08c8f86b968afa431dd868.md) | 33 | `declaration-track:9d08c8f86b968afa431dd868467258aec0d8428d2dbcd31de7327ec2a6ae573b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/instance--fb714ef412f4255af6e4fbcb.md) | 38 | `declaration-track:fb714ef412f4255af6e4fbcb50a09adae985c194a8925f573b560e12ff915816` |
| 3 | `lemma` | [mem_of_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/mem-of-append--4c3c7e8cbe18d5493d293e15.md) | 43 | `result-track:4c3c7e8cbe18d5493d293e1568d5df22b7507edb236677d7be5183fee5f5d3f8` |
| 4 | `lemma` | [mem_of_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/mem-of-prefix--c59fa322f6d151e196b8a27d.md) | 48 | `result-track:c59fa322f6d151e196b8a27d33e769f1c2de96e3f773d9a19caddc7f606992ca` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/instance--7fc769676614807655eda3f4.md) | 51 | `declaration-track:7fc769676614807655eda3f4058a01f552f3c53a52489409c2e17d0c5d86b2bd` |
| 6 | `lemma` | [singleton_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/singleton-mem--5c087899b9c5d2141101a381.md) | 54 | `result-track:5c087899b9c5d2141101a381bce760f740636613c3c2b95bb208e49c43b7bbe0` |
| 7 | `lemma` | [tree_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/tree-eq-bot--3278259316f4014a366d88d5.md) | 57 | `result-track:3278259316f4014a366d88d56c8954ac5a706618c2d6342c66664278087f197c` |
| 8 | `lemma` | [take_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/take-mem--5965d641509797a861b0cf4b.md) | 61 | `result-track:5965d641509797a861b0cf4b6f7ee2cb922db50b26ff9d80e02478565bb2d535` |
| 9 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/take--cb6cf8055a6ac281c024303a.md) | 65 | `declaration-track:cb6cf8055a6ac281c024303a12c773517e9e8ecab5ac5c30be15e31a8bc803e3` |
| 10 | `lemma` | [take_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/take-take--af47a81cbffac580aee499fc.md) | 67 | `result-track:af47a81cbffac580aee499fcda50c63800c94465a650623190b5e67cf2737d91` |
| 11 | `lemma` | [take_eq_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/take-eq-take--4f6902d244f29d5fd8c5355d.md) | 70 | `result-track:4f6902d244f29d5fd8c5355dc7545db6b1b1960c652200c6ec2c11640bd56902` |
| 12 | `def` | [subAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/subat--0ee90d0e8be018a31ec607fc.md) | 77 | `declaration-track:0ee90d0e8be018a31ec607fc0a530b2e34c655505205d4da925f99e3c2dd4e3a` |
| 13 | `lemma` | [mem_subAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/mem-subat--3db3b5df34c3c9303f6417dd.md) | 79 | `result-track:3db3b5df34c3c9303f6417dd21a1d19461efd1f00633f75273e4fac4d235caff` |
| 14 | `lemma` | [subAt_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/subat-nil--6d111192e9fba9dbc45cb504.md) | 81 | `result-track:6d111192e9fba9dbc45cb504b47119a1c9d6ef59c7544e556f5d0a6841bfef2c` |
| 15 | `lemma` | [subAt_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/subat-append--3b6e9b38a444b03d52861169.md) | 83 | `result-track:3b6e9b38a444b03d5286116975696efb08d6d84dd44e3b8ca81c2a846ab11b82` |
| 16 | `lemma` | [subAt_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/subat-mono--0645bfd9e321356ced740884.md) | 85 | `result-track:0645bfd9e321356ced740884579d29b0ae9b788d08275e2499b7d175641fda39` |
| 17 | `def` | [drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/drop--4c0e839ff44cda65e7831dc6.md) | 89 | `declaration-track:4c0e839ff44cda65e7831dc6b27721e770d2c52d41073dc7eb99221a91c19f1c` |
| 18 | `def` | [pullSub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/pullsub--2bf2ba3c86e305a335e5c52c.md) | 96 | `declaration-track:2bf2ba3c86e305a335e5c52c9fca1a3040f97e50fc64513be008e5b961af1887` |
| 19 | `lemma` | [mem_pullSub_short](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/mem-pullsub-short--14244452be570488a9ea9d26.md) | 104 | `result-track:14244452be570488a9ea9d264553e6a8e5141c7c64e1b21e0b97d7742fd0e8d8` |
| 20 | `lemma` | [mem_pullSub_long](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/mem-pullsub-long--59e12c2b608df0509725ce1d.md) | 108 | `result-track:59e12c2b608df0509725ce1d17f5f6856ec0e043b205c98d3fa9eda28ea04267` |
| 21 | `lemma` | [mem_pullSub_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/mem-pullsub-append--5578dc94f154c33d4bb9a205.md) | 116 | `result-track:5578dc94f154c33d4bb9a205762965994de2e93e224cb6a9b4ed99e459187375` |
| 22 | `lemma` | [mem_pullSub_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/mem-pullsub-self--641353e549ef9aa79f4cbcc0.md) | 118 | `result-track:641353e549ef9aa79f4cbcc01ae38a4462704bade56c6ac8a977bf1b42776b4a` |
| 23 | `lemma` | [pullSub_subAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/pullsub-subat--2f5749ef5a3cb07199d698af.md) | 124 | `result-track:2f5749ef5a3cb07199d698affcbda96e5deb5807f870861e9d37ede31a995361` |
| 24 | `lemma` | [subAt_pullSub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/subat-pullsub--ef0840fa16e99bb27ec3a7cf.md) | 129 | `result-track:ef0840fa16e99bb27ec3a7cfcd593325cb51498cf3bf7f291c7849cb4f33af7e` |
| 25 | `lemma` | [pullSub_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/pullsub-mono--9e1bf3b07fdee149ca294734.md) | 132 | `result-track:9e1bf3b07fdee149ca29473432b7bb7a68ba50a5b969b162d5bb993bd17078ee` |
| 26 | `lemma` | [pullSub_adjunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/pullsub-adjunction--63a2c682314690dcf4f811c8.md) | 135 | `result-track:63a2c682314690dcf4f811c8798b00be9341bb83a52b0e42c67aef38d8dcbd8f` |
| 27 | `lemma` | [pullSub_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/pullsub-nil--677b6922b6d81c8d11fb0281.md) | 139 | `result-track:677b6922b6d81c8d11fb02813f14bebb06d7ba60feeacf45607c51f274f7bb85` |
| 28 | `lemma` | [pullSub_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variant853a0f6b0dce9a321907f385694e4565fd38178e397513e60eb1eca2bc143a92.lean/declarations/pullsub-append--924a85805c4cf9fdf6647362.md) | 141 | `result-track:924a85805c4cf9fdf66473628331a38c329fb20563ed733af8efd98175a27685` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
