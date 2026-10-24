# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8d17b5e6528b78fe0c03d6cd4c170224a30309e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8d17b5e6528b78fe0c03d6cd4c170224a30309e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.CalculusOfFractions.Fractions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LeftFraction.neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/leftfraction-neg--a36abe97aa3aad4f8d1c1fc6.md) | 44 | `declaration-track:a36abe97aa3aad4f8d1c1fc68a5148c9aed61adce2c4bb596841dd56d1f1dfa7` |
| 2 | `abbrev` | [add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add--92bb9c592ac3a984ab0dba8b.md) | 56 | `declaration-track:92bb9c592ac3a984ab0dba8be1dde846517c45be286242e4db640c4e8a731fec` |
| 3 | `lemma` | [symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/symm-add--189d49b02b3f0d63561d141e.md) | 63 | `result-track:189d49b02b3f0d63561d141e71dceabf23991e63ccd1a550ef31e62852cf8999` |
| 4 | `lemma` | [map_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/map-add--5b2e1579333fbafd84f88904.md) | 69 | `result-track:5b2e1579333fbafd84f88904ec367d150bb34254ca94627ae312951fbda3b3a9` |
| 5 | `def` | [neg'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/neg--bd0c3fdbd9e0b5f2ce29baec.md) | 99 | `declaration-track:bd0c3fdbd9e0b5f2ce29baecdaa7964d84ca07b36b2014879c0b4708b4a64404` |
| 6 | `lemma` | [neg'_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/neg-eq--e05e3094a81f8175b4334dbe.md) | 102 | `result-track:e05e3094a81f8175b4334dbedd94ef2eb2caa33b6d50413f748591055865afba` |
| 7 | `def` | [add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add--1fb40e4d057378eb13a8a6d2.md) | 120 | `declaration-track:1fb40e4d057378eb13a8a6d2338825a96b02f705b2c900253ba281b7948f2590` |
| 8 | `lemma` | [add'_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add-eq--f746523bea1bb799a3c0a705.md) | 123 | `result-track:f746523bea1bb799a3c0a705f5c35c6e7fc99ccf20c7080ec7aa4f90f6d7d950` |
| 9 | `lemma` | [add'_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add-comm--0482703c2100349ca6923e36.md) | 142 | `result-track:0482703c2100349ca6923e368ab76b275b9c07e08bc881f9222aa96b271210b5` |
| 10 | `lemma` | [add'_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add-zero--7a2bb456a06dda4094c86a69.md) | 147 | `result-track:7a2bb456a06dda4094c86a69293193f52e4b0a54ce9cc671ab9f3971831d376b` |
| 11 | `lemma` | [zero_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/zero-add--7929dd2dd2eb87ae30659a9d.md) | 157 | `result-track:7929dd2dd2eb87ae30659a9d0fe41975606e616786e98629cf4b852acd059bc8` |
| 12 | `lemma` | [neg'_add'_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/neg-add-self--6cd731b4066ea06cb2de2df4.md) | 161 | `result-track:6cd731b4066ea06cb2de2df4285c3b55e448503829ed6e8db53e3564d1d4a04b` |
| 13 | `lemma` | [add'_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add-assoc--04f64b75568d8d913c6b2a20.md) | 169 | `result-track:04f64b75568d8d913c6b2a20c68e8c00f1a3750894ff10006396a9d505e53be7` |
| 14 | `lemma` | [add'_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add-comp--88c37f73aeea4e825a3829e1.md) | 179 | `result-track:88c37f73aeea4e825a3829e149eb6bb0587be41e64825c6b97c816f3b15826b8` |
| 15 | `lemma` | [comp_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/comp-add--759943b9867c4ba3a719fa82.md) | 197 | `result-track:759943b9867c4ba3a719fa82365b2f4072e7e323561baf64110b8c2bfcae0da1` |
| 16 | `lemma` | [add'_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add-map--af069de3acd67d8a19bfac97.md) | 213 | `result-track:af069de3acd67d8a19bfac973af19f76ebe2d2c59433ed5c3073ac7d5600a491` |
| 17 | `def` | [addCommGroup'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/addcommgroup--436f5c69f412a2b987568755.md) | 223 | `declaration-track:436f5c69f412a2b98756875561248e700883c3e21bbd2dcde573daf7235f164e` |
| 18 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/homequiv--9996811a0f1f2b72eb3ac405.md) | 244 | `declaration-track:9996811a0f1f2b72eb3ac405f93ec8961f4823a6f3ed77c6b31501b06883fe9e` |
| 19 | `def` | [add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add--dce8eedca99b44453a92d18b.md) | 252 | `declaration-track:dce8eedca99b44453a92d18b142b908727c325fa467d75d484be7411365bf6c7` |
| 20 | `lemma` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add-comp--d94af28f11b8acea5e4bf00e.md) | 256 | `result-track:d94af28f11b8acea5e4bf00e5340f04e20e42e4c951b38904decf1d3023d908a` |
| 21 | `lemma` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/comp-add--58a4629fcc241de22baf1308.md) | 264 | `result-track:58a4629fcc241de22baf13086161f95a1f8b4ed79598cdfac9576dbab61202f0` |
| 22 | `lemma` | [add_eq_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add-eq-add--24e8905c94dfb0c51a78aa5c.md) | 271 | `result-track:24e8905c94dfb0c51a78aa5cd04e9709f91f88190d0cbac4bf9fb071e45714d5` |
| 23 | `def` | [addCommGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/addcommgroup--4042f6a638d96957dc3cf767.md) | 283 | `declaration-track:4042f6a638d96957dc3cf767b910068beb722c6f1f0cf077ef60b23d247280d9` |
| 24 | `lemma` | [add_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/add-eq--6d8371cadb56cdb89d2d98ed.md) | 288 | `result-track:6d8371cadb56cdb89d2d98edd67893c1fc580fa698ede45517099103e4df83e2` |
| 25 | `lemma` | [map_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/map-add--d3c3f204044642754dae5bc6.md) | 295 | `result-track:d3c3f204044642754dae5bc62369b781fcebdc0bd351afaa7fc0f6b1d46ec9f6` |
| 26 | `def` | [preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/preadditive--cf8ba4bd55d546e70785a9ea.md) | 309 | `declaration-track:cf8ba4bd55d546e70785a9ea7f04d4c3c15fc3190735fb65128067e8d080a2f4` |
| 27 | `lemma` | [functor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/functor-additive--45b9e027b2dea2c8a74872f2.md) | 314 | `result-track:45b9e027b2dea2c8a74872f265507bc71c043c8fd2e1e166d3e2b953c6aafc6b` |
| 28 | `lemma` | [functor_additive_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/functor-additive-iff--a81d42b0694596e0c8d320e7.md) | 322 | `result-track:a81d42b0694596e0c8d320e7aa4b9567fb1b1752ce66c340c9530797c74948ff` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/instance--1e44d9b2cf08d4a5dfe5a896.md) | 346 | `declaration-track:1e44d9b2cf08d4a5dfe5a896b89f6ce91834b84d21bae1f9b2eaef3439e378b1` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/instance--1d3c0cbaa7b581a05d71b4c3.md) | 347 | `declaration-track:1d3c0cbaa7b581a05d71b4c31bb00beb1d76d9e5b59e9c772061d91f59ae46f8` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/instance--b520aaa4fcc64223d8cd650c.md) | 348 | `declaration-track:b520aaa4fcc64223d8cd650c0de3f770a119555b9910e7db69b7dc46ca90508a` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/instance--4014938f9b045415df16d800.md) | 352 | `declaration-track:4014938f9b045415df16d80069ea8206d8b3163956c27e5f3d5a51645be39315` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/instance--12c11262a561448cafb3f4d8.md) | 353 | `declaration-track:12c11262a561448cafb3f4d85ff3b20ce67cba6760940e8dc8c4edc07c8db9d4` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant7af2c04198cf676cb7b87b867ceccddd1ea7a0ee92ce51017bb1751079410be5.lean/declarations/instance--e1b2afa0ff79bce4abd12604.md) | 354 | `declaration-track:e1b2afa0ff79bce4abd126045d772aedac131a11112aac817e6f2d4dce2ac890` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
