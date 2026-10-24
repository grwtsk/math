# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Productive.Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0e1545e8998e176f0950730d4473a51cd81592",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0e1545e8998e176f0950730d4473a51cd81592`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.WSeq.Relation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Productive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/productive--b9170cfd45b303d3b67d8291.md) | 35 | `declaration-track:b9170cfd45b303d3b67d82916bd86dff9a15023b5228c6558067f2b73b4fd459` |
| 2 | `theorem` | [productive_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/productive-iff--992141c68499fecb475defe1.md) | 38 | `result-track:992141c68499fecb475defe1d45cc22555fb34980346e8c229f83a14934eeea5` |
| 3 | `instance` | [get?_terminates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/get-terminates--beebdf799ac7fb8a3dedc995.md) | 41 | `declaration-track:beebdf799ac7fb8a3dedc995b8caa916e3ec6f77c091c7273902a622932b76eb` |
| 4 | `instance` | [head_terminates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/head-terminates--54d978d2a7db60c141c03887.md) | 44 | `declaration-track:54d978d2a7db60c141c03887c418502ea7e0496b4a41a18c12cb213410e7322f` |
| 5 | `instance` | [productive_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/productive-tail--8d4631e5d95de67d70029421.md) | 47 | `declaration-track:8d4631e5d95de67d700294219c7c85b1e25349db9c9eca61537d2fd94d9d82d3` |
| 6 | `instance` | [productive_dropn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/productive-dropn--f1692734d3e709bb6ae8bd4a.md) | 50 | `declaration-track:f1692734d3e709bb6ae8bd4a927cb4003a4ee89b9c0a88b35c9a96a254b493ee` |
| 7 | `instance` | [productive_ofSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/productive-ofseq--7ca2038bf1c6d0844a92d423.md) | 55 | `declaration-track:7ca2038bf1c6d0844a92d42386a9135b14c0f097f3d61afc7b3a6da61aa674c9` |
| 8 | `theorem` | [productive_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/productive-congr--b59691cf58f82cedcba5c5da.md) | 58 | `result-track:b59691cf58f82cedcba5c5da516f778311944774ebb4240e33ff583192ae5fb8` |
| 9 | `def` | [toSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/toseq--7d4b8e6d569eb03c6a240029.md) | 63 | `declaration-track:7d4b8e6d569eb03c6a2400293a58f3e43fb92c7b02ebc40c3071e8b2c0932462` |
| 10 | `theorem` | [toSeq_ofSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a.lean/declarations/toseq-ofseq--a711c966bab49ff25545046a.md) | 74 | `result-track:a711c966bab49ff25545046a4fea7c840ffeaa40a1b8d924a75471997ca17562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
