# Verification target: GRWTSK.Algebra.Basic.Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2567dad891f61e786bcb5d8a5fc2ef46a41d1177",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2567dad891f61e786bcb5d8a5fc2ef46a41d1177`.

Source path: `GRWTSK/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.IsField` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.MonoidWithZero` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mapPiEvalRingHom](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/mappievalringhom--d20eb9f66ebfa55240dba7c4.md) | 82 | `declaration-track:d20eb9f66ebfa55240dba7c41ff392d0051bbe53866cd924fe16cd44ed859bda` |
| 2 | `theorem` | [mapPiEvalRingHom_bijective](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/mappievalringhom-bijective--704fccebf65df11cfe22a291.md) | 87 | `result-track:704fccebf65df11cfe22a2916fc840276ab8f270f90142fba239de8e20fc803c` |
| 3 | `theorem` | [linearMap_compatibleSMul](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/linearmap-compatiblesmul--4f05cf268a21e1e12c28b4df.md) | 119 | `result-track:4f05cf268a21e1e12c28b4df27420e2c74f93fcf3a1fb8217291000b82effc02` |
| 4 | `theorem` | [algHom_subsingleton](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/alghom-subsingleton--d46b7c9260cdd5ca55afbeaa.md) | 132 | `result-track:d46b7c9260cdd5ca55afbeaad8d80db845977c5954e27acc96b1ee24e112039f` |
| 5 | `def` | [algEquiv](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequiv--a3a41827e769c9ada4616b5d.md) | 148 | `declaration-track:a3a41827e769c9ada4616b5d8090b4353687842c882a76cc1947832a72b7da2c` |
| 6 | `theorem` | [algEquiv_mk'](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequiv-mk--062013f6e2f9a5c892d4e8d7.md) | 154 | `result-track:062013f6e2f9a5c892d4e8d7904617e9876a29475f66c8e84025289c12bdadc9` |
| 7 | `theorem` | [algEquiv_symm_mk'](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequiv-symm-mk--acdf5d521cad7cab65cbd4c5.md) | 157 | `result-track:acdf5d521cad7cab65cbd4c5d761a59a88b71c47c9e7e86630462e986625d951` |
| 8 | `lemma` | [bijective](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/bijective--885199bfe0cb39bb47f59f2c.md) | 161 | `result-track:885199bfe0cb39bb47f59f2cd58acff4643dabf9ca14af74485b54637af188d0` |
| 9 | `def` | [liftAlgHom](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/liftalghom--9693b7e120d58dab36295460.md) | 179 | `declaration-track:9693b7e120d58dab36295460c5af2e208aee04e49f3e045f6b3fc5359f6bf926` |
| 10 | `theorem` | [liftAlgHom_toRingHom](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/liftalghom-toringhom--77410d6e94ab415f2a204e8b.md) | 184 | `result-track:77410d6e94ab415f2a204e8b004d6374b32ad81f05785179160075405524ecdb` |
| 11 | `theorem` | [coe_liftAlgHom](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/coe-liftalghom--22deca1526ca94bcf29bb3df.md) | 187 | `result-track:22deca1526ca94bcf29bb3df7e2166ee7a4d482507e3fc9c16e55c44dd19a63e` |
| 12 | `theorem` | [liftAlgHom_apply](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/liftalghom-apply--abc31bd475cc8a12abee8360.md) | 189 | `result-track:abc31bd475cc8a12abee83601f5bea1a2a9db112069a13bdc09dec6ea403afbc` |
| 13 | `def` | [algEquivOfAlgEquiv](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequivofalgequiv--68a76698c681596420d29e37.md) | 208 | `declaration-track:68a76698c681596420d29e375bdb53e63a52bb69e335309b79083b98a9b55ac7` |
| 14 | `theorem` | [algEquivOfAlgEquiv_eq_map](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequivofalgequiv-eq-map--bb980e9034be28a76efc71e8.md) | 215 | `result-track:bb980e9034be28a76efc71e8dabf9cceb6c13ba7d3a0cc33690619eeac8ec8cc` |
| 15 | `theorem` | [algEquivOfAlgEquiv_eq](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequivofalgequiv-eq--7f9c93a78b39f4d212457ee3.md) | 220 | `result-track:7f9c93a78b39f4d212457ee3d1f0e2cadd59e6d2760bf84ba92b9bc3112c39ad` |
| 16 | `theorem` | [algEquivOfAlgEquiv_mk'](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequivofalgequiv-mk--5e03d48d285d454dfc9dc18e.md) | 225 | `result-track:5e03d48d285d454dfc9dc18e6140706c662120c7a25a7445aad6762ea945564c` |
| 17 | `theorem` | [algEquivOfAlgEquiv_symm](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequivofalgequiv-symm--ab391d459051d8588f17da61.md) | 230 | `result-track:ab391d459051d8588f17da6195d8451d713475d3178f45279c19a0773089f053` |
| 18 | `lemma` | [smul_mem_iff](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/smul-mem-iff--3fa355fff114c1885fa825b8.md) | 246 | `result-track:3fa355fff114c1885fa825b8099bf5ac38ee61a98ebb2fc534425d01ecbfdbb9` |
| 19 | `def` | [atUnits](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/atunits--1e8277a8c0f86bf0c3487929.md) | 259 | `declaration-track:1e8277a8c0f86bf0c3487929c9e62f1c81e3c0c819ed10bf410c7223469d7f7e` |
| 20 | `theorem` | [isLocalization_of_algEquiv](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/islocalization-of-algequiv--caabc2dbf8b6c05518112860.md) | 281 | `result-track:caabc2dbf8b6c05518112860a511789b000a546275ee114c4f2e6bb7484860eb` |
| 21 | `theorem` | [isLocalization_iff_of_algEquiv](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/islocalization-iff-of-algequiv--5cffe2d782a70206d8dbf55b.md) | 297 | `result-track:5cffe2d782a70206d8dbf55b7f5bc4e1839ce67a72e2b3c6163a3fd8809dd192` |
| 22 | `theorem` | [isLocalization_iff_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/islocalization-iff-of-ringequiv--e962a35a6bba8c217d302d4d.md) | 301 | `result-track:e962a35a6bba8c217d302d4d0a36ffc60ee35450c28bff8ccee7d839939accbe` |
| 23 | `theorem` | [isLocalization_iff_of_isLocalization](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/islocalization-iff-of-islocalization--905bf6ece1f11bc89becb9be.md) | 310 | `result-track:905bf6ece1f11bc89becb9be9bcefc8ae8aefc3a31705756e139fafd39e6a440` |
| 24 | `theorem` | [iff_of_le_of_exists_dvd](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/iff-of-le-of-exists-dvd--acf672f6700a4cb70bae04a4.md) | 315 | `result-track:acf672f6700a4cb70bae04a43dfac7f4f535e76323dc5db1fba3a63445e9ffd1` |
| 25 | `lemma` | [commutes](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/commutes--96c7388d93de27afb2965799.md) | 327 | `result-track:96c7388d93de27afb2965799b04c4d732b5951bcc13c7c4c43ce74d8dba3e269` |
| 26 | `theorem` | [mk_natCast](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/mk-natcast--dbb4bf9fd0329c73eb5401fd.md) | 372 | `result-track:dbb4bf9fd0329c73eb5401fd20701fc95c41d73b2b5dc3090b0d6fe7d0f1024b` |
| 27 | `def` | [algEquiv](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequiv--2173904ec12d360577c2e2fa.md) | 383 | `declaration-track:2173904ec12d360577c2e2fa250b94ceb44b7bbef844d5671b3a971d568fe597` |
| 28 | `def` | [_root_.IsLocalization.unique](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/root-islocalization-unique--093379b82e99ae3201c34765.md) | 387 | `declaration-track:093379b82e99ae3201c3476593f4bf6fe4706310f1033b460bac7dc1fae86dde` |
| 29 | `theorem` | [algEquiv_mk'](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequiv-mk--ae9a8c37ed99a3c26e49cb4a.md) | 394 | `result-track:ae9a8c37ed99a3c26e49cb4a2b2d3af7763bf94521db777bddc63b8ee588ced4` |
| 30 | `theorem` | [algEquiv_symm_mk'](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequiv-symm-mk--16d0497ca38b3192af2c3527.md) | 397 | `result-track:16d0497ca38b3192af2c3527af19f8b9a1fbb91081795af05c1f122205f41839` |
| 31 | `theorem` | [algEquiv_mk](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequiv-mk--7eecf07e64aebc040642d4d1.md) | 401 | `result-track:7eecf07e64aebc040642d4d15a1fcf3087d6a217bda7697d0110b566a522fde6` |
| 32 | `theorem` | [algEquiv_symm_mk](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/algequiv-symm-mk--d230fbb958783c61bf12aed9.md) | 403 | `result-track:d230fbb958783c61bf12aed94d50c476e718ca4ca7487604f0e1ab0476d96d6f` |
| 33 | `lemma` | [coe_algEquiv](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/coe-algequiv--6fe14b88131e05d82e5bb513.md) | 406 | `result-track:6fe14b88131e05d82e5bb513100b04eb36ff23c17a94b5ad5e3452aae08eb9a0` |
| 34 | `lemma` | [coe_algEquiv_symm](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/coe-algequiv-symm--d195cf92b3d988f63dd5e8f7.md) | 410 | `result-track:d195cf92b3d988f63dd5e8f750aeeaba08e95059b1b4cb5cbbdb55cec82c47aa` |
| 35 | `theorem` | [mk_intCast](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/mk-intcast--e460c70a0dc52d0678133f93.md) | 425 | `result-track:e460c70a0dc52d0678133f93dc3c71db22f06952feac2d8a692d24a68ab711c7` |
| 36 | `theorem` | [IsField.localization_map_bijective](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/isfield-localization-map-bijective--ae91d1ca775e768d9596e9fe.md) | 433 | `result-track:ae91d1ca775e768d9596e9fe2b51af1f1b281a91fff655f565ce9a89522b9f8c` |
| 37 | `theorem` | [Field.localization_map_bijective](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/field-localization-map-bijective--ff017d41ff58d366ef542c1d.md) | 444 | `result-track:ff017d41ff58d366ef542c1d8102445a52c938eb0b43d174807f3f046fde7302` |
| 38 | `def` | [localizationAlgebra](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/localizationalgebra--63fc47907ace9b65be5b5af9.md) | 471 | `declaration-track:63fc47907ace9b65be5b5af96403530c1defb4f95f633884e796719ee375e553` |
| 39 | `theorem` | [IsLocalization.map_units_map_submonoid](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/islocalization-map-units-map-submonoid--45274f2f6db61bb5929a4295.md) | 483 | `result-track:45274f2f6db61bb5929a4295e473c581052f5c647d4554701e7e50dca46b4515` |
| 40 | `theorem` | [IsLocalization.algebraMap_mk'](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/islocalization-algebramap-mk--23add3d459e7d0a61bb2ee53.md) | 488 | `result-track:23add3d459e7d0a61bb2ee53f38a39c9800958d500f511d1343de5a57aae3163` |
| 41 | `theorem` | [IsLocalization.algebraMap_eq_map_map_submonoid](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/islocalization-algebramap-eq-map-map-submonoid--be97ca759a0be1828f5603c7.md) | 507 | `result-track:be97ca759a0be1828f5603c771fe8a411f2f064d405b2df62235c5a1f13d0dc5` |
| 42 | `theorem` | [IsLocalization.algebraMap_apply_eq_map_map_submonoid](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/islocalization-algebramap-apply-eq-map-map-submonoid--89e17c399dd40d02900d2b62.md) | 522 | `result-track:89e17c399dd40d02900d2b620f2ba7c2cb57dca7195a939e542fbe42f0c6df45` |
| 43 | `theorem` | [IsLocalization.lift_algebraMap_eq_algebraMap](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/islocalization-lift-algebramap-eq-algebramap--f5c512353cf9d38d28aa3794.md) | 528 | `result-track:f5c512353cf9d38d28aa379408d9d285cc62faaa021926333543340c7f4d979d` |
| 44 | `theorem` | [localizationAlgebraMap_def](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/localizationalgebramap-def--164fcc49e53e3d6909435eb9.md) | 537 | `result-track:164fcc49e53e3d6909435eb95a34b04c5a5e03408d11ca413f92412c0b35d618` |
| 45 | `theorem` | [localizationAlgebra_injective](../../../../mathematics/Algebra/Basic/Variantaff8af701eb8f3c6f2951695e06582f94c3f84a86b06189a9679d0bb2132ce2f.lean/declarations/localizationalgebra-injective--ba159184b6afc8e055c53113.md) | 544 | `result-track:ba159184b6afc8e055c531133019c74a06c8ac50e1c6f662103d067b7d084795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
