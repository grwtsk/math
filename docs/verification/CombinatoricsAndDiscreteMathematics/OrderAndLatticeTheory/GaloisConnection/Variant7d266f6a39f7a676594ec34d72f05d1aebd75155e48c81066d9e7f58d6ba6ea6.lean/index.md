# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.GaloisConnection.Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8e0ed7dd8c1b87cfe2eefb103fd4e6b95c8760e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8e0ed7dd8c1b87cfe2eefb103fd4e6b95c8760e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean.json)

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
| 1 | `def` | [leftDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/leftdual--5e6c441b68072b25e6be2aaa.md) | 57 | `declaration-track:5e6c441b68072b25e6be2aaadf1aee5aa339c7960285cca558fce76033a0e17b` |
| 2 | `def` | [rightDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/rightdual--1693054ad4552dba900465ca.md) | 61 | `declaration-track:1693054ad4552dba900465ca6a1c31dd19a04208cae18d206341f3999d758123` |
| 3 | `theorem` | [gc_leftDual_rightDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/gc-leftdual-rightdual--95ad0e4af424aee9b524a4dd.md) | 64 | `result-track:95ad0e4af424aee9b524a4dd66313992b63caab0bea6594c440e254867afe524` |
| 4 | `def` | [leftFixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/leftfixedpoints--ab18d39f9bfb43a75e1956f0.md) | 70 | `declaration-track:ab18d39f9bfb43a75e1956f0d86c0db6f0f0552910054683203ac85aa5a74a1c` |
| 5 | `def` | [rightFixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/rightfixedpoints--ba86c5adb5ef9888c89887e3.md) | 74 | `declaration-track:ba86c5adb5ef9888c89887e383727f199c2a5d7dfd88451150c883dfda1359fb` |
| 6 | `theorem` | [leftDual_mem_rightFixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/leftdual-mem-rightfixedpoint--3af60151bf162f8b591452ed.md) | 79 | `result-track:3af60151bf162f8b591452edbb5b11d0a421ebf48f69e7c0e937ed3c2d9320b0` |
| 7 | `theorem` | [rightDual_mem_leftFixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/rightdual-mem-leftfixedpoint--c75cc812e0d4946d69430646.md) | 85 | `result-track:c75cc812e0d4946d694306469102511c9f8601c229f296e7415b3a52f41ec51d` |
| 8 | `def` | [equivFixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/equivfixedpoints--3169083ab97289eed61d8ff4.md) | 92 | `declaration-track:3169083ab97289eed61d8ff4373f8e46799840afc8e06545da9d8b1de736856e` |
| 9 | `theorem` | [rightDual_leftDual_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/rightdual-leftdual-le-of-le--9e68ceca5f3c4a9d19905be1.md) | 98 | `result-track:9e68ceca5f3c4a9d19905be13135cb6465dc51dfc8e52d1bd2b5a2c4fcdaf3c3` |
| 10 | `theorem` | [leftDual_rightDual_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/declarations/leftdual-rightdual-le-of-le--9b76e03d2920674c2681d075.md) | 105 | `result-track:9b76e03d2920674c2681d075943a3290f1ef1c3ca7558b01a4c4f1724d53e712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
