# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.W.Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7435b75501bb82f08f526b5fde32fcdfd6358f3e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7435b75501bb82f08f526b5fde32fcdfd6358f3e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wpath--5741c4a58b0965cbe69803b2.md) | 66 | `declaration-track:5741c4a58b0965cbe69803b214a6e25234e7a89179bc7b22064b2310e310f0f2` |
| 2 | `instance` | [WPath.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wpath-inhabited--15f3a1d8683ae06cfa31507d.md) | 71 | `declaration-track:15f3a1d8683ae06cfa31507d89f38e0181dca5d583cfa878d6ee9f71ed895b49` |
| 3 | `def` | [wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wpathcaseson--10c1c9ba01018170b0dbf94d.md) | 77 | `declaration-track:10c1c9ba01018170b0dbf94def83ba3dd9a1273e67674dfecbbcc56dd13d821a` |
| 4 | `def` | [wPathDestLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wpathdestleft--cf96c08d83e5e934c3f8feda.md) | 85 | `declaration-track:cf96c08d83e5e934c3f8feda114b72c8ac0b3cd1d1256f7871f6283967e50544` |
| 5 | `def` | [wPathDestRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wpathdestright--11609560fb6159f3a8e070e8.md) | 89 | `declaration-track:11609560fb6159f3a8e070e8964cfeaec24e7c8cfbdb807339bc99f95f8f9980` |
| 6 | `theorem` | [wPathDestLeft_wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wpathdestleft-wpathcaseson--71945f0ca82d84198c035136.md) | 93 | `result-track:71945f0ca82d84198c035136158ed51736fd6362b2e915d4e4c7b4a7b30bf52b` |
| 7 | `theorem` | [wPathDestRight_wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wpathdestright-wpathcaseson--ff00bcc684eabf250d314e2f.md) | 97 | `result-track:ff00bcc684eabf250d314e2f91e14fe6df7873469d00f069c65ee7d60a1fbade` |
| 8 | `theorem` | [wPathCasesOn_eta](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wpathcaseson-eta--4de32cc3f42f4ab97b35e196.md) | 101 | `result-track:4de32cc3f42f4ab97b35e1960b956526c8b3977ebe6d80f17655b17f15962700` |
| 9 | `theorem` | [comp_wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/comp-wpathcaseson--0177556eb71e437d77acd354.md) | 105 | `result-track:0177556eb71e437d77acd35417e51341a90af7d6b1f0007689dcdb1499af0313` |
| 10 | `def` | [wp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wp--371f7df8e503bc6134214b14.md) | 114 | `declaration-track:371f7df8e503bc6134214b14d5bd501ea3d139d4e69475fab0770f1e65f714d5` |
| 11 | `def` | [W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/w--379ce5a081a2b8fd407e1918.md) | 119 | `declaration-track:379ce5a081a2b8fd407e1918eb73cc3e0eebd7a39e1c89ac9f7e64a89501b033` |
| 12 | `instance` | [mvfunctorW](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/mvfunctorw--2e4bd0d50cb9f6b65a7c9947.md) | 122 | `declaration-track:2e4bd0d50cb9f6b65a7c9947ac8e8e85ced086cc518670105701eb135c9c2b76` |
| 13 | `def` | [wpMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wpmk--219365020c9abb23a459d542.md) | 130 | `declaration-track:219365020c9abb23a459d5429bf6e7f09678ee3bc4cb9643adca8596e72c41c3` |
| 14 | `def` | [wpRec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wprec--93d76cb87c68ff00e6f25e77.md) | 134 | `declaration-track:93d76cb87c68ff00e6f25e77ba6810e0b5bc3e1f1d7fb8ace1ec28ab3a1a299c` |
| 15 | `theorem` | [wpRec_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wprec-eq--e9c788aaf9fce5f62d1a872c.md) | 139 | `result-track:e9c788aaf9fce5f62d1a872c1c6816870bdfbc84d561c42c9ca4036a508cdbf9` |
| 16 | `theorem` | [wp_ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wp-ind--90e9d505599f6bf19898cb04.md) | 145 | `result-track:90e9d505599f6bf19898cb04647f6cf83b89015286d3fe3db2bbf5ed3c77b22d` |
| 17 | `def` | [wMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wmk--f0b5a7f49d9692534c2b9843.md) | 160 | `declaration-track:f0b5a7f49d9692534c2b98432a15e1d32215d8fe5e7bceb8dbb77788ead82498` |
| 18 | `def` | [wRec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wrec--030cdab06be0adcd07f13637.md) | 166 | `declaration-track:030cdab06be0adcd07f136371705380dff917d24104f9f68b721cae2b08d410e` |
| 19 | `theorem` | [wRec_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wrec-eq--f5ad9df63746afb4772ea62e.md) | 175 | `result-track:f5ad9df63746afb4772ea62e0ef51b0fa3bdab845b229a553a7815c177832c85` |
| 20 | `theorem` | [w_ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/w-ind--f003a9a54b151badc7842f25.md) | 184 | `result-track:f003a9a54b151badc7842f2525379f04e9fb98a4c193c38c19c8e02fc4cd9371` |
| 21 | `theorem` | [w_cases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/w-cases--679820004bb6e682486aa46a.md) | 197 | `result-track:679820004bb6e682486aa46ab79a66b141b4553d91cf996f2bafa15e457399f4` |
| 22 | `def` | [wMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wmap--0e316ff435bb261338d5f86d.md) | 202 | `declaration-track:0e316ff435bb261338d5f86d126bb35393b9dc31995e68cde7b90911edba2ef7` |
| 23 | `theorem` | [wMk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wmk-eq--0a4e39eae3942b3862f8d30c.md) | 204 | `result-track:0a4e39eae3942b3862f8d30c3414c696363ed106e35756c8bc77b09b9b4ce383` |
| 24 | `theorem` | [w_map_wMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/w-map-wmk--b742600c6c0d4038188546ec.md) | 208 | `result-track:b742600c6c0d4038188546ec62728db4c0854f148a961654e19ea1005063fd7b` |
| 25 | `abbrev` | [objAppend1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/objappend1--b440840af93b381d8738ebc6.md) | 231 | `declaration-track:b440840af93b381d8738ebc6ee7e1cc8d47d03ccc47c96c5c30a2b499e1ac295` |
| 26 | `theorem` | [map_objAppend1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/map-objappend1--6e51e23dcb2b028604d51fc6.md) | 235 | `result-track:6e51e23dcb2b028604d51fc64f04b8554ef33069d004278cb71b0cfb088de93e` |
| 27 | `def` | [wMk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wmk--0a964aaa028663c9ef4dd750.md) | 249 | `declaration-track:0a964aaa028663c9ef4dd7507cafe568401c13c743e26b6422aabd95001bd40d` |
| 28 | `def` | [wDest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wdest--ed323282efa25feeed5f0e14.md) | 253 | `declaration-track:ed323282efa25feeed5f0e140c829452a994e1cb9a42405933d91cf1314094a4` |
| 29 | `theorem` | [wDest'_wMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wdest-wmk--a5ae34aaea4c3ebf1300c052.md) | 256 | `result-track:a5ae34aaea4c3ebf1300c0524b71270575061fd4fde352b1269db4ddaf2fea9b` |
| 30 | `theorem` | [wDest'_wMk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant173744701364b8cbf04d078757e0b06980512add0725bc25b274c38589066f7b.lean/declarations/wdest-wmk--19b712855cf25e9b78d94540.md) | 259 | `result-track:19b712855cf25e9b78d945406b7fe301a494e8a03b5407022661f24987e792ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
