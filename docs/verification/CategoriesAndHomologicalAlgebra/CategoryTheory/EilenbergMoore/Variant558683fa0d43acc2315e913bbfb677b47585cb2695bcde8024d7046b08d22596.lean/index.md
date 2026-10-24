# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EilenbergMoore.Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7dd3eabd7f76f94daab52ff12e6b1a650a270df",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7dd3eabd7f76f94daab52ff12e6b1a650a270df`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Monad.algebraPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean/declarations/monad-algebrapreadditive--bff7614664ccb66f2b355fca.md) | 30 | `declaration-track:bff7614664ccb66f2b355fca4298f96db86bcd8a44514f3bf32b909a15c2559e` |
| 2 | `instance` | [Monad.forget_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean/declarations/monad-forget-additive--e3ec0ac118e71e6443688647.md) | 104 | `declaration-track:e3ec0ac118e71e6443688647faec6dbfcf16a1548c66f7e3525001d54e80ae69` |
| 3 | `instance` | [Comonad.coalgebraPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean/declarations/comonad-coalgebrapreadditive--44e831375740571ba12c08d7.md) | 110 | `declaration-track:44e831375740571ba12c08d7671b3dadcd0e6834e2a1b499ad0fce42f62df023` |
| 4 | `instance` | [Comonad.forget_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean/declarations/comonad-forget-additive--7efd7dcba750227a883b2551.md) | 184 | `declaration-track:7efd7dcba750227a883b2551b2c84bbbad5ac48f0b87f35276ee6445191fcb6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
