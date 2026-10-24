# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Acyclic.Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61bc3e4eee2dcfaa13db4469961f44fdd6f8a73f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61bc3e4eee2dcfaa13db4469961f44fdd6f8a73f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAcyclic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/isacyclic--815a53ab5a27e48d39c78af2.md) | 51 | `declaration-track:815a53ab5a27e48d39c78af288501cdb05ca178b65b64756854dd97e20994985` |
| 2 | `structure` | [IsTree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/istree--d339830c718c3377c3d276ab.md) | 55 | `declaration-track:d339830c718c3377c3d276ab491d2a2d02bba6302e06103a8871e33be71cd67d` |
| 3 | `lemma` | [isAcyclic_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/isacyclic-bot--1b29526e3fa13dec087e3ce4.md) | 63 | `result-track:1b29526e3fa13dec087e3ce49cbdf729157fa86d0d27ea776dd558fec2da4d48` |
| 4 | `theorem` | [isAcyclic_iff_forall_adj_isBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/isacyclic-iff-forall-adj-isbridge--af266e1529799b0f7dca6083.md) | 65 | `result-track:af266e1529799b0f7dca608347f6759e6aed7fcc343d79e13bec1394c6097e16` |
| 5 | `theorem` | [isAcyclic_iff_forall_edge_isBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/isacyclic-iff-forall-edge-isbridge--93181934f0200c2ea82cca3a.md) | 79 | `result-track:93181934f0200c2ea82cca3a98b44ec232ccf76b9e259bfc5e2dfff51b2e707a` |
| 6 | `theorem` | [IsAcyclic.path_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/isacyclic-path-unique--eb8a54ffc87a2730c08863f9.md) | 83 | `result-track:eb8a54ffc87a2730c08863f957a7a6c4ee2e85e67a4572aa05a6175730691332` |
| 7 | `theorem` | [isAcyclic_of_path_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/isacyclic-of-path-unique--10bee22e95374d1a6b7fdd58.md) | 112 | `result-track:10bee22e95374d1a6b7fdd5805a644594e96c9d3b43df402fe9e796488403844` |
| 8 | `theorem` | [isAcyclic_iff_path_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/isacyclic-iff-path-unique--73bcf059b22beab8dff0d06f.md) | 123 | `result-track:73bcf059b22beab8dff0d06f6d4fe8035747ec5d92ff1395c6043db6cf0aaaaa` |
| 9 | `theorem` | [isTree_iff_existsUnique_path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/istree-iff-existsunique-path--cdd557bc0cfb4b90e800050e.md) | 126 | `result-track:cdd557bc0cfb4b90e800050eb69ca1d4563eef8c6320dade04fb29eb825b43da` |
| 10 | `lemma` | [IsTree.existsUnique_path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/istree-existsunique-path--056ade1a01c56f14d0ec3f0d.md) | 148 | `result-track:056ade1a01c56f14d0ec3f0d7b7c8a36568d8a7ff315bc4bcf71a8fb7a006644` |
| 11 | `lemma` | [IsTree.card_edgeFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/istree-card-edgefinset--724189721a4a2b7a573eb54b.md) | 151 | `result-track:724189721a4a2b7a573eb54bdb77ae9720e8e09a3f8d6c7a656894a6b427d230` |
| 12 | `lemma` | [isTree_of_minimal_connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/istree-of-minimal-connected--ba28344f509b6bb33cf05644.md) | 202 | `result-track:ba28344f509b6bb33cf05644b8caf7f589104091b8f86c4ceb95d1ca7ad75900` |
| 13 | `lemma` | [Connected.exists_isTree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/connected-exists-istree-le--dad4f6796a406f62e9adcf48.md) | 209 | `result-track:dad4f6796a406f62e9adcf4861d6476c78214a6645ddd3539e9edfb77217f964` |
| 14 | `lemma` | [Connected.card_vert_le_card_edgeSet_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/connected-card-vert-le-card-edgeset-add-one--25bb6491d71c34670f93f654.md) | 214 | `result-track:25bb6491d71c34670f93f65471be86494e5b32a3f1ff1c163e733cbf24c455c2` |
| 15 | `lemma` | [isTree_iff_connected_and_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variantd8133376cebd40d6276eabb04b55304d5e8ec7cefd0f2aa0cc529ecfd8790729.lean/declarations/istree-iff-connected-and-card--09b2b3483146acd4391c82fb.md) | 224 | `result-track:09b2b3483146acd4391c82fb4e7cc904284e0ab027ba21e563d0c124a99a8cf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
