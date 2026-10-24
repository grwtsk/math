# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Hamiltonian.Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13b16d01172bf1d5c92c54b1c5171f97fba2335c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13b16d01172bf1d5c92c54b1c5171f97fba2335c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltonian--410d859301c790b689f297cd.md) | 32 | `declaration-track:410d859301c790b689f297cd3a5c3652bc4be106d06412765f577d4a7010b9af` |
| 2 | `lemma` | [IsHamiltonian.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltonian-map--81197ca548a7067e7332bce2.md) | 34 | `result-track:81197ca548a7067e7332bce258a8a1f66ce4caa8bea1c976c3de76863ad13b40` |
| 3 | `lemma` | [IsHamiltonian.mem_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltonian-mem-support--f5e6eb0fa538c9a1884492c4.md) | 39 | `result-track:f5e6eb0fa538c9a1884492c421365e164edf145307eeabe6a73f82619ac276a4` |
| 4 | `lemma` | [IsHamiltonian.isPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltonian-ispath--60bb6c185281b977c8b586be.md) | 43 | `result-track:60bb6c185281b977c8b586be8aa9b448872886c3002ddc855a4cfb4f099441e7` |
| 5 | `lemma` | [IsPath.isHamiltonian_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ispath-ishamiltonian-of-mem--a9d1e786fc2e051d3b3c092b.md) | 47 | `result-track:a9d1e786fc2e051d3b3c092b323d3c394093ad61b0b6e0f682ee4645ec37a5cf` |
| 6 | `lemma` | [IsPath.isHamiltonian_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ispath-ishamiltonian-iff--6fe9ec155470a1a8aea96788.md) | 51 | `result-track:6fe9ec155470a1a8aea967880ef467b8c37f6995812182484ecc81d7a6628fcf` |
| 7 | `lemma` | [IsHamiltonian.support_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltonian-support-tofinset--dc1b27f55d9553f0a6f521f8.md) | 58 | `result-track:dc1b27f55d9553f0a6f521f8fd5f704831e085f59804da337a9a21bc9f872882` |
| 8 | `lemma` | [IsHamiltonian.length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltonian-length-eq--26d837b2e4341a85e7dfc44d.md) | 62 | `result-track:26d837b2e4341a85e7dfc44d2c2890c0ac1e1ff83cae5641df6199a68a0ae317` |
| 9 | `structure` | [IsHamiltonianCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltoniancycle--e534996942343aba5bf56257.md) | 70 | `declaration-track:e534996942343aba5bf56257c20b22d57a4aee810f82cf3ebfaf9d0f8144c405` |
| 10 | `lemma` | [IsHamiltonianCycle.isCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltoniancycle-iscycle--c0c0283ff839493da6548b0f.md) | 75 | `result-track:c0c0283ff839493da6548b0ffd4f1ec1614eea040f8f5a2aafdb4fa63623f47e` |
| 11 | `lemma` | [IsHamiltonianCycle.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltoniancycle-map--6a35f3e4808b22df63a15152.md) | 78 | `result-track:6a35f3e4808b22df63a151522cbc23c11b768a383066b662c5ed0157fe933d28` |
| 12 | `lemma` | [isHamiltonianCycle_isCycle_and_isHamiltonian_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltoniancycle-iscycle-and-ishamiltonian-tail--12437e12d82c62d558788426.md) | 90 | `result-track:12437e12d82c62d5587884261bda5f94b5c99349c952c6924ceef3443c4026e8` |
| 13 | `lemma` | [isHamiltonianCycle_iff_isCycle_and_support_count_tail_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltoniancycle-iff-iscycle-and-support-count-tail-eq-one--1410a523918e137edd7aa17b.md) | 94 | `result-track:1410a523918e137edd7aa17bf4c086d8eaec0221fd82751cf362a628d8369f17` |
| 14 | `lemma` | [IsHamiltonianCycle.mem_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltoniancycle-mem-support--8174fc6a00c334f5386d9003.md) | 100 | `result-track:8174fc6a00c334f5386d9003fc2ee81a4f13a23f80e078c3480289e0a21ebac3` |
| 15 | `lemma` | [IsHamiltonianCycle.length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltoniancycle-length-eq--0cdad0a20ad26e48271b8c54.md) | 105 | `result-track:0cdad0a20ad26e48271b8c54e288e195d99e7674acceb139611b681c2f3e6423` |
| 16 | `lemma` | [IsHamiltonianCycle.count_support_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltoniancycle-count-support-self--1631de618a109b99ff4c8a09.md) | 111 | `result-track:1631de618a109b99ff4c8a0943c4020317da00271d198c36eef4362bcdd46512` |
| 17 | `lemma` | [IsHamiltonianCycle.support_count_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltoniancycle-support-count-of-ne--04f5c87afe073c04ed5bff69.md) | 115 | `result-track:04f5c87afe073c04ed5bff69168a7d29ee868f652f08ded8838047c9a1126b54` |
| 18 | `def` | [IsHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltonian--41e1803ae920a646e45e9c0e.md) | 126 | `declaration-track:41e1803ae920a646e45e9c0e5463824b2eb1351bd1b6a69701fab3107b9c20de` |
| 19 | `lemma` | [IsHamiltonian.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltonian-mono--503259df887a5813046be431.md) | 129 | `result-track:503259df887a5813046be4313f3f630071e6d38938a488101ceccd05ededf7b1` |
| 20 | `lemma` | [IsHamiltonian.connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant9842594cdd07e36f15dc4cdffe1212d40c4992782d070f597a34e6c79d74d050.lean/declarations/ishamiltonian-connected--c479e88bf87b84b67247f064.md) | 133 | `result-track:c479e88bf87b84b67247f064aa1cefddc18df778e40474766b67bb3d67ba660a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
