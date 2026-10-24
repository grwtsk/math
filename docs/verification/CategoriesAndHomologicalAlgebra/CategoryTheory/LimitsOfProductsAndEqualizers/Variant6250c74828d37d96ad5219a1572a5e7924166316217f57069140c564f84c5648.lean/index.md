# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LimitsOfProductsAndEqualizers.Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25760eb77a0bbba6ede8a4dfe0d9d8d1619561f6",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25760eb77a0bbba6ede8a4dfe0d9d8d1619561f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Equalizers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.FiniteProductsOfBinaryProducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Creates.Finite` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [buildLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/buildlimit--0d8c8aecc2eef3953325d522.md) | 62 | `declaration-track:0d8c8aecc2eef3953325d5225a8d8bb4388606b6f0363741c1a158982ef303cb` |
| 2 | `def` | [buildIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/buildislimit--fcbe56d11a17d7f024b38434.md) | 82 | `declaration-track:fcbe56d11a17d7f024b3843440a2054345de5fe46226d6e77f181d4dab3bcd08` |
| 3 | `def` | [limitConeOfEqualizerAndProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/limitconeofequalizerandproduct--9e6c05f5184ef4da614c52e3.md) | 102 | `declaration-track:9e6c05f5184ef4da614c52e3c5a773de934058b75f980e3c066027a8ff31f3eb` |
| 4 | `theorem` | [hasLimit_of_equalizer_and_product](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/haslimit-of-equalizer-and-product--0dbd2081a456750ef3444a91.md) | 116 | `result-track:0dbd2081a456750ef3444a91070ebfb3eefcccc1eb1ba9e0c7f539aa5527584a` |
| 5 | `def` | [limitSubobjectProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/limitsubobjectproduct--5ce455ab852ffc9daf3d7097.md) | 122 | `declaration-track:5ce455ab852ffc9daf3d7097f990b28ab89177d172222868a160c7f3181e3f33` |
| 6 | `instance` | [limitSubobjectProduct_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/limitsubobjectproduct-mono--66ac2b1be0ab013c742b233a.md) | 127 | `declaration-track:66ac2b1be0ab013c742b233a09ffbbf42d034b184053b5330976929af5226491` |
| 7 | `theorem` | [has_limits_of_hasEqualizers_and_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/has-limits-of-hasequalizers-and-products--3c671756296767a613a0b21c.md) | 133 | `result-track:3c671756296767a613a0b21c060ecd9668b135169097481f4a1d259270ed07c3` |
| 8 | `theorem` | [hasFiniteLimits_of_hasEqualizers_and_finite_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/hasfinitelimits-of-hasequalizers-and-finite-products--56057a14e3fcd8c1a9a44099.md) | 140 | `result-track:56057a14e3fcd8c1a9a4409907a924d52e440afea3084a7b6087159ffd9c95c4` |
| 9 | `lemma` | [preservesLimit_of_preservesEqualizers_and_product](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/preserveslimit-of-preservesequalizers-and-product--4d1f2aee44e11e990de6e1bd.md) | 157 | `result-track:4d1f2aee44e11e990de6e1bd0af629294dbaad53daf97a5fe0627acaf6418407` |
| 10 | `lemma` | [preservesFiniteLimits_of_preservesEqualizers_and_finiteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/preservesfinitelimits-of-preservesequalizers-and-finiteproducts--4343dcd62bcd223f2da10896.md) | 197 | `result-track:4343dcd62bcd223f2da108960fdb5f52ada80f6e7576e5c7b4d0e7b2d5a0d45f` |
| 11 | `lemma` | [preservesLimits_of_preservesEqualizers_and_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/preserveslimits-of-preservesequalizers-and-products--512f78bb5f6fd9ab63b361e7.md) | 206 | `result-track:512f78bb5f6fd9ab63b361e7a87c957332f802befd50ffd6fc7740ed1309a513` |
| 12 | `def` | [createsLimitsOfShapeOfCreatesEqualizersAndProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/createslimitsofshapeofcreatesequalizersandproducts--68beea32797704f2250d4bff.md) | 227 | `declaration-track:68beea32797704f2250d4bffce801ffbc4e56483af7a5b0c386efaba216ee0fa` |
| 13 | `def` | [createsFiniteLimitsOfCreatesEqualizersAndFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/createsfinitelimitsofcreatesequalizersandfiniteproducts--f001d84eff3a60d3864a9a23.md) | 247 | `declaration-track:f001d84eff3a60d3864a9a230e2c464813a3398b37f7451746e00ca084e5f259` |
| 14 | `def` | [createsLimitsOfSizeOfCreatesEqualizersAndProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/createslimitsofsizeofcreatesequalizersandproducts--82d4f9a363d47d6c3c0eb853.md) | 259 | `declaration-track:82d4f9a363d47d6c3c0eb853b928a998eec1908092aa88d235fbd2d76f6a2200` |
| 15 | `theorem` | [hasFiniteLimits_of_hasTerminal_and_pullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/hasfinitelimits-of-hasterminal-and-pullbacks--59399eabe95d9a3c0e6aee32.md) | 265 | `result-track:59399eabe95d9a3c0e6aee32e5e7c798aada2598dc008cecb3a56aedc7935dcd` |
| 16 | `lemma` | [preservesFiniteLimits_of_preservesTerminal_and_pullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/preservesfinitelimits-of-preservesterminal-and-pullbacks--e438a9d0ba50205ca82c5995.md) | 274 | `result-track:e438a9d0ba50205ca82c5995093d2e8adf6aacf39aed7fcbcae179a953790554` |
| 17 | `def` | [createsFiniteLimitsOfCreatesTerminalAndPullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/createsfinitelimitsofcreatesterminalandpullbacks--5a6de2c34fff49856225b8ac.md) | 292 | `declaration-track:5a6de2c34fff49856225b8accfbeb910ae91b9857589e6edf3e404d40b0651fa` |
| 18 | `def` | [buildColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/buildcolimit--70c5eb0109b53a797cd5c5dc.md) | 318 | `declaration-track:70c5eb0109b53a797cd5c5dcbabd5aa570845ea88b3879c4550d1035277396b3` |
| 19 | `def` | [buildIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/buildiscolimit--6b5f30f076f5ae6d6e802653.md) | 340 | `declaration-track:6b5f30f076f5ae6d6e802653a0b252a819ced9e5eb3454fac5527728ffc5922e` |
| 20 | `def` | [colimitCoconeOfCoequalizerAndCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/colimitcoconeofcoequalizerandcoproduct--e2c79582733ddb134e757141.md) | 368 | `declaration-track:e2c79582733ddb134e757141c1aa9ad779484481bd53349c63987f31913b4292` |
| 21 | `theorem` | [hasColimit_of_coequalizer_and_coproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/hascolimit-of-coequalizer-and-coproduct--41c01ab01a3029d57a0ef060.md) | 382 | `result-track:41c01ab01a3029d57a0ef0601a089c06931f6e72bf9fc13b7065a5471d14b71c` |
| 22 | `def` | [colimitQuotientCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/colimitquotientcoproduct--537f89c311d9570fc81b94dd.md) | 388 | `declaration-track:537f89c311d9570fc81b94dd1cae19ad060f48f75c2647c5c6d15af6d5120f2f` |
| 23 | `instance` | [colimitQuotientCoproduct_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/colimitquotientcoproduct-epi--a993fd1c53ada47fd49b0a23.md) | 393 | `declaration-track:a993fd1c53ada47fd49b0a231ed60826d8b33fc35fa4c3004de0ff32e1f237a7` |
| 24 | `theorem` | [has_colimits_of_hasCoequalizers_and_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/has-colimits-of-hascoequalizers-and-coproducts--8d1edd098f3d88fc860a7289.md) | 399 | `result-track:8d1edd098f3d88fc860a7289f8dce87e4ca34a075087a35082f46db8fe1b7bbc` |
| 25 | `theorem` | [hasFiniteColimits_of_hasCoequalizers_and_finite_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/hasfinitecolimits-of-hascoequalizers-and-finite-coproducts--0877155c11962b91fa92ee01.md) | 406 | `result-track:0877155c11962b91fa92ee0156edd99bfe7c1d6515df84fea1765eb0d8ecd750` |
| 26 | `lemma` | [preservesColimit_of_preservesCoequalizers_and_coproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/preservescolimit-of-preservescoequalizers-and-coproduct--cfbd23b46d6816b3641602b4.md) | 420 | `result-track:cfbd23b46d6816b3641602b48664459693ac02de56abb5153dd2434312f9e438` |
| 27 | `lemma` | [preservesFiniteColimits_of_preservesCoequalizers_and_finiteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/preservesfinitecolimits-of-preservescoequalizers-and-finitecoproducts--dd9ab5385149c92cb53bd2f6.md) | 463 | `result-track:dd9ab5385149c92cb53bd2f69514c6a16e765d3440edcd5f3f4acd040c4df451` |
| 28 | `lemma` | [preservesColimits_of_preservesCoequalizers_and_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/preservescolimits-of-preservescoequalizers-and-coproducts--cf687a3b87e22fa72b11b669.md) | 472 | `result-track:cf687a3b87e22fa72b11b669a74791c8c05ab13e2af54c77d7b53e5e4a59142b` |
| 29 | `def` | [createsColimitsOfShapeOfCreatesCoequalizersAndCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/createscolimitsofshapeofcreatescoequalizersandcoproducts--d8c10e25b4addef7d0eb9f31.md) | 493 | `declaration-track:d8c10e25b4addef7d0eb9f315bc79885fbad88158cb1962a8e526093bb6fba1c` |
| 30 | `def` | [createsFiniteColimitsOfCreatesCoequalizersAndFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/createsfinitecolimitsofcreatescoequalizersandfinitecoproducts--e815a84efdba697861195b17.md) | 513 | `declaration-track:e815a84efdba697861195b17b05fa3d589d6b0f85fc4a5b371affd52d8fbdbb2` |
| 31 | `def` | [createsColimitsOfSizeOfCreatesCoequalizersAndCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/createscolimitsofsizeofcreatescoequalizersandcoproducts--670b22ce4ccdb1d21834dfa4.md) | 525 | `declaration-track:670b22ce4ccdb1d21834dfa47bbc2991ffd072e8be7bbd1981562b13207ea7a5` |
| 32 | `theorem` | [hasFiniteColimits_of_hasInitial_and_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/hasfinitecolimits-of-hasinitial-and-pushouts--c58325d1c9558a5ab5499166.md) | 531 | `result-track:c58325d1c9558a5ab5499166c953d42f5ac74ee1ad08eba5ad3ac3e65c88ec3c` |
| 33 | `lemma` | [preservesFiniteColimits_of_preservesInitial_and_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/preservesfinitecolimits-of-preservesinitial-and-pushouts--4477ed391962d68bc1f62db1.md) | 540 | `result-track:4477ed391962d68bc1f62db11eb40a9c14bfc35a20e125542f04d38ecc8733b0` |
| 34 | `def` | [createsFiniteColimitsOfCreatesInitialAndPushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/declarations/createsfinitecolimitsofcreatesinitialandpushouts--209dfb28c0afecaa411a35bb.md) | 560 | `declaration-track:209dfb28c0afecaa411a35bb98937dc4f6c5fd8b916a9aa125a23cb1b093421f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
