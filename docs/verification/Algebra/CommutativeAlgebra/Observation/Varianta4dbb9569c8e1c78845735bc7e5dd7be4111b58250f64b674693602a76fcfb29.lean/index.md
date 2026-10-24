# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Observation.Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5c1b936a5b3399eb938dc078dfda3d8a06f4a77",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5c1b936a5b3399eb938dc078dfda3d8a06f4a77`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PolynomialSource](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/declarations/polynomialsource--550dc8d5a9cd7031a988fceb.md) | 27 | `declaration-track:550dc8d5a9cd7031a988fceb136ca576cbaa7c374a6f00478a4490e8eac565fb` |
| 2 | `structure` | [RootPreservingCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/declarations/rootpreservingcompilation--cee5349fb8ec88695204e81d.md) | 39 | `declaration-track:cee5349fb8ec88695204e81d008d96dbb5816acecbf8b869f15b2d6d51d7ff7b` |
| 3 | `def` | [scaleCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/declarations/scalecompilation--b7a428ae51f9f05edcc160b3.md) | 48 | `declaration-track:b7a428ae51f9f05edcc160b373eea40ae9e9b1caab3d9bf973397d043b3c05cb` |
| 4 | `theorem` | [scale_compilation_sound](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/declarations/scale-compilation-sound--649e3ebbe90b0ed9bb3ed19a.md) | 55 | `result-track:649e3ebbe90b0ed9bb3ed19a81eafae95f8b7845584db01251bfde03b0f28489` |
| 5 | `theorem` | [square_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/declarations/square-preserves-integer-roots--253234ee1962c90edf1e2b99.md) | 60 | `result-track:253234ee1962c90edf1e2b991c87024d41b2c5b705856bf4c97b81f25173c604` |
| 6 | `theorem` | [positive_power_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/declarations/positive-power-preserves-integer-roots--6e6df6b362ec52000f9d675f.md) | 65 | `result-track:6e6df6b362ec52000f9d675f3f89f6777a5671495cfa12f60d9aed64b1386e2f` |
| 7 | `theorem` | [arbitrary_degree_inflation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/declarations/arbitrary-degree-inflation--f8e0a72ab9d51f7bd7fbaf13.md) | 71 | `result-track:f8e0a72ab9d51f7bd7fbaf139cbaee6611b359f93a388b26b9c0e77b972159ef` |
| 8 | `theorem` | [root_equivalence_does_not_determine_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Varianta4dbb9569c8e1c78845735bc7e5dd7be4111b58250f64b674693602a76fcfb29.lean/declarations/root-equivalence-does-not-determine-degree--e7b4087d31548001607c1766.md) | 80 | `result-track:e7b4087d31548001607c1766727e2e44900553a01a39c16ab00f06e4d62d7554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
