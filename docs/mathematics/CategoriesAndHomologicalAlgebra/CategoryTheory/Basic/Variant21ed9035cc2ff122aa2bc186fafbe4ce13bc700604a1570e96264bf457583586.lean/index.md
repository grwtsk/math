# GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47e38e5bfb0f3a78a44f8284334a3c8257a51e7a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [ConcreteCategory](declarations/concretecategory--7737493a41dec15aae483970.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [forget](declarations/forget--5d4c1f245a7a996ce22cef78.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [ConcreteCategory.types](declarations/concretecategory-types--dac2186d26f8ec819460ea59.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ConcreteCategory.hasCoeToSort](declarations/concretecategory-hascoetosort--fa7350691ab31cfa85ccb507.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ConcreteCategory.funLike](declarations/concretecategory-funlike--10a4a39685a87226ef9cdd07.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ConcreteCategory.hom_ext](declarations/concretecategory-hom-ext--3332f047930d51a970d59fe8.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [forget_map_eq_coe](declarations/forget-map-eq-coe--bb4e704f2953a228b7a8455a.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [congr_hom](declarations/congr-hom--94ab06a0648fd553b230247d.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_id](declarations/coe-id--3a53630fefa204a0acadad33.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_comp](declarations/coe-comp--bcfa261b856574e0b652486d.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [id_apply](declarations/id-apply--1e50198aa1a554a0ce1ed393.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp_apply](declarations/comp-apply--51466fc953c2305ec469c1ca.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comp_apply'](declarations/comp-apply--d52bbb581657b7f3ebfc551e.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ConcreteCategory.congr_hom](declarations/concretecategory-congr-hom--f7df6462bd04eaea488e6224.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ConcreteCategory.congr_arg](declarations/concretecategory-congr-arg--2ef71a7583ccf3b3ef897845.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ConcreteCategory.mono_of_injective](declarations/concretecategory-mono-of-injective--47b7f419ed5cb1e1324fe43e.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ConcreteCategory.injective_of_mono_of_preservesPullback](declarations/concretecategory-injective-of-mono-of-preservespullback--e9fbc07a3059ecb83b807766.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ConcreteCategory.mono_iff_injective_of_preservesPullback](declarations/concretecategory-mono-iff-injective-of-preservespullback--48b57e1083f9a3de4860c2e7.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ConcreteCategory.epi_of_surjective](declarations/concretecategory-epi-of-surjective--e859e2751d0610ecd25f616b.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ConcreteCategory.surjective_of_epi_of_preservesPushout](declarations/concretecategory-surjective-of-epi-of-preservespushout--a720ed4817411b60d846c77b.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ConcreteCategory.epi_iff_surjective_of_preservesPushout](declarations/concretecategory-epi-iff-surjective-of-preservespushout--f9d4fec945b3ba4e609c5d65.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ConcreteCategory.bijective_of_isIso](declarations/concretecategory-bijective-of-isiso--d5f5ba1e1b7ef42cc180805e.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ConcreteCategory.hasCoeToFun_Type](declarations/concretecategory-hascoetofun-type--e5c457d8051e28db65089225.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [HasForget₂](declarations/hasforget--ca3546eff26bf35cb79935fc.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [forget₂](declarations/forget--f48007a86bebfa64f84b5359.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [forget₂_faithful](declarations/forget-faithful--854d78a291ac87440b388006.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [forget₂_preservesMonomorphisms](declarations/forget-preservesmonomorphisms--1c70544c0dab65c925d93b3a.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [forget₂_preservesEpimorphisms](declarations/forget-preservesepimorphisms--a00aa68b2190ff7a431151a6.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [InducedCategory.concreteCategory](declarations/inducedcategory-concretecategory--bec800c7253981f287efaa15.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [InducedCategory.hasForget₂](declarations/inducedcategory-hasforget--f3bbb73b8eee95f2f22f351c.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [FullSubcategory.concreteCategory](declarations/fullsubcategory-concretecategory--a7ee3715e93e896b57ee1039.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [FullSubcategory.hasForget₂](declarations/fullsubcategory-hasforget--3e303565614134c7d066d86e.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [HasForget₂.mk'](declarations/hasforget-mk--d243a93c820421726c8df27e.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [hasForgetToType](declarations/hasforgettotype--d0ae9158f658ebff47aae001.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
