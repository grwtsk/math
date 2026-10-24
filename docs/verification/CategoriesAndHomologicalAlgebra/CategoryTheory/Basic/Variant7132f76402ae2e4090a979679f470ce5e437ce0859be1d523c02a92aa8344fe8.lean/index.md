# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33e74bca4a67007d9139c1cf31c33fa044ae5546",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33e74bca4a67007d9139c1cf31c33fa044ae5546`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean.json)

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
| 1 | `structure` | [Monad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monad--f9cdbeb80535c67094fd5764.md) | 42 | `declaration-track:f9cdbeb80535c67094fd5764ed02ca710e5d2a10d92c656e664c215884e3366d` |
| 2 | `lemma` | [Monad.unit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monad-unit-naturality--afd2932ee1c99bdee2e1a7fa.md) | 52 | `result-track:afd2932ee1c99bdee2e1a7faf1ccd90feb9e4fcedd6491f5ad805151f95dfc7e` |
| 3 | `lemma` | [Monad.mu_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monad-mu-naturality--8390073150c5c91a0cb60949.md) | 57 | `result-track:8390073150c5c91a0cb60949e8d002d42a6b4f3f5b1a1a115fe0815ed0e20d5b` |
| 4 | `structure` | [Comonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonad--75d04973bdbf152f1ae4b377.md) | 67 | `declaration-track:75d04973bdbf152f1ae4b37780a898b53421f0b1c19340fa15e6503ed3b635e4` |
| 5 | `lemma` | [Comonad.counit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonad-counit-naturality--c76c5d75be9bec44bf0bec37.md) | 78 | `result-track:c76c5d75be9bec44bf0bec373193efe4ce778b95a088bca653f37f914fbd4d9d` |
| 6 | `lemma` | [Comonad.delta_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonad-delta-naturality--ce155edbb7e8188ce63d91b1.md) | 83 | `result-track:ce155edbb7e8188ce63d91b1e02a8aed544538f59ad7e6902bc8d9c0465c27ed` |
| 7 | `instance` | [coeMonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/coemonad--17275c4b687abcd969f5ba8c.md) | 90 | `declaration-track:17275c4b687abcd969f5ba8c648c30ef4287c7c8083fcbe44d94c677a5fa29cd` |
| 8 | `instance` | [coeComonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/coecomonad--a2e968911a5231a2d801467e.md) | 93 | `declaration-track:a2e968911a5231a2d801467ee4524661e11bd0c7846ae2224a214d89fdb6be77` |
| 9 | `structure` | [MonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monadhom--df62b0c04b5bf2656a3999f6.md) | 106 | `declaration-track:df62b0c04b5bf2656a3999f6a16514ac43e25db45b92c1fb3b663dca38b0543e` |
| 10 | `structure` | [ComonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonadhom--2017fe59e9defecf87344c63.md) | 115 | `declaration-track:2017fe59e9defecf87344c63aefce0e57d53d4d959965921c254c56b0e529085` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--954949e7b0cd7c2437d51c83.md) | 124 | `declaration-track:954949e7b0cd7c2437d51c83690d768375f963e2caaa85441187a317f5e90845` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--234e1f46c55b871f0ce59667.md) | 127 | `declaration-track:234e1f46c55b871f0ce596675cc66b7a784e5ea0650ed2399dc2f346614b0ad7` |
| 13 | `lemma` | [MonadHom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monadhom-ext--92f5800a512032c370a82c13.md) | 131 | `result-track:92f5800a512032c370a82c13e051fbfc5d1c1e24ae0eed34b8434a266b1e5638` |
| 14 | `lemma` | [ComonadHom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonadhom-ext--450f5dc09326159ac9c2c1bf.md) | 135 | `result-track:450f5dc09326159ac9c2c1bf567b51b61799826210faa6b02d08602ad2f76fdf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--32406309ef0d2913bec03994.md) | 138 | `declaration-track:32406309ef0d2913bec03994eaa5f05aeec86d3d7a9434b782e04ca49c9c6ccd` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--5b08593ce49d19661d18ea60.md) | 146 | `declaration-track:5b08593ce49d19661d18ea603f03e4a8079635d7d74fa564783d2fa5cfd10fcc` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--c625cfd5901959ccdd08befe.md) | 153 | `declaration-track:c625cfd5901959ccdd08befefcc9517de6762f896b994b46523b75b93cba3f38` |
| 18 | `theorem` | [MonadHom.id_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monadhom-id-tonattrans--10fb655469df3b743e0575a2.md) | 157 | `result-track:10fb655469df3b743e0575a2c8bbbb265a382c4956451eab0b7385fba7109075` |
| 19 | `theorem` | [MonadHom.comp_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monadhom-comp-tonattrans--ba3b1b3af1ec0dff2a9159b7.md) | 161 | `result-track:ba3b1b3af1ec0dff2a9159b78591b4f53694a94865f46d9f549c8347025a3079` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--99b776b451be5fac3a1d085b.md) | 165 | `declaration-track:99b776b451be5fac3a1d085beb00ec57d77c983c624f9f7ec2739187903502da` |
| 21 | `theorem` | [ComonadHom.id_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonadhom-id-tonattrans--34309647dadc2346631c03a1.md) | 169 | `result-track:34309647dadc2346631c03a1e0229d5e9651588c650fef0397e9ba386719282b` |
| 22 | `theorem` | [comp_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comp-tonattrans--77fe1360d9b67259272139a7.md) | 173 | `result-track:77fe1360d9b67259272139a77b29f23d1993681d3eb610c8035dd9819c1f14fe` |
| 23 | `def` | [MonadIso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monadiso-mk--15d07ff5eb97a04107f70299.md) | 180 | `declaration-track:15d07ff5eb97a04107f702992a2d3e0f14d0307dba08663ddcab402bd0a5e90e` |
| 24 | `def` | [ComonadIso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonadiso-mk--31f8843761e4ca7b633b72a4.md) | 200 | `declaration-track:31f8843761e4ca7b633b72a4b5b0e191cd501500e7d23c5cbb277f12840e8ffa` |
| 25 | `def` | [monadToFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monadtofunctor--8f8afa4f67c31945767e133e.md) | 222 | `declaration-track:8f8afa4f67c31945767e133ee085ec747cb581d7e13a76be622e022d619ff4f4` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--850c7e2f020c14b5b7a5c06f.md) | 226 | `declaration-track:850c7e2f020c14b5b7a5c06fba6c8f883e7f2c5d835ddac133237732fa65dbbd` |
| 27 | `theorem` | [monadToFunctor_mapIso_monad_iso_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monadtofunctor-mapiso-monad-iso-mk--b532617cdb06e934a5735173.md) | 228 | `result-track:b532617cdb06e934a5735173a336a33a6ed482abd96a6f25219ddb7e3ee2e011` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--a49ff759e6601b70a485c800.md) | 234 | `declaration-track:a49ff759e6601b70a485c8006c5821eadebb9417499e99633f2a4009055059f9` |
| 29 | `def` | [comonadToFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonadtofunctor--cd38e8ba72821700a19f67bf.md) | 240 | `declaration-track:cd38e8ba72821700a19f67bf99e0ec7e933542a32cf03c70c6495144609fcabd` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--91cd4f8c2d14db1f5f2a83b5.md) | 244 | `declaration-track:91cd4f8c2d14db1f5f2a83b5dcacf150b9f5cfadf94d6dec57defbcb7479ecbf` |
| 31 | `theorem` | [comonadToFunctor_mapIso_comonad_iso_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonadtofunctor-mapiso-comonad-iso-mk--2e56ebc7de0e8dbe05a40c49.md) | 246 | `result-track:2e56ebc7de0e8dbe05a40c49f8ae1650689534e473c51958753f0c28c5cdfdb8` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--92f4e5bb86d3de7a7f471f63.md) | 252 | `declaration-track:92f4e5bb86d3de7a7f471f632ad644baaccbc8ce9e52c337c9a711b6085c2877` |
| 33 | `def` | [MonadIso.toNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/monadiso-tonatiso--ae2cadc5a0625892b217f6b4.md) | 260 | `declaration-track:ae2cadc5a0625892b217f6b48596bb9197317cc8c2426fd8526285877319d2f7` |
| 34 | `def` | [ComonadIso.toNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/comonadiso-tonatiso--10395d34748070660f36a5d3.md) | 266 | `declaration-track:10395d34748070660f36a5d3726e4d89eb611f6164976f7b85215239e9a8ff4c` |
| 35 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/id--ef4a7fc9f57e2e0a3159d55a.md) | 275 | `declaration-track:ef4a7fc9f57e2e0a3159d55a7ddac7c03e5ea88f79265f13332997e16473c27e` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--f00b743588f8bc11ce603ea2.md) | 280 | `declaration-track:f00b743588f8bc11ce603ea2396c2088256e5d8c736b809ee3438c81b19b8ce2` |
| 37 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/id--4a16b2da08ccabed1a13bc43.md) | 290 | `declaration-track:4a16b2da08ccabed1a13bc43c526c7290c2a813b53c032e4175eef2b6ef1551d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/instance--28371ca15838f253a0b47d42.md) | 295 | `declaration-track:28371ca15838f253a0b47d429c88a30a960ffa8a21f5dcde1e2d85edb0ab3ded` |
| 39 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/transport--835eac8ff22cef8f2e0c4454.md) | 308 | `declaration-track:835eac8ff22cef8f2e0c4454ac29fd231b45ba781c9bee697678f925679d7abb` |
| 40 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/transport--40f12011f9e63f65897a4aad.md) | 340 | `declaration-track:40f12011f9e63f65897a4aadd31162de82124badaecb06da26267aef65f59bc1` |
| 41 | `lemma` | [map_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/map-unit-app--13d5c01c281bd2a688a5f967.md) | 365 | `result-track:13d5c01c281bd2a688a5f9673a5dbf015f217895316086af1b5e802224e6169b` |
| 42 | `lemma` | [isSplitMono_iff_isIso_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/issplitmono-iff-isiso-unit--7409edfb78fa85060dae7628.md) | 369 | `result-track:7409edfb78fa85060dae76283a67f7ae0df4bb8df4efc20f9d5cfe6bce73f104` |
| 43 | `lemma` | [map_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/map-counit-app--7a33ccaaee010bee29ac8b96.md) | 379 | `result-track:7a33ccaaee010bee29ac8b96787052addd83164fee91963e85d6561811ca0ba4` |
| 44 | `lemma` | [isSplitEpi_iff_isIso_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/declarations/issplitepi-iff-isiso-counit--73c60d956a114e195bf6dc69.md) | 383 | `result-track:73c60d956a114e195bf6dc69f474c9110f8e8060505c265e713f315f71dd5dc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
