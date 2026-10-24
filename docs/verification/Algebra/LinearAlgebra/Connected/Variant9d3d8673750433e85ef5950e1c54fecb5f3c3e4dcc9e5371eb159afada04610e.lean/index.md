# Verification target: GRWTSK.Algebra.LinearAlgebra.Connected.Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c705005c0c90b0ff37e6264d80dc59ac7e055609",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c705005c0c90b0ff37e6264d80dc59ac7e055609`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Cardinality` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.Countable.isPathConnected_compl_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean/declarations/set-countable-ispathconnected-compl-of-one-lt-rank--e15087dbe19fdeefb59145b1.md) | 32 | `result-track:e15087dbe19fdeefb59145b153eb636ffca3535bc4deb5cc6848a72fde29fe47` |
| 2 | `theorem` | [Set.Countable.isConnected_compl_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean/declarations/set-countable-isconnected-compl-of-one-lt-rank--ea445da6c9318031cab8ed0a.md) | 105 | `result-track:ea445da6c9318031cab8ed0a1a1e4cbabc6525daf55a0eae48c17a7cabf9f9e7` |
| 3 | `theorem` | [isPathConnected_compl_singleton_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean/declarations/ispathconnected-compl-singleton-of-one-lt-rank--0067acbc0fc592008c8cba15.md) | 111 | `result-track:0067acbc0fc592008c8cba15db8b8dc433b36a0f7a9af7e6c9dad7fe893974ae` |
| 4 | `theorem` | [isConnected_compl_singleton_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean/declarations/isconnected-compl-singleton-of-one-lt-rank--0bf6c412f45c73b54f5c1970.md) | 117 | `result-track:0bf6c412f45c73b54f5c197014872be2055ff853d6acebf87aebfa7ec802fe8e` |
| 5 | `theorem` | [isPathConnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean/declarations/ispathconnected-sphere--f6b358b5906332bb872c6350.md) | 129 | `result-track:f6b358b5906332bb872c63507f95501e68ddfde929b10ea42cd4e1b88a97a574` |
| 6 | `theorem` | [isConnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean/declarations/isconnected-sphere--2e2b98921ef4ded35993d265.md) | 159 | `result-track:2e2b98921ef4ded35993d265be8c1dd29dc8014c54b1b587f94b55917af99b4a` |
| 7 | `theorem` | [isPreconnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant9d3d8673750433e85ef5950e1c54fecb5f3c3e4dcc9e5371eb159afada04610e.lean/declarations/ispreconnected-sphere--fa437a03280e76db511e4389.md) | 164 | `result-track:fa437a03280e76db511e438902813821963d99a9cf772a7ebd7de6aab56472de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
