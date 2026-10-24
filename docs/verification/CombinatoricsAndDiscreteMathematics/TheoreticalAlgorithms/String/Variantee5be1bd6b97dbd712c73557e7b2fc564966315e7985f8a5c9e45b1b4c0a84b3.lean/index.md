# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71ebdc858eb11a35a30c55f81b928aedc79c4c12",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71ebdc858eb11a35a30c55f81b928aedc79c4c12`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Find.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.String.ForwardSearcher` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contains_eq_true_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-eq-true-of-isempty--b5ff7eafffc728e4c1b642be.md) | 31 | `result-track:b5ff7eafffc728e4c1b642bea4608dcff3925e1f69dc7ff54c19b1de6e9267b4` |
| 2 | `theorem` | [contains_string_eq_true_of_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-string-eq-true-of-empty--d46bfc30123131f75f8f4bad.md) | 38 | `result-track:d46bfc30123131f75f8f4badd73c1445957884c1598748a14f37c21d096ad37b` |
| 3 | `theorem` | [isInfix_toList_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/isinfix-tolist-iff--7cd24a1de8ead5b226d1f07c.md) | 45 | `result-track:7cd24a1de8ead5b226d1f07ca174eec1a837ec4f6d5fe13ed4bb0030bd5749c0` |
| 4 | `theorem` | [contains_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-slice-iff--0cec61245db575d8d0610618.md) | 55 | `result-track:0cec61245db575d8d06106183032ba9440523f036267433bd26ece999358713d` |
| 5 | `theorem` | [contains_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-string-iff--ff1d1d40248ee4570cd4eb9c.md) | 66 | `result-track:ff1d1d40248ee4570cd4eb9c9e49a734bb3700f3ac6a00bfc27afe20dd17d63e` |
| 6 | `theorem` | [contains_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-slice-eq-false-iff--3dc412eb193b5a5befab1af5.md) | 71 | `result-track:3dc412eb193b5a5befab1af5ae8d60d2e0d6b79cbdc1beddf89d1532f1e79d95` |
| 7 | `theorem` | [contains_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-string-eq-false-iff--e115e51372aa8512740d1ce6.md) | 76 | `result-track:e115e51372aa8512740d1ce625c3209cd954659a1248215df8fbb5a7c1fa4c42` |
| 8 | `theorem` | [contains_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-slice-iff--0f2bd916546e143ac65cb712.md) | 83 | `result-track:0f2bd916546e143ac65cb712620eb93ab83d09768be100a69eb6a98ced576ed6` |
| 9 | `theorem` | [contains_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-string-iff--7501d422fc38304126fcc3ee.md) | 88 | `result-track:7501d422fc38304126fcc3eeb260ae59fceeebeb4cdf3ba0b02e47cf8376dcb1` |
| 10 | `theorem` | [contains_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-slice-eq-false-iff--2e1024bdbd836741897fc132.md) | 93 | `result-track:2e1024bdbd836741897fc1325b8bab7ddebc6cdea502d9934a6f919e201b1ac2` |
| 11 | `theorem` | [contains_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-string-eq-false-iff--d08bd6bd22e988cc6c024698.md) | 98 | `result-track:d08bd6bd22e988cc6c024698f266ca671f74b79ecb3960ae1acd601620910f1c` |
| 12 | `theorem` | [contains_string_eq_internal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3.lean/declarations/contains-string-eq-internal--8bc348a483551ab31679ebaa.md) | 106 | `result-track:8bc348a483551ab31679ebaadb51fdfbe2418f77d8c4c3f988b70d94c9bf0666` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
