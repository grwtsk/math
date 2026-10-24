# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearFunctor.Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17c03c2b437990bb8d8550cde5661bdbb4e4e4ab",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17c03c2b437990bb8d8550cde5661bdbb4e4e4ab`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.Linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/functor-linear--d3ba52ffc40103f54fe0a0ac.md) | 39 | `declaration-track:d3ba52ffc40103f54fe0a0ac2da170c036454772712ac6898cb1a3355595e34a` |
| 2 | `theorem` | [map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/map-smul--bedfa892151045277bf9d1dc.md) | 56 | `result-track:bedfa892151045277bf9d1dc20638154c72fdc2207e8991a8139e3a1d1513b94` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/instance--49bb47d5afbb33a2963315c6.md) | 60 | `declaration-track:49bb47d5afbb33a2963315c68a6c3a7637b6364f8d2804c02256d1afb1e96009` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/instance--0003598e0635e3009e206f42.md) | 62 | `declaration-track:0003598e0635e3009e206f42626f4726ef19de10bd13d2a71d0d5cf9e9670801` |
| 5 | `def` | [mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/maplinearmap--66e27f1dc13688bc464fc5fe.md) | 69 | `declaration-track:66e27f1dc13688bc464fc5fe3f67f8968954b19aa00cd6e8f0951c4e8f71f091` |
| 6 | `theorem` | [coe_mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/coe-maplinearmap--75876ea874ce4e3d0560beef.md) | 73 | `result-track:75876ea874ce4e3d0560beef9e863042d3a7a2f355273978bbccbb13420cbc6d` |
| 7 | `instance` | [inducedFunctorLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/inducedfunctorlinear--5ad70d4cefabb97d24a74bd9.md) | 83 | `declaration-track:5ad70d4cefabb97d24a74bd928898502ce14c80b39256dca89cdfc308f86d093` |
| 8 | `instance` | [fullSubcategoryInclusionLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/fullsubcategoryinclusionlinear--3b247ad4e2e55e966727e85d.md) | 88 | `declaration-track:3b247ad4e2e55e966727e85d8682c866d969dad647954491cd4067fb190794e7` |
| 9 | `instance` | [natLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/natlinear--3b7977366eabaef9c7b31b1e.md) | 97 | `declaration-track:3b7977366eabaef9c7b31b1eb84260ed74863156cd6c1ec14712f4ceb76ca26f` |
| 10 | `instance` | [intLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/intlinear--037f52b524de851422da560e.md) | 101 | `declaration-track:037f52b524de851422da560ebf8342e397b9ccab9ba227aae4d64f8d06d38418` |
| 11 | `instance` | [ratLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/ratlinear--69f070a60cf6d335ffc9931f.md) | 107 | `declaration-track:69f070a60cf6d335ffc9931fd76dab641560d31e254f87ae7b9e9477872765ee` |
| 12 | `instance` | [inverseLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant462a11e0c58d495d691d9362ca56d2f5db69a06ed52e62f439fbaa2ec5620995.lean/declarations/inverselinear--67b17329597832185e0cd650.md) | 120 | `declaration-track:67b17329597832185e0cd650d80c44ce51f507c9d6ab21ba10cabf615b7802ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
