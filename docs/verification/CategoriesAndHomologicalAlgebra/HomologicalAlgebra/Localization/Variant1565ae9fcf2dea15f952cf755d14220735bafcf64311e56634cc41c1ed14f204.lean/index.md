# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Localization.Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18cc2c00a4d9dce63c39dcde483588621831e653",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18cc2c00a4d9dce63c39dcde483588621831e653`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCofiber` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Composition` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [HomologicalComplex.homologyFunctor_inverts_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/homologicalcomplex-homologyfunctor-inverts-quasiiso--12d58f4f2c3b992e80e04613.md) | 35 | `result-track:12d58f4f2c3b992e80e04613bdabcec4fd12438830fba7a9b67443bf38169218` |
| 2 | `abbrev` | [HomologicalComplexUpToQuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/homologicalcomplexuptoquasiiso--f8e0ce247563ba898a4c007a.md) | 44 | `declaration-track:f8e0ce247563ba898a4c007adb9f33f4ccabf5bdcc4bc2d2c032da6c0bffb230` |
| 3 | `abbrev` | [HomologicalComplexUpToQuasiIso.Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/homologicalcomplexuptoquasiiso-q--6d8469fadcc48519784c6023.md) | 48 | `declaration-track:6d8469fadcc48519784c602311cc7d7e1280bf47930eedb0ece0acb3afacb8e5` |
| 4 | `def` | [homologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/homologyfunctor--5cf8943e25e6d47c6f960eb9.md) | 55 | `declaration-track:5cf8943e25e6d47c6f960eb95f0ee88327df5094900b6f7edb0cf08776770271` |
| 5 | `def` | [homologyFunctorFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/homologyfunctorfactors--d012886992eb112bc8a6b827.md) | 60 | `declaration-track:d012886992eb112bc8a6b827239e4f8f3260dacbdbd39507628bcf8ac6591f37` |
| 6 | `lemma` | [isIso_Q_map_iff_mem_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/isiso-q-map-iff-mem-quasiiso--76888d5065645f1afe25c77a.md) | 66 | `result-track:76888d5065645f1afe25c77aecb652eab0ffd67eeca6bc590d873eaf149dc4f2` |
| 7 | `lemma` | [HomologicalComplexUpToQuasiIso.Q_inverts_homotopyEquivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/homologicalcomplexuptoquasiiso-q-inverts-homotopyequivalences--589e3d72137cc00638d91d7d.md) | 88 | `result-track:589e3d72137cc00638d91d7d4cf6c30ca01132be492f5dae7a7f63c5f02216bb` |
| 8 | `def` | [quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/quasiiso--f40336d59f430d1848acb5fa.md) | 99 | `declaration-track:f40336d59f430d1848acb5fac94849d08f1dcb32118586b2f3193d6fd6040d45` |
| 9 | `lemma` | [mem_quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/mem-quasiiso-iff--1359f1928b75a9168cc71299.md) | 104 | `result-track:1359f1928b75a9168cc712992c19cd0112a4551c5e780ce3c5390d00f5790747` |
| 10 | `lemma` | [quotient_map_mem_quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/quotient-map-mem-quasiiso-iff--c81d889b754fe246cef8dc47.md) | 108 | `result-track:c81d889b754fe246cef8dc472971541590364518a5e343fdfeeaf0559ed065d8` |
| 11 | `instance` | [respectsIso_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/respectsiso-quasiiso--ce1cdeb2065eab0812ba5568.md) | 117 | `declaration-track:ce1cdeb2065eab0812ba55685ef81ad4fe21c2b9769403cf95561289deb9cd01` |
| 12 | `lemma` | [homologyFunctor_inverts_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/homologyfunctor-inverts-quasiiso--e1446364209f79ed9ab21be0.md) | 123 | `result-track:e1446364209f79ed9ab21be02a1874c5ee89803b8f7d325bd7f19b49d2fccf1b` |
| 13 | `lemma` | [quasiIso_eq_quasiIso_map_quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/quasiiso-eq-quasiiso-map-quotient--1b55c9e04c3b01afb48b500f.md) | 126 | `result-track:1b55c9e04c3b01afb48b500f24c1bc1b77eb619da191722af4ef382849c931a4` |
| 14 | `class` | [ComplexShape.QFactorsThroughHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/complexshape-qfactorsthroughhomotopy--95bd7f08e74c0bd71084e9f8.md) | 142 | `declaration-track:95bd7f08e74c0bd71084e9f8a3b5d6de581c3ef0ebf64e7fc0efd280578b8dbc` |
| 15 | `lemma` | [Q_map_eq_of_homotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/q-map-eq-of-homotopy--5817d9333481a246d6d209ac.md) | 153 | `result-track:5817d9333481a246d6d209acfce4c6b88e83816624dad2311d3a93095bde2166` |
| 16 | `def` | [Qh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/qh--03e268ab3cc5347c6e02677d.md) | 159 | `declaration-track:03e268ab3cc5347c6e02677dffd53ee524f088cf9910b9e11bf558bffbff2511` |
| 17 | `def` | [quotientCompQhIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/quotientcompqhiso--da7cbc7ebdd88dd79d2e9dbb.md) | 167 | `declaration-track:da7cbc7ebdd88dd79d2e9dbb37b9efc8c4e56f34c4e0c77e54dfc176c2f6082f` |
| 18 | `lemma` | [Qh_inverts_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/qh-inverts-quasiiso--605736d255bb35e248112e5a.md) | 170 | `result-track:605736d255bb35e248112e5a6dd5b8f2d7f5f16ef8831a3a350918971e2952d0` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/instance--f5574978db3f44a210c104aa.md) | 177 | `declaration-track:f5574978db3f44a210c104aa08c418c511f6c3760cf1ea34a929f19f6810c4f9` |
| 20 | `def` | [homologyFunctorFactorsh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/homologyfunctorfactorsh--562d3b486d75ffb6e7d5f9e9.md) | 183 | `declaration-track:562d3b486d75ffb6e7d5f9e9d396ed937fd198442084bc7d9cf6bc915db69a46` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/instance--19f3085898e09679f5609d6b.md) | 197 | `declaration-track:19f3085898e09679f5609d6bd83ddf5fc435a30bc2a54b2fc5ad6fda5ecf4a21` |
| 22 | `def` | [ComplexShape.strictUniversalPropertyFixedTargetQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/complexshape-strictuniversalpropertyfixedtargetquotient--dd6809e0f162adb064bef4c4.md) | 218 | `declaration-track:dd6809e0f162adb064bef4c44d5d9619aaa4b245e2e5d0d6edf77f19d741a495` |
| 23 | `lemma` | [ComplexShape.quotient_isLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/complexshape-quotient-islocalization--f9a3ca0d33679ea12ba48e0f.md) | 229 | `result-track:f9a3ca0d33679ea12ba48e0fac55780bf8eef64e2d5ffa00683aabeb8718950f` |
| 24 | `lemma` | [ComplexShape.QFactorsThroughHomotopy_of_exists_prev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/complexshape-qfactorsthroughhomotopy-of-exists-prev--8e548b21e537a7158b46bfdc.md) | 235 | `result-track:8e548b21e537a7158b46bfdc29e77276130434fed72209a858289d0256f4eba5` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/instance--6d9e577206c17bdbfc25ac6c.md) | 251 | `declaration-track:6d9e577206c17bdbfc25ac6c368145c473eb7b4d53fd7da07c9348cf771b76bb` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/instance--a03b0b3d0c550791826e214a.md) | 257 | `declaration-track:a03b0b3d0c550791826e214a3186fce89433e9b24497de5d0f273130e2201b21` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/example--9353db5fdd69b04c61f379ab.md) | 260 | `declaration-track:9353db5fdd69b04c61f379ab3850797f3cb8d3932b6e1c8c5311dd4f18e7217f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/instance--89599d5ab04500687af4daaf.md) | 276 | `declaration-track:89599d5ab04500687af4daaf26f607929773510d0b96306c633fbf15dfe58386` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/instance--4db26c8f5d5e5ba74395654d.md) | 282 | `declaration-track:4db26c8f5d5e5ba74395654dfb6eceedff8757d18ea728dab2b7ce1ebb03e708` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/example--f8db33e88fc8bbb2f99f88b1.md) | 289 | `declaration-track:f8db33e88fc8bbb2f99f88b105cfa69f1b4180b3025573e1bb73cc80ea442bf3` |
| 31 | `def` | [mapHomologicalComplexUpToQuasiIsoLocalizerMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/maphomologicalcomplexuptoquasiisolocalizermorphism--5c51edf8daa385e22e5e5279.md) | 311 | `declaration-track:5c51edf8daa385e22e5e5279b9ef134aced0e826e5cd6e9920a3c7773ecf5b6e` |
| 32 | `lemma` | [mapHomologicalComplex_upToQuasiIso_Q_inverts_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/maphomologicalcomplex-uptoquasiiso-q-inverts-quasiiso--9ec21a1537204dde4f3e8594.md) | 316 | `result-track:9ec21a1537204dde4f3e85945e91daa7f6aad60d08997a4f0e2850d4bc0b9127` |
| 33 | `def` | [mapHomologicalComplexUpToQuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/maphomologicalcomplexuptoquasiiso--9668c62e38f244465b6a0354.md) | 325 | `declaration-track:9668c62e38f244465b6a0354c849714c0a85adf88a90ba66455361e411ee5f54` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/instance--b9fcf8e286149599e44ca88f.md) | 330 | `declaration-track:b9fcf8e286149599e44ca88fcf5f1b238fa32faa68cd76c569a1cf12b005e898` |
| 35 | `def` | [mapHomologicalComplexUpToQuasiIsoFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/maphomologicalcomplexuptoquasiisofactors--3eaf2db70cbbd798f3edae40.md) | 339 | `declaration-track:3eaf2db70cbbd798f3edae40e285a4ef19d81883da186bc0e3fa4b75e7dc2bb8` |
| 36 | `def` | [mapHomologicalComplexUpToQuasiIsoFactorsh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/maphomologicalcomplexuptoquasiisofactorsh--956e5c92a611fd8f477a20ce.md) | 351 | `declaration-track:956e5c92a611fd8f477a20ceae85d4df12abfae02dc2f092bc4be0286e699fb7` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/instance--e36b7865c0ca1cdab9e2238c.md) | 362 | `declaration-track:e36b7865c0ca1cdab9e2238c16b51f82224c5c44c8c603e6dab3ab85f9922c38` |
| 38 | `lemma` | [mapHomologicalComplexUpToQuasiIsoFactorsh_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant1565ae9fcf2dea15f952cf755d14220735bafcf64311e56634cc41c1ed14f204.lean/declarations/maphomologicalcomplexuptoquasiisofactorsh-hom-app--2ea3aea638dab2a6ce56813c.md) | 371 | `result-track:2ea3aea638dab2a6ce56813c835bb1306b0ef292dfa601f3d1406074c4fbe439` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
