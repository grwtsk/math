# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TokenGraph.Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "408081128b577617dc446ef45d7b304c16a0d5ab",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `408081128b577617dc446ef45d7b304c16a0d5ab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.ExternalInterpretation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.SemanticTokenization.Tokenization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SemanticRelationType](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean/declarations/semanticrelationtype--ee04333ab283f252970d6aab.md) | 16 | `declaration-track:ee04333ab283f252970d6aabef66a10bce193fb6d1a20cfdbffa6016a5133884` |
| 2 | `structure` | [SemanticEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean/declarations/semanticedge--f57feb9da3b58e54e50fda68.md) | 33 | `declaration-track:f57feb9da3b58e54e50fda687300bbd238bd6c0f0c70f410528439cf88a39cc4` |
| 3 | `structure` | [ConnectivityObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean/declarations/connectivityobligation--a967de8f55f0abc9baaa4574.md) | 42 | `declaration-track:a967de8f55f0abc9baaa45749d2680e5951b5f181953444b52203853e5303bf5` |
| 4 | `structure` | [TokenGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean/declarations/tokengraph--9566b8172077f8ea8cbcad3e.md) | 47 | `declaration-track:9566b8172077f8ea8cbcad3e5726d8d498cddcb98c781e61d9bb60c52401acb0` |
| 5 | `theorem` | [TokenGraph.vertices_are_tokens](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean/declarations/tokengraph-vertices-are-tokens--167928fa122859ef6fe46323.md) | 65 | `result-track:167928fa122859ef6fe46323f231962c61b8431a8f9e1b14356fe28034604e6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
