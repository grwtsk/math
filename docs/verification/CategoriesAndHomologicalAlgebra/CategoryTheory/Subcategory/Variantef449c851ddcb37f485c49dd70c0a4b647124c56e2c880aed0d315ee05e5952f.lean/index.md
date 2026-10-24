# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcategory.Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c7b284a609441361cccab9d95ff9c9b985e0867",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c7b284a609441361cccab9d95ff9c9b985e0867`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TensorLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/tensorle--82fb44ba72fae8c83cebc250.md) | 43 | `declaration-track:82fb44ba72fae8c83cebc250ddaa9b5bffa78a0a229631dcc40d1d56dc7eabf5` |
| 2 | `lemma` | [prop_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/prop-tensor--88d75fc14a18d53a68de5dad.md) | 46 | `result-track:88d75fc14a18d53a68de5dad1ccf2ace0933192240695809a6d80854e09ce0d2` |
| 3 | `class` | [ContainsUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/containsunit--c3c68f3fdb3f882c913e98f5.md) | 52 | `declaration-track:c3c68f3fdb3f882c913e98f5eaf8ba0db1d514508f1501173e6a644dd57874bb` |
| 4 | `lemma` | [prop_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/prop-unit--95b23088c92826734a4a7acf.md) | 55 | `result-track:95b23088c92826734a4a7acf0871024ad28197eca273b623daa107da06affc8d` |
| 5 | `class` | [IsMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/ismonoidal--ccde9f11aff7a2d9732f0c45.md) | 60 | `declaration-track:ccde9f11aff7a2d9732f0c453e0f4f164e138c2574a53f7d00790a5a38989f57` |
| 6 | `class` | [IsMonoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/ismonoidalclosed--c5455bc030d2a0bc363ffbc5.md) | 65 | `declaration-track:c5455bc030d2a0bc363ffbc5bc2017c1fad6f924cc69e57b0205a343c58269e4` |
| 7 | `lemma` | [prop_ihom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/prop-ihom--9f0101840c4d037844876ec6.md) | 68 | `result-track:9f0101840c4d037844876ec6c2c855f27efa113ec5e5366b31d7869b0ec51864` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/instance--e7e45403e8cdfd718b46b7e1.md) | 75 | `declaration-track:e7e45403e8cdfd718b46b7e10a70f0c7b931e3d42d012d0ff9734e096396a858` |
| 9 | `instance` | [fullMonoidalSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/fullmonoidalsubcategory--0d43d1d3bbee5f6fa3122e5b.md) | 89 | `declaration-track:0d43d1d3bbee5f6fa3122e5b520126116cb93a85d996f4964e77cc7edb27ea33` |
| 10 | `instance` | [monoidalι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/monoidal--491b7b61fc68671883d1e675.md) | 97 | `declaration-track:491b7b61fc68671883d1e6755aeeff3fe123f2766798062f57746122eddb75f8` |
| 11 | `lemma` | [ι_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/anonymous--9d9049acae5d1e24cb431afc.md) | 104 | `result-track:9d9049acae5d1e24cb431afc988957b3ec641fffa431a43db9610f451c52d07f` |
| 12 | `lemma` | [ι_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/anonymous--02408d98992f1973b3904fb5.md) | 105 | `result-track:02408d98992f1973b3904fb58ddcafc78dd85892bc27bf5a96ece87f0fce0765` |
| 13 | `lemma` | [ι_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/anonymous--45b66e1b56a4d5c50cc4915a.md) | 106 | `result-track:45b66e1b56a4d5c50cc4915a9d39b6b523f3c3575c7452bcd23738a9563e11de` |
| 14 | `lemma` | [ι_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/anonymous--a645a377255ce723b5998b67.md) | 107 | `result-track:a645a377255ce723b5998b6785198b8ce8187a52525a66930ad8a96ff7397450` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/instance--6109648e0ca148f44d22becb.md) | 113 | `declaration-track:6109648e0ca148f44d22becba0ce8b4d31c388cb9516fb5c06bceca5579f3409` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/instance--274f612ec0124fc2b29b538a.md) | 118 | `declaration-track:274f612ec0124fc2b29b538ac580d587401967db77dbb18e86a861b2b695696d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/instance--554e7ee9332153823c1988a7.md) | 129 | `declaration-track:554e7ee9332153823c1988a792d82c5de9c2d1ff42e460a072d7f46553031da1` |
| 18 | `lemma` | [ιOfLE_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/ofle--8f4fbabab6cdf3c964f9e497.md) | 134 | `result-track:8f4fbabab6cdf3c964f9e49745f32d036895c33ec3665137ca411aeacef3a7a6` |
| 19 | `lemma` | [ιOfLE_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/ofle--3cf3fc6218b362c8b8e361b6.md) | 135 | `result-track:3cf3fc6218b362c8b8e361b65b634d1ff8da12987bd42a643045753eed1fdf36` |
| 20 | `lemma` | [ιOfLE_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/ofle--9985b193c49859fc72daae21.md) | 136 | `result-track:9985b193c49859fc72daae21702ee984d7bb4ef1611b4e936fcc49b4591d8657` |
| 21 | `lemma` | [ιOfLE_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/ofle--1a74efaf4524fd9265b7dcef.md) | 137 | `result-track:1a74efaf4524fd9265b7dcef7dbf6b34e23dc160765b0abd9aeb13c5127dd763` |
| 22 | `instance` | [fullBraidedSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/fullbraidedsubcategory--70cc537f98c578a601e0103f.md) | 147 | `declaration-track:70cc537f98c578a601e0103f3fd0470488289e7c0a86e9e3f8e544320cdf3333` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/instance--77e90710bbbaddae7994a746.md) | 153 | `declaration-track:77e90710bbbaddae7994a746a0d322fcb113adce6dd245058c614eece7e92a64` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/instance--ef3194b1f41c7b45ce4657fc.md) | 159 | `declaration-track:ef3194b1f41c7b45ce4657fce47b2c2466df445f36e3eb0bd2f8d98e3104beba` |
| 25 | `instance` | [fullSymmetricSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/fullsymmetricsubcategory--73aaa496b3409eb0dee42e1d.md) | 168 | `declaration-track:73aaa496b3409eb0dee42e1d65f6f8396965b42765e011fc9c1e16420b405e46` |
| 26 | `instance` | [fullMonoidalClosedSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/fullmonoidalclosedsubcategory--d055f048d923c93ad3bf856a.md) | 177 | `declaration-track:d055f048d923c93ad3bf856a631e9f44c71be39d7b8d1cebf8ea742a23c8412d` |
| 27 | `theorem` | [ihom_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/ihom-obj--69eee35d0a56dd22ebbb30e7.md) | 194 | `result-track:69eee35d0a56dd22ebbb30e75f86760ee8fbe21f8ca9bca2de266d1410ccb144` |
| 28 | `theorem` | [ihom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantef449c851ddcb37f485c49dd70c0a4b647124c56e2c880aed0d315ee05e5952f.lean/declarations/ihom-map--8e939433abe2fc82a59cb277.md) | 199 | `result-track:8e939433abe2fc82a59cb277dabd3c59402c482662e957854ff51cd65b4fce1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
