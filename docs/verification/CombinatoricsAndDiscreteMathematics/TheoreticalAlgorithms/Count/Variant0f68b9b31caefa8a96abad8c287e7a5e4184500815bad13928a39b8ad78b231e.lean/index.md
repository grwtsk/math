# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00e9b6b33b0a72156cd0ec75e0bdb36814a6c6e6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00e9b6b33b0a72156cd0ec75e0bdb36814a6c6e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean.json)

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
| 1 | `theorem` | [count_not_add_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/count-not-add-count--4ce4eb390a7c819726a7e3c0.md) | 37 | `result-track:4ce4eb390a7c819726a7e3c0caeca1ffc67160f866fa654742e0dc5d161d919c` |
| 2 | `theorem` | [count_add_count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/count-add-count-not--9a0e6de3e4d442b767043840.md) | 44 | `result-track:9a0e6de3e4d442b76704384013c66cb6c05041069432b87e6afd19930bc32b09` |
| 3 | `theorem` | [count_false_add_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/count-false-add-count-true--44af07ac4504771c61303e59.md) | 48 | `result-track:44af07ac4504771c61303e59b3aca6cbbab6a7facd94c477e53657d605e26c57` |
| 4 | `theorem` | [count_true_add_count_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/count-true-add-count-false--a56fb4c1840c454411059061.md) | 55 | `result-track:a56fb4c1840c454411059061ede5e3ee94adb898d98204a94216d7e367d3ec0c` |
| 5 | `theorem` | [IsChain.count_not_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/ischain-count-not-cons--4f8f487fdbc329eae80d26c1.md) | 58 | `result-track:4f8f487fdbc329eae80d26c157d7e625827b346c7bcdbb98c36aa30cb7b375f3` |
| 6 | `theorem` | [count_not_eq_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/count-not-eq-count--2907a54f1c40b80cb3b1c855.md) | 69 | `result-track:2907a54f1c40b80cb3b1c855b7d71dbc3818cea35a7e542fe3140c7a269179f3` |
| 7 | `theorem` | [count_false_eq_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/count-false-eq-count-true--9f560df18402c5792d2e27ab.md) | 75 | `result-track:9f560df18402c5792d2e27ab1a1e795aa2f43e1a2cc56601a889bfcc5a8aef09` |
| 8 | `theorem` | [count_not_le_count_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/count-not-le-count-add-one--e0833165abf49befed87f94e.md) | 79 | `result-track:e0833165abf49befed87f94e754ba71c4bbcfe8adeefed458e1c30aea1cccf36` |
| 9 | `theorem` | [count_false_le_count_true_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/count-false-le-count-true-add-one--550f983ed77389bcb7790593.md) | 85 | `result-track:550f983ed77389bcb7790593328d594e9355b818c9cb997f49562f2fbfeb6d9c` |
| 10 | `theorem` | [count_true_le_count_false_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/count-true-le-count-false-add-one--8f3e88b81ea0dcb41af6f8f7.md) | 89 | `result-track:8f3e88b81ea0dcb41af6f8f7a0bd53e17e0f15dec545c803dd54a002d3a1ce9e` |
| 11 | `theorem` | [two_mul_count_bool_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/two-mul-count-bool-of-even--44988fe3be9bb6f938dcd731.md) | 93 | `result-track:44988fe3be9bb6f938dcd7314250138b27f6b59b630e9a1af7755ac67a3e09a5` |
| 12 | `theorem` | [two_mul_count_bool_eq_ite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/two-mul-count-bool-eq-ite--6a86c409170e90457e06336b.md) | 97 | `result-track:6a86c409170e90457e06336ba7017231085d6e92e070eba5b7a55f774226ad0c` |
| 13 | `theorem` | [length_sub_one_le_two_mul_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/length-sub-one-le-two-mul-count-bool--3cd6a67aa2d168c21930700e.md) | 107 | `result-track:3cd6a67aa2d168c21930700ef26a4e9d7e0afa2fb54d7ae50c84928793168890` |
| 14 | `theorem` | [length_div_two_le_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/length-div-two-le-count-bool--95348e0135f16a969cc0a572.md) | 111 | `result-track:95348e0135f16a969cc0a572eead120002261e47e490ef797b71c35247575219` |
| 15 | `theorem` | [two_mul_count_bool_le_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0f68b9b31caefa8a96abad8c287e7a5e4184500815bad13928a39b8ad78b231e.lean/declarations/two-mul-count-bool-le-length-add-one--0bfae2f1f2de137c757e5456.md) | 116 | `result-track:0bfae2f1f2de137c757e5456d632a64f48ca442f86b45314a2412a22474b034a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
