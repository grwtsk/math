# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42aeb218b864b9cbcdd34e2b3f563cd7a28e44e8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42aeb218b864b9cbcdd34e2b3f563cd7a28e44e8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Ring_of_Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/declarations/ring-of-mon--36b0175802054d5c1274d0c1.md) | 51 | `declaration-track:36b0175802054d5c1274d0c1b0665fcce8bd05cae2af263dd5036dd6a52b1680` |
| 2 | `instance` | [Algebra_of_Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/declarations/algebra-of-mon--36a97b62f2fc0486aa975da0.md) | 76 | `declaration-track:36a97b62f2fc0486aa975da04179edf5417f608de8f87e0b70512543fddaf678` |
| 3 | `theorem` | [algebraMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/declarations/algebramap--f77108975190c7f6cdd4a7c5.md) | 93 | `result-track:f77108975190c7f6cdd4a7c523398be67d7810a24aac8d1fd1f555784dba00ab` |
| 4 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/declarations/functor--b549054f9412ebdb3f9f2bf2.md) | 99 | `declaration-track:b549054f9412ebdb3f9f2bf242cd792174db39e49e46f905c16e43cc032a27e2` |
| 5 | `def` | [inverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/declarations/inverseobj--aff5e6703fc4a24c65b7dd3e.md) | 111 | `declaration-track:aff5e6703fc4a24c65b7dd3e72dd21b973a1e7a33207d9737791a15e95d602c3` |
| 6 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/declarations/inverse--23d091c12482c6b924946903.md) | 159 | `declaration-track:23d091c12482c6b9249469035f6c2d717720f21e6c685d38c0c7a22ae1f58b5b` |
| 7 | `def` | [monModuleEquivalenceAlgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/declarations/monmoduleequivalencealgebra--3ee0f4196580d2a0d2b18dda.md) | 173 | `declaration-track:3ee0f4196580d2a0d2b18dda1c676bc5b94a019f6bf01165a283e53f7047ed58` |
| 8 | `def` | [monModuleEquivalenceAlgebraForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbc31928fe9553f5536d83fca7a1ec6ff614cc03b1f14fd52ebcdcbc202fe218d.lean/declarations/monmoduleequivalencealgebraforget--71f1117563e02d29c150dd6a.md) | 222 | `declaration-track:71f1117563e02d29c150dd6ad4cc1dfeb3698e3c8d43cccb6f5e7b14bc4981ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
