# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Fin.Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "732cb8b471da4cfea109a3a2e453745200642d21",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `732cb8b471da4cfea109a3a2e453745200642d21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean.json)

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
| 1 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/tail--f35f362e17381b198a1786b3.md) | 41 | `declaration-track:f35f362e17381b198a1786b36da7f0523419180acc96bee1f636130a61e36ea6` |
| 2 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons--91a255646303f8d65255d402.md) | 45 | `declaration-track:91a255646303f8d65255d402674d3c038fd35147ce0996bf75fedecb8d565755` |
| 3 | `theorem` | [tail_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/tail-apply--8f3b6651a4d6fe7b76943437.md) | 48 | `result-track:8f3b6651a4d6fe7b769434373ba40158e4d4b5e41d33a32b2fcd5ad414cbcd88` |
| 4 | `theorem` | [cons_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-zero--d94e15fd35b2784d116a85eb.md) | 52 | `result-track:d94e15fd35b2784d116a85eb802785e931aea181e3cc176b228e4c4bf643820b` |
| 5 | `theorem` | [cons_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-succ--8b3cc812b7d91f259a97e936.md) | 56 | `result-track:8b3cc812b7d91f259a97e9363cbc6cde5201640469e3d922fd5d192a2fcf6b38` |
| 6 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/tail-cons--b62c269920d5053445050333.md) | 60 | `result-track:b62c269920d5053445050333cfa10f79922511e3771386af4a6899429eaa351e` |
| 7 | `theorem` | [tail_update_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/tail-update-zero--acb06058174772a054fe3baa.md) | 64 | `result-track:acb06058174772a054fe3baaae6ac03bf1caa15f2b471d6dcf58d0d4b0a72925` |
| 8 | `theorem` | [tail_update_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/tail-update-succ--3c620c0c6edfeb6ad573e21f.md) | 67 | `result-track:3c620c0c6edfeb6ad573e21fda0af3bf8adba6827ba5e37302523275eb4d4e1b` |
| 9 | `theorem` | [cons_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-tail--d0fa8280a888741cbe03bb26.md) | 70 | `result-track:d0fa8280a888741cbe03bb26b1a0dda36e9fe3a02458030b921910df20a57b4c` |
| 10 | `lemma` | [cons_zero_eq_single_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-zero-eq-single-zero--27ff47636ec7c4981cf30533.md) | 76 | `result-track:27ff47636ec7c4981cf30533b56e390b6981a1e3ea1d3d88793bd9e612a819af` |
| 11 | `lemma` | [cons_zero_single_eq_single_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-zero-single-eq-single-succ--e44781d66ed25e88c3f2cef3.md) | 80 | `result-track:e44781d66ed25e88c3f2cef37976682ebf75d503803ea3b7de12c10548bbb2d9` |
| 12 | `theorem` | [cons_zero_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-zero-zero--66367d0de525f25b7375e0d4.md) | 85 | `result-track:66367d0de525f25b7375e0d41fb595956b8ff4608f6aa376ca2e25c70cedbae2` |
| 13 | `theorem` | [cons_ne_zero_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-ne-zero-of-left--fe4f6f898fbf2d5a1511a2fd.md) | 89 | `result-track:fe4f6f898fbf2d5a1511a2fd7b63e8d80c2c018d6cb14c858ffabe7593cd2c93` |
| 14 | `theorem` | [cons_ne_zero_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-ne-zero-of-right--0a5f7570f6f24c8db13899da.md) | 93 | `result-track:0a5f7570f6f24c8db13899daffc1500dba0bf006480c6935281e876892eae573` |
| 15 | `theorem` | [cons_ne_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-ne-zero-iff--315bd90e0b16f6a6949745e4.md) | 98 | `result-track:315bd90e0b16f6a6949745e47bf042ebb43bdd96b1af739cdc5fe8565a5f167c` |
| 16 | `lemma` | [cons_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-support--aa7c53219839c5cc2d117764.md) | 103 | `result-track:aa7c53219839c5cc2d1177640824ceaddee6b73bfbcef8b5a0802be3329fcc1e` |
| 17 | `lemma` | [cons_right_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-right-injective--56d483678d07f9aa81448490.md) | 111 | `result-track:56d483678d07f9aa81448490a2d8b90846bc4f5a35eff8ba1e80e091e97a5295` |
| 18 | `theorem` | [cons_injective2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-injective2--c73951c0d204ab6e5de416a5.md) | 115 | `result-track:c73951c0d204ab6e5de416a5aadc8ac7eb1b2dde427649f8aa7147a13b394e28` |
| 19 | `lemma` | [cons_eq_single_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-eq-single-zero-iff--9bb926b1fe1a5b29edf61b37.md) | 121 | `result-track:9bb926b1fe1a5b29edf61b370588b9216897b00af704cf1936dfa8092187cb9b` |
| 20 | `lemma` | [cons_eq_single_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant3d750fd53a4c4972058ce0076df0a35dd18487de6a741f37dfe294ade49e9dc9.lean/declarations/cons-eq-single-succ-iff--211967c5a87a146d29fd7aa8.md) | 124 | `result-track:211967c5a87a146d29fd7aa8b3521e366eaa2e9fd5989b12954802b4a1489779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
