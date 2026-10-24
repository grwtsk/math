# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31baaded183b94ad8c02cbc061cf419455b032ed",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31baaded183b94ad8c02cbc061cf419455b032ed`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean.json)

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
| 1 | `class` | [EnrichedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/enrichedcategory--032506f5011d327c6a9ee352.md) | 58 | `declaration-track:032506f5011d327c6a9ee352e4992867b547ddfc290307e703650407616ba569` |
| 2 | `def` | [eId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/eid--6223c5ecacd32adbf6924e38.md) | 76 | `declaration-track:6223c5ecacd32adbf6924e384c00747fb661181f960d73f0a56e1a38bd7e846a` |
| 3 | `def` | [eComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/ecomp--83b50141e430c2a47c0fb824.md) | 81 | `declaration-track:83b50141e430c2a47c0fb824301e18e03dc52d414db3b51734c4d134e47a896f` |
| 4 | `theorem` | [e_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/e-id-comp--95f41a13877f94c5bd5c5c88.md) | 85 | `result-track:95f41a13877f94c5bd5c5c88fa6f6e6efc2131c2bc143dc89305206a4b30c5df` |
| 5 | `theorem` | [e_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/e-comp-id--8ba2fc48a1ac956961957476.md) | 90 | `result-track:8ba2fc48a1ac95696195747641288b2d17e48228a0a7da885e86274c19a1c66b` |
| 6 | `theorem` | [e_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/e-assoc--6d82fae7666499ec54998928.md) | 95 | `result-track:6d82fae7666499ec54998928e0909d698aa7f222497e176b6f60357fc693947d` |
| 7 | `theorem` | [e_assoc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/e-assoc--00586b9f13b687d3b376df53.md) | 101 | `result-track:00586b9f13b687d3b376df53af93f280ee99e456c756d232c2da25bf5f261f44` |
| 8 | `def` | [TransportEnrichment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/transportenrichment--f16355f36980dff2373da94d.md) | 115 | `declaration-track:f16355f36980dff2373da94d5d03d8a1481dc20b98267b6ff94a61a2a082838f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/instance--65f67547e3be196c3291b069.md) | 123 | `declaration-track:65f67547e3be196c3291b069c6f741eeb1cf9d6d82264049738428ca3ecc1ff8` |
| 10 | `lemma` | [TransportEnrichment.eId_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/transportenrichment-eid-eq--1bfcdbfb50b70fef0a95928b.md) | 146 | `result-track:1bfcdbfb50b70fef0a95928b4939b7e6b2c377ea97f89cfb1451f92db6af9454` |
| 11 | `lemma` | [TransportEnrichment.eComp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/transportenrichment-ecomp-eq--ba9abb6f3cb7472ff09234c3.md) | 150 | `result-track:ba9abb6f3cb7472ff09234c35292180f4ae96b97c699053fc906353a2bb0f9c7` |
| 12 | `def` | [categoryOfEnrichedCategoryType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/categoryofenrichedcategorytype--809e8a0aaa549a8a1caf190a.md) | 159 | `declaration-track:809e8a0aaa549a8a1caf190aa4a69fe6328166c364e13cb845b7bb4f1345c2fa` |
| 13 | `def` | [enrichedCategoryTypeOfCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/enrichedcategorytypeofcategory--9e4c95df7a1bd7a56bbc2283.md) | 172 | `declaration-track:9e4c95df7a1bd7a56bbc2283a9f897d32060df8ce0c011746f5aae318a724ce8` |
| 14 | `def` | [enrichedCategoryTypeEquivCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/enrichedcategorytypeequivcategory--58e78057519c219f454851ec.md) | 181 | `declaration-track:58e78057519c219f454851ecd07f5be7d6f5e9c886640db633bc649b563d039c` |
| 15 | `def` | [ForgetEnrichment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment--63cc310cb532cef136814787.md) | 208 | `declaration-track:63cc310cb532cef136814787576219e6755b41e79ae637573ba6b6c22b698899` |
| 16 | `def` | [ForgetEnrichment.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-of--e562a3c91f7453dc35af6da1.md) | 216 | `declaration-track:e562a3c91f7453dc35af6da1625f61d8fa0262daad7bfc8b690131a0e73f022d` |
| 17 | `def` | [ForgetEnrichment.to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-to--bff38e1202517906a4e8d235.md) | 221 | `declaration-track:bff38e1202517906a4e8d2358d41220d8457d63b4785b13dca9bfb5683119a9d` |
| 18 | `theorem` | [ForgetEnrichment.to_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-to-of--27f7ba7715586404f31bad7f.md) | 225 | `result-track:27f7ba7715586404f31bad7f1187143f0b0ea1987d4343e8cf8f6bffdb2e586b` |
| 19 | `theorem` | [ForgetEnrichment.of_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-of-to--2b702eaa44e50066e8b79191.md) | 229 | `result-track:2b702eaa44e50066e8b79191601ddd4b6fe1ea5a56619dc5e76c6df014ce24d5` |
| 20 | `instance` | [categoryForgetEnrichment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/categoryforgetenrichment--994fb7ea416548510a99603d.md) | 233 | `declaration-track:994fb7ea416548510a99603de7bbc7125662359db94c84d9d10f14f1c6b70973` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/example--3bed1cc9413e5b4d9a400893.md) | 239 | `declaration-track:3bed1cc9413e5b4d9a4008938cbabbc202fae23782d75704799408c4e3753f07` |
| 22 | `def` | [ForgetEnrichment.homOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-homof--77607eef27319950f290e689.md) | 244 | `declaration-track:77607eef27319950f290e6892b2b738bd5a98c68ed6fd12dca9a5b7944d0cf73` |
| 23 | `def` | [ForgetEnrichment.homTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-homto--9d4d49400773759b15ce9cea.md) | 249 | `declaration-track:9d4d49400773759b15ce9cea2f615cf490d95c70fdb4b103df78529ffee110b1` |
| 24 | `theorem` | [ForgetEnrichment.homTo_homOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-homto-homof--ee45fc993fcb4139e9f64907.md) | 254 | `result-track:ee45fc993fcb4139e9f64907bdd09e871f42aa82bfec4a7a2164111796bc599c` |
| 25 | `theorem` | [ForgetEnrichment.homOf_homTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-homof-homto--8667ba56722ad4d3762dddf0.md) | 259 | `result-track:8667ba56722ad4d3762dddf0e964c0029c16c84cf04abdf435d8361e8b19ff22` |
| 26 | `theorem` | [ForgetEnrichment.homTo_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-homto-id--c908ceeffdb65c33345bcf61.md) | 265 | `result-track:c908ceeffdb65c33345bcf61dfae56be72128789cd503f2a62af21807fba01dc` |
| 27 | `theorem` | [ForgetEnrichment.homOf_eId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-homof-eid--94e01304a28cdef13407a753.md) | 270 | `result-track:94e01304a28cdef13407a753acffcc7b7d4a9617d09dc51c725e4f0251db5b4d` |
| 28 | `theorem` | [ForgetEnrichment.homTo_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-homto-comp--7cbfaf694c32f98c07c51fee.md) | 276 | `result-track:7cbfaf694c32f98c07c51feed283fef30fa9545247cc0389b4bbd7f400894274` |
| 29 | `theorem` | [ForgetEnrichment.homOf_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetenrichment-homof-comp--d78a08aa2f1bc3e66f650743.md) | 281 | `result-track:d78a08aa2f1bc3e66f650743b39dee65cab00cd3e5c518bdd3b95c2b81a4d171` |
| 30 | `structure` | [EnrichedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/enrichedfunctor--3fad6aa71cf933794dd4c440.md) | 292 | `declaration-track:3fad6aa71cf933794dd4c440b193c0cf3ae288e35156bc8afdc4ecff2b16629a` |
| 31 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/id--17777b337ebf633a0728cd73.md) | 312 | `declaration-track:17777b337ebf633a0728cd73ab3033655164b3894642ae2430f169e5da94dece` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/instance--a1649a3ca97cd0c20b3778c7.md) | 316 | `declaration-track:a1649a3ca97cd0c20b3778c7f871a363e20f2ae5eb304a17a753b061724ef353` |
| 33 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/comp--a5b09ea607d24f50ec8fb16c.md) | 321 | `declaration-track:a5b09ea607d24f50ec8fb16c1e7e8d16917e64dedc5d39ad13d1dfb37b4d922b` |
| 34 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/ext--d520f4893fa448e3b2ba80f3.md) | 327 | `result-track:d520f4893fa448e3b2ba80f366246b737664ab67c004785869fb958934621c83` |
| 35 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forget--7bad72f29df24684d2f1ba34.md) | 348 | `declaration-track:7bad72f29df24684d2f1ba3410250374d0b4dc7e0537cdf0baa2975704da8f25` |
| 36 | `def` | [forgetComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetcomp--939a0202b4bb70a5beacc2af.md) | 364 | `declaration-track:939a0202b4bb70a5beacc2afe853964f916ea316b0784644653ea1ac1cdb4072` |
| 37 | `def` | [forgetId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/forgetid--c6f71cef9bbaa016d9c56f62.md) | 373 | `declaration-track:c6f71cef9bbaa016d9c56f623449a53509df797d5d3752936d615534da8ccd5c` |
| 38 | `structure` | [GradedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/gradednattrans--ae083ef0e379f31875aa149c.md) | 434 | `declaration-track:ae083ef0e379f31875aa149cc5797353cf6b8f6af4632473e675628e9d241bdd` |
| 39 | `structure` | [EnrichedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/enrichednattrans--3b8eca0883d5ac819ef1b689.md) | 447 | `declaration-track:3b8eca0883d5ac819ef1b6892b01f120cf354e1b7261613ea9d9aa14c47c596f` |
| 40 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/category--492d5c5d6cfdfa0a480962c8.md) | 456 | `declaration-track:492d5c5d6cfdfa0a480962c86f4d7b29284651a292450e44abf86074fe540dac` |
| 41 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/hom-ext--71eb6d217a53f7f1f669f16f.md) | 462 | `result-track:71eb6d217a53f7f1f669f16f5257a724f2daa35a161d0f7e10dfab620973a027` |
| 42 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/isomk--abb9cbc7fd808da678210a2e.md) | 473 | `declaration-track:abb9cbc7fd808da678210a2e1ec515dff09ec3f0a2ec02f6a4bc1b66ab5e8869` |
| 43 | `def` | [enrichedNatTransYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/enrichednattransyoneda--d0563e839376677937e5a1b9.md) | 489 | `declaration-track:d0563e839376677937e5a1b979a847d4d5050ceefdc10527756235ef447c150f` |
| 44 | `def` | [enrichedFunctorTypeEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/enrichedfunctortypeequivfunctor--485afb97a9d0fdc8b3427580.md) | 512 | `declaration-track:485afb97a9d0fdc8b342758012d44d06007a38fc10dc8bb3885cf06c9b2d9360` |
| 45 | `def` | [enrichedNatTransYonedaTypeIsoYonedaNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/declarations/enrichednattransyonedatypeisoyonedanattrans--f70603db6c96db36e984f084.md) | 530 | `declaration-track:f70603db6c96db36e984f084b10ceba9edc232df2d9ae5c21aa28f76fefd1a35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
