# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28b1b8a992ff5d62e31f1219ed6e4d4db3225dec",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28b1b8a992ff5d62e31f1219ed6e4d4db3225dec`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/types--6476c82336fb38e84c70c3df.md) | 45 | `declaration-track:6476c82336fb38e84c70c3dfeee6312dbf30f4b719c0413b3ad0c083dd90db07` |
| 2 | `theorem` | [types_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/types-hom--d785d970aabc0c7ae33dad07.md) | 52 | `result-track:d785d970aabc0c7ae33dad075824fa4fd29773dd6c2e98c79966a8695de6bd9b` |
| 3 | `theorem` | [types_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/types-ext--97fe7baed2e34d8f4d7ba876.md) | 59 | `result-track:97fe7baed2e34d8f4d7ba8769166650da19e2c1fdea22e5a1922a23425271dac` |
| 4 | `theorem` | [types_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/types-id--31e2f886e2d9049bc2838b08.md) | 63 | `result-track:31e2f886e2d9049bc2838b08347249de6f81e847d1fee90040331e920e31323d` |
| 5 | `theorem` | [types_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/types-comp--d194827e59bc33f7e93c4b5e.md) | 67 | `result-track:d194827e59bc33f7e93c4b5ea7de474c048df3bc547c0a71d3cf5680a07c04ac` |
| 6 | `theorem` | [types_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/types-id-apply--7a4b491b58919861f6f5ddb9.md) | 72 | `result-track:7a4b491b58919861f6f5ddb96876ea22bb180abb699436a57227265def391567` |
| 7 | `theorem` | [types_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/types-comp-apply--61aab371bc765f95a69a08b0.md) | 77 | `result-track:61aab371bc765f95a69a08b0ce11cec5475a363c110cbf2b6c73f38f2eafcf1e` |
| 8 | `theorem` | [hom_inv_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/hom-inv-id-apply--2e3af5ae15b16c6f4ff4c6a3.md) | 82 | `result-track:2e3af5ae15b16c6f4ff4c6a39ffbaefd791bc46b0492179b90f458f3927cd8be` |
| 9 | `theorem` | [inv_hom_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/inv-hom-id-apply--6c2fd7245e805da1e1469ab9.md) | 87 | `result-track:6c2fd7245e805da1e1469ab901fe7dbd112c0544aa0e70b8f7842ca85c27c32b` |
| 10 | `abbrev` | [asHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/ashom--bc0aac3bb35abd9cccfeaaff.md) | 93 | `declaration-track:bc0aac3bb35abd9cccfeaaff6cc4698e1fb43aa87350b2c9804e42dff37b633a` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/example--8fe5c84ef6c8ba2cfc663cf3.md) | 105 | `declaration-track:8fe5c84ef6c8ba2cfc663cf3035d3158d9a342a3a3ff75005827a03858aa3a63` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/example--963e8429dd5bc44d2f00cf99.md) | 108 | `declaration-track:963e8429dd5bc44d2f00cf9931df3230e9c2e3d042bef340f6942ef0a65b16c7` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/example--c5d0b6d711efc444d045a4bb.md) | 110 | `declaration-track:c5d0b6d711efc444d045a4bb5c7dfb6fda6b53ebeff5cbf1d736f954e350f9ea` |
| 14 | `def` | [sections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/sections--e708940bcd91bbb10cce1f27.md) | 124 | `declaration-track:e708940bcd91bbb10cce1f2793314e04ba60629a84cde54aa4e3b822f9ab4df6` |
| 15 | `lemma` | [sections_property](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/sections-property--210657c627d92ef8a828db12.md) | 130 | `result-track:210657c627d92ef8a828db121dc71156a4da857b1991452d931cc11e5ed77999` |
| 16 | `theorem` | [map_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/map-comp-apply--5fb05873b0dee9bb016c892d.md) | 143 | `result-track:5fb05873b0dee9bb016c892dabb0aeea2e7dd693c23e51ef0f8f84ec53a81a6a` |
| 17 | `theorem` | [map_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/map-id-apply--8e354401adb8ed9cd729d145.md) | 148 | `result-track:8e354401adb8ed9cd729d145e8c836dda99260e32916031a4b0f909573bb06c1` |
| 18 | `theorem` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/naturality--076e817d8c5fcc525c853337.md) | 151 | `result-track:076e817d8c5fcc525c85333700a2cce42fde206c085d50e9f7605c77cc04aafe` |
| 19 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/comp--60a698007b76dbbac9f6bd83.md) | 156 | `result-track:60a698007b76dbbac9f6bd83dfec502d3147c8db04323c8412cda682957bdd09` |
| 20 | `theorem` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/hcomp--0065febbb77fbef55e5545cf.md) | 163 | `result-track:0065febbb77fbef55e5545cf0c5c96d22dbb861cc0c280d4a6415cfd3d9e9386` |
| 21 | `theorem` | [map_inv_map_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/map-inv-map-hom-apply--c8311eb0cf29513e13c5e74b.md) | 168 | `result-track:c8311eb0cf29513e13c5e74b8dad86ad9c423fd4a49ee4a8455c5a2fad244c23` |
| 22 | `theorem` | [map_hom_map_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/map-hom-map-inv-apply--cb3d9715295956d2e62a03aa.md) | 173 | `result-track:cb3d9715295956d2e62a03aa2d6c92d199712eab140c60d2fb4730736f4118cd` |
| 23 | `theorem` | [hom_inv_id_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/hom-inv-id-app-apply--4633d66b004f5c2a5ded4b4f.md) | 178 | `result-track:4633d66b004f5c2a5ded4b4f0023d8846e79056e991eaca74aa814c3a0deef44` |
| 24 | `theorem` | [inv_hom_id_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/inv-hom-id-app-apply--1ea4de1d6672d08e40926fab.md) | 183 | `result-track:1ea4de1d6672d08e40926fab30325fae4d7cdd7606f0155be739358fe7c4c2be` |
| 25 | `def` | [uliftTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/ulifttrivial--3be0d3d9676308c83585ab2f.md) | 192 | `declaration-track:3be0d3d9676308c83585ab2fbd5a23dbe6933a10c26e5df3b39866276dd5f216` |
| 26 | `def` | [uliftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/uliftfunctor--de7b8fa6c055c50374464163.md) | 201 | `declaration-track:de7b8fa6c055c50374464163bce4b28022608158727673ea915c971c7182c1c4` |
| 27 | `theorem` | [uliftFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/uliftfunctor-map--c4bd392f30a7f6832667d4b7.md) | 208 | `result-track:c4bd392f30a7f6832667d4b724e438532101acac5e6fc8767038742d7f5aeeac` |
| 28 | `instance` | [uliftFunctorFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/uliftfunctorfull--0a37cd736c243a205c0274cc.md) | 213 | `declaration-track:0a37cd736c243a205c0274cc46982d1a9cc5a43d4d4b8daf0e1f34ce473846a3` |
| 29 | `instance` | [uliftFunctor_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/uliftfunctor-faithful--b2d861a0787a03162cb98555.md) | 216 | `declaration-track:b2d861a0787a03162cb985554adce886b34ddf407bbb5a384d632ddc23717d0d` |
| 30 | `def` | [uliftFunctorTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/uliftfunctortrivial--a02edcef361783282ba8f459.md) | 224 | `declaration-track:a02edcef361783282ba8f45959ebaaead8c73108de604ddfa5c051bda0abaada` |
| 31 | `def` | [homOfElement](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/homofelement--6ff294546bd6b5da049b1dcb.md) | 231 | `declaration-track:6ff294546bd6b5da049b1dcb231fdbdfde65914850149c7c36fef1eb4ec55d3e` |
| 32 | `theorem` | [homOfElement_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/homofelement-eq-iff--c0f78c9cb22fdc7366549e1e.md) | 234 | `result-track:c0f78c9cb22fdc7366549e1ed33415fbe3335c2c61a914247d7c431cb1034d40` |
| 33 | `theorem` | [mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/mono-iff-injective--de6f99fe27faacc0e5cda9b1.md) | 242 | `result-track:de6f99fe27faacc0e5cda9b1b15f7f15216c7208a6f6be086c40c33ea8ecb716` |
| 34 | `theorem` | [injective_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/injective-of-mono--a16ba7e2b4647371af7fcdc1.md) | 251 | `result-track:a16ba7e2b4647371af7fcdc17a8c19d4157126537a8600e5f4ed4ef0b6440590` |
| 35 | `theorem` | [epi_iff_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/epi-iff-surjective--e144a5c14d692ae0767fa938.md) | 259 | `result-track:e144a5c14d692ae0767fa93882943ea75703f3581857805d9aa0d85d6b4ed89c` |
| 36 | `theorem` | [surjective_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/surjective-of-epi--59cb148742658e772c982aaf.md) | 270 | `result-track:59cb148742658e772c982aaf97453802c6da35a2b81908fbb149330541a3e54c` |
| 37 | `def` | [ofTypeFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/oftypefunctor--6e4621be363b1091fd1dca32.md) | 278 | `declaration-track:6e4621be363b1091fd1dca327d02620b5762fdbcfa1e8e1076daf34b3b202033` |
| 38 | `theorem` | [ofTypeFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/oftypefunctor-obj--ca2d387dd43889c2564912b9.md) | 291 | `result-track:ca2d387dd43889c2564912b96509560b475ed5ba1ebbbceef03ccb8983b863aa` |
| 39 | `theorem` | [ofTypeFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/oftypefunctor-map--99a22bea9524b2974af5bf82.md) | 296 | `result-track:99a22bea9524b2974af5bf82d3c328f961abde83f3e8733ee851fee2d68c1aa3` |
| 40 | `def` | [toIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/toiso--beac3885ac84abb1dfc078f2.md) | 315 | `declaration-track:beac3885ac84abb1dfc078f2a4c1f831a9db64a5838c14630621c6bca6357b9e` |
| 41 | `theorem` | [toIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/toiso-hom--d024fe450e995341827e6c75.md) | 323 | `result-track:d024fe450e995341827e6c75aee29b62179ab659f2f7611808e38f3681f5aeb3` |
| 42 | `theorem` | [toIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/toiso-inv--064da137bfb55c149a14523d.md) | 328 | `result-track:064da137bfb55c149a14523dd568d3f7a46f1164df6cdfb0a3cb204026321f3f` |
| 43 | `def` | [toEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/toequiv--5480a18e51865d05a3b7d7d0.md) | 344 | `declaration-track:5480a18e51865d05a3b7d7d0868bb089237820a96a78e8c0895eff94568a98c5` |
| 44 | `theorem` | [toEquiv_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/toequiv-fun--f3469e019b711236c1109561.md) | 352 | `result-track:f3469e019b711236c1109561a563792eb1a9f91a366b041d0e9fe909c17ebd79` |
| 45 | `theorem` | [toEquiv_symm_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/toequiv-symm-fun--9b4c98f4c7ce2b6a97fc463f.md) | 357 | `result-track:9b4c98f4c7ce2b6a97fc463f4506421cfb9f1e2409c655e30fe9957975b71494` |
| 46 | `theorem` | [toEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/toequiv-id--e3f960f5cfaf4ef718268fbb.md) | 362 | `result-track:e3f960f5cfaf4ef718268fbbc136926101951f341c1bb9bff28efab9259546e3` |
| 47 | `theorem` | [toEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/toequiv-comp--078ec61670925bbc59e2f0cf.md) | 367 | `result-track:078ec61670925bbc59e2f0cf30e5f8ab19f579615ee3f2125fb5c081fca2a293` |
| 48 | `theorem` | [isIso_iff_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/isiso-iff-bijective--53e33fd31ebc62d98182fdbf.md) | 377 | `result-track:53e33fd31ebc62d98182fdbf2c748857e51d966a949585cc025663d29188a40a` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/instance--01a076666d978aa651e44a56.md) | 382 | `declaration-track:01a076666d978aa651e44a5635a1157fc9545e72ccb38b0fabb13dadc79ea241` |
| 50 | `def` | [equivIsoIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/equivisoiso--6bd815f5985f1444b2ab8a12.md) | 395 | `declaration-track:6bd815f5985f1444b2ab8a1259d549e5d8fe7c7595f7347a7f5c69b31ac784b1` |
| 51 | `def` | [equivEquivIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/equivequiviso--d53060270e1e0909a530d2ad.md) | 403 | `declaration-track:d53060270e1e0909a530d2ad394723a8959f0b171886608dc25dd55c1c8b0ad0` |
| 52 | `theorem` | [equivEquivIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/equivequiviso-hom--b118bf9ebf39b469c4b81481.md) | 408 | `result-track:b118bf9ebf39b469c4b8148137abc481661f59636d312789be9e77b8ddd8d9b8` |
| 53 | `theorem` | [equivEquivIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/declarations/equivequiviso-inv--f1391bc61dae0f2f47df463a.md) | 413 | `result-track:f1391bc61dae0f2f47df463ad930f1d4c89cb04f726da99cc27404ab6f68b852` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
