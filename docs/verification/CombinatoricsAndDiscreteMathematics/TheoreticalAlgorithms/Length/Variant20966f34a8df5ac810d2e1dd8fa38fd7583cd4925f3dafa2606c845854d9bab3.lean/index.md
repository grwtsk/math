# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5f601f24ce1debdefbb0690d1e5d421f159e8dd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5f601f24ce1debdefbb0690d1e5d421f159e8dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Char.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length--51d3af574b30bc9f81c9c7a9.md) | 25 | `declaration-track:51d3af574b30bc9f81c9c7a914f4c014b736f763df66a38420f7bc5794ce5494` |
| 2 | `theorem` | [Internal.size_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/internal-size-toarray--69f69690c69217bfaf0103e4.md) | 29 | `result-track:69f69690c69217bfaf0103e486535ca32652ebdc7c67d16e5b80475292e82efa` |
| 3 | `theorem` | [length_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length-tolist--2fcfbf1244b872bb3b8434da.md) | 32 | `result-track:2fcfbf1244b872bb3b8434da3e9f9671dcc66851e79134680f63c96eae60b96e` |
| 4 | `theorem` | [length_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length-data--95bf5f33d2a376a4964f0f0b.md) | 35 | `result-track:95bf5f33d2a376a4964f0f0b33ff1babb2255dd2b548f17a60e5ab513637c50a` |
| 5 | `theorem` | [length_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length-oflist--9f1672fc02365b97455d82f8.md) | 38 | `result-track:9f1672fc02365b97455d82f8e03d13bc61cc4ad7492fa16924954a178c8ff242` |
| 6 | `theorem` | [_root_.List.length_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/root-list-length-asstring--7e778289956d1a355cbda732.md) | 42 | `result-track:7e778289956d1a355cbda7322744b8fc95f659d9dac37f4bb1f3b12c4f9b81ba` |
| 7 | `theorem` | [length_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length-empty--ac9ec757fe88f8bcc008eaa6.md) | 45 | `result-track:ac9ec757fe88f8bcc008eaa6504b794e663579f185a378704df528b7e5eef525` |
| 8 | `theorem` | [length_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length-singleton--dc81c6a32100d1f2841443cf.md) | 48 | `result-track:dc81c6a32100d1f2841443cf9020a61a63e9b5bdc29c190861bf348192917f53` |
| 9 | `theorem` | [length_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length-push--41035148a9ac4e3a33aa5db3.md) | 51 | `result-track:41035148a9ac4e3a33aa5db306dad8cd896ca01a94d36ce07ac4aaa05c8513e6` |
| 10 | `theorem` | [length_pushn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length-pushn--57972ff6578c5507b1bc34cd.md) | 54 | `result-track:57972ff6578c5507b1bc34cd02645721dd76037392b920cfa421bea5663e325e` |
| 11 | `theorem` | [length_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length-append--504877b44ab1985c56d8b5ad.md) | 57 | `result-track:504877b44ab1985c56d8b5ad1cb839708b08c643ce505f14b5390a38b2fc1a26` |
| 12 | `theorem` | [length_toString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.lean/declarations/length-tostring--a6066708afc317467d29d308.md) | 65 | `result-track:a6066708afc317467d29d30885e1fd38183f5621467e2c48a16f729e9917bdfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
