# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CompleteMultipartite.Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ba687cab9322e1ec74c73bd5e3f45df5ebde0f7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ba687cab9322e1ec74c73bd5e3f45df5ebde0f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Coloring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Hasse` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompleteMultipartite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/iscompletemultipartite--4c26a53a8fb6def964879f7c.md) | 41 | `declaration-track:4c26a53a8fb6def964879f7c77fe4a2095ad903d2dc75e7d4f908edc9a95978e` |
| 2 | `def` | [IsCompleteMultipartite.setoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/iscompletemultipartite-setoid--2052eebed42463f8839157c0.md) | 45 | `declaration-track:2052eebed42463f8839157c06ab3b6bdf39f7660e1b45b0565112ba7377bdc42` |
| 3 | `lemma` | [completeMultipartiteGraph.isCompleteMultipartite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/completemultipartitegraph-iscompletemultipartite--58c5f76f319703c0a0d18c20.md) | 48 | `result-track:58c5f76f319703c0a0d18c207a56591b6346d78d258aae01267007970fd594c3` |
| 4 | `def` | [IsCompleteMultipartite.iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/iscompletemultipartite-iso--27af95d0de11e8ef426724f1.md) | 55 | `declaration-track:27af95d0de11e8ef426724f11a655a58ab3cba9a467dfa35369fbd47c67ef63d` |
| 5 | `lemma` | [isCompleteMultipartite_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/iscompletemultipartite-iff--e2e875ffb4fccef6a9b1f1c3.md) | 67 | `result-track:e2e875ffb4fccef6a9b1f1c3a6f5e4271a29351ec0b71f4050d6f596d27504bc` |
| 6 | `lemma` | [IsCompleteMultipartite.colorable_of_cliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/iscompletemultipartite-colorable-of-cliquefree--0400c2ef96d94811ba433c78.md) | 76 | `result-track:0400c2ef96d94811ba433c78df5efaf2e4b79bed1f9fe4076ec8501cf3be3165` |
| 7 | `structure` | [IsPathGraph3Compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/ispathgraph3compl--4288ce3e71656ee28dbe02ca.md) | 88 | `declaration-track:4288ce3e71656ee28dbe02ca6cb5acd2a580168cd66f0b03845613997a6d596f` |
| 8 | `lemma` | [ne_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/ne-fst--4ad4d04e51c65c0ef32d5af8.md) | 97 | `result-track:4ad4d04e51c65c0ef32d5af88470ca18b047ea5a63ed1e74f43bc36c663ce670` |
| 9 | `lemma` | [ne_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/ne-snd--20c85cea6e6e9e56fbe13552.md) | 100 | `result-track:20c85cea6e6e9e56fbe135525c0a4bfedf8b1fb0e1bf1537454aff2219f750d3` |
| 10 | `lemma` | [fst_ne_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/fst-ne-snd--d6a61f4d22266802704f4eb1.md) | 103 | `result-track:d6a61f4d22266802704f4eb121c5303bc3713bf7ee54938055da8630af754033` |
| 11 | `lemma` | [symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/symm--f8da6c159a03aef6e969fa40.md) | 105 | `result-track:f8da6c159a03aef6e969fa4072ec95ecf9eac152f0cf1a70a83ba19a204f3aa1` |
| 12 | `lemma` | [exists_isPathGraph3Compl_of_not_isCompleteMultipartite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/exists-ispathgraph3compl-of-not-iscompletemultipartite--1c1d0e45f9619d62b800a6de.md) | 111 | `result-track:1c1d0e45f9619d62b800a6de374a35d65b4660cd6dc2d8254a6251e33f517643` |
| 13 | `lemma` | [not_isCompleteMultipartite_iff_exists_isPathGraph3Compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/not-iscompletemultipartite-iff-exists-ispathgraph3compl--21f92ad535094e4e73e2bb81.md) | 119 | `result-track:21f92ad535094e4e73e2bb81144bbe2394a2f7c934c5d991ce82c8883ed07fa6` |
| 14 | `def` | [IsPathGraph3Compl.pathGraph3ComplEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/ispathgraph3compl-pathgraph3complembedding--919b9bc5e9ce50af4405d236.md) | 127 | `declaration-track:919b9bc5e9ce50af4405d2366b34f95c8f30882249696eda90ee9b0f7c31d73a` |
| 15 | `def` | [pathGraph3ComplEmbeddingOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/pathgraph3complembeddingof--3365427d05e9ab36830a05c7.md) | 151 | `declaration-track:3365427d05e9ab36830a05c711695e182ec9a086e5158023a58d2626ce7a6a06` |
| 16 | `lemma` | [not_isCompleteMultipartite_of_pathGraph3ComplEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/not-iscompletemultipartite-of-pathgraph3complembedding--aabbe33f55755c03b0d30fc1.md) | 156 | `result-track:aabbe33f55755c03b0d30fc1544a7044c4fc57b3ed17861fbf6a63aaf4845fcc` |
| 17 | `theorem` | [IsCompleteMultipartite.comap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantae5a05642256045e26656e07b547173e18c5e45aaf40dcf2bafba865f340af82.lean/declarations/iscompletemultipartite-comap--4a3d06ea1420a663c9f5228c.md) | 164 | `result-track:4a3d06ea1420a663c9f5228cb97fa2a4296efdfae56129f5a9155cc8233b2b7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
