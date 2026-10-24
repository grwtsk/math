# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f17e28ead4b51ff90c568d0af8f5504ecfa59599",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f17e28ead4b51ff90c568d0af8f5504ecfa59599`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean.json)

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
| 1 | `def` | [Pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/declarations/pairwise--64505336dfcbfb826a134dd6.md) | 31 | `declaration-track:64505336dfcbfb826a134dd6588532ab9d1d8c5c29c517782ea4e55444493b61` |
| 2 | `theorem` | [pairwise_iff_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/declarations/pairwise-iff-getelem--a0ed5a8cd4bdb64d67c90d3c.md) | 33 | `result-track:a0ed5a8cd4bdb64d67c90d3c8a03dac818a1574347d64b6fb7db0b6aaae4c516` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/declarations/instance--3595f874907f0b68918f3293.md) | 37 | `declaration-track:3595f874907f0b68918f3293759b0d7910ba4c58e8831370fea3e99122a89b95` |
| 4 | `theorem` | [pairwise_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/declarations/pairwise-empty--cfd71bacc000f08b23f4da9f.md) | 46 | `result-track:cfd71bacc000f08b23f4da9f0acc989854ddeedc40551c7196509c7c282ae6c2` |
| 5 | `theorem` | [pairwise_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/declarations/pairwise-singleton--d9217936b33fde1895c8c263.md) | 50 | `result-track:d9217936b33fde1895c8c263a0459b83fb2a0eeb15b1bffa77d0995f3b2b11a7` |
| 6 | `theorem` | [pairwise_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/declarations/pairwise-pair--67d1097e0deb04cd25097826.md) | 54 | `result-track:67d1097e0deb04cd25097826c2b5dd1aa37516ecc83d06b489fc2f063d689ef3` |
| 7 | `theorem` | [pairwise_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/declarations/pairwise-append--fada72814b9633802597ec6a.md) | 58 | `result-track:fada72814b9633802597ec6aceef4ce08bc463bbcde3af0aa64b663f777609ce` |
| 8 | `theorem` | [pairwise_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/declarations/pairwise-push--62bbeef12179570dc51d2cc3.md) | 63 | `result-track:62bbeef12179570dc51d2cc351c8a46221610e4dbdddc5ea41e2558dbc7a91eb` |
| 9 | `theorem` | [pairwise_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantb41432bb0cff5161a6902143f7f18ca4088cb64957453016e407333ffcf90f28.lean/declarations/pairwise-extract--dcf617a8a92589d4fe36c6ec.md) | 69 | `result-track:dcf617a8a92589d4fe36c6ec3ae57bf62b27104c0ef692c8a70f5a12ac258ea6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
