# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7eb415f0fff66efffbc61438688c081075084fa0",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7eb415f0fff66efffbc61438688c081075084fa0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.CoeSort` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToAdditive` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/types--3e92b42d3fe4840a8215a397.md) | 43 | `declaration-track:3e92b42d3fe4840a8215a3978a62b163ee4cd85afb9924f9e86eca78e4c0abe3` |
| 2 | `theorem` | [types_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/types-hom--9eefb1006d7caef407208711.md) | 48 | `result-track:9eefb1006d7caef4072087118444cf14c817378330e1314364f95569e655336f` |
| 3 | `theorem` | [types_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/types-ext--80ca0b72ef0ca0e23f2f5f24.md) | 51 | `result-track:80ca0b72ef0ca0e23f2f5f24c4565d29cc67e8817bef72eda897bddf2b7abc17` |
| 4 | `theorem` | [types_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/types-id--4cf4f60711a1a84dd4664d22.md) | 55 | `result-track:4cf4f60711a1a84dd4664d224e23a432700bb5fef1b1977e79512f8ef37a499f` |
| 5 | `theorem` | [types_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/types-comp--d9c236af2a6278ca08328873.md) | 58 | `result-track:d9c236af2a6278ca0832887363ca9673f38895957c20cf539ee8e0924750a899` |
| 6 | `theorem` | [types_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/types-id-apply--ba9e5c235411218061d15008.md) | 62 | `result-track:ba9e5c235411218061d15008e78a65f37d04f524695b649a0937e98e7087aa8a` |
| 7 | `theorem` | [types_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/types-comp-apply--eff21e9c53f420da04cbeb46.md) | 66 | `result-track:eff21e9c53f420da04cbeb46529a1086dbc9ecad7c4f49c17288ebd203462802` |
| 8 | `theorem` | [hom_inv_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/hom-inv-id-apply--9f7e59750aa74454d2136635.md) | 70 | `result-track:9f7e59750aa74454d2136635af39e6f49c7366e8de40ff44e8c9bc59f63e0e56` |
| 9 | `theorem` | [inv_hom_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/inv-hom-id-apply--b431cedc9540ea850213c344.md) | 74 | `result-track:b431cedc9540ea850213c34452a9c7a819e3ca8bf4fb61337e2a236113cb4c9d` |
| 10 | `abbrev` | [asHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/ashom--e68b5285cd6ca41618cf45f6.md) | 79 | `declaration-track:e68b5285cd6ca41618cf45f6d8cbe587e6d762d4a7fa5a087608be90f863902a` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/example--774049daf3578d4d64c22d8f.md) | 90 | `declaration-track:774049daf3578d4d64c22d8f468e8fc1e92df7f15bfb4dd5cf48f3d248b523bb` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/example--667590742df043704efd97d2.md) | 93 | `declaration-track:667590742df043704efd97d2499e7ea658ebf15a856199c12734bb05e0bbd4e5` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/example--fc10e9da148ce5ec53205647.md) | 95 | `declaration-track:fc10e9da148ce5ec53205647bf96273acf12c474a1257bb2c5b85e9722b40ab1` |
| 14 | `def` | [sections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/sections--939b9d4daffdb7f928ac9f2d.md) | 109 | `declaration-track:939b9d4daffdb7f928ac9f2ddd7b069f48502873d32e3c22f7504b3608bdaade` |
| 15 | `lemma` | [sections_property](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/sections-property--98c8b761fa4b3b636334126f.md) | 113 | `result-track:98c8b761fa4b3b636334126f0f0cea56f38b527fc400ba86e4449f69e9153a73` |
| 16 | `lemma` | [sections_ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/sections-ext-iff--3a8b7adfdf44f54432098230.md) | 117 | `result-track:3a8b7adfdf44f544320982305ca90d24ee632d90832a06c8eaa7505df4250300` |
| 17 | `def` | [sectionsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/sectionsfunctor--c059d22d8fa7214c18e1c216.md) | 124 | `declaration-track:c059d22d8fa7214c18e1c21683d1e1b1dc20e0e7ae172ba7557d53408ec5e556` |
| 18 | `theorem` | [map_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/map-comp-apply--2892eae0ecc7e968f6f66a12.md) | 137 | `result-track:2892eae0ecc7e968f6f66a1289b6ee572c7b06a2b824b725e472dbd08be5981e` |
| 19 | `theorem` | [map_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/map-id-apply--60144e8ffa0599a20097989e.md) | 141 | `result-track:60144e8ffa0599a20097989eb7405bfc823700ebb688c64e9e35fb3d7240f7a6` |
| 20 | `theorem` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/naturality--18f57fdefc4c18c46798c9ae.md) | 143 | `result-track:18f57fdefc4c18c46798c9ae551154e23cdc77046112f568f909b198d144576c` |
| 21 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/comp--1ed7e8e0d6be2822cf654f55.md) | 147 | `result-track:1ed7e8e0d6be2822cf654f55aecbb9fb70072b8547cb2037db764c2afc4d9d62` |
| 22 | `theorem` | [eqToHom_map_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/eqtohom-map-comp-apply--10b316593fe02357572a485c.md) | 151 | `result-track:10b316593fe02357572a485c06e47cae7f9bedf4eb7aa0e475187cdc2d87be5e` |
| 23 | `theorem` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/hcomp--ff02c6605a07735966243270.md) | 158 | `result-track:ff02c6605a077359662432704e24b1b3a77c58ce3064cdd29fb8b44e12fd7a63` |
| 24 | `theorem` | [map_inv_map_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/map-inv-map-hom-apply--0b9ac6fb09dc29e0bcf727bc.md) | 162 | `result-track:0b9ac6fb09dc29e0bcf727bcb5453f0ba2f4619d9978699ad69c92ae56c3e024` |
| 25 | `theorem` | [map_hom_map_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/map-hom-map-inv-apply--da2250f52331f321e1e6f5e8.md) | 166 | `result-track:da2250f52331f321e1e6f5e88eb2017ca624b5712d55d648dd88dd0490fa2b25` |
| 26 | `theorem` | [hom_inv_id_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/hom-inv-id-app-apply--6061e3c66a795e1194938bce.md) | 170 | `result-track:6061e3c66a795e1194938bce13c42dd4883df97c297edc7d69c7f09f09f45de3` |
| 27 | `theorem` | [inv_hom_id_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/inv-hom-id-app-apply--7be6614150865aab3415e84d.md) | 174 | `result-track:7be6614150865aab3415e84da634ebda8109efee64738d1bf513fdb993acc749` |
| 28 | `def` | [uliftTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/ulifttrivial--7883afa39068740113ac8eeb.md) | 182 | `declaration-track:7883afa39068740113ac8eebf71e005bf906f5e4b116c5d8846cbe5cb7025eec` |
| 29 | `def` | [uliftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/uliftfunctor--ead1e00452b2a9bb11ff8440.md) | 190 | `declaration-track:ead1e00452b2a9bb11ff8440b92be75e04ee899b53b6a9e55c8cab433a18467c` |
| 30 | `theorem` | [uliftFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/uliftfunctor-obj--562f37154a3ce5a47b9bc561.md) | 195 | `result-track:562f37154a3ce5a47b9bc56165ef630959a35717e757f24f350810c45c3e6c5e` |
| 31 | `theorem` | [uliftFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/uliftfunctor-map--8b65fa017883fafc7b0aef94.md) | 199 | `result-track:8b65fa017883fafc7b0aef94a5f7659f59c85bc4625433acd9c3025ae88cb349` |
| 32 | `instance` | [uliftFunctor_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/uliftfunctor-full--8758c8441c5c3d2e965ddabe.md) | 203 | `declaration-track:8758c8441c5c3d2e965ddabe6c2bd913c94e8d6f28349d595d2a52992f12120f` |
| 33 | `instance` | [uliftFunctor_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/uliftfunctor-faithful--67d75c84510f04bceec30b57.md) | 206 | `declaration-track:67d75c84510f04bceec30b57e294cb70739f3f9b35de8ac1fb4919d1c0523a9b` |
| 34 | `def` | [uliftFunctorTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/uliftfunctortrivial--aa5eb5bdeeb6b6ad7c5973e0.md) | 213 | `declaration-track:aa5eb5bdeeb6b6ad7c5973e00f5211ba28628ea95e44a494379149a965e76e9b` |
| 35 | `def` | [homOfElement](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/homofelement--fdaf1e30a2e041f96b9803cd.md) | 219 | `declaration-track:fdaf1e30a2e041f96b9803cd8bea2a7cc65f9db57a599dd4a98a99b6e6099fec` |
| 36 | `theorem` | [homOfElement_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/homofelement-eq-iff--e9a4bf473dc46c0d9c6002db.md) | 221 | `result-track:e9a4bf473dc46c0d9c6002dbbcb4c9cee64d831edc19a0419595cf0149df48bf` |
| 37 | `theorem` | [mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/mono-iff-injective--d1e27f2e31419f1c728535b9.md) | 226 | `result-track:d1e27f2e31419f1c728535b9bda0431f0d1ca16743c19880ae4ebd26a7b2707d` |
| 38 | `theorem` | [injective_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/injective-of-mono--01819336f96049e5ebc9fea3.md) | 233 | `result-track:01819336f96049e5ebc9fea3455286ad1eb215f7b4e25d33c15703a6ae2cabbe` |
| 39 | `theorem` | [epi_iff_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/epi-iff-surjective--ffd1621b25ed577ea8c0c68a.md) | 238 | `result-track:ffd1621b25ed577ea8c0c68a3059b29b24c4d00ade68d3fa525821ade11d0d0d` |
| 40 | `theorem` | [surjective_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/surjective-of-epi--031ccd1cce5d61d6a4e55117.md) | 248 | `result-track:031ccd1cce5d61d6a4e5511797dcc7bc4c34dc254667a1b150a0b7e9b8c9df98` |
| 41 | `def` | [ofTypeFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/oftypefunctor--75afa8ace47d28b164fae845.md) | 255 | `declaration-track:75afa8ace47d28b164fae845b251c814e50a82de78a20287f7058956025b8568` |
| 42 | `theorem` | [ofTypeFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/oftypefunctor-obj--2ba054ac7bebd412a52b5469.md) | 263 | `result-track:2ba054ac7bebd412a52b54699a2b937ebaddad82d9fc3f3443b3dd7e86fdb1b8` |
| 43 | `theorem` | [ofTypeFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/oftypefunctor-map--3efa032c6f95a6c2b87b862c.md) | 267 | `result-track:3efa032c6f95a6c2b87b862c9ed0dcd4ef0a17b124842aba84a3f47ce5c662b5` |
| 44 | `def` | [toIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/toiso--7b5d90ffddacf2067c445ccc.md) | 285 | `declaration-track:7b5d90ffddacf2067c445ccc302974766689d051d9be3d76eb444c6c0949e637` |
| 45 | `theorem` | [toIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/toiso-hom--52afc796ca3ee9a673246933.md) | 292 | `result-track:52afc796ca3ee9a673246933074f8e59077c92efb7bf50199032be2f5f14f171` |
| 46 | `theorem` | [toIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/toiso-inv--3eeae7774affbe4c05e99e65.md) | 296 | `result-track:3eeae7774affbe4c05e99e655ecfdf1a636def8c21248c6a8a0941ec3ed75dec` |
| 47 | `def` | [toEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/toequiv--c909a10902b88ea039ee9735.md) | 310 | `declaration-track:c909a10902b88ea039ee973546be1d6db05dba79b45f464a02cbb58d07a56d88` |
| 48 | `theorem` | [toEquiv_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/toequiv-fun--5618cd21a55561dff5c1d505.md) | 317 | `result-track:5618cd21a55561dff5c1d5052dedf637d6888074fc0c4c9492df12453f0620b8` |
| 49 | `theorem` | [toEquiv_symm_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/toequiv-symm-fun--3b8cdf16c637955e4a416d16.md) | 321 | `result-track:3b8cdf16c637955e4a416d161fb371df649e9bc6f8b5990b49965daf6e4aec70` |
| 50 | `theorem` | [toEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/toequiv-id--d1cfff8dc3a1fce024da1a29.md) | 325 | `result-track:d1cfff8dc3a1fce024da1a29f0fa3409a124db15a6a15478af47850e0cc93524` |
| 51 | `theorem` | [toEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/toequiv-comp--8eedbdd04b6abc74f0518850.md) | 329 | `result-track:8eedbdd04b6abc74f051885099021b8c8f59c3e55d2884bc5cd3dca75ff13eef` |
| 52 | `theorem` | [isIso_iff_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/isiso-iff-bijective--4c2beaef2f5b1e26f5c1adb5.md) | 338 | `result-track:4c2beaef2f5b1e26f5c1adb583b0471f075696731fbd24ff81dc0e40f808f81e` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/instance--a23315bc35c67eb278307301.md) | 342 | `declaration-track:a23315bc35c67eb278307301201aaf7d04fbc31b832e68cc439f8076e6a5369e` |
| 54 | `def` | [equivIsoIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/equivisoiso--5374f41c08ca548a49b41b78.md) | 355 | `declaration-track:5374f41c08ca548a49b41b7838d3edfced6d3d5a45866cc130f7316b352ef9f4` |
| 55 | `def` | [equivEquivIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/equivequiviso--b099fdaf0a8c6e6cb0e54f6d.md) | 361 | `declaration-track:b099fdaf0a8c6e6cb0e54f6d283748ffa526a12fa3db7fc7011ded1eb2b0bfc7` |
| 56 | `theorem` | [equivEquivIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/equivequiviso-hom--29b529c51c0319c4605d12de.md) | 365 | `result-track:29b529c51c0319c4605d12de531b8c83bbc7a6fa451cca6986c666828c93d8be` |
| 57 | `theorem` | [equivEquivIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant85aec0f9925bfc5d761e6c1edcf1442e0fb42b0aa8c7bcdef7932c2257a119c6.lean/declarations/equivequiviso-inv--4d0356e8e5fbaa192bbd01f6.md) | 369 | `result-track:4d0356e8e5fbaa192bbd01f6728f260e9a96bdb17292160568b955b9b542fb02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
