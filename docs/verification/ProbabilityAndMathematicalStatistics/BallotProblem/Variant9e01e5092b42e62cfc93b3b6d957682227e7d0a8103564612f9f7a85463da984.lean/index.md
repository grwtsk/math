# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.BallotProblem.Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37ae5cb89a7433435ce02af1512f2196b7cbc7fc",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37ae5cb89a7433435ce02af1512f2196b7cbc7fc`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.UniformOn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [staysPositive](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/stayspositive--3911a7427169232912a1765e.md) | 39 | `declaration-track:3911a7427169232912a1765e6e8430c763bd285d552faa0c4c90390b599da0af` |
| 2 | `theorem` | [staysPositive_nil](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/stayspositive-nil--6cfdb0281bc7cf2b643c386f.md) | 43 | `result-track:6cfdb0281bc7cf2b643c386f331d8d5caf4fe884feeb415c8d091965a3798744` |
| 3 | `theorem` | [staysPositive_suffix](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/stayspositive-suffix--d983b53cf982cfad41dc0cb7.md) | 46 | `result-track:d983b53cf982cfad41dc0cb79a5f421c2acd659d1b78cb735f8dd60d55aecdfb` |
| 4 | `theorem` | [staysPositive_cons](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/stayspositive-cons--ee8cde1c84ba8c8378976eff.md) | 49 | `result-track:ee8cde1c84ba8c8378976effa6bdff74feb06e7fac576a365ce5a19c59096f73` |
| 5 | `theorem` | [sum_nonneg_of_staysPositive](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/sum-nonneg-of-stayspositive--5132631a9ad9e02d3d80648c.md) | 53 | `result-track:5132631a9ad9e02d3d80648c003cdd16b74733f59a809aa74ddabc1785e6db76` |
| 6 | `theorem` | [staysPositive_cons_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/stayspositive-cons-pos--addeecea275d0eca61e53039.md) | 57 | `result-track:addeecea275d0eca61e530398d4e940a5720ab7cfdce90240cb3e8354d35e9a9` |
| 7 | `def` | [countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/countedsequence--2628269933a5d65641a94653.md) | 70 | `declaration-track:2628269933a5d65641a94653599a1593469e6074647b844cdbe661083e5c3834` |
| 8 | `theorem` | [mem_countedSequence_iff_perm](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/mem-countedsequence-iff-perm--6214dfe75360c0eda8b39283.md) | 75 | `result-track:6214dfe75360c0eda8b392832024e9f8b6ae476df7cefd01d89a0d0649d95f2d` |
| 9 | `theorem` | [counted_right_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/counted-right-zero--987d65fcad044a1dc9d22bb8.md) | 83 | `result-track:987d65fcad044a1dc9d22bb89839f3d9931100f30bdd77f078ea10669177379b` |
| 10 | `theorem` | [counted_left_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/counted-left-zero--a7d5447cf9e5acfc1c76c64d.md) | 87 | `result-track:a7d5447cf9e5acfc1c76c64db08757ec544bfcca43b7a18b49b7e6a6d7601979` |
| 11 | `theorem` | [mem_of_mem_countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/mem-of-mem-countedsequence--482d097c8c25fb3be1b4de17.md) | 90 | `result-track:482d097c8c25fb3be1b4de17f267793d14798825a9449cf63a32336e88e25d0a` |
| 12 | `theorem` | [length_of_mem_countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/length-of-mem-countedsequence--e48237de9f8524a678817443.md) | 94 | `result-track:e48237de9f8524a678817443268cb8512be972cf84c188b5f254b2a30293b89c` |
| 13 | `theorem` | [counted_eq_nil_iff](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/counted-eq-nil-iff--76a8418a624ed456eae59863.md) | 97 | `result-track:76a8418a624ed456eae59863e7d4777de9df1e1c9ec84f98c4a0ee5754f1d25b` |
| 14 | `theorem` | [counted_ne_nil_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/counted-ne-nil-left--6e5a452270f4793097f4ea44.md) | 101 | `result-track:6e5a452270f4793097f4ea4414ab540f16459ad067adf43bd7b2f2e1bd6feed2` |
| 15 | `theorem` | [counted_ne_nil_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/counted-ne-nil-right--99fa89ddc57d2f851eeada9e.md) | 104 | `result-track:99fa89ddc57d2f851eeada9e65d1f81bc93dfebc765bbe0918acc8e0bf69e07c` |
| 16 | `theorem` | [counted_succ_succ](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/counted-succ-succ--55f7389e7f0d157c41061778.md) | 107 | `result-track:55f7389e7f0d157c4106177883db3cc0ccc4be7a1d66e0eeadb025d5a4949294` |
| 17 | `theorem` | [countedSequence_finite](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/countedsequence-finite--5e44daf5bfb7b0f0006ebeda.md) | 140 | `result-track:5e44daf5bfb7b0f0006ebeda41be387cbe3383421fd75ab3bd3f8b94d859a3a3` |
| 18 | `theorem` | [countedSequence_nonempty](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/countedsequence-nonempty--2256d0800b1ed1c181cf394c.md) | 148 | `result-track:2256d0800b1ed1c181cf394cc31f13aa11884e13b4aa007224292b1b681f4f4d` |
| 19 | `theorem` | [sum_of_mem_countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/sum-of-mem-countedsequence--8b4aca28a8aceca557e6ed86.md) | 155 | `result-track:8b4aca28a8aceca557e6ed8699a8c4e5beb3602498b86254831d9a20c3fa08c6` |
| 20 | `theorem` | [disjoint_bits](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/disjoint-bits--d23beb7b836201166d45a22b.md) | 158 | `result-track:d23beb7b836201166d45a22b325dfa37ac0b4690c6fefb53fe1eb253190e3f61` |
| 21 | `def` | [measurableSpace_list_int](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/measurablespace-list-int--a6c75c212855b27b32f8d221.md) | 166 | `declaration-track:a6c75c212855b27b32f8d2218f2004f3070a162eca70b927dfe3b8d342124ee4` |
| 22 | `theorem` | [measurableSingletonClass_list_int](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/measurablesingletonclass-list-int--6bd880519019d2232afb130f.md) | 170 | `result-track:6bd880519019d2232afb130f7cd721559c22b97ad30032d6126928cad3389822` |
| 23 | `theorem` | [list_int_measurableSet](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/list-int-measurableset--e018251138cc4de0bb47789d.md) | 175 | `result-track:e018251138cc4de0bb47789da25cec7660ce0e177caa8846c0e0220919f1156c` |
| 24 | `theorem` | [count_countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/count-countedsequence--cd803512a2cf5e15804e9fe0.md) | 177 | `result-track:cd803512a2cf5e15804e9fe0e61a02949a4633ecc4f473375006fe177bf91723` |
| 25 | `theorem` | [first_vote_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/first-vote-pos--ee7c6d487a991d0c167ec0ff.md) | 187 | `result-track:ee7c6d487a991d0c167ec0ff398f60e1ccb39d369b3896bef17ff7885bf8a8fb` |
| 26 | `theorem` | [headI_mem_of_nonempty](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/headi-mem-of-nonempty--5f2fe3ff80e5a767a6d9137a.md) | 224 | `result-track:5f2fe3ff80e5a767a6d9137a9ecb2cfb7bbec397e0037cf5e78092d48acc3778` |
| 27 | `theorem` | [first_vote_neg](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/first-vote-neg--926bddd316fc53b5fa8a6d24.md) | 228 | `result-track:926bddd316fc53b5fa8a6d24b4d0f5ebb9b29d9715d2d308ca83c25d51c25ece` |
| 28 | `theorem` | [ballot_same](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/ballot-same--a120a3a8e0580b5be7883fb9.md) | 238 | `result-track:a120a3a8e0580b5be7883fb9cd0aea3c8a9c7a4680b45af2600004ca65b498da` |
| 29 | `theorem` | [ballot_edge](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/ballot-edge--4ff104402fd368a4d4f0b6a5.md) | 247 | `result-track:4ff104402fd368a4d4f0b6a5f368d1a81ee2d28df72707446ab39676b0074cd4` |
| 30 | `theorem` | [countedSequence_int_pos_counted_succ_succ](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/countedsequence-int-pos-counted-succ-succ--037f3a13d36cd451fe405c68.md) | 254 | `result-track:037f3a13d36cd451fe405c68f9a18e665d2d73fedfb94370c6a5b5e6f043f546` |
| 31 | `theorem` | [ballot_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/ballot-pos--568ceaf8d9689d79606c3dd1.md) | 265 | `result-track:568ceaf8d9689d79606c3dd160c9d3c18f9edc4097d7ee6e9f17c0ad6cad4d32` |
| 32 | `theorem` | [countedSequence_int_neg_counted_succ_succ](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/countedsequence-int-neg-counted-succ-succ--fb1cf216d3d817147863b9e9.md) | 280 | `result-track:fb1cf216d3d817147863b9e9b0c73516118abedd409d56faa238d3b0d4a7c7fb` |
| 33 | `theorem` | [ballot_neg](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/ballot-neg--420ecb91d8e709b0a2c59915.md) | 292 | `result-track:420ecb91d8e709b0a2c599150a3e7f32cfc9554762cd21f40c96451b86892737` |
| 34 | `theorem` | [ballot_problem'](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/ballot-problem--cff5bcedae84877583cbea06.md) | 308 | `result-track:cff5bcedae84877583cbea064a8f509788ab290ded6e96b2f72b3525bf819f66` |
| 35 | `theorem` | [ballot_problem](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/declarations/ballot-problem--abce71d89a6f0d9f0fed2d9f.md) | 347 | `result-track:abce71d89a6f0d9f0fed2d9f201c611dad17d466eccbf1c5cef57549aa0d4850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
