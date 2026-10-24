# Verification target: GRWTSK.Geometry.Tensoriality.Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a494d4bef9dae920d6bac00f9b790c3d6168efcc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/index.md) · [Full source](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a494d4bef9dae920d6bac00f9b790c3d6168efcc`.

Source path: `GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.LocalFrame` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TensorialAt](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/tensorialat--931f76c20f98e9e7ff6436ea.md) | 70 | `declaration-track:931f76c20f98e9e7ff6436ea6ffa6599fb69bb1daa23e5f3df95b299c1890e9e` |
| 2 | `theorem` | [«local»](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/local--e0e2ed02c09a1001a419c947.md) | 84 | `result-track:e0e2ed02c09a1001a419c94712c9213bf3a2f48497015501d2cea00a8de89ab0` |
| 3 | `theorem` | [zero](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/zero--a7bc47a7da3928320c9538ea.md) | 107 | `result-track:a7bc47a7da3928320c9538eae4f2f7b65b1e4caaf41982364fdde0b9ce9e96c8` |
| 4 | `theorem` | [sum](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/sum--b89c90f97bcfc860e88de895.md) | 115 | `result-track:b89c90f97bcfc860e88de89560d472da1da60ba95b8c2baf06a6a5a7b72d609f` |
| 5 | `lemma` | [pointwise](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/pointwise--2698edf9b5ab1ffd8d957cd3.md) | 133 | `result-track:2698edf9b5ab1ffd8d957cd3ed1489ef404e0b73a5e1ffa8d5e6836d9f8c033c` |
| 6 | `lemma` | [pointwise₂](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/pointwise--1107353083bdc037a6a13b5c.md) | 169 | `result-track:1107353083bdc037a6a13b5c643a3a2e786bc1002ca149787e6f6d452169874a` |
| 7 | `def` | [mkHom](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/mkhom--ed9a04511e5fd2d45a393562.md) | 186 | `declaration-track:ed9a04511e5fd2d45a393562cdd21c27ae247b9ef80b9d735757a6110e3a226c` |
| 8 | `theorem` | [mkHom_apply](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/mkhom-apply--2569ee00e30191a1457f6ab4.md) | 210 | `result-track:2569ee00e30191a1457f6ab440adc533a5e3d5f508d5aa4ef8b74926305f03f7` |
| 9 | `theorem` | [mkHom_apply_eq_extend](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/mkhom-apply-eq-extend--2f40cacb45c17bdc268dbeea.md) | 215 | `result-track:2f40cacb45c17bdc268dbeea0f4e53ed174ea362b2ecd58edde108fcbe35a609` |
| 10 | `def` | [mkHom₂](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/mkhom--5243de2a0ad38380e3c8d194.md) | 222 | `declaration-track:5243de2a0ad38380e3c8d194ebc5bf1eb0bae5231525349650c75101e3d7b8cb` |
| 11 | `theorem` | [mkHom₂_apply](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/mkhom-apply--4391b7aa7da4d327f1c1001b.md) | 276 | `result-track:4391b7aa7da4d327f1c1001bea90498a96f3f6c8d9ec040ff62de11526c8a14c` |
| 12 | `theorem` | [mkHom₂_apply_eq_extend](../../../../mathematics/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/declarations/mkhom-apply-eq-extend--079df61aca2664a2424b3f11.md) | 285 | `result-track:079df61aca2664a2424b3f1173b5c7d1d54483aaaa14c8199257e1c1b062cf28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
