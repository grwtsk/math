# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "842dc2d9b1babf3c858ec2f8b04467f7d7b5b219",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `842dc2d9b1babf3c858ec2f8b04467f7d7b5b219`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Types` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ConcreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory--c0710b42135d7e21827d1499.md) | 55 | `declaration-track:c0710b42135d7e21827d1499e03e22e4a0c92c0cf578417dc0150d0c64cb6bea` |
| 2 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/forget--384ebcdf361842dc42a7fbd9.md) | 68 | `declaration-track:384ebcdf361842dc42a7fbd9f3c91f8f517f7cc311da0d650458e09788e8574a` |
| 3 | `instance` | [ConcreteCategory.types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-types--cdb5afadb92e4ce1e879812e.md) | 74 | `declaration-track:cdb5afadb92e4ce1e879812e9678300b1eddb341fbb46e7f4eb9cda90c6c3ce9` |
| 4 | `def` | [ConcreteCategory.hasCoeToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-hascoetosort--93d0ab6b3bf79fb1bdeff5e5.md) | 86 | `declaration-track:93d0ab6b3bf79fb1bdeff5e507441954e5f5f799caf60772bf561a12cc05fdb7` |
| 5 | `def` | [ConcreteCategory.funLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-funlike--3523c13b54bb1d34b950e360.md) | 101 | `declaration-track:3523c13b54bb1d34b950e36052724909153f839a2a566bc620a3154d17c1eb3e` |
| 6 | `theorem` | [ConcreteCategory.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-hom-ext--f9a820ff1496a4fd0c2ac8a8.md) | 108 | `result-track:f9a820ff1496a4fd0c2ac8a87afad588bc7115fb647b9c822ed63186b436c7e7` |
| 7 | `theorem` | [forget_map_eq_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/forget-map-eq-coe--d9c06f3a29d1c4a4f8ac7f5f.md) | 115 | `result-track:d9c06f3a29d1c4a4f8ac7f5f8a578825e545f5d9309ad3f25e727780c8e3bb4a` |
| 8 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/congr-hom--ce6c9dbae47cd1838c4bbfdb.md) | 121 | `result-track:ce6c9dbae47cd1838c4bbfdb81834f123be95a8677219ac323dae9342184a866` |
| 9 | `theorem` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/coe-id--7570fcd7163553e1a37e8a6a.md) | 125 | `result-track:7570fcd7163553e1a37e8a6a5eceb3bfe7621d53837c6c1ecccb4ab3da2c41d0` |
| 10 | `theorem` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/coe-comp--2e6538ede66e5d7212edcac0.md) | 129 | `result-track:2e6538ede66e5d7212edcac01ce5c99b461c102dd3d6cada2245be254818a0f2` |
| 11 | `theorem` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/id-apply--ae24c2021977238159499319.md) | 133 | `result-track:ae24c20219772381594993196d9fd0d5755c5aace340943fa0163e4450d0180a` |
| 12 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/comp-apply--f3c5b00de310bfdb855955c9.md) | 137 | `result-track:f3c5b00de310bfdb855955c9aba9b9061fd413870a0896a5c8fcc91b6b6d1e18` |
| 13 | `theorem` | [comp_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/comp-apply--2ab695ec03777fc731b7246b.md) | 141 | `result-track:2ab695ec03777fc731b7246beecb79b935b732d5b16d60f9e46e5b45c4248e6a` |
| 14 | `theorem` | [ConcreteCategory.congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-congr-hom--6d2566b9ee4aa7bc42e8d67e.md) | 144 | `result-track:6d2566b9ee4aa7bc42e8d67e9e762dd39f82cd68d41f11317d666cf4fdc53bc4` |
| 15 | `theorem` | [ConcreteCategory.congr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-congr-arg--a98f5756269e0c610e033e06.md) | 148 | `result-track:a98f5756269e0c610e033e0689afb6d0df23016b34fd05608b3a1f199b4ad074` |
| 16 | `theorem` | [ConcreteCategory.mono_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-mono-of-injective--13f0153562f669b2fccdeeb0.md) | 153 | `result-track:13f0153562f669b2fccdeeb063481a0de565eaa3f1402080a5e294183b340982` |
| 17 | `theorem` | [ConcreteCategory.injective_of_mono_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-injective-of-mono-of-preservespullback--9734bd8d27326cb2026807fd.md) | 158 | `result-track:9734bd8d27326cb2026807fd4b082620b6176dad59bf02af1d2c6aabebd03505` |
| 18 | `theorem` | [ConcreteCategory.mono_iff_injective_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-mono-iff-injective-of-preservespullback--80f5f083f450bf718f23377b.md) | 163 | `result-track:80f5f083f450bf718f23377ba6849bc628dc73fd4ca3f59f94516f026224b4ea` |
| 19 | `theorem` | [ConcreteCategory.epi_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-epi-of-surjective--59d45da19505cbb281f4a6c4.md) | 169 | `result-track:59d45da19505cbb281f4a6c4f864325de3d412a43abdf5a5ded74adc9d37806c` |
| 20 | `theorem` | [ConcreteCategory.surjective_of_epi_of_preservesPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-surjective-of-epi-of-preservespushout--976beb9d2b4ef3a8a6b53175.md) | 174 | `result-track:976beb9d2b4ef3a8a6b53175eb7a2c665fbb2a548967e675a87546bfb001fe9b` |
| 21 | `theorem` | [ConcreteCategory.epi_iff_surjective_of_preservesPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-epi-iff-surjective-of-preservespushout--a5e776b08db54c06e575d223.md) | 179 | `result-track:a5e776b08db54c06e575d22310f51022db5a2b84d9e87de98554dba25b51776c` |
| 22 | `theorem` | [ConcreteCategory.bijective_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-bijective-of-isiso--04e0bfcac3b49add073fda37.md) | 184 | `result-track:04e0bfcac3b49add073fda375b58a2636274be03b9d93ffd6283cbb360086290` |
| 23 | `theorem` | [ConcreteCategory.hasCoeToFun_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/concretecategory-hascoetofun-type--5f37d4d2c523cfcce171f2a8.md) | 191 | `result-track:5f37d4d2c523cfcce171f2a838758d882ce5e57dc84847faff593de5a2b98bb0` |
| 24 | `class` | [HasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/hasforget--068b40f03bd6c3079d8e0197.md) | 199 | `declaration-track:068b40f03bd6c3079d8e019725f5862678a0b346a88209c0982f1bc57b76483d` |
| 25 | `def` | [forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/forget--ad9ea4a595b30f13006a1f6a.md) | 210 | `declaration-track:ad9ea4a595b30f13006a1f6a98b24257a357fbe9be8ce9d53821ddb16cabeb5d` |
| 26 | `instance` | [forget₂_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/forget-faithful--4ecb25cfd0e11259f3a418c4.md) | 215 | `declaration-track:4ecb25cfd0e11259f3a418c4abd8913f191e2a36e57bf96956f4264a66551918` |
| 27 | `instance` | [forget₂_preservesMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/forget-preservesmonomorphisms--558ea489e110fb825ae81259.md) | 220 | `declaration-track:558ea489e110fb825ae81259a4a0cd9f7f23650911a5b6601c62cb345b346363` |
| 28 | `instance` | [forget₂_preservesEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/forget-preservesepimorphisms--6e0ad65a35643b91b570a357.md) | 230 | `declaration-track:6e0ad65a35643b91b570a357b910eda858ed58852a62179ab1eaa095884f87d7` |
| 29 | `instance` | [InducedCategory.concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/inducedcategory-concretecategory--d14841d763b3295bea80024a.md) | 240 | `declaration-track:d14841d763b3295bea80024a8ca3167eec1fc0fd14564beecfe44fef498bb273` |
| 30 | `instance` | [InducedCategory.hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/inducedcategory-hasforget--1c287401561d67cab4528d5c.md) | 246 | `declaration-track:1c287401561d67cab4528d5c26183d0e6a518f4fd28e00889569fc1fca1930f3` |
| 31 | `instance` | [FullSubcategory.concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/fullsubcategory-concretecategory--fc25902432eb07c489698a60.md) | 252 | `declaration-track:fc25902432eb07c489698a607f42ce0fb6443d0662c85f9529112ef5dac123f0` |
| 32 | `instance` | [FullSubcategory.hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/fullsubcategory-hasforget--2ecb96a13050d29b3ac4606e.md) | 257 | `declaration-track:2ecb96a13050d29b3ac4606edf0b16550b65d7b7eaec35469e06549594280927` |
| 33 | `def` | [HasForget₂.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/hasforget-mk--0127087a7c4418af0aab9ecc.md) | 266 | `declaration-track:0127087a7c4418af0aab9ecc7d93e28659e9a4d3c7d5613ca1deb1fd9276a8d1` |
| 34 | `def` | [hasForgetToType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7.lean/declarations/hasforgettotype--dfc9f7d673470852ae233e38.md) | 278 | `declaration-track:dfc9f7d673470852ae233e38418f7933c388624c2e5d3e56defe3acc94453e11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
