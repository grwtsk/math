# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorEquivalence.Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b16976a6c8d8fba03ba8fa25f6107c9d06525d9e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b16976a6c8d8fba03ba8fa25f6107c9d06525d9e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean/declarations/functor--4dbc62989769c96434b4612e.md) | 31 | `declaration-track:4dbc62989769c96434b4612ef8ce7609a61438604fd6e928ddfdf553510781fe` |
| 2 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean/declarations/inverse--b2e5ed963721e59812eb397b.md) | 40 | `declaration-track:b2e5ed963721e59812eb397bbf7bbd66b62d93d26c3b09045efb0ac58399f576` |
| 3 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean/declarations/unitiso--acdba30873e725399133ef65.md) | 51 | `declaration-track:acdba30873e725399133ef653d15bf744e82d9ca7ea56aecb181d7c406bade01` |
| 4 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean/declarations/counitiso--07cbf5ea0641c9101ff76c64.md) | 61 | `declaration-track:07cbf5ea0641c9101ff76c64926c28cd0a481d0e09dc1b99420e03546ddc4a2f` |
| 5 | `def` | [functorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb.lean/declarations/functorequivalence--4131b35be6c5ba9206da921a.md) | 70 | `declaration-track:4131b35be6c5ba9206da921a83c556f79d7d00e29db91031df141c2cd215a030` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
