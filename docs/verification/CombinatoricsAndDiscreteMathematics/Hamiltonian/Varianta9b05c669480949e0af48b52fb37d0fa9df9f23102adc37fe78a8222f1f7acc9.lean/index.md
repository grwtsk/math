# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Hamiltonian.Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "401031c9d101859909bb5ec896902ea8a4078754",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `401031c9d101859909bb5ec896902ea8a4078754`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltonian--561aa58518e493fafde23bcc.md) | 40 | `declaration-track:561aa58518e493fafde23bccf42a295f94770e0d5e0143bfd4440818eb050ffe` |
| 2 | `lemma` | [IsHamiltonian.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltonian-map--433067d20acf5848dd60ee04.md) | 42 | `result-track:433067d20acf5848dd60ee044a9fa5fe7a7573c0338abde9e9ea7733457445ff` |
| 3 | `lemma` | [IsHamiltonian.mem_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltonian-mem-support--5333a2f72ffea2dd4cbafb1d.md) | 47 | `result-track:5333a2f72ffea2dd4cbafb1d62c016470a19176c74aa7dd8811f18e233809786` |
| 4 | `lemma` | [IsHamiltonian.isPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltonian-ispath--72caca2563d7d20e1264b22f.md) | 51 | `result-track:72caca2563d7d20e1264b22f57052bc6cbb192b5feb80be4bf190f9c386b8fa2` |
| 5 | `lemma` | [IsPath.isHamiltonian_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ispath-ishamiltonian-of-mem--ebf7b6b66d5af4059e4bb532.md) | 55 | `result-track:ebf7b6b66d5af4059e4bb5328951abdd0a734c0654a1b2ce466808e100a389d6` |
| 6 | `lemma` | [IsPath.isHamiltonian_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ispath-ishamiltonian-iff--9eb49f279f16a4241856baf5.md) | 59 | `result-track:9eb49f279f16a4241856baf51e1262df16f01546c91de86135a496d2f075757c` |
| 7 | `lemma` | [IsHamiltonian.support_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltonian-support-tofinset--4fd3e5c834e840f28178d45f.md) | 66 | `result-track:4fd3e5c834e840f28178d45f3c3fa2b8e9bf444e55f5d60c7ff048245617e5e6` |
| 8 | `lemma` | [IsHamiltonian.length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltonian-length-eq--0b1d6a0de39cbeda638ef441.md) | 70 | `result-track:0b1d6a0de39cbeda638ef441cc53b4617a278293e6439dd4ab3c13d3dca3d352` |
| 9 | `structure` | [IsHamiltonianCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltoniancycle--6d5d13ad800a4999f23f7d9e.md) | 78 | `declaration-track:6d5d13ad800a4999f23f7d9e05ce8b65c86ef0dce4abd9f78f8ec450c625c987` |
| 10 | `lemma` | [IsHamiltonianCycle.isCycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltoniancycle-iscycle--926b6cce3deddfbb32d838c4.md) | 83 | `result-track:926b6cce3deddfbb32d838c48fa811ee63a3c57631b63ad052b911c7742862a8` |
| 11 | `lemma` | [IsHamiltonianCycle.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltoniancycle-map--014b84c1b1215474b597907b.md) | 86 | `result-track:014b84c1b1215474b597907bee9dcf67c99b657694106955c65591585ee98b10` |
| 12 | `lemma` | [isHamiltonianCycle_isCycle_and_isHamiltonian_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltoniancycle-iscycle-and-ishamiltonian-tail--dc98dc9337bf22c04a3d59b5.md) | 98 | `result-track:dc98dc9337bf22c04a3d59b538b59185e32e5ee50b47ad4340a15b946266461f` |
| 13 | `lemma` | [isHamiltonianCycle_iff_isCycle_and_support_count_tail_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltoniancycle-iff-iscycle-and-support-count-tail-eq-one--7e359cd29b4e6390132b4d9d.md) | 102 | `result-track:7e359cd29b4e6390132b4d9d6efc9ebd58323729b0abb7e68d90a07b4ad4b508` |
| 14 | `lemma` | [IsHamiltonianCycle.mem_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltoniancycle-mem-support--43366d54c61c199621751d3f.md) | 108 | `result-track:43366d54c61c199621751d3f06daf8fdf80d3fd49d8a4bfca2711ee85d08da1a` |
| 15 | `lemma` | [IsHamiltonianCycle.length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltoniancycle-length-eq--71461f370fbafd59decad816.md) | 113 | `result-track:71461f370fbafd59decad816a7dfe1c3c858436d51f27d6aa45c69802dcdd459` |
| 16 | `lemma` | [IsHamiltonianCycle.count_support_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltoniancycle-count-support-self--4a524a56e11027e38d81e9d2.md) | 119 | `result-track:4a524a56e11027e38d81e9d2eed90a3f90d779c6b4506cf77ca81072c0fd8848` |
| 17 | `lemma` | [IsHamiltonianCycle.support_count_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltoniancycle-support-count-of-ne--736ceb7823a62854baec09a2.md) | 123 | `result-track:736ceb7823a62854baec09a2872e44ac2c9cba8856f0b9ce72fd4e60395f99f0` |
| 18 | `def` | [IsHamiltonian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltonian--cf251e368ecc731fef463157.md) | 134 | `declaration-track:cf251e368ecc731fef46315757717f36820149f86dbfbaa5da2a9126cbfc5b59` |
| 19 | `lemma` | [IsHamiltonian.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltonian-mono--070eb7efe316e0b3227cfce8.md) | 137 | `result-track:070eb7efe316e0b3227cfce89af1cc5715281cdba466b67c628765ca7753722c` |
| 20 | `lemma` | [IsHamiltonian.connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Hamiltonian/Varianta9b05c669480949e0af48b52fb37d0fa9df9f23102adc37fe78a8222f1f7acc9.lean/declarations/ishamiltonian-connected--82fe6b5c3394102c9ad91af6.md) | 141 | `result-track:82fe6b5c3394102c9ad91af60e69ce64458c63e8b2ae24fd71fa92b4798d0966` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
