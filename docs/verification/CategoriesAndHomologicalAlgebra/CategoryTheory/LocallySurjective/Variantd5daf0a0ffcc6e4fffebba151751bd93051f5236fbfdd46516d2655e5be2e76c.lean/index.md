# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySurjective.Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b0896aff1a45320c8d84333b10322c507ed7734",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b0896aff1a45320c8d84333b10322c507ed7734`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Subsheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CompatibleSheafification` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyInjective` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [imageSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/imagesieve--12b31ce8716fb6e0a47c973b.md) | 52 | `declaration-track:12b31ce8716fb6e0a47c973b3264cc324312390a16d6a548d7b1a4f7b490f83f` |
| 2 | `theorem` | [imageSieve_eq_sieveOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/imagesieve-eq-sieveofsection--202e1230dae99a935d659f3a.md) | 59 | `result-track:202e1230dae99a935d659f3a53c25e69d423b19d79aa92d49c5e1be55b8c16a3` |
| 3 | `theorem` | [imageSieve_whisker_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/imagesieve-whisker-forget--a483629291b9a90118c3c3f6.md) | 65 | `result-track:a483629291b9a90118c3c3f66f201bffb2d91e8d4c807853cc89b85933bc57f1` |
| 4 | `theorem` | [imageSieve_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/imagesieve-app--f79d59bde2f2e04eb8b4aad4.md) | 69 | `result-track:f79d59bde2f2e04eb8b4aad47d90929814898a63fa6f8cd1caca09e5148bf03c` |
| 5 | `def` | [localPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/localpreimage--ba176c41b5d6fd46cdaab097.md) | 78 | `declaration-track:ba176c41b5d6fd46cdaab09776a82af12996a2f00fe494d5166ab00dd61d1d6b` |
| 6 | `lemma` | [app_localPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/app-localpreimage--3021de92a77cfc5fa20708c5.md) | 84 | `result-track:3021de92a77cfc5fa20708c5bd5924790bf3ea8d91e543e33689dc244cf9f9b8` |
| 7 | `class` | [IsLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective--36fa5c037df347f92281291e.md) | 91 | `declaration-track:36fa5c037df347f92281291ed239e8b8e04619f3a530eead2073dbfaadab1124` |
| 8 | `lemma` | [imageSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/imagesieve-mem--535e85a7811728c709fa95e3.md) | 94 | `result-track:535e85a7811728c709fa95e31170836fd8287b9c79be1d162ca079c48b43454a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/instance--3198a86943ba29c6f2ae2391.md) | 99 | `declaration-track:3198a86943ba29c6f2ae239122c4a4ac38d4d8f9bd6506d8c33bcf26801a9127` |
| 10 | `theorem` | [isLocallySurjective_iff_range_sheafify_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-iff-range-sheafify-eq-top--491f558a16c78acd96cb2600.md) | 103 | `result-track:491f558a16c78acd96cb2600b553149fd6da78082f20c7ed08912a2942e49f2a` |
| 11 | `theorem` | [isLocallySurjective_iff_range_sheafify_eq_top'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-iff-range-sheafify-eq-top--d36ea80484e651b63d8ee2f0.md) | 114 | `result-track:d36ea80484e651b63d8ee2f09faffa6c47d81d056a11a9a9010b64b87ab1286e` |
| 12 | `theorem` | [isLocallySurjective_iff_whisker_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-iff-whisker-forget--6cc60b9e979e0b97437eacbf.md) | 123 | `result-track:6cc60b9e979e0b97437eacbf06c8fbfbfe6695c1a91290290b24f9d297494b23` |
| 13 | `theorem` | [isLocallySurjective_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-of-surjective--671ed524490a0e8c01a044f6.md) | 128 | `result-track:671ed524490a0e8c01a044f6671f4db98fb03b18950b7ee72e071d9ad645436d` |
| 14 | `instance` | [isLocallySurjective_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-of-iso--74c26e280a25998358da7f2c.md) | 135 | `declaration-track:74c26e280a25998358da7f2cc4f8a577d2b8c9e5c1b0d533187f647e605e6af0` |
| 15 | `instance` | [isLocallySurjective_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-comp--9aa6f6083a67e707e66b607f.md) | 143 | `declaration-track:9aa6f6083a67e707e66b607f96882460f99dd3a4c94db8f0b2b21235b3a75499` |
| 16 | `lemma` | [isLocallySurjective_of_isLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-of-islocallysurjective--7370b7845634addbb1b1c767.md) | 158 | `result-track:7370b7845634addbb1b1c767f1d805c110b7619d54617c3b1ce2785107b2ed41` |
| 17 | `lemma` | [isLocallySurjective_of_isLocallySurjective_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-of-islocallysurjective-fac--ed7ca7c43cc66374b175fea7.md) | 168 | `result-track:ed7ca7c43cc66374b175fea7b509e75472ddb811949629e2f662bdb1983eedba` |
| 18 | `lemma` | [isLocallySurjective_iff_of_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-iff-of-fac--bb085d45ae8ff522bbf33881.md) | 174 | `result-track:bb085d45ae8ff522bbf33881f71dde87d811f0ddbf27c86482763ed3ac33b2db` |
| 19 | `lemma` | [comp_isLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/comp-islocallysurjective-iff--a9c41cd5c273b9d43cfe144a.md) | 185 | `result-track:a9c41cd5c273b9d43cfe144a43190ba0267fbc9ab7ca9e3482441b385d892638` |
| 20 | `lemma` | [isLocallySurjective_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-of-le--7d2d7fa120a36c6919764249.md) | 192 | `result-track:7d2d7fa120a36c69197642498eeb28c95ed9020160f4ad5e74d696c67ad72a27` |
| 21 | `lemma` | [isLocallyInjective_of_isLocallyInjective_of_isLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallyinjective-of-islocallyinjective-of-islocallysurjective--8f065e725d39b8d8bce5d109.md) | 196 | `result-track:8f065e725d39b8d8bce5d10987c8150d394c45496459389e7478d7d3350fdce3` |
| 22 | `lemma` | [isLocallyInjective_of_isLocallyInjective_of_isLocallySurjective_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallyinjective-of-islocallyinjective-of-islocallysurjective-fac--61f856d14998b8f11e6d3366.md) | 217 | `result-track:61f856d14998b8f11e6d33663c01e10383d8ff155a4af55b14c261fc2922c258` |
| 23 | `lemma` | [isLocallySurjective_of_isLocallySurjective_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-of-islocallysurjective-of-islocallyinjective--ab25606a60a27decac305662.md) | 224 | `result-track:ab25606a60a27decac30566255cd129ae0302467ea8d4dbb174965bc355f9559` |
| 24 | `lemma` | [isLocallySurjective_of_isLocallySurjective_of_isLocallyInjective_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-of-islocallysurjective-of-islocallyinjective-fac--92bd5bcf5e1e49f905c9dc14.md) | 242 | `result-track:92bd5bcf5e1e49f905c9dc140384c8cbeedb3f473eeb26a6b17b2348e6c3c7cd` |
| 25 | `lemma` | [comp_isLocallyInjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/comp-islocallyinjective-iff--23810174fa182756d28b72ac.md) | 249 | `result-track:23810174fa182756d28b72ac3bb43795c218a287bd7260dd49b912f203485ae1` |
| 26 | `lemma` | [isLocallySurjective_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-comp-iff--6c3bc4176db3e90694137f3e.md) | 259 | `result-track:6c3bc4176db3e90694137f3ed2bc20b4d8be2ecdd12d291faff9a32e804baf0f` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/instance--69a5d8053316ac98d26c5a6b.md) | 270 | `declaration-track:69a5d8053316ac98d26c5a6bde417ef929eb0e364b80000b14fd5026bb66d641` |
| 28 | `def` | [sheafificationIsoImagePresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/sheafificationisoimagepresheaf--f68721ec36f2e66b58902684.md) | 280 | `declaration-track:f68721ec36f2e66b58902684405239eb60bc52066d271db80997d78f4710eaf5` |
| 29 | `instance` | [isLocallySurjective_toPlus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-toplus--7b80c0191a9a26d417cfa698.md) | 301 | `declaration-track:7b80c0191a9a26d417cfa698adfc292aa220428f0fe3077c2b42016a162ed4e3` |
| 30 | `instance` | [isLocallySurjective_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-tosheafify--cba59548e64575ffdede9dba.md) | 313 | `declaration-track:cba59548e64575ffdede9dbafdc299c2f294f4e6185c1b5d11c326ba73811480` |
| 31 | `instance` | [isLocallySurjective_toSheafify'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-tosheafify--d064077b13ff590710082e59.md) | 320 | `declaration-track:d064077b13ff590710082e597a96dad8ad7b709c1391b1c3100a25a1a54f2b96` |
| 32 | `abbrev` | [IsLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective--e58ee914358caf0581986495.md) | 341 | `declaration-track:e58ee914358caf058198649570dd2ddcef88b9acfd1b232e0fe8899d30e9a213` |
| 33 | `lemma` | [isLocallySurjective_sheafToPresheaf_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-sheaftopresheaf-map-iff--bba72be712635346572fe5f5.md) | 343 | `result-track:bba72be712635346572fe5f5aeba5765717b0b78f4c0e380fa8a66db34e6bc7e` |
| 34 | `instance` | [isLocallySurjective_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-comp--4dace48438f7d5d6d4211e75.md) | 346 | `declaration-track:4dace48438f7d5d6d4211e753fa902c7a68e208a295475993f11919bd75f22cb` |
| 35 | `instance` | [isLocallySurjective_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-of-iso--65573f2f126a7b3f4120e8de.md) | 350 | `declaration-track:65573f2f126a7b3f4120e8de1ee2b6b7ad9bc0af15bb6da82d7895ee44d9a159` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/instance--94deaaaa7a77a2848d486738.md) | 355 | `declaration-track:94deaaaa7a77a2848d486738a14d3c8d39237f9c3a242a16942c7e1fd8f0da98` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/instance--4cc37bc0da220755dc1f8366.md) | 363 | `declaration-track:4cc37bc0da220755dc1f83660dd62d184ee7b6134bfc68fd6c7dc7fe3dd87c3f` |
| 38 | `theorem` | [isLocallySurjective_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-iff-isiso--e076905c25ce648c2e331bd4.md) | 368 | `result-track:e076905c25ce648c2e331bd4538e425ca3dcbafdc6a965bb6b52833288600e56` |
| 39 | `instance` | [epi_of_isLocallySurjective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/epi-of-islocallysurjective--b625723ec2025df2abc44cf6.md) | 376 | `declaration-track:b625723ec2025df2abc44cf65453abe54c71ea030d39f8e52900996823279eff` |
| 40 | `instance` | [epi_of_isLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/epi-of-islocallysurjective--147e8c632b773430d86c0722.md) | 390 | `declaration-track:147e8c632b773430d86c07229f888aebcf8e5fa6c675b0010c3084fac24cee6b` |
| 41 | `lemma` | [isLocallySurjective_iff_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/islocallysurjective-iff-epi--405a243e785b0ce2f93e80d6.md) | 394 | `result-track:405a243e785b0ce2f93e80d694b2c1e6990afb833f45d79bf07b5b4f0d3bf62a` |
| 42 | `def` | [localPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/localpreimage--b1e871300861a8b072258241.md) | 416 | `declaration-track:b1e871300861a8b072258241e400f6a0a9e24092f26479ac53017a747120665c` |
| 43 | `lemma` | [isAmalgamation_map_localPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/declarations/isamalgamation-map-localpreimage--ba320c1df60543b173e59990.md) | 421 | `result-track:ba320c1df60543b173e599901f69b1a05b3bd4371e4e92ef6b530f7811688663` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
