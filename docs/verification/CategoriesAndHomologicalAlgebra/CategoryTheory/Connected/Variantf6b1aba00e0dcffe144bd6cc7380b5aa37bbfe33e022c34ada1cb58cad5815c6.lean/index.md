# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdc089e15ed3faba050d3185e0f9dfd67bf28a68",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdc089e15ed3faba050d3185e0f9dfd67bf28a68`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [widePullbackShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/declarations/widepullbackshape-connected--e0be4362b88b6ca44aa87f5f.md) | 43 | `declaration-track:e0be4362b88b6ca44aa87f5fdf61d0b3645d0b11d2a3fa6db36f3cd10a524720` |
| 2 | `instance` | [widePushoutShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/declarations/widepushoutshape-connected--5ae4ef8a3e57ab13641f30e3.md) | 51 | `declaration-track:5ae4ef8a3e57ab13641f30e36e74ef27b7315508ff3a6c5ec9160fed498287a9` |
| 3 | `instance` | [parallelPairInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/declarations/parallelpairinhabited--080ccb980a717bd41f031ae3.md) | 59 | `declaration-track:080ccb980a717bd41f031ae3d5840773256d570867ebc5102ab577bc1895a9b3` |
| 4 | `instance` | [parallel_pair_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/declarations/parallel-pair-connected--65f7874254285d17fffdb36e.md) | 63 | `declaration-track:65f7874254285d17fffdb36e55145a44def044f285fc0328474a81b8ec65ffe2` |
| 5 | `def` | [γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/declarations/anonymous--fc3b4b202e3a1f00d6ef463d.md) | 83 | `declaration-track:fc3b4b202e3a1f00d6ef463d0bc239771affa8a8e7ccda29ad22ce5e2c1afe81` |
| 6 | `def` | [γ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/declarations/anonymous--0730f007e4a66ef698974c01.md) | 88 | `declaration-track:0730f007e4a66ef698974c0115fd263c212b9216a4df6e4622bfeeb4667cc81e` |
| 7 | `def` | [forgetCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/declarations/forgetcone--5e5554557b739d5cfa890534.md) | 95 | `declaration-track:5e5554557b739d5cfa890534fb3b01980ea9febba8644f90bea9f2dff5079f26` |
| 8 | `def` | [prodPreservesConnectedLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/declarations/prodpreservesconnectedlimits--f88b71c3ab38fd91e4bbe087.md) | 110 | `declaration-track:f88b71c3ab38fd91e4bbe0875ce69c2c2a6bc76e3367b5599967659157dbeefb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
