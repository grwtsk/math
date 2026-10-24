# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Factorization.Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb7c74fcfba58bfd1fcac0aa4fc3f6fbe0c7b668",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb7c74fcfba58bfd1fcac0aa4fc3f6fbe0c7b668`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MapFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/mapfactorizationdata--c3782d011d6589834b535cf8.md) | 43 | `declaration-track:c3782d011d6589834b535cf8db91bc00e66993891bc727d3c389b00711898d31` |
| 2 | `abbrev` | [FactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/factorizationdata--1d788f1f9927d99bdd2d9743.md) | 57 | `declaration-track:1d788f1f9927d99bdd2d974324525da3905d694f28fbc14959d20ea94a6bbfc6` |
| 3 | `class` | [HasFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/hasfactorization--eb9d78b65d47e8755c0967e1.md) | 62 | `declaration-track:eb9d78b65d47e8755c0967e14e4ec777af701e66911d07a76a8c887b79dcf8c7` |
| 4 | `def` | [factorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/factorizationdata--f28c271da60cd259e01d6d40.md) | 66 | `declaration-track:f28c271da60cd259e01d6d402af968ea334e6aa0e3bfbf91b0dfb9f5573ac0c2` |
| 5 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/comp--f495e4c8534a2d327621cec4.md) | 70 | `declaration-track:f495e4c8534a2d327621cec45a9adb9e437b3d55b4d367dc897e6a64d65fca64` |
| 6 | `lemma` | [comp_eq_top_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/comp-eq-top-iff--883eb9194c1bc2cbbfcdb58f.md) | 72 | `result-track:883eb9194c1bc2cbbfcdb58f9bdf782a914b6cb192aa9551fe2f3d5d60d296e4` |
| 7 | `structure` | [FunctorialFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/functorialfactorizationdata--9ce44a54b9fd741e09b54747.md) | 85 | `declaration-track:9ce44a54b9fd741e09b54747cabe3c58a041dc4db0a2e07ad609f004512d4779` |
| 8 | `lemma` | [fac_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/fac-app--af2f033d016b43e8c8f197c2.md) | 104 | `result-track:af2f033d016b43e8c8f197c28c13e914c0c30957b6d011122b4a0923bf575feb` |
| 9 | `def` | [ofLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/ofle--e20d6ed7f6e7184db4cdb4c3.md) | 109 | `declaration-track:e20d6ed7f6e7184db4cdb4c3b4d2512f52465b5fcaa36735bd6af6ae61f0df5b` |
| 10 | `def` | [factorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/factorizationdata--439f109b289c95dcd8912725.md) | 118 | `declaration-track:439f109b289c95dcd8912725fcc50db14614f155e58a6f47711014092b3562ba` |
| 11 | `def` | [mapZ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/mapz--8c0b328178ced23d72da126d.md) | 133 | `declaration-track:8c0b328178ced23d72da126d8c9b66ffeda204b0ab2104a825a469451738cd75` |
| 12 | `lemma` | [i_mapZ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/i-mapz--1a9665feccfb7a0689d8a5f1.md) | 136 | `result-track:1a9665feccfb7a0689d8a5f139f7b6b3b00b0041fc6d3f2a18e2c3f2a9d62771` |
| 13 | `lemma` | [mapZ_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/mapz-p--f6017baa3b15a8b4c27557bd.md) | 141 | `result-track:f6017baa3b15a8b4c27557bd3213dfb2ad1a8ed9be8fb5a6bc88e0d8c293f87a` |
| 14 | `lemma` | [mapZ_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/mapz-id--a244c9b03cc0e94f8aa3237b.md) | 147 | `result-track:a244c9b03cc0e94f8aa3237b0243ae310bf488060fea37eaee9d8882fac4510e` |
| 15 | `lemma` | [mapZ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/mapz-comp--f666c7e7373a1fa299670668.md) | 151 | `result-track:f666c7e7373a1fa29967066872bd4c02620c4d1f9c360924655aefaa46fa2214` |
| 16 | `def` | [functorCategory.Z](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/functorcategory-z--acde76e7a7d0aa8505ce2851.md) | 163 | `declaration-track:acde76e7a7d0aa8505ce2851371099333c077f8f4561f97ff3baad7bfa939d89` |
| 17 | `def` | [functorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/functorcategory--04d1e8d49f5c751dfe02395f.md) | 199 | `declaration-track:04d1e8d49f5c751dfe02395f7cdc26b21a7ac4ae40ff90ed2fb1290f9526802a` |
| 18 | `class` | [HasFunctorialFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/hasfunctorialfactorization--7f0f0c8dedf3bc147b84f50e.md) | 214 | `declaration-track:7f0f0c8dedf3bc147b84f50e09dc0f21e446110300dc9b79549fc9c00fd1e1f7` |
| 19 | `def` | [functorialFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/functorialfactorizationdata--40403dff61905884dce3c2b6.md) | 219 | `declaration-track:40403dff61905884dce3c2b60b9911f95d6c52658f1030f6cefae606013dca4f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/instance--f9c26678f180b05c27ababf6.md) | 223 | `declaration-track:f9c26678f180b05c27ababf65b5b7e327b42f2197390249461f2b6982ef3e096` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant49cf4c14c271d8326e67d703a8f19d4fd868fb9c0cd61840a644e4d84afce7b6.lean/declarations/instance--3748ecfdf482dde366d1e438.md) | 226 | `declaration-track:3748ecfdf482dde366d1e438382bd4ac922cb201b6245ce2439b817e10d9e1d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
