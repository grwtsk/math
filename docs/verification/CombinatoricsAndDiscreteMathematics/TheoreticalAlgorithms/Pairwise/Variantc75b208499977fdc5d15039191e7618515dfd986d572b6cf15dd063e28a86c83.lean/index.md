# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "948dbeb51f7bc9cba4661430c20908b6600bb89c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `948dbeb51f7bc9cba4661430c20908b6600bb89c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean.json)

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
| 1 | `theorem` | [pairwise_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pairwise-iff-get--42370652dd26a34baa4f6e6d.md) | 44 | `result-track:42370652dd26a34baa4f6e6de2520fe18980f4cc87f47de57d2ba011a82c1764` |
| 2 | `theorem` | [pwFilter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pwfilter-nil--f9ea48995c8c2f9752640bd3.md) | 54 | `result-track:f9ea48995c8c2f9752640bd3d92985b284b2b182881652aa839e368aefd8a8a5` |
| 3 | `theorem` | [pwFilter_cons_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pwfilter-cons-of-pos--ab649c7bcebc832e2dc9f0e0.md) | 56 | `result-track:ab649c7bcebc832e2dc9f0e037622b821f3b717588899b2865fcd80a024a9ab5` |
| 4 | `theorem` | [pwFilter_cons_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pwfilter-cons-of-neg--7ccc7f23e085c9f6648955e5.md) | 59 | `result-track:7ccc7f23e085c9f6648955e5afe72b7070bf56d030580f6f8409ba68feac3bb9` |
| 5 | `theorem` | [pwFilter_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pwfilter-map--e79a0355ad43046773d20e24.md) | 62 | `result-track:e79a0355ad43046773d20e241cfedc6060239bb7bfb4675dc5180783ac955115` |
| 6 | `theorem` | [pwFilter_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pwfilter-sublist--ba1b6351f6eb480149e081d0.md) | 76 | `result-track:ba1b6351f6eb480149e081d0e9a916e6af68551209e594e849eee9083f1979cf` |
| 7 | `theorem` | [pwFilter_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pwfilter-subset--7fb5b2fa4da2f15ba8a5ea76.md) | 84 | `result-track:7fb5b2fa4da2f15ba8a5ea763a0c0afb248025583cce1c2817b6bbfd4a6c3d04` |
| 8 | `theorem` | [pairwise_pwFilter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pairwise-pwfilter--24b9c556c7b19421e62c84bb.md) | 87 | `result-track:24b9c556c7b19421e62c84bb276ac9d6ed7cc8ff9af03f7e66628929cb7c240d` |
| 9 | `theorem` | [pwFilter_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pwfilter-eq-self--31168e90ae9145b3b7ea56f7.md) | 95 | `result-track:31168e90ae9145b3b7ea56f7159e4053d6d8016d7a19e233af44d7c1fef89f80` |
| 10 | `theorem` | [pwFilter_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/pwfilter-idem--38afb7785a535e1e7965f989.md) | 106 | `result-track:38afb7785a535e1e7965f989aac8ddf85cb679d5d0528db544d3f7ae87c4b27a` |
| 11 | `theorem` | [forall_mem_pwFilter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantc75b208499977fdc5d15039191e7618515dfd986d572b6cf15dd063e28a86c83.lean/declarations/forall-mem-pwfilter--3020612c7e60e41b4613d405.md) | 109 | `result-track:3020612c7e60e41b4613d4058d26d27713d260a38735bedce5925059217dddec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
