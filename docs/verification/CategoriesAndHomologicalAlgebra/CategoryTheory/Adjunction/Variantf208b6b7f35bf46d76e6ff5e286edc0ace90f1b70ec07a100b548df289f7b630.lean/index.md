# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6649e4a5cd3a05dc44fff0034451d62549787f49",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6649e4a5cd3a05dc44fff0034451d62549787f49`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompatibilityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilityunit--e369cf32f81355134fd633f6.md) | 74 | `declaration-track:e369cf32f81355134fd633f638c1cea5e60f777bc9104a645d464ba47db592c6` |
| 2 | `abbrev` | [CompatibilityCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilitycounit--b3525c4cb447f2291ac038b3.md) | 82 | `declaration-track:b3525c4cb447f2291ac038b3eafe4e6b4ed5d2f65655369f360ff4edee04a841` |
| 3 | `lemma` | [compatibilityCounit_of_compatibilityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilitycounit-of-compatibilityunit--5f2acbef8b39c282ad51aa5e.md) | 91 | `result-track:5f2acbef8b39c282ad51aa5e4bd9826a513324a83b4a5c252ea4abe11ae2ad39` |
| 4 | `lemma` | [compatibilityUnit_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilityunit-right--332dc1c4b99663dd48cb8242.md) | 113 | `result-track:332dc1c4b99663dd48cb8242752d94a71495c6a2c0739a4c5d93b9e67342d833` |
| 5 | `lemma` | [compatibilityCounit_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilitycounit-left--d6011d208e90f057a239dfd2.md) | 129 | `result-track:d6011d208e90f057a239dfd2f1fe53fb8ef01e46d87ece42eacda2bb43242001` |
| 6 | `lemma` | [compatibilityUnit_unique_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilityunit-unique-right--19794e03ae034df1fbd8c1e1.md) | 143 | `result-track:19794e03ae034df1fbd8c1e106d2b3bafa15c3d51c3ebed6eede4d3d9efb93a3` |
| 7 | `lemma` | [compatibilityUnit_unique_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilityunit-unique-left--5514b3e9f2858e10098ca785.md) | 155 | `result-track:5514b3e9f2858e10098ca785a64ff1b76dd08ce7f18563e7a3f839424005f022` |
| 8 | `lemma` | [compatibilityUnit_isoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilityunit-isozero--9485c2565dc17c37bb10d3cf.md) | 166 | `result-track:9485c2565dc17c37bb10d3cf90de2db392681ff326be563b6f5b0e30ef9e8d0c` |
| 9 | `lemma` | [compatibilityUnit_isoAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilityunit-isoadd--ae0e59c5c61955b35e2ff000.md) | 180 | `result-track:ae0e59c5c61955b35e2ff00017d51174654ebb8eb975f38e9e71f5eb938697db` |
| 10 | `class` | [CommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshift--b24d51c4fcaba8e2622062a1.md) | 208 | `declaration-track:b24d51c4fcaba8e2622062a159c2d134655dd86c8e231d4768256d12b526e324` |
| 11 | `lemma` | [unit_app_commShiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/unit-app-commshiftiso-hom-app--8d7ae44be028c856c0937efd.md) | 217 | `result-track:8d7ae44be028c856c0937efd7d2c3b24a4848527bac863bd194d5e7cbada1bd3` |
| 12 | `lemma` | [unit_app_shift_commShiftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/unit-app-shift-commshiftiso-inv-app--847a9363071ed27699dac64b.md) | 223 | `result-track:847a9363071ed27699dac64bb8a29d1d5216d52af41fb72e3c351dcb3734b408` |
| 13 | `lemma` | [commShiftIso_hom_app_counit_app_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshiftiso-hom-app-counit-app-shift--9fe3d5279ad0e26e69b507d0.md) | 229 | `result-track:9fe3d5279ad0e26e69b507d089cbccd2f6993747be484b45ed7fb48c34cefc67` |
| 14 | `lemma` | [commShiftIso_inv_app_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshiftiso-inv-app-counit-app--2a457283c76e279588742e1c.md) | 234 | `result-track:2a457283c76e279588742e1cb58a9ebb464cfad1c69ab8b18f91e0c255e757e2` |
| 15 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/mk--051a5651a610ca68b16c0e73.md) | 243 | `result-track:051a5651a610ca68b16c0e73da7570a841516c768ce599cc41c69b6b88fb6ec1` |
| 16 | `instance` | [instId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instid--a09d04c4f974de9ce74533c1.md) | 256 | `declaration-track:a09d04c4f974de9ce74533c1bf851890d941c666fbe5804ed8b19875b6634197` |
| 17 | `instance` | [instComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instcomp--bf5540814460ed879237fe6f.md) | 267 | `declaration-track:bf5540814460ed879237fe6f151d7d619200dc7a013bf402976c32fdcb3c57b2` |
| 18 | `lemma` | [shift_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/shift-unit-app--e4898be1b0332ba8be6df297.md) | 281 | `result-track:e4898be1b0332ba8be6df297b0792c1652c49f802c3bcf4ae8e6c11a983ddf50` |
| 19 | `lemma` | [shift_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/shift-counit-app--7315c78060a6ca9497065918.md) | 290 | `result-track:7315c78060a6ca949706591844794f3de559ae131b194e402f1ab8a0a4e7b325` |
| 20 | `def` | [iso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/iso--75be14de998aada4b1f79612.md) | 312 | `declaration-track:75be14de998aada4b1f796128c74ffd524d0d2aae21ebcc5d22f6d0553d0ad03` |
| 21 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/iso--b572b2564809cce72d487247.md) | 320 | `declaration-track:b572b2564809cce72d4872477864d11f001bfa236eb4b1071fd67db538b63774` |
| 22 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/iso-hom-app--8710288d19ab27f7b440a4d2.md) | 325 | `result-track:8710288d19ab27f7b440a4d2f6a784561adc5eb6e04a689fd56d22eb5283b3cb` |
| 23 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/iso-inv-app--c0cd051a61e973b08aba49f3.md) | 338 | `result-track:c0cd051a61e973b08aba49f39d3fccf060960d48cb5eebaccd4905c0d7d616a1` |
| 24 | `lemma` | [compatibilityUnit_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilityunit-iso--7a11739b895bf1d4168e26aa.md) | 363 | `result-track:7a11739b895bf1d4168e26aabaab4fb1a309e4db6f4ca9ec34df57c96932b6fd` |
| 25 | `def` | [rightAdjointCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/rightadjointcommshift--79dec09add0d9916b698b2b7.md) | 388 | `declaration-track:79dec09add0d9916b698b2b704087426e0b9603f2b1ce60375df0c4eb5eaf9a1` |
| 26 | `lemma` | [commShift_of_leftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshift-of-leftadjoint--c231c2a0b2065d8e76101c05.md) | 403 | `result-track:c231c2a0b2065d8e76101c05cb19018dd21d935c471f823abfb6e62d8ce9adf3` |
| 27 | `def` | [iso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/iso--5ca071f08a10da410568604a.md) | 418 | `declaration-track:5ca071f08a10da410568604a23478fc5df8b92b1770b3f14a6eb8cff7352e7eb` |
| 28 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/iso--f903cb18b568299cad404f22.md) | 426 | `declaration-track:f903cb18b568299cad404f22edb79b22d72f7a732b1ddd0ab24b0ffa08ae27e5` |
| 29 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/iso-hom-app--6df7f37b52ac3d5064dc71e2.md) | 431 | `result-track:6df7f37b52ac3d5064dc71e216a9f8e97c4c230960e0641b81776eaf7b618f77` |
| 30 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/iso-inv-app--29047f383309d05fc3c67d55.md) | 442 | `result-track:29047f383309d05fc3c67d55f7fe998ed1147fab7d8bc4e11025f4c153910caf` |
| 31 | `lemma` | [compatibilityUnit_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/compatibilityunit-iso--ab93c0bba76a80930795eb33.md) | 456 | `result-track:ab93c0bba76a80930795eb331f1f7fc03a0a17e85d2ad280fc7f666050dc0ef3` |
| 32 | `def` | [leftAdjointCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/leftadjointcommshift--5e97f07266d848fdc1b57c34.md) | 476 | `declaration-track:5e97f07266d848fdc1b57c3450b0d44d0ffb08076e64975b534471853e360c30` |
| 33 | `lemma` | [commShift_of_rightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshift-of-rightadjoint--00bb62d2512ce04aa4e9ce1d.md) | 491 | `result-track:00bb62d2512ce04aa4e9ce1d668c8a587191d93e54166de22d5cf75c4c5120c5` |
| 34 | `abbrev` | [CommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshift--3b7bd50c78bf04112d8e59ea.md) | 515 | `declaration-track:3b7bd50c78bf04112d8e59eaaadcb7fd8161ba7903a1ae64138b5adbcded173c` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--c2ca2774c6c3d3d600fd91f3.md) | 522 | `declaration-track:c2ca2774c6c3d3d600fd91f3baaf23181263405571be45326e6e04fad046ed84` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--e0dc1d8365656bae49742ff7.md) | 525 | `declaration-track:e0dc1d8365656bae49742ff7e6480f26d898b5fdca88ed3f1b3f97fd8394b642` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--c5cab53a45b211395c5dbd23.md) | 528 | `declaration-track:c5cab53a45b211395c5dbd23dd95044c27bf2826c19fd4776c0077840c2c4e0d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--6eca8e6e454966ed44c11b90.md) | 529 | `declaration-track:6eca8e6e454966ed44c11b9005fd996c8afa99ca7aeacfb12a4ca2a0f757e5eb` |
| 39 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/mk--97fff3c519a58b607e74fbd2.md) | 532 | `result-track:97fff3c519a58b607e74fbd201043842ddeb73fa4afbb385411d3dde399ddc66` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--26da9cc8461206344ef4f60b.md) | 540 | `declaration-track:26da9cc8461206344ef4f60be06369615dc101f2e5a79aca6413d414c248221b` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--028d00e337cbda3dc71d1025.md) | 546 | `declaration-track:028d00e337cbda3dc71d1025a25aaaf921491c52ab4bc8fa973479aa10f8cd23` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--907c003ab917905374fdbc39.md) | 553 | `declaration-track:907c003ab917905374fdbc39d47000626b0899bbb688921e7f99a1e91931483a` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--f8a91f19c7b9231d1788c485.md) | 559 | `declaration-track:f8a91f19c7b9231d1788c485559aab94062bb1dfd237269be89f48f2f4877604` |
| 44 | `lemma` | [mk''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/mk--ac38420ee96427db92466284.md) | 563 | `result-track:ac38420ee96427db92466284a7f4dd01b86ec4b915ea0c07e0fd44dfcbe43a6b` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--3b1e1943f55f1d5902bd85a7.md) | 576 | `declaration-track:3b1e1943f55f1d5902bd85a75d50a446e7f59b31b820884bbe701d966cea415e` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--5136394e4adc0b09fd6ae43d.md) | 585 | `declaration-track:5136394e4adc0b09fd6ae43dfbc4aeb1122264d38c7bdc9ac6ea34299fd2d9c1` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/instance--1b0d3c1be5ecad1bfaf5bd63.md) | 592 | `declaration-track:1b0d3c1be5ecad1bfaf5bd630535e18f268b06c7ad593ba041026c5d36da5e09` |
| 48 | `def` | [commShiftInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshiftinverse--569df8543dc322386babf1fc.md) | 606 | `declaration-track:569df8543dc322386babf1fc9e035fc47c5b4395bebbd7a69ac4b379ee1d6de6` |
| 49 | `lemma` | [commShift_of_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshift-of-functor--620e6928e0c14a6a0f435770.md) | 609 | `result-track:620e6928e0c14a6a0f43577069bc03c3338a34dfbf056fa8b6d5af104e3d2ea8` |
| 50 | `def` | [commShiftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshiftfunctor--d5e0842ed328db9e61b78c6a.md) | 620 | `declaration-track:d5e0842ed328db9e61b78c6ae09e0541d061291cf3cd3776a141489abe247dcf` |
| 51 | `lemma` | [commShift_of_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/declarations/commshift-of-inverse--133842e52917768963618843.md) | 623 | `result-track:133842e52917768963618843838893ce9ee97b5af6af1d8f92b8c3b76df7f42e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
