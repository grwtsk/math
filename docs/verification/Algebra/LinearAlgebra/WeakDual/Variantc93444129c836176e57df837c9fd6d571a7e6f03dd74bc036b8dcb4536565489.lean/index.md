# Verification target: GRWTSK.Algebra.LinearAlgebra.WeakDual.Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6ce7e536ff9d467b30b41d8cf29f4c5983cd8fa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6ce7e536ff9d467b30b41d8cf29f4c5983cd8fa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakBilin` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/toseminorm--a4ef18da18efaa95e994bce3.md) | 61 | `declaration-track:a4ef18da18efaa95e994bce387eb02c554ff0ce80d806ffac248f28de55144d8` |
| 2 | `theorem` | [coe_toSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/coe-toseminorm--9c3d6ef992319c9733705bb5.md) | 64 | `result-track:9c3d6ef992319c9733705bb51ab287a7e9b84dfa5eef305cb7c2d4294da777bc` |
| 3 | `theorem` | [toSeminorm_apply](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/toseminorm-apply--9488466f60ec1482adf117cf.md) | 68 | `result-track:9488466f60ec1482adf117cfd18e107649274c8c7bfa97de18c6b32951daa456` |
| 4 | `theorem` | [toSeminorm_ball_zero](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/toseminorm-ball-zero--0531bf58cac5a729361cb014.md) | 71 | `result-track:0531bf58cac5a729361cb01480c2806c92a5a97bf23d6fcbcdcabeb3f5435136` |
| 5 | `theorem` | [toSeminorm_comp](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/toseminorm-comp--14e80ee1ae1cffeae69c0284.md) | 75 | `result-track:14e80ee1ae1cffeae69c02846a378a5a97c7caa14b26e9167d464c88c80edfef` |
| 6 | `def` | [toSeminormFamily](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/toseminormfamily--e4ee8d8fce30b6712995e7b7.md) | 81 | `declaration-track:e4ee8d8fce30b6712995e7b754ece3479f17b9b083a1b216828197a99c928dc8` |
| 7 | `theorem` | [toSeminormFamily_apply](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/toseminormfamily-apply--e309940693d2075ddf27f6a1.md) | 85 | `result-track:e309940693d2075ddf27f6a14286d5008e9bc73bf5084a0b67ba1887f8ca566d` |
| 8 | `theorem` | [LinearMap.weakBilin_withSeminorms](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/linearmap-weakbilin-withseminorms--f7fc90dfb8d3faeae09bc095.md) | 96 | `result-track:f7fc90dfb8d3faeae09bc095b4e968ee4ec3ab21ba6be4900503056f6bac2fcf` |
| 9 | `theorem` | [LinearMap.hasBasis_weakBilin](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/linearmap-hasbasis-weakbilin--9331660d9bc5eddb71fc23ca.md) | 103 | `result-track:9331660d9bc5eddb71fc23cabcd0cae458f132a0dd6def0820bfdb6259beafcc` |
| 10 | `instance` | [WeakBilin.locallyConvexSpace](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variantc93444129c836176e57df837c9fd6d571a7e6f03dd74bc036b8dcb4536565489.lean/declarations/weakbilin-locallyconvexspace--6b279f1c23bbbd49a164d9af.md) | 114 | `declaration-track:6b279f1c23bbbd49a164d9af02d748e5a2f761ae40ac8e813e8a775dd0747d08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
