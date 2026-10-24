# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6678552572fca03e8057ca01463f259dd9155617",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6678552572fca03e8057ca01463f259dd9155617`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.CommMon_` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Comon_` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/functorobj--c7ef706a4df37ff40a4463c5.md) | 45 | `declaration-track:c7ef706a4df37ff40a4463c5e571c51eacf5083e4e99f1ce7a4e11433ca58f62` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/functor--7f2af53dd919bac76b3efaf0.md) | 64 | `declaration-track:7f2af53dd919bac76b3efaf034bae6ebecebd015fcfe6ac4d7f75b6223f68975` |
| 3 | `def` | [inverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/inverseobj--a72abe0a29c0df990b5eeefd.md) | 75 | `declaration-track:a72abe0a29c0df990b5eeefdfa3b32260196d9ad33e97379438671a3ef46a646` |
| 4 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/inverse--3b0d22c981446da8efe8c642.md) | 84 | `declaration-track:3b0d22c981446da8efe8c64218a456d24dabb0e4645d004f0b258e8a5333e208` |
| 5 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/unitiso--312c65c3e2049954892a6384.md) | 94 | `declaration-track:312c65c3e2049954892a6384625b8965c80c180fd275e30f2660b1c971890fc6` |
| 6 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/counitiso--845f8278e454fdfb5f7aeab0.md) | 102 | `declaration-track:845f8278e454fdfb5f7aeab0ee3f3d977f683d05ba75d586a5e4d0993f107141` |
| 7 | `def` | [monFunctorCategoryEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/monfunctorcategoryequivalence--5d8c86e1919c2481be40fcc2.md) | 115 | `declaration-track:5d8c86e1919c2481be40fcc2832f39dc6441a10b8b3fbf26511b1502c0967815` |
| 8 | `def` | [functorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/functorobj--bdaa049ac32acdf81b514a76.md) | 129 | `declaration-track:bdaa049ac32acdf81b514a76457b095e07e74977f4d3711fadd1e2315de72457` |
| 9 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/functor--170cf177398648c4255c352a.md) | 148 | `declaration-track:170cf177398648c4255c352ac157327b253881cc6363bdde04fa81a1808c9dc8` |
| 10 | `def` | [inverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/inverseobj--d6ef4ee58f014003340cd421.md) | 159 | `declaration-track:d6ef4ee58f014003340cd42135f86a71f49b1d1e274233de2a46403982ca23f9` |
| 11 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/inverse--8c5cd6b3d558c184843abfb5.md) | 168 | `declaration-track:8c5cd6b3d558c184843abfb5f6514d3b6545a9eb8929e27abcf9f43ee85201d5` |
| 12 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/unitiso--33172c09192c40fa5f286e5d.md) | 180 | `declaration-track:33172c09192c40fa5f286e5d1a98347320fbe38d066e5ead290429133c945274` |
| 13 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/counitiso--b7050dd1649555a246cc6417.md) | 188 | `declaration-track:b7050dd1649555a246cc6417018b36bc47afd961be62ef612399c3bf9489d87f` |
| 14 | `def` | [comonFunctorCategoryEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/comonfunctorcategoryequivalence--2c3ff2930931d0bf9ce79861.md) | 201 | `declaration-track:2c3ff2930931d0bf9ce798614b4dd4829cf69b899cd536210c2b5f6ea7de52f1` |
| 15 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/functor--d991d6bcd40eef66b3153481.md) | 217 | `declaration-track:d991d6bcd40eef66b3153481338d69adfa1f539166a5d8f70584fcdd37cbf31e` |
| 16 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/inverse--abe640acd28cbade2b25a73f.md) | 229 | `declaration-track:abe640acd28cbade2b25a73f2be05dfb3fd1152ed26ee29014159e01a277d735` |
| 17 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/unitiso--74ccc69a286b4d4ad42f489a.md) | 238 | `declaration-track:74ccc69a286b4d4ad42f489a97e3395ab78a8838a3d131139592f8d08cca633e` |
| 18 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/counitiso--f1cce62dbc03e98df3af0181.md) | 246 | `declaration-track:f1cce62dbc03e98df3af0181b854d8c2ac2163f4b5d1011d297c3b50eec07965` |
| 19 | `def` | [commMonFunctorCategoryEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/declarations/commmonfunctorcategoryequivalence--67298e102ba312e7f4da9335.md) | 259 | `declaration-track:67298e102ba312e7f4da9335c01c271834e147694ab05ef30332bca97c0235ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
