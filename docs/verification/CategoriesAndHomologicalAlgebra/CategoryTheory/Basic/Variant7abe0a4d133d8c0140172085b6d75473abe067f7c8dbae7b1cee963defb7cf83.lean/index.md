# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d81c593f134c32f99bf8525432d8cc61e07872e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d81c593f134c32f99bf8525432d8cc61e07872e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elementwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subpresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/subpresheaf--37c14ec9067ffce87c446f69.md) | 42 | `declaration-track:37c14ec9067ffce87c446f69155086075d78e0b32ec0dea33c4a68d20e4b99d4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/instance--0fae83d49cf73eb19821ce67.md) | 54 | `declaration-track:0fae83d49cf73eb19821ce6733066e9a66530a7253733044da09b2ba9341d817` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/instance--901f3c09172ae19092c2ab67.md) | 57 | `declaration-track:901f3c09172ae19092c2ab677b147e9a88d6eba14cfdd4e627564ea78e8830b9` |
| 4 | `lemma` | [le_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/le-def--cc08f59b9b1c72af670b5f5f.md) | 103 | `result-track:cc08f59b9b1c72af670b5f5f5316821f7fe0ba2dd98e1f0cc3c2138bd4067ffc` |
| 5 | `lemma` | [top_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/top-obj--32a1b8bf6d68388e6d6d57ca.md) | 107 | `result-track:32a1b8bf6d68388e6d6d57ca398db49b985157b1e1f64470d2582c03d0019bcb` |
| 6 | `lemma` | [bot_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/bot-obj--7c0778197196be391b97eaa6.md) | 108 | `result-track:7c0778197196be391b97eaa60b3e8e4b51fb592d16156c05a2a5e151a77e2a6a` |
| 7 | `lemma` | [sSup_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/ssup-obj--852f5a5988ac3c4814d3d793.md) | 112 | `result-track:852f5a5988ac3c4814d3d7933a0ca56ed229217652102add5531f684c9efd4a4` |
| 8 | `lemma` | [sInf_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/sinf-obj--b898745cb73e2c47fcadf863.md) | 115 | `result-track:b898745cb73e2c47fcadf8638863b6e35154595fb7c6a5065e2c27d06c202b88` |
| 9 | `lemma` | [iSup_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/isup-obj--b0b0514b41f9e13bc624c00a.md) | 119 | `result-track:b0b0514b41f9e13bc624c00aff9ba9d3e7727b59495dec99f00fe0ab3332c3f3` |
| 10 | `lemma` | [iInf_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/iinf-obj--ed131ef373027a18e8b62ee2.md) | 124 | `result-track:ed131ef373027a18e8b62ee2b808e5b5026f75d80e777788ecef651e725f5980` |
| 11 | `lemma` | [max_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/max-obj--8d26a10585e12cdb1ec94920.md) | 129 | `result-track:8d26a10585e12cdb1ec9492034b645340184d3c201f46777ca26eaa3ed5b4d2c` |
| 12 | `lemma` | [min_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/min-obj--51c3bfb082bd94e7a5dcc390.md) | 133 | `result-track:51c3bfb082bd94e7a5dcc390cdd28f728af5ffcbfa59f83962134aad13e9b9ad` |
| 13 | `lemma` | [max_min](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/max-min--664cdad8b6c8968f94f9fffa.md) | 136 | `result-track:664cdad8b6c8968f94f9fffa1553b7766c489ba85d3705362a45a842ada90211` |
| 14 | `lemma` | [iSup_min](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/isup-min--3b019dbea66a3f8844babb0f.md) | 140 | `result-track:3b019dbea66a3f8844babb0f2a37e61ad4e85f47204a5b5a9141f94428f3cd28` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/instance--b01e0a866b651fade33cdf40.md) | 144 | `declaration-track:b01e0a866b651fade33cdf403010030655249fa2ee41e3a1e07448e85a414e03` |
| 16 | `def` | [toPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/topresheaf--739a9be9dca1858e062ae956.md) | 149 | `declaration-track:739a9be9dca1858e062ae956f6493634aa6dac57e69dc0cf95c67054196485fb` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/instance--ac5b1c22dcdf9e1531502645.md) | 161 | `declaration-track:ac5b1c22dcdf9e1531502645176bc69a64b4f0e8be852938457b5d902b2841e3` |
| 18 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/anonymous--194564b014f214a7f66ebeea.md) | 166 | `declaration-track:194564b014f214a7f66ebeea97fa53d771eac6d4c2cf4687f5ec261ce54e27b0` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/instance--26857bbe82d1ca7b5c0eb222.md) | 168 | `declaration-track:26857bbe82d1ca7b5c0eb2222402ec6a797d0896ff8c7834f71a68c841fed8fc` |
| 20 | `def` | [homOfLe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/homofle--3a2040080eb3c24cb5f6a9bc.md) | 175 | `declaration-track:3a2040080eb3c24cb5f6a9bcbec81c0e2334b31e509bf6bc3ed23c02b93fd8df` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/instance--47f32d600f4683fc24190f0c.md) | 178 | `declaration-track:47f32d600f4683fc24190f0c3967050c3c273d0b94a8dc3e16dc733f201e5295` |
| 22 | `theorem` | [homOfLe_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/homofle--b6f4e1eca79ef997920fd863.md) | 186 | `result-track:b6f4e1eca79ef997920fd8633ab36e17db12eeac263aaf24d9bfab72d2aea48d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/instance--40fb835d509e46f91885c08d.md) | 191 | `declaration-track:40fb835d509e46f91885c08dc511c9c85a3ffae908665efb7a123151acf528a8` |
| 24 | `theorem` | [eq_top_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/eq-top-iff-isiso--b56c2737005144f23853ca0d.md) | 198 | `result-track:b56c2737005144f23853ca0d6b876d5768b2212e9e7db46f5d0a19c4ac157cc4` |
| 25 | `theorem` | [nat_trans_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7abe0a4d133d8c0140172085b6d75473abe067f7c8dbae7b1cee963defb7cf83.lean/declarations/nat-trans-naturality--c0629bd15cd00e71172155f3.md) | 208 | `result-track:c0629bd15cd00e71172155f375c5bbc101716247dfc9674473280a802b8f71e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
