# Verification target: GRWTSK.Algebra.PolygonalQuarticSeparable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da0ea2e2b9f979a3656b22a48c2d3a3a0d2523a0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PolygonalQuarticSeparable.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/index.md) · [Full source](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da0ea2e2b9f979a3656b22a48c2d3a3a0d2523a0`.

Source path: `GRWTSK/Algebra/PolygonalQuarticSeparable.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PolygonalQuarticSeparable.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.PolygonalQuarticSplitting`](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.FieldTheory.Separable` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjacencyOne_sub_adjacencyTwo](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/declarations/adjacencyone-sub-adjacencytwo--9476b85ec4e2c95058a48dcb.md) | 23 | `result-track:9476b85ec4e2c95058a48dcb6ebdcd7f7e5efc4ae08a9a896211a97b9e45bbcd` |
| 2 | `theorem` | [adjacencyOne_sub_adjacencyThree](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/declarations/adjacencyone-sub-adjacencythree--0f3fea0a9eebebea926c4668.md) | 29 | `result-track:0f3fea0a9eebebea926c46683b8aad52dac90675b10c5935b77d4adbae09eeec` |
| 3 | `theorem` | [adjacencyTwo_sub_adjacencyThree](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/declarations/adjacencytwo-sub-adjacencythree--60b4ac4e615b784814adce27.md) | 35 | `result-track:60b4ac4e615b784814adce272cc89843177043ac94e789956ca0c0ff89298299` |
| 4 | `theorem` | [adjacency_values_pairwise_distinct](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/declarations/adjacency-values-pairwise-distinct--bcdf92736076c129d78e7f6a.md) | 45 | `result-track:bcdf92736076c129d78e7f6ac303f052fe6de44ee3f8225deaaa3b73ec7b9665` |
| 5 | `theorem` | [adjacencyResolvent_separable](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/declarations/adjacencyresolvent-separable--99a38617631ec2c8cb0189fe.md) | 71 | `result-track:99a38617631ec2c8cb0189fed93dd61edd483010929ab021e97484036a2f0660` |
| 6 | `theorem` | [adjacencyResolvent_separable_of_quartic_enumeration](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/declarations/adjacencyresolvent-separable-of-quartic-enumeration--5f8a7a389ec073ff778053ca.md) | 94 | `result-track:5f8a7a389ec073ff778053caa7a2c0f17468e61b268612d9067f9bc9efdeb8b9` |
| 7 | `theorem` | [exists_separable_adjacencyResolvent_of_splitting_quartic](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/declarations/exists-separable-adjacencyresolvent-of-splitting-quartic--f74263635ead1bec331c8f31.md) | 111 | `result-track:f74263635ead1bec331c8f31d81a44b72021a093868258a23da68cbe51134582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
