# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LimitsOfProductsAndEqualizers.Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b5ba14746f8c2c4f315eebca7b96c0ea756dc3b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b5ba14746f8c2c4f315eebca7b96c0ea756dc3b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Equalizers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.FiniteProductsOfBinaryProducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Creates.Finite` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [buildLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/buildlimit--a87cf85b1bd784aef0741c3d.md) | 54 | `declaration-track:a87cf85b1bd784aef0741c3db1e282d076307d50cd99c22093bb4b1497d51914` |
| 2 | `def` | [buildIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/buildislimit--76be33578509e33dfba77c25.md) | 74 | `declaration-track:76be33578509e33dfba77c258d8161acd45d31e7b6979fa42f5fdb890ee78abf` |
| 3 | `def` | [limitConeOfEqualizerAndProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/limitconeofequalizerandproduct--894b48f98e61d5ada365a010.md) | 94 | `declaration-track:894b48f98e61d5ada365a010b514cb5e7b52b1a72dc520e4f9b762cd8da1ccb7` |
| 4 | `theorem` | [hasLimit_of_equalizer_and_product](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/haslimit-of-equalizer-and-product--2df3cfe730161952a7f50828.md) | 108 | `result-track:2df3cfe730161952a7f5082864206730b496a2f884c0ccbc8d12d46d3222c906` |
| 5 | `def` | [limitSubobjectProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/limitsubobjectproduct--b4d4954136813d8ba331b85b.md) | 114 | `declaration-track:b4d4954136813d8ba331b85b6cd3aec2d0bdb770805dd1005785658b2bd893e6` |
| 6 | `instance` | [limitSubobjectProduct_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/limitsubobjectproduct-mono--c9970ba8af99c4561663d57a.md) | 119 | `declaration-track:c9970ba8af99c4561663d57abc92659e5d0503636a74e9152f7e35b90c59c34a` |
| 7 | `theorem` | [has_limits_of_hasEqualizers_and_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/has-limits-of-hasequalizers-and-products--22b213545a66cf18b479821c.md) | 125 | `result-track:22b213545a66cf18b479821c79e80a89674a484229280147d5af4e1b8ca4fd03` |
| 8 | `theorem` | [hasFiniteLimits_of_hasEqualizers_and_finite_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/hasfinitelimits-of-hasequalizers-and-finite-products--07b01ad73f40bae334436b53.md) | 132 | `result-track:07b01ad73f40bae334436b53bf4a41b82cb31f052f301157891fe73e8452e657` |
| 9 | `lemma` | [preservesLimit_of_preservesEqualizers_and_product](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/preserveslimit-of-preservesequalizers-and-product--fed560da8e12ce0101aaa9b5.md) | 149 | `result-track:fed560da8e12ce0101aaa9b5a1be306ea78df720f99f0ac6a4c00ec302c4b7d7` |
| 10 | `lemma` | [preservesFiniteLimits_of_preservesEqualizers_and_finiteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/preservesfinitelimits-of-preservesequalizers-and-finiteproducts--afffec04a263567a47e34530.md) | 189 | `result-track:afffec04a263567a47e345301b3cff6705bdd06f45bda04162ed1c9d0912e800` |
| 11 | `lemma` | [preservesLimits_of_preservesEqualizers_and_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/preserveslimits-of-preservesequalizers-and-products--bc608d73ada45a865acc06c6.md) | 198 | `result-track:bc608d73ada45a865acc06c65db376fd94b21601e776851ca8a6365d618526b3` |
| 12 | `def` | [createsLimitsOfShapeOfCreatesEqualizersAndProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/createslimitsofshapeofcreatesequalizersandproducts--2237525d43ac42ef630c935e.md) | 219 | `declaration-track:2237525d43ac42ef630c935e1d0edb57bd52662d3c2f59b4e712f0758172f795` |
| 13 | `def` | [createsFiniteLimitsOfCreatesEqualizersAndFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/createsfinitelimitsofcreatesequalizersandfiniteproducts--23ebb72999941501b351ce57.md) | 239 | `declaration-track:23ebb72999941501b351ce57a0167a84e5dcf9c1eef4fb343eaf7c5f9add7e2f` |
| 14 | `def` | [createsLimitsOfSizeOfCreatesEqualizersAndProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/createslimitsofsizeofcreatesequalizersandproducts--61f23b8c3478647f148114e8.md) | 251 | `declaration-track:61f23b8c3478647f148114e80775acb828b832f2a582aebd159e1cbba800966e` |
| 15 | `theorem` | [hasFiniteLimits_of_hasTerminal_and_pullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/hasfinitelimits-of-hasterminal-and-pullbacks--c6362f08d014ec75d39885f3.md) | 257 | `result-track:c6362f08d014ec75d39885f3568403cea8a21bac5bdd83cddfc8983e96dd1829` |
| 16 | `lemma` | [preservesFiniteLimits_of_preservesTerminal_and_pullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/preservesfinitelimits-of-preservesterminal-and-pullbacks--6c7b94485ee5efb59ec7eab5.md) | 266 | `result-track:6c7b94485ee5efb59ec7eab545c64078a057ccdcd7a1ec0498c789fef64f7696` |
| 17 | `def` | [createsFiniteLimitsOfCreatesTerminalAndPullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/createsfinitelimitsofcreatesterminalandpullbacks--6dde528e7afcf90e59ce388e.md) | 284 | `declaration-track:6dde528e7afcf90e59ce388e87fbbeaf6fe821fd97a2dde7ffb5ae6d1c47e8a3` |
| 18 | `def` | [buildColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/buildcolimit--8bf8226aab6d846e1e94ec21.md) | 310 | `declaration-track:8bf8226aab6d846e1e94ec216b084f75f1f8524b26670599f033223fd2d3c151` |
| 19 | `def` | [buildIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/buildiscolimit--135a959e2bec31cf0f7cebd5.md) | 332 | `declaration-track:135a959e2bec31cf0f7cebd576f9e9ba499fae26b5524be9c2c03ecc1b8af18e` |
| 20 | `def` | [colimitCoconeOfCoequalizerAndCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/colimitcoconeofcoequalizerandcoproduct--db55dbba72af19bc78458472.md) | 360 | `declaration-track:db55dbba72af19bc784584727eb58925dfbb049e9ae621951888795448c30b4c` |
| 21 | `theorem` | [hasColimit_of_coequalizer_and_coproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/hascolimit-of-coequalizer-and-coproduct--9718909133c7604f671bd4b8.md) | 374 | `result-track:9718909133c7604f671bd4b8fdcf2bc75cd9d97772288c0cb648c56ac6d3aba1` |
| 22 | `def` | [colimitQuotientCoproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/colimitquotientcoproduct--4e4df8f4241301d181f17f29.md) | 380 | `declaration-track:4e4df8f4241301d181f17f29267e71cb09e50cf629db7d220be074ae14410c98` |
| 23 | `instance` | [colimitQuotientCoproduct_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/colimitquotientcoproduct-epi--31e926bf536c67f0fbe61cf4.md) | 385 | `declaration-track:31e926bf536c67f0fbe61cf4d3e856426781725fad00ea5c259ad4b4e7648f3d` |
| 24 | `theorem` | [has_colimits_of_hasCoequalizers_and_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/has-colimits-of-hascoequalizers-and-coproducts--30882f12090e135baff35404.md) | 391 | `result-track:30882f12090e135baff354048079ddc0ef521260a5572609181b0484b8d43307` |
| 25 | `theorem` | [hasFiniteColimits_of_hasCoequalizers_and_finite_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/hasfinitecolimits-of-hascoequalizers-and-finite-coproducts--ae21df16a057c105dac2a152.md) | 398 | `result-track:ae21df16a057c105dac2a1525c3747fe957704acb59cb58afc7839a35a8b2594` |
| 26 | `lemma` | [preservesColimit_of_preservesCoequalizers_and_coproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/preservescolimit-of-preservescoequalizers-and-coproduct--ec9ba4fe4667f4dd8ff65f79.md) | 412 | `result-track:ec9ba4fe4667f4dd8ff65f793101e14b046722cca612baf22e2e919f5f6afd6b` |
| 27 | `lemma` | [preservesFiniteColimits_of_preservesCoequalizers_and_finiteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/preservesfinitecolimits-of-preservescoequalizers-and-finitecoproducts--8839dec07ffef9023aa8a28c.md) | 455 | `result-track:8839dec07ffef9023aa8a28ca59b34f5b33b5cf70690690544ba11d59e329bdf` |
| 28 | `lemma` | [preservesColimits_of_preservesCoequalizers_and_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/preservescolimits-of-preservescoequalizers-and-coproducts--27d34f15edd1b464fe2029d7.md) | 464 | `result-track:27d34f15edd1b464fe2029d759c1ec642eaf59ef9c0123e886da8a12316dbe4b` |
| 29 | `def` | [createsColimitsOfShapeOfCreatesCoequalizersAndCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/createscolimitsofshapeofcreatescoequalizersandcoproducts--bac74eeab2475d50ea8ef09f.md) | 485 | `declaration-track:bac74eeab2475d50ea8ef09fbd72255e1208a6d3a0aa4bf2fe051f6fefa06113` |
| 30 | `def` | [createsFiniteColimitsOfCreatesCoequalizersAndFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/createsfinitecolimitsofcreatescoequalizersandfinitecoproducts--6382bbb1d4e7624483ad525e.md) | 505 | `declaration-track:6382bbb1d4e7624483ad525e30ac8dd252dc3f822eac55f8e9f7f8fcaa601c77` |
| 31 | `def` | [createsColimitsOfSizeOfCreatesCoequalizersAndCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/createscolimitsofsizeofcreatescoequalizersandcoproducts--125769816dbce46ed1213e01.md) | 517 | `declaration-track:125769816dbce46ed1213e010104cf8a55838ff17d3ca86cd3253d79e3877ed7` |
| 32 | `theorem` | [hasFiniteColimits_of_hasInitial_and_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/hasfinitecolimits-of-hasinitial-and-pushouts--b6d911a1142ecfe57c876b44.md) | 523 | `result-track:b6d911a1142ecfe57c876b44004080019ca26db45548711be88515b6d11599b0` |
| 33 | `lemma` | [preservesFiniteColimits_of_preservesInitial_and_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/preservesfinitecolimits-of-preservesinitial-and-pushouts--1559658a638a20b4e221bafe.md) | 532 | `result-track:1559658a638a20b4e221bafe3e159f0f7e48525dbb661b3b6857c77418e9632f` |
| 34 | `def` | [createsFiniteColimitsOfCreatesInitialAndPushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/declarations/createsfinitecolimitsofcreatesinitialandpushouts--d7023dddb591d556b3a80a7a.md) | 552 | `declaration-track:d7023dddb591d556b3a80a7afaf4b16a0d178341785ad31df4263ce230fefa04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
