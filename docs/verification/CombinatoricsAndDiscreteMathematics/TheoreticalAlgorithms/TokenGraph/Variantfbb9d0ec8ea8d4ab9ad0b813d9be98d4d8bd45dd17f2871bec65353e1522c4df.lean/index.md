# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TokenGraph.Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32fa9d0ec6a906fc9d2268efe3918435eef86e55",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32fa9d0ec6a906fc9d2268efe3918435eef86e55`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.ExternalInterpretation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.SemanticTokenization.Tokenization` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SemanticRelationType](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean/declarations/semanticrelationtype--2a6152e0cf46a96491799828.md) | 8 | `declaration-track:2a6152e0cf46a96491799828b0f26821aa9b780add6f7681c5d00d4a6a415cb5` |
| 2 | `structure` | [SemanticEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean/declarations/semanticedge--79b5c70f307f69e49c22bb8c.md) | 25 | `declaration-track:79b5c70f307f69e49c22bb8cae07a72c54aff217317a6c87d6e80d6de85dd741` |
| 3 | `structure` | [ConnectivityObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean/declarations/connectivityobligation--48142b9aac7860304ba11172.md) | 34 | `declaration-track:48142b9aac7860304ba111727a7cd24e5e61ea21736450a111bee62e36fa6210` |
| 4 | `structure` | [TokenGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean/declarations/tokengraph--a41f007e60b562359f408fe7.md) | 39 | `declaration-track:a41f007e60b562359f408fe707eb612cffb0ee354bb084047fae388226fba707` |
| 5 | `theorem` | [TokenGraph.vertices_are_tokens](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df.lean/declarations/tokengraph-vertices-are-tokens--f8a9dcfc29f5a250cb9baf5c.md) | 57 | `result-track:f8a9dcfc29f5a250cb9baf5c52d6c4ea2a9a7df7765ea7c580926248ac65d317` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
