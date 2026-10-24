# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61864507fb3f78f0843a8f4fce88cb4a19d7692a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61864507fb3f78f0843a8f4fce88cb4a19d7692a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Bifunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/declarations/mapequiv--d04cd856e04bf40a0ca569d5.md) | 44 | `declaration-track:d04cd856e04bf40a0ca569d50f0147dedd2dfe1c76df049965bcc5d3035e8625` |
| 2 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/declarations/mapequiv-apply--3d1c2ad83901a2b29da1e53b.md) | 51 | `result-track:3d1c2ad83901a2b29da1e53b33d6c8ac48eafa73dce139e4f0ce16f60f391315` |
| 3 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/declarations/mapequiv-symm-apply--ebd4a4f105df36a49d70a992.md) | 55 | `result-track:ebd4a4f105df36a49d70a992e162664cf8715ecb044489068ab5fe248536a15f` |
| 4 | `theorem` | [mapEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/declarations/mapequiv-refl--16ccf1bf0086f1c2459f9418.md) | 60 | `result-track:16ccf1bf0086f1c2459f94183d434208cf9d54d901b939cf0f32eb454c71fb58` |
| 5 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/declarations/mapequiv--5056fa4fd220ef609bae99ef.md) | 72 | `declaration-track:5056fa4fd220ef609bae99ef74144a8d8990aa514c4e56d0a5e73d9a5ca288d8` |
| 6 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/declarations/mapequiv-apply--a02698fc4dd65dc03ab2c921.md) | 79 | `result-track:a02698fc4dd65dc03ab2c9211c980d4638b144bdf59bd564416abe812d821778` |
| 7 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/declarations/mapequiv-symm-apply--63cbbb6cab9053bf1a77ff38.md) | 84 | `result-track:63cbbb6cab9053bf1a77ff38c09fc5f55dcd47e47014de36765e8ac762777335` |
| 8 | `theorem` | [mapEquiv_refl_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant52e8b97c71793481fc34e78ed7c1bf213a01ccddf880acba075d51911cf15615.lean/declarations/mapequiv-refl-refl--0b1c7ac1bf70b554e87691e8.md) | 89 | `result-track:0b1c7ac1bf70b554e87691e82e9b4a07a5f29d0a1abdff80e87d9f2ff205b3e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
