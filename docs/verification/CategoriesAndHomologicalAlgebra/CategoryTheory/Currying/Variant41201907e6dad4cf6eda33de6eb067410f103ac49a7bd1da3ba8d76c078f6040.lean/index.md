# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Currying.Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e161c4c5c65174f3881765e178455bef08181ab4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e161c4c5c65174f3881765e178455bef08181ab4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Products.Bifunctor` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/declarations/uncurry--5e8714c86a00efa2a8af3e1f.md) | 38 | `declaration-track:5e8714c86a00efa2a8af3e1f1f08364b5b1ea8cece3964fb115b22479e352a70` |
| 2 | `def` | [curryObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/declarations/curryobj--fd1dcd84259a434d46cd84c9.md) | 60 | `declaration-track:fd1dcd84259a434d46cd84c91cda06b28e042f4942b1c4d1cdf50e464c78a976` |
| 3 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/declarations/curry--3ff599446942529a24b9c5c6.md) | 77 | `declaration-track:3ff599446942529a24b9c5c6ecea14ccba4eb5401e786185ac0522fbb007f9fa` |
| 4 | `def` | [currying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/declarations/currying--62520b2167301a13cae4261c.md) | 94 | `declaration-track:62520b2167301a13cae4261cc835977024641ae7688c73d0ae6a18c9274d806a` |
| 5 | `def` | [flipIsoCurrySwapUncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/declarations/flipisocurryswapuncurry--c8a6bbe5e21d7e512887ae45.md) | 104 | `declaration-track:c8a6bbe5e21d7e512887ae45efffd208bbdcc1b141eef0ef71f7051f86fd5edf` |
| 6 | `def` | [uncurryObjFlip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/declarations/uncurryobjflip--412284efb7d24a37112abe42.md) | 111 | `declaration-track:412284efb7d24a37112abe421f25099b3b925074495ff26998bb992be4a4dd4b` |
| 7 | `def` | [whiskeringRight₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant41201907e6dad4cf6eda33de6eb067410f103ac49a7bd1da3ba8d76c078f6040.lean/declarations/whiskeringright--58146eb2bd6814ed54dffa76.md) | 121 | `declaration-track:58146eb2bd6814ed54dffa765e55f3bb2a6570f2ced18ddd17c508758d891061` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
