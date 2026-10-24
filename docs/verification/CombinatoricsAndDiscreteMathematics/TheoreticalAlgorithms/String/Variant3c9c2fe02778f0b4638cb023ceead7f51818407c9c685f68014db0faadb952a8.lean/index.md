# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1889d665df409db2c5008725ae3a21cab2d3ec76",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1889d665df409db2c5008725ae3a21cab2d3ec76`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Find.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.String.ForwardSearcher` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contains_eq_true_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-eq-true-of-isempty--fffa6171e0bdd1c2b9dd7a1c.md) | 23 | `result-track:fffa6171e0bdd1c2b9dd7a1c7c4c5cd8096a2907d962dba819cf0c50bf6a9dd5` |
| 2 | `theorem` | [contains_string_eq_true_of_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-string-eq-true-of-empty--3c670fc248bac2c67efd10d4.md) | 30 | `result-track:3c670fc248bac2c67efd10d41069c46865763ba346cdfe870ed058eb424eba3b` |
| 3 | `theorem` | [isInfix_toList_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/isinfix-tolist-iff--d5dc03f8a58632a89a782127.md) | 37 | `result-track:d5dc03f8a58632a89a7821279c40a6290024a188fb709adf6bdc4cfae8edcc52` |
| 4 | `theorem` | [contains_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-slice-iff--c255aa4f56b174f46d8dd60e.md) | 47 | `result-track:c255aa4f56b174f46d8dd60e91c03ec8a4940a1a26e5ffbdfcebbd5ddb8be00f` |
| 5 | `theorem` | [contains_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-string-iff--0fa501bf1a8e1370c6b09403.md) | 58 | `result-track:0fa501bf1a8e1370c6b09403697e779a4734670ed6f9010f8e964eb322ad133e` |
| 6 | `theorem` | [contains_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-slice-eq-false-iff--87d345c3b00fec295c960dcb.md) | 63 | `result-track:87d345c3b00fec295c960dcbcd2985b6b8853b974495fabbbc82c57dba3e6052` |
| 7 | `theorem` | [contains_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-string-eq-false-iff--9fdaa6d8370b3eb6a7966625.md) | 68 | `result-track:9fdaa6d8370b3eb6a7966625725303c5a5a2698de71eed7852838f58a574ab77` |
| 8 | `theorem` | [contains_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-slice-iff--91c8a66f513b7558cf3c4387.md) | 75 | `result-track:91c8a66f513b7558cf3c438774e7e98db2123995b13ee38ef52634f28a9f92f3` |
| 9 | `theorem` | [contains_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-string-iff--0ef8b51881aeb795eb3cfad8.md) | 80 | `result-track:0ef8b51881aeb795eb3cfad867bc957f46dc52bdcc055ba3ed177928cd396b7f` |
| 10 | `theorem` | [contains_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-slice-eq-false-iff--d5d2c3a5b0ffba96ad7e810a.md) | 85 | `result-track:d5d2c3a5b0ffba96ad7e810a4ce3eba0d486f8203b0e627a7690815a5b9c1ec1` |
| 11 | `theorem` | [contains_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-string-eq-false-iff--fde8b3c73868215d9ec97a79.md) | 90 | `result-track:fde8b3c73868215d9ec97a7972b1e3be5e2ef2848c194e32eb5e67f5f28d3176` |
| 12 | `theorem` | [contains_string_eq_internal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8.lean/declarations/contains-string-eq-internal--ea5188cf5297944635f926f5.md) | 98 | `result-track:ea5188cf5297944635f926f5988c02fdd8d208dcd2eaabff2abece64c9272b09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
