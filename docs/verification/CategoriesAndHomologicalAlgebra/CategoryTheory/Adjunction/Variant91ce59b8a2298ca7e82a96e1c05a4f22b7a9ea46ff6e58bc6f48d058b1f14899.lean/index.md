# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f6a5a6ddc1f965514678695afbd2aed545e9251",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f6a5a6ddc1f965514678695afbd2aed545e9251`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompatibilityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilityunit--f538452037d791d437756601.md) | 69 | `declaration-track:f538452037d791d43775660109f3f7ab8b7616f42a7daeff7c7c9aecc9340738` |
| 2 | `abbrev` | [CompatibilityCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilitycounit--a835a4c7d2e55b147162eb0a.md) | 77 | `declaration-track:a835a4c7d2e55b147162eb0a0581c85661b64142c3511f66acdd57aba955d646` |
| 3 | `lemma` | [compatibilityCounit_of_compatibilityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilitycounit-of-compatibilityunit--a63b32d223edb847ceae28b9.md) | 85 | `result-track:a63b32d223edb847ceae28b93ce5a981b7f65cc852a014ae6d97cbfc0bc46cf1` |
| 4 | `lemma` | [compatibilityUnit_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilityunit-right--c2443859b5d4027c9314c692.md) | 106 | `result-track:c2443859b5d4027c9314c692c9e454fe4683a602167449d63f5e56e4e02cb658` |
| 5 | `lemma` | [compatibilityCounit_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilitycounit-left--3fe32f6e620a60170acc9228.md) | 121 | `result-track:3fe32f6e620a60170acc9228c6ebc8632de9dda4e78aef306fed03c30d85c31a` |
| 6 | `lemma` | [compatibilityUnit_unique_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilityunit-unique-right--b92176b9a8d23f57f1560452.md) | 136 | `result-track:b92176b9a8d23f57f15604525b12116d3ed3f41cff9ac7df47d85dc011521109` |
| 7 | `lemma` | [compatibilityUnit_unique_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilityunit-unique-left--b7d9ac1e4cdc0957d7f1bb54.md) | 148 | `result-track:b7d9ac1e4cdc0957d7f1bb54d34ec42eb16376254b909597ddc76d9b88b6d712` |
| 8 | `lemma` | [compatibilityUnit_isoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilityunit-isozero--90cc83cf8503a640c943a024.md) | 158 | `result-track:90cc83cf8503a640c943a024d8854c44beba1d722327c71a6acf27661ca30450` |
| 9 | `lemma` | [compatibilityUnit_isoAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilityunit-isoadd--a87669af2b78b4063196abb1.md) | 171 | `result-track:a87669af2b78b4063196abb1041083131a429c3383fd5b9bc489352238ef2984` |
| 10 | `class` | [CommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshift--a4f5cb1ba39713d7d4e2bbde.md) | 199 | `declaration-track:a4f5cb1ba39713d7d4e2bbde7ba1212f6ee85246705d078ee1bf5f593d172317` |
| 11 | `lemma` | [unit_app_commShiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/unit-app-commshiftiso-hom-app--79d36f89cb3daf702841d16d.md) | 207 | `result-track:79d36f89cb3daf702841d16d92db68ea7d6430281a8cff0e556f1cd0aab9d0b3` |
| 12 | `lemma` | [unit_app_shift_commShiftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/unit-app-shift-commshiftiso-inv-app--2dbd2d6967feeb63fad1628f.md) | 212 | `result-track:2dbd2d6967feeb63fad1628faa9cc7f2d8aa8c596aa3cc63db5c9db126cbf711` |
| 13 | `lemma` | [commShiftIso_hom_app_counit_app_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshiftiso-hom-app-counit-app-shift--266bd3888d35bf5efe7fd886.md) | 217 | `result-track:266bd3888d35bf5efe7fd886d7ae0ccc09a60ba816f3a25113e18b52700e7221` |
| 14 | `lemma` | [commShiftIso_inv_app_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshiftiso-inv-app-counit-app--5baf85c1d66bda33d92d2efc.md) | 222 | `result-track:5baf85c1d66bda33d92d2efcb53190526eadb67abd8fd104b77cf5a7b634d83e` |
| 15 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/mk--bc67af98051baa45cf81bfc6.md) | 230 | `result-track:bc67af98051baa45cf81bfc62aad527e9c64661ae53fd141be2fe2ec5d9693f8` |
| 16 | `instance` | [instId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instid--2b64166c4df57fbcf866db65.md) | 247 | `declaration-track:2b64166c4df57fbcf866db6522dd5d7c238fc90c07648d55cd25540187fafbd4` |
| 17 | `instance` | [instComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instcomp--760cb09758ce9278c77e99e7.md) | 258 | `declaration-track:760cb09758ce9278c77e99e7d31ded77a07c6b800e4dcb6bc09c25bb0e015505` |
| 18 | `lemma` | [shift_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/shift-unit-app--9183cb2fd8405b84246ed1a0.md) | 271 | `result-track:9183cb2fd8405b84246ed1a0f7be9ef47d5eb898f366db3704753cf127ad037d` |
| 19 | `lemma` | [shift_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/shift-counit-app--0d647ae61694738f9328e8d5.md) | 279 | `result-track:0d647ae61694738f9328e8d5563f2f42e0dba3acfd94c90f3ab6e4aa9a0eaf24` |
| 20 | `def` | [iso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/iso--53402c06150ed3666bc97de0.md) | 301 | `declaration-track:53402c06150ed3666bc97de0e3e586103d7223520f0a03ec3d7feb3c05514f44` |
| 21 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/iso--3a96f47fb8dc43e9187ae364.md) | 309 | `declaration-track:3a96f47fb8dc43e9187ae364df015d3d4d0cb49672e6fb620eadcc6a2ab9cdab` |
| 22 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/iso-hom-app--cb95facc34fa5d96e7f4435e.md) | 313 | `result-track:cb95facc34fa5d96e7f4435ebf19740bc68cccd075ae36791c8debbd8559f74e` |
| 23 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/iso-inv-app--f97b7bf2b9802a262eceace0.md) | 325 | `result-track:f97b7bf2b9802a262eceace01bebac09c9a0091e41ef7c254b7b630352978fe5` |
| 24 | `lemma` | [compatibilityUnit_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilityunit-iso--15d90b355b1b61ad36e4da9c.md) | 349 | `result-track:15d90b355b1b61ad36e4da9c61766de0430797b9c50d675f2b6353d276cc8641` |
| 25 | `def` | [rightAdjointCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/rightadjointcommshift--86bab8719beb72b88d783771.md) | 374 | `declaration-track:86bab8719beb72b88d78377183e546ef396eefcdbc6ac2ef2ba608e05b2116d7` |
| 26 | `lemma` | [commShift_of_leftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshift-of-leftadjoint--5189d71fa9619167fbc402a2.md) | 388 | `result-track:5189d71fa9619167fbc402a27805daa1e1557300bb4a8e5bf8513e341bb3c6f1` |
| 27 | `def` | [iso'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/iso--2a395420d85a223030dc981b.md) | 403 | `declaration-track:2a395420d85a223030dc981bfc26983b61ae09d43235cb84a33fcd674e694e00` |
| 28 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/iso--600d747a59bffbb153381705.md) | 411 | `declaration-track:600d747a59bffbb153381705fbe8955eee0ca31cfabd65b5412ba86456b0f1ad` |
| 29 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/iso-hom-app--0656eb582f4ba0521508256c.md) | 415 | `result-track:0656eb582f4ba0521508256c76102e08e8c1b70faead4f514c322e50e1e51679` |
| 30 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/iso-inv-app--c59facedb1bba37f148184d1.md) | 425 | `result-track:c59facedb1bba37f148184d16b3a5dce79eefa5277d388c2e7c5decad928861e` |
| 31 | `lemma` | [compatibilityUnit_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/compatibilityunit-iso--2a15a4962f203aea1a072807.md) | 438 | `result-track:2a15a4962f203aea1a0728074f6591919f272fe970065e77978ecf801acf2b18` |
| 32 | `def` | [leftAdjointCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/leftadjointcommshift--19284e07d55381e40e2875e7.md) | 458 | `declaration-track:19284e07d55381e40e2875e75a893d4013372ffd142148008d6e082e7aa8e748` |
| 33 | `lemma` | [commShift_of_rightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshift-of-rightadjoint--62f28f0d866d97e0a99601ea.md) | 472 | `result-track:62f28f0d866d97e0a99601ea8de351423881dae21404b3932d37dca595cb9f60` |
| 34 | `abbrev` | [CommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshift--d4953c9e42c3bc15dda525fa.md) | 496 | `declaration-track:d4953c9e42c3bc15dda525fae068dde636ee855248775d2c57e46c54977d4ec9` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--8c67cc7e85b6e4da7470a835.md) | 503 | `declaration-track:8c67cc7e85b6e4da7470a835ae90357f34d13d7f7e19e2eece85cc418a7ac8e3` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--ac477e398aef977c0fd9d6a7.md) | 506 | `declaration-track:ac477e398aef977c0fd9d6a72ed5fbf727339b2cfb429cdd71a85238d86762e1` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--118b074765a007406bf3884e.md) | 509 | `declaration-track:118b074765a007406bf3884e060a4b43272cbdea38d3b2e6ce0f25584b41e165` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--c376cad02068962777ec2d3a.md) | 510 | `declaration-track:c376cad02068962777ec2d3a792efa33e4000542af941bf84b85f0c5ec848554` |
| 39 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/mk--4144d53c68e97d03b6515914.md) | 513 | `result-track:4144d53c68e97d03b651591457252ddf032f38d1e9207c2d6382d5168d6741e5` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--a1027bc4135811bbd2b982f0.md) | 521 | `declaration-track:a1027bc4135811bbd2b982f06d7d7cf86cf5a3dac504b8a67c00138e8d0906dc` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--4101e2739484e4b31dd86cf8.md) | 528 | `declaration-track:4101e2739484e4b31dd86cf8a60447b6fd173091837a1abdeb7c9f1d9e819462` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--b82b2d3903f80d37ce0a5944.md) | 535 | `declaration-track:b82b2d3903f80d37ce0a5944c7133811072fdcf5fca7c81de0e54587998f4cbd` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--41d7ab6b23782a072bb38c24.md) | 542 | `declaration-track:41d7ab6b23782a072bb38c247d345fd666f4ba4d61d464a9a42ec9fb0a74247b` |
| 44 | `lemma` | [mk''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/mk--d013c901117ea2ea08f05c14.md) | 546 | `result-track:d013c901117ea2ea08f05c144726c12cb91b7740fbf037583581d48d672ac22e` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--0ce49e2444d8771c93650592.md) | 558 | `declaration-track:0ce49e2444d8771c93650592c4cceff601878b0af85cbb90ce4ce35a4faffe00` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--6121517badb8f2bc5aca92b5.md) | 566 | `declaration-track:6121517badb8f2bc5aca92b504ccb9893084d8c3e90d41eb551e0d9a55ff598e` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/instance--3a2195b40f68fc2c22e1356b.md) | 573 | `declaration-track:3a2195b40f68fc2c22e1356b3302811a6f14b3573439e2f087ad3a3734db58bc` |
| 48 | `def` | [commShiftInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshiftinverse--dacc9ed8dd9be5d19ca1c991.md) | 586 | `declaration-track:dacc9ed8dd9be5d19ca1c991b540f4e65c213aab14f5c502d43bfd0417e3d454` |
| 49 | `lemma` | [commShift_of_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshift-of-functor--a039d51d704af21accde6352.md) | 589 | `result-track:a039d51d704af21accde63525712685d342a74e2fefb14db2ead4707c08532f6` |
| 50 | `def` | [commShiftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshiftfunctor--1a05f2405fe349797c6e7308.md) | 599 | `declaration-track:1a05f2405fe349797c6e7308e831da4bd9b774aff74a6217a5b9c8dc64e5633b` |
| 51 | `lemma` | [commShift_of_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean/declarations/commshift-of-inverse--08d6aa9c4824eb46d3e36cd4.md) | 602 | `result-track:08d6aa9c4824eb46d3e36cd4e90b546b293b9136a74c7234504f9fea23027c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
