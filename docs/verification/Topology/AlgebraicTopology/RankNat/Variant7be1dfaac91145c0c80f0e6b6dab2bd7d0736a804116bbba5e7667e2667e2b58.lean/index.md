# Verification target: GRWTSK.Topology.AlgebraicTopology.RankNat.Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19932546bc4e3715d44359dd2c80737829791e2e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19932546bc4e3715d44359dd2c80737829791e2e`.

Source path: `GRWTSK/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/instance--52f265a7999f88e89fed05e1.md) | 34 | `declaration-track:52f265a7999f88e89fed05e16305fdc8abe7affb0f1117b5a42b76f8c7795c68` |
| 2 | `def` | [rank'](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/rank--dac3c695e2e4814b632a70d1.md) | 53 | `declaration-track:dac3c695e2e4814b632a70d1862a231e4e8680cac73054f158271f4cd7dbd543` |
| 3 | `lemma` | [rank'_eq](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/rank-eq--7b9fca95d7f66df2322a0294.md) | 56 | `result-track:7b9fca95d7f66df2322a02941b7bf6e2e86b26af6f1d6848603f909e4980dc6b` |
| 4 | `lemma` | [rank'_lt](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/rank-lt--a9f216c3d3cc0dd5f40c167b.md) | 61 | `result-track:a9f216c3d3cc0dd5f40c167b5bde5d68bf79f463b10b2f32b90c28d190a32d83` |
| 5 | `def` | [rank](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/rank--e135e8fe7bf08d4fe85550aa.md) | 74 | `declaration-track:e135e8fe7bf08d4fe85550aaa444bbe047049ad30289f0b348e931dfe442821c` |
| 6 | `lemma` | [rank_lt](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/rank-lt--4d2f1b33c1971084ad3bef12.md) | 78 | `result-track:4d2f1b33c1971084ad3bef12a7b107a33a60eb1b4b93500f0d470701c1c3b5e9` |
| 7 | `def` | [rankFunction](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/rankfunction--06484b892c95b8a2722fb2ce.md) | 83 | `declaration-track:06484b892c95b8a2722fb2cedbddfa22e4d74624237dfabe39b78a1d768f93f7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/instance--13ab9cd5a31db4ce36ad4778.md) | 87 | `declaration-track:13ab9cd5a31db4ce36ad4778185c8560bc073b6fc115a6184ab92461b646e35d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/instance--b540aaee2c727e97c36147db.md) | 89 | `declaration-track:b540aaee2c727e97c36147dbd09237197af712e69acff2af67dbfcbc5d9ed6d0` |
| 10 | `lemma` | [isRegular_iff_nonempty_rankFunction](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/isregular-iff-nonempty-rankfunction--8ac7f4f845f63e2fb93dae42.md) | 93 | `result-track:8ac7f4f845f63e2fb93dae422e6de119bfe673a496f6e34d2fa4afe84d1a87b6` |
| 11 | `lemma` | [isRegular_iff_nonempty_weakRankFunction](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/isregular-iff-nonempty-weakrankfunction--dbe852bbfc73572e938c1948.md) | 97 | `result-track:dbe852bbfc73572e938c194824bd454fd06dab9203d7db1ea2c328e9dadf9f45` |
| 12 | `lemma` | [isRegular_iff_nonempty_rankFunction](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/isregular-iff-nonempty-rankfunction--384018ca1c16c515d7fbb637.md) | 107 | `result-track:384018ca1c16c515d7fbb6377f3e973314299577e51a1a5adf6c2949748d8857` |
| 13 | `lemma` | [isRegular_iff_nonempty_weakRankFunction](../../../../../mathematics/Topology/AlgebraicTopology/RankNat/Variant7be1dfaac91145c0c80f0e6b6dab2bd7d0736a804116bbba5e7667e2667e2b58.lean/declarations/isregular-iff-nonempty-weakrankfunction--d0ffaf43720e915a79f72fe7.md) | 112 | `result-track:d0ffaf43720e915a79f72fe7d3d3b9ffd07ba1a97d7e7ffa4809167e2f5d6dff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
