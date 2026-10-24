# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.WeightedFiniteReflectionDoubled

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "080b0ee9bebdab0da58f697826c62f9f7221285b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `080b0ee9bebdab0da58f697826c62f9f7221285b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.WeightedFiniteReflection`](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [doubledPairing](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean/declarations/doubledpairing--f4853ab63882a46fc5eeee36.md) | 23 | `declaration-track:f4853ab63882a46fc5eeee36360de4918c5da6f3ea8f9d384e39dee689232eaf` |
| 2 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean/declarations/lift--45c6bade8dd536df755b61e9.md) | 26 | `declaration-track:45c6bade8dd536df755b61e97c31ccb08c639acb30eb1da2784ef52b1e849707` |
| 3 | `theorem` | [lift_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean/declarations/lift-selfadjoint--c53c44b08def3872fbd8e0e8.md) | 29 | `result-track:c53c44b08def3872fbd8e0e8234603199efb8d48fbdc879650b99425323bf0af` |
| 4 | `theorem` | [lift_involutive](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean/declarations/lift-involutive--3cef1ddcebddbb86ef5bcc66.md) | 35 | `result-track:3cef1ddcebddbb86ef5bcc6679ef16e010808290bc6f52edaf41b53aa2e11cc1` |
| 5 | `theorem` | [lift_selfAdjoint_and_involutive](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflectionDoubled.lean/declarations/lift-selfadjoint-and-involutive--0eab4f14e09ac9e9a5652b52.md) | 45 | `result-track:0eab4f14e09ac9e9a5652b5205c1d82c3926ce3146e0cd122da704dd5546e5d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
