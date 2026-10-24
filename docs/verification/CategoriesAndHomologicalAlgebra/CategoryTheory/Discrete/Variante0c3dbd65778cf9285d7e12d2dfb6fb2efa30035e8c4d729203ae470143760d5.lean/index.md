# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Discrete.Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b69000f60d044cc6615b7f5b184dab3c1b37eea2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b69000f60d044cc6615b7f5b184dab3c1b37eea2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DiscreteCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.NaturalTransformation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Discrete.monoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5.lean/declarations/discrete-monoidal--19eac3a3b0e74e588f0b5cfa.md) | 29 | `declaration-track:19eac3a3b0e74e588f0b5cfaf87b29a6b206d7868df732fc32a31fb2ca755e33` |
| 2 | `lemma` | [Discrete.monoidal_tensorUnit_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5.lean/declarations/discrete-monoidal-tensorunit-as--5d6fb0adbfefc88ba18ab8aa.md) | 43 | `result-track:5d6fb0adbfefc88ba18ab8aaff78af556503cf818db8e96218fa5522674982af` |
| 3 | `def` | [Discrete.monoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5.lean/declarations/discrete-monoidalfunctor--9c6d449e0dab3e2ba3b0b7c5.md) | 52 | `declaration-track:9c6d449e0dab3e2ba3b0b7c5c12d16467c37f7952a7ea415f86f0d043020416d` |
| 4 | `def` | [Discrete.monoidalFunctorComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variante0c3dbd65778cf9285d7e12d2dfb6fb2efa30035e8c4d729203ae470143760d5.lean/declarations/discrete-monoidalfunctorcomp--9d25d022133c7f12d838f9b3.md) | 71 | `declaration-track:9d25d022133c7f12d838f9b3161921b707f888f99cb1e9fd826ad008cc6222d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
