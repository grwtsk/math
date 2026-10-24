# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Acyclic.Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77882b11979faa28ae7d5e425b646b48d052fb19",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77882b11979faa28ae7d5e425b646b48d052fb19`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAcyclic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/isacyclic--218033fa482d36921de4c32d.md) | 59 | `declaration-track:218033fa482d36921de4c32db74e320e829993ff5e6f11ad703e99f4b2b0add8` |
| 2 | `structure` | [IsTree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/istree--a633c2a92e8d97efa242aeeb.md) | 63 | `declaration-track:a633c2a92e8d97efa242aeeb2ec7021d86f70f027370fb0e559a035c89f3ca10` |
| 3 | `lemma` | [isAcyclic_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/isacyclic-bot--6ed3dea5c4a80d444712f48d.md) | 71 | `result-track:6ed3dea5c4a80d444712f48d080b129a33cccb71228b9683adde350a83f4c9b9` |
| 4 | `theorem` | [isAcyclic_iff_forall_adj_isBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/isacyclic-iff-forall-adj-isbridge--00064437eb4a523d7b21ede3.md) | 73 | `result-track:00064437eb4a523d7b21ede3cbddf04e8d91ded66e32d820783bfaeae7c5e581` |
| 5 | `theorem` | [isAcyclic_iff_forall_edge_isBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/isacyclic-iff-forall-edge-isbridge--fc411740e0bb3f58ac8353b8.md) | 87 | `result-track:fc411740e0bb3f58ac8353b8ee33e9c111dc6bf335a381fb78e9721745b463bf` |
| 6 | `theorem` | [IsAcyclic.path_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/isacyclic-path-unique--d5a9d5f134cc3391500cad20.md) | 91 | `result-track:d5a9d5f134cc3391500cad207cafb4d5cdd42443f43b90a9c4dbbf5808309d1a` |
| 7 | `theorem` | [isAcyclic_of_path_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/isacyclic-of-path-unique--8c81f492e5f15fcc4d81330e.md) | 120 | `result-track:8c81f492e5f15fcc4d81330ee1e77c5eac48a7cc368a25dc7e186c550114edc3` |
| 8 | `theorem` | [isAcyclic_iff_path_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/isacyclic-iff-path-unique--4465f52cb052023323289962.md) | 131 | `result-track:4465f52cb052023323289962517644117cb82e82cef6d3d76861e174d219a6e1` |
| 9 | `theorem` | [isTree_iff_existsUnique_path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/istree-iff-existsunique-path--b9c2e42618e974449f6ee881.md) | 134 | `result-track:b9c2e42618e974449f6ee88139c372c365a7a74a28ab31000e3729f325fc53cc` |
| 10 | `lemma` | [IsTree.existsUnique_path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/istree-existsunique-path--ad54af25194df43888ae8237.md) | 156 | `result-track:ad54af25194df43888ae8237fa83bd68d41842da46f075d524d8ace2cb7413fa` |
| 11 | `lemma` | [IsTree.card_edgeFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/istree-card-edgefinset--a270c0275c49e910b72d9e51.md) | 159 | `result-track:a270c0275c49e910b72d9e51fd6986ad415c0dddca5c2ccf4d547e8a13d6fcab` |
| 12 | `lemma` | [isTree_of_minimal_connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/istree-of-minimal-connected--a786c833b0c22ca4f1ec139c.md) | 210 | `result-track:a786c833b0c22ca4f1ec139c4a856372c89e87b5619090e689228630f37e2851` |
| 13 | `lemma` | [Connected.exists_isTree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/connected-exists-istree-le--d0f4909ff2e076761073c346.md) | 217 | `result-track:d0f4909ff2e076761073c346ef8de3495d213d38b15fc2a44171c15aee51d474` |
| 14 | `lemma` | [Connected.card_vert_le_card_edgeSet_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/connected-card-vert-le-card-edgeset-add-one--8ee7f62ae97bf20b72a31532.md) | 222 | `result-track:8ee7f62ae97bf20b72a3153262b60df7286b34d7bbb24e4e8d3806aba40a81da` |
| 15 | `lemma` | [isTree_iff_connected_and_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Acyclic/Variant91cd511a2cf09c2147d15cc0ac09d6c52b4e2667605e13418572080f6ba5cd68.lean/declarations/istree-iff-connected-and-card--17c80b06e8015cbda1fbac22.md) | 232 | `result-track:17c80b06e8015cbda1fbac2217fd9dbe04997ff820afc746b1e5aa8bc19cc189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
