# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f9d219ddb82a522356d5330d3da376ac38c7a7e",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f9d219ddb82a522356d5330d3da376ac38c7a7e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.PEmptyInstances` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.BundledHom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MagmaCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/magmacat--377c282bd705b31636e92665.md) | 40 | `declaration-track:377c282bd705b31636e92665e46b98d75b9dcaa40a0b0bbb983ddf99d6af68e5` |
| 2 | `instance` | [bundledHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/bundledhom--f314c62147bc8496b90519b0.md) | 51 | `declaration-track:f314c62147bc8496b90519b089423faacef90082d7b7798a6b22fc761ca6c632` |
| 3 | `instance` | [instConcreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instconcretecategory--e70929234d4dbf3312a6368a.md) | 62 | `declaration-track:e70929234d4dbf3312a6368a5bf9ced4523be71fc8f7a215d0ba39aead0bdc8c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instance--414a0029ee5e5bf92545c979.md) | 67 | `declaration-track:414a0029ee5e5bf92545c9798c7c1aad15d24eb54530b6ebbedf813785e7c367` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instance--0dc17b3c1d5b35c26e398cf6.md) | 77 | `declaration-track:0dc17b3c1d5b35c26e398cf62a8e9abc5383ee71566ec66718b387a176e2555a` |
| 6 | `instance` | [instMulHomClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instmulhomclass--00d6b00ae0cfeb442c4e1edd.md) | 80 | `declaration-track:00d6b00ae0cfeb442c4e1edd0db1fd413eec95593b78e714377c315e092944bc` |
| 7 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/of--ca559f348b463cab8773f5af.md) | 85 | `declaration-track:ca559f348b463cab8773f5afbafade475f6bc6650e136b8507f294a82055268d` |
| 8 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/coe-of--bf60df4a5a7677fa42fab45f.md) | 94 | `result-track:bf60df4a5a7677fa42fab45f42d27b39e0ccafa762646443639fe8be2e55c1a9` |
| 9 | `lemma` | [MulEquiv_coe_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/mulequiv-coe-eq--c66b3db4a972324fcbcaebf8.md) | 100 | `result-track:c66b3db4a972324fcbcaebf89f32d53f8bc6e6044fc2c7fdfb0b20d182ee2fbf` |
| 10 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/ofhom--132dca1d7fe383be1de256a5.md) | 107 | `declaration-track:132dca1d7fe383be1de256a57622a07451347c1f0e58be74982737c25d395b02` |
| 11 | `theorem` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/ofhom-apply--321cac51c96601e7d63c9674.md) | 115 | `result-track:321cac51c96601e7d63c967458f12a3752df71889988a602ba159ec052280728` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instance--094f2a285adad1169e5187f2.md) | 121 | `declaration-track:094f2a285adad1169e5187f2df74a8180afad736b616dca9e49cd8f2d9814864` |
| 13 | `def` | [SemigroupCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/semigroupcat--5d92895191a2e93a8d222ce3.md) | 128 | `declaration-track:5d92895191a2e93a8d222ce35d1ce161fe7b88646cf6c4bc9ff060e40c7ef45b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instance--b6d164590d513647aaaf65f2.md) | 139 | `declaration-track:b6d164590d513647aaaf65f2fbd5f99452e6445708b470367778a0b23d6a0b5c` |
| 15 | `instance` | [instConcreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instconcretecategory--870c7ac7233558f0330e2994.md) | 146 | `declaration-track:870c7ac7233558f0330e299459aa5edcd7f1ef7482a553b0368c0aaef061a054` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instance--74c9de9819efcb9706f01fd3.md) | 152 | `declaration-track:74c9de9819efcb9706f01fd330f46d3140498ad820b5c5e341271b72b9cc200b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instance--59db9180290be7aab77664ae.md) | 162 | `declaration-track:59db9180290be7aab77664ae0c09753cbf1004e5c9c1f3e800c4fd9c68784e9e` |
| 18 | `instance` | [instMulHomClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instmulhomclass--e6128d3f6c9604691bf90716.md) | 165 | `declaration-track:e6128d3f6c9604691bf90716459315fded8f135eb019c5ea3a71614de9ca324b` |
| 19 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/of--4da79b763b58fb18c0b966f5.md) | 170 | `declaration-track:4da79b763b58fb18c0b966f559887b29a480c239dd9f77cd13a63a19f0ca38f0` |
| 20 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/coe-of--9b5ade45f415450f46a51197.md) | 179 | `result-track:9b5ade45f415450f46a5119764c07d4347ace99ab40ed83bc5bd81994c5faf95` |
| 21 | `lemma` | [MulEquiv_coe_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/mulequiv-coe-eq--f6c837fb0b98a2ae376d0b92.md) | 185 | `result-track:f6c837fb0b98a2ae376d0b929144a3ac1c2508deeb70ab49236845b66228cd16` |
| 22 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/ofhom--97c38dfef14b638f32ae70fd.md) | 192 | `declaration-track:97c38dfef14b638f32ae70fda43b6d9b43e88cc27326db4da75642b6a03e4967` |
| 23 | `theorem` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/ofhom-apply--32c07d54bc6c3788ae610caa.md) | 201 | `result-track:32c07d54bc6c3788ae610caa38a7045c10b7d61aac7dd867d033b2a1e6d8b22b` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/instance--666a10584b61e000092822f8.md) | 208 | `declaration-track:666a10584b61e000092822f8459226ff4c5584283001a67f8807deaa551056b4` |
| 25 | `instance` | [hasForgetToMagmaCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/hasforgettomagmacat--464453a7d01fd55570f89a9d.md) | 212 | `declaration-track:464453a7d01fd55570f89a9da0c4418ab50821cd2d576b098d843c6a0207c5d3` |
| 26 | `def` | [MulEquiv.toMagmaCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/mulequiv-tomagmacatiso--f9a1aae41a144cf8de38fd82.md) | 228 | `declaration-track:f9a1aae41a144cf8de38fd825ed4856fbf73d95f793a2d35fc46ed92e471b087` |
| 27 | `def` | [MulEquiv.toSemigroupCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/mulequiv-tosemigroupcatiso--1469dd0df94536da7003ff83.md) | 248 | `declaration-track:1469dd0df94536da7003ff832780a24d7f12812f5455aaf9be3255d5b3aa999f` |
| 28 | `def` | [magmaCatIsoToMulEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/magmacatisotomulequiv--75f40959cc76f4c089db2a83.md) | 261 | `declaration-track:75f40959cc76f4c089db2a83d4c0cb6c447e2fdbda6a01d0bffb3d0f9f6577fc` |
| 29 | `def` | [semigroupCatIsoToMulEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/semigroupcatisotomulequiv--ec7fc553e50c40b5bd37209d.md) | 269 | `declaration-track:ec7fc553e50c40b5bd37209dd5a55e2bd23d635f09efe20cc41c44d541b4addb` |
| 30 | `def` | [mulEquivIsoMagmaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/mulequivisomagmaiso--c6d824934dc5e5271b1d9748.md) | 281 | `declaration-track:c6d824934dc5e5271b1d9748e0b8bbb14bb8f7e90ff1c4bb792400f4bab0ff87` |
| 31 | `def` | [mulEquivIsoSemigroupCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/mulequivisosemigroupcatiso--270d51f507f1baf6084e62ab.md) | 293 | `declaration-track:270d51f507f1baf6084e62ab363e4f749c530bdcd582a2daf8536975b4cfca5c` |
| 32 | `instance` | [MagmaCat.forgetReflectsIsos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/magmacat-forgetreflectsisos--d35a1c477d46260d46efb1ba.md) | 301 | `declaration-track:d35a1c477d46260d46efb1ba30073c41599a7614a93f607d1e7e6d8053b0412f` |
| 33 | `instance` | [SemigroupCat.forgetReflectsIsos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/semigroupcat-forgetreflectsisos--9bedfbbdf9573ce61e6ed34e.md) | 311 | `declaration-track:9bedfbbdf9573ce61e6ed34e8d0485ec567aebaa7b970973a62bcf7e987a4a7f` |
| 34 | `instance` | [SemigroupCat.forget₂Full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/semigroupcat-forget-full--4b830a273635713a38bdc6fa.md) | 324 | `declaration-track:4b830a273635713a38bdc6fa1b2217c8f0ce32f08cbd0bef82b2a884aa891e1c` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/declarations/example--c4aaf5e156fe05ed05ca7958.md) | 332 | `declaration-track:c4aaf5e156fe05ed05ca7958ba5928b6144582a92d0bab20819664748b57ebe3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
