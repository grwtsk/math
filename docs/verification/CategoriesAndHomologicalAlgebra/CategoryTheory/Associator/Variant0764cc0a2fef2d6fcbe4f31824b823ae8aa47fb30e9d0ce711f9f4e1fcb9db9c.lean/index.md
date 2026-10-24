# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Associator.Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ed74378c862977531ced98cff7dd3bb202c6b99",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ed74378c862977531ced98cff7dd3bb202c6b99`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Products.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean/declarations/associator--fb9c93176721f65ac2eaaa6e.md) | 33 | `declaration-track:fb9c93176721f65ac2eaaa6e9e75ee0be5d3d8dc7e9c02db518b33f232337b07` |
| 2 | `def` | [inverseAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean/declarations/inverseassociator--6b5397cd0c9b8080df4d65e6.md) | 40 | `declaration-track:6b5397cd0c9b8080df4d65e6d8be7e92cf13723f702d986bcd10d7d9ed0fc42b` |
| 3 | `def` | [associativity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean/declarations/associativity--91b3bbfdbc3e2904da912cfa.md) | 47 | `declaration-track:91b3bbfdbc3e2904da912cfa07d017ad95bb290f1bf25042f9f438aa21ef5e59` |
| 4 | `instance` | [associatorIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean/declarations/associatorisequivalence--e711ef4b8a3900bb7007c191.md) | 53 | `declaration-track:e711ef4b8a3900bb7007c191223e6fcb9f2c7a96d5b2b851795e7b73bfa29666` |
| 5 | `instance` | [inverseAssociatorIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean/declarations/inverseassociatorisequivalence--34504051e0784601358f14c6.md) | 56 | `declaration-track:34504051e0784601358f14c68982eacd729755543eb24efeafac8cfd8c3d631c` |
| 6 | `def` | [prodFunctorToFunctorProdAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean/declarations/prodfunctortofunctorprodassociator--57faf0a3f625cb60cc36a132.md) | 65 | `declaration-track:57faf0a3f625cb60cc36a132b7aba9e8a3da7ac656f5924f43465c5fc7b54b0c` |
| 7 | `def` | [functorProdToProdFunctorAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant0764cc0a2fef2d6fcbe4f31824b823ae8aa47fb30e9d0ce711f9f4e1fcb9db9c.lean/declarations/functorprodtoprodfunctorassociator--9ef4f0962a5afee821db6a09.md) | 74 | `declaration-track:9ef4f0962a5afee821db6a0907c2309e0b3c09ad13dd6a4b98a7abb106b72e62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
