# Verification target: GRWTSK.Topology.GeneralTopology.DynamicalEntourage.Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20ea9df4a15893e3631ee6ed827a6f9a7294ea4f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20ea9df4a15893e3631ee6ed827a6f9a7294ea4f`.

Source path: `GRWTSK/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions.SumProd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/dynentourage--732475e597e9dca95d66a8a4.md) | 56 | `declaration-track:732475e597e9dca95d66a8a41bd9e2fcd21c635e0c4bc9d130525f15fc95f54c` |
| 2 | `lemma` | [dynEntourage_eq_inter_Ico](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/dynentourage-eq-inter-ico--0e107b24db54cb3ebfdb2b53.md) | 59 | `result-track:0e107b24db54cb3ebfdb2b53cb6498b6fd57940097097ecb3cf07e25f4a8c9c0` |
| 3 | `lemma` | [mem_dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/mem-dynentourage--d2f1326aece89a0826a12891.md) | 63 | `result-track:d2f1326aece89a0826a1289103db28dad417859bf8d45c918029b71d0298cf91` |
| 4 | `lemma` | [mem_ball_dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/mem-ball-dynentourage--65f5d93528c60346c903951d.md) | 67 | `result-track:65f5d93528c60346c903951d0c4ea9630687b45d70b3fe7750837be0391e5860` |
| 5 | `lemma` | [dynEntourage_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/dynentourage-mem-uniformity--7ae03c864d1051003802ebcb.md) | 71 | `result-track:7ae03c864d1051003802ebcbe9cd4adc9f78a758f5c5fc2e7eeeca383191b085` |
| 6 | `lemma` | [ball_dynEntourage_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/ball-dynentourage-mem-nhds--051ed378222a87b85b4e72af.md) | 79 | `result-track:051ed378222a87b85b4e72af57f028a2f165e59a6a25d5896de2ba7f0f289bae` |
| 7 | `lemma` | [idRel_subset_dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/idrel-subset-dynentourage--fe8727e71c619d4c1405f51a.md) | 87 | `result-track:fe8727e71c619d4c1405f51a0ce3cfd0cdc50090d23fdc81154e6c86f3e72671` |
| 8 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.DynEntourage.Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.IsSymmetricRel.dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/root-grwtsk-topology-generaltopology-dynentourage-variantaabf22922c77dbd--90024568c34ff4462a0182cc.md) | 92 | `result-track:90024568c34ff4462a0182ccedc50702a998c41d66665a286452b8e476a0cdf7` |
| 9 | `lemma` | [dynEntourage_comp_subset](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/dynentourage-comp-subset--667c986da75fb00b676cbc1a.md) | 103 | `result-track:667c986da75fb00b676cbc1a690f876ce7b3b93654b194a9d8a0d6ef8dbaa9ad` |
| 10 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.DynEntourage.Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.isOpen.dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/root-grwtsk-topology-generaltopology-dynentourage-variantaabf22922c77dbd--a16724d1a88d34dc0a5a95d0.md) | 111 | `result-track:a16724d1a88d34dc0a5a95d0a064628d90b43154325bfedcd549953da4f1b150` |
| 11 | `lemma` | [dynEntourage_monotone](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/dynentourage-monotone--18966724c2f0603cfbe28ca0.md) | 118 | `result-track:18966724c2f0603cfbe28ca09f936b67af01f5f371ac15698aad98a125035c09` |
| 12 | `lemma` | [dynEntourage_antitone](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/dynentourage-antitone--5767844d7d90cf91c3a75848.md) | 122 | `result-track:5767844d7d90cf91c3a758481eb7ecaa9a7c5d91b1362c4dc0128657105aaf55` |
| 13 | `lemma` | [dynEntourage_zero](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/dynentourage-zero--307db0adc019c9738d3b975c.md) | 127 | `result-track:307db0adc019c9738d3b975c8fbd056ba3c6beff75fecb5f1d4d43d97b7a2113` |
| 14 | `lemma` | [dynEntourage_one](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/dynentourage-one--09df1969a3cb423d30f50297.md) | 131 | `result-track:09df1969a3cb423d30f502978fbf1737b0e1ac15294c6bb326f1a83ba1f62ba0` |
| 15 | `lemma` | [dynEntourage_univ](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/dynentourage-univ--79e99fbb1aebf414fb71e46d.md) | 135 | `result-track:79e99fbb1aebf414fb71e46de8ad1f70f4662f396668ebf2b591717543622404` |
| 16 | `lemma` | [mem_ball_dynEntourage_comp](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/mem-ball-dynentourage-comp--50d6bb03bd4f6fb354b93446.md) | 138 | `result-track:50d6bb03bd4f6fb354b9344656007635d9cc2358f688d67bd40d3adda1dbe605` |
| 17 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.DynEntourage.Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.Function.Semiconj.preimage_dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/declarations/root-grwtsk-topology-generaltopology-dynentourage-variantaabf22922c77dbd--b966629eeea880dfedda8739.md) | 145 | `result-track:b966629eeea880dfedda8739036954775fc5a31dab29a119275bf27bb771a1dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
