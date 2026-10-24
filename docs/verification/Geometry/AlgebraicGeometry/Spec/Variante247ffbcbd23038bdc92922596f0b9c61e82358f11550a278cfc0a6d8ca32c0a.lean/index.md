# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Spec.Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbc1a71d05448912e16895aa2debc5c7eacc28d0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbc1a71d05448912e16895aa2debc5c7eacc28d0`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.StructureSheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Spec.topObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topobj--2d5009bf743829589ecd5ea7.md) | 54 | `declaration-track:2d5009bf743829589ecd5ea7d307dc60efd0688b571e1002f1f9def645e8ded7` |
| 2 | `theorem` | [Spec.topObj_forget](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topobj-forget--18b159b74e808621b28bd1f8.md) | 57 | `result-track:18b159b74e808621b28bd1f87f276b9e47cd39becf8b694ba1d00097b822dfc8` |
| 3 | `def` | [Spec.topMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topmap--8b7ff653772fc94a46e923d2.md) | 62 | `declaration-track:8b7ff653772fc94a46e923d2e87fb0658418eeb8e71317a78aedd932147fd7d0` |
| 4 | `theorem` | [Spec.topMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topmap-id--6f7ec53134bc3860a5510510.md) | 66 | `result-track:6f7ec53134bc3860a55105107174a3b57d6ceb3959dbc5267b851e8cd9d31861` |
| 5 | `theorem` | [Spec.topMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topmap-comp--c385c3c2aa22aa1dcdac11f4.md) | 70 | `result-track:c385c3c2aa22aa1dcdac11f43efc1d2f3e2939dbcb90d6add07d3aa7ff2b499e` |
| 6 | `def` | [Spec.toTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-totop--99a6225402247b7f19c83073.md) | 79 | `declaration-track:99a6225402247b7f19c83073f8707baf1f11e39df1e0b4080442fde9fa872192` |
| 7 | `def` | [Spec.sheafedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-sheafedspaceobj--3c3d464ec39757ec8597c848.md) | 86 | `declaration-track:3c3d464ec39757ec8597c84852054aa575d15546d39b1a68e604891eed6d970f` |
| 8 | `def` | [Spec.sheafedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-sheafedspacemap--aae90834b80d8309763c4ab0.md) | 94 | `declaration-track:aae90834b80d8309763c4ab0424ee3195c9e1ea188cba9149ad32d631247b747` |
| 9 | `theorem` | [Spec.sheafedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-sheafedspacemap-id--692e8ec68b372d6886c4b966.md) | 103 | `result-track:692e8ec68b372d6886c4b966627e676ec7aeed198d320a3d6c9eca9c0cab1de5` |
| 10 | `theorem` | [Spec.sheafedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-sheafedspacemap-comp--efb8ed237cd7e85b8c6c2812.md) | 112 | `result-track:efb8ed237cd7e85b8c6c28123454555cae00a35b604c4bb30923b1378306f4fa` |
| 11 | `def` | [Spec.toSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-tosheafedspace--2d7cc6b1867889aa9722a177.md) | 127 | `declaration-track:2d7cc6b1867889aa9722a1776234941bc749ff88e1aae138dfe4064414999261` |
| 12 | `def` | [Spec.toPresheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topresheafedspace--be232841c32b3a86921832e9.md) | 134 | `declaration-track:be232841c32b3a86921832e965f08b39e7100112e3c3c88af9f6bf5ef16d6edd` |
| 13 | `theorem` | [Spec.toPresheafedSpace_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topresheafedspace-obj--cb21910aa7eec9c6a84522b8.md) | 138 | `result-track:cb21910aa7eec9c6a84522b8083321c1c4eef455a4c6859605d8ba1200c29095` |
| 14 | `theorem` | [Spec.toPresheafedSpace_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topresheafedspace-obj-op--accd801a8db998d8fffd2cac.md) | 142 | `result-track:accd801a8db998d8fffd2cac03003cdacd6bea6b45c17a2a470fb5529318cbdc` |
| 15 | `theorem` | [Spec.toPresheafedSpace_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topresheafedspace-map--c28f3ed63612e06db12f4823.md) | 147 | `result-track:c28f3ed63612e06db12f48237f39da1d1c82108a954fa323939da824200157af` |
| 16 | `theorem` | [Spec.toPresheafedSpace_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-topresheafedspace-map-op--8cd4e13957615a27c582092e.md) | 151 | `result-track:8cd4e13957615a27c582092eb4c4f89779ddd7825a3ee3e8d0cd80deca0b049f` |
| 17 | `theorem` | [Spec.basicOpen_hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-basicopen-hom-ext--f690f46d5a7b162a5c022ac7.md) | 155 | `result-track:f690f46d5a7b162a5c022ac75adbacbeb09fd8410024264cdfd7e431c6898e10` |
| 18 | `def` | [Spec.locallyRingedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-locallyringedspaceobj--c9e196c1f61792b2e7833199.md) | 175 | `declaration-track:c9e196c1f61792b2e7833199741846155a3cc28ee2f7bbae76e97c7bc48f4db7` |
| 19 | `lemma` | [Spec.locallyRingedSpaceObj_sheaf](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-locallyringedspaceobj-sheaf--966ccc5fb630e05e264c0cbe.md) | 181 | `result-track:966ccc5fb630e05e264c0cbe5a609faefe4c4a9c10fcf10499b89f42f6cc0692` |
| 20 | `lemma` | [Spec.locallyRingedSpaceObj_sheaf'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-locallyringedspaceobj-sheaf--971ef77cb951efaab5c23e13.md) | 184 | `result-track:971ef77cb951efaab5c23e13c35732a3ea485906c693387571247d0cba2071d5` |
| 21 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-locallyringedspaceobj-presheaf-map--0cf567eebc7081887583c48f.md) | 187 | `result-track:0cf567eebc7081887583c48f9338220a20a5a0eade2f6591a7dfcc88ef6dab59` |
| 22 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-locallyringedspaceobj-presheaf--4edab0fa25e7d31f3ef66023.md) | 191 | `result-track:4edab0fa25e7d31f3ef660236b21fc74563767620ddcfe59f507fc5592ec17f6` |
| 23 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf_map'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-locallyringedspaceobj-presheaf-map--72d21b105acb9df22a5c4107.md) | 194 | `result-track:72d21b105acb9df22a5c410727a03d6540b5d9fc639c90af7735c9799f9894c2` |
| 24 | `theorem` | [stalkMap_toStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/stalkmap-tostalk--e9a938b2af23b15fcf497a52.md) | 199 | `result-track:e9a938b2af23b15fcf497a5204bbeb955a7ec2b59723bba8cf7f1c63b54c114c` |
| 25 | `theorem` | [localRingHom_comp_stalkIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/localringhom-comp-stalkiso--5d784fc5be00cae2b7389a85.md) | 213 | `result-track:5d784fc5be00cae2b7389a85e688612c6d151f874a409193a5c79dd1cb2c10b4` |
| 26 | `theorem` | [localRingHom_comp_stalkIso_apply'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/localringhom-comp-stalkiso-apply--0468fc746958951e5c33044a.md) | 229 | `result-track:0468fc746958951e5c33044acce6c8c5e1e5915cce3f1b89759c5dd8e7ef3ab7` |
| 27 | `def` | [Spec.locallyRingedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-locallyringedspacemap--4f959f8b0077e8f248e6d350.md) | 240 | `declaration-track:4f959f8b0077e8f248e6d3505e9a526a4306b3baa8c178945acbdc03e6e54520` |
| 28 | `theorem` | [Spec.locallyRingedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-locallyringedspacemap-id--0fd491306a7a0d041a52e768.md) | 260 | `result-track:0fd491306a7a0d041a52e768c2b494b83f457fbeac4e0c10ae50f06a835b58bf` |
| 29 | `theorem` | [Spec.locallyRingedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-locallyringedspacemap-comp--e88b87853fbac3a4bf8c6b86.md) | 265 | `result-track:e88b87853fbac3a4bf8c6b862ffb9e103042a5d4d1e2210d08d99c9ce710292d` |
| 30 | `def` | [Spec.toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-tolocallyringedspace--6451b5141f5f308274fd3050.md) | 274 | `declaration-track:6451b5141f5f308274fd305080d38368ed6be298c3355d3a346210624402f01e` |
| 31 | `def` | [toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/tospec--9465e49a7e221569ee87b96b.md) | 285 | `declaration-track:9465e49a7e221569ee87b96b1b5ecdc42cd0a40bffce0cd92da76c057d622692` |
| 32 | `instance` | [isIso_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/isiso-tospec--3e70b86ccbc7bd2b62793ef7.md) | 288 | `declaration-track:3e70b86ccbc7bd2b62793ef7f88961ff26e722b3fc490582540c6390e1ab9b93` |
| 33 | `theorem` | [Spec_Γ_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-naturality--2f5f777d80a3feaae0a27be0.md) | 292 | `result-track:2f5f777d80a3feaae0a27be00ede24ad5db48186fe7c4ef9a28e808de954be23` |
| 34 | `def` | [LocallyRingedSpace.SpecΓIdentity](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/locallyringedspace-spec-identity--2dcc7d554c2bcc29770de238.md) | 301 | `declaration-track:2dcc7d554c2bcc29770de2380a4a3cc1da9367fce6ed8942259b540355907d79` |
| 35 | `theorem` | [Spec_map_localization_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/spec-map-localization-isiso--62d6d2d4d4f02fd83e9c4e31.md) | 310 | `result-track:62d6d2d4d4f02fd83e9c4e31ad47462aafc30a16598630c7a1680f70250da96a` |
| 36 | `def` | [toPushforwardStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/topushforwardstalk--2e2b215046c21660e7706735.md) | 333 | `declaration-track:2e2b215046c21660e7706735e769f3227480930c1d7cef3abf9b5ebe43238b59` |
| 37 | `theorem` | [toPushforwardStalk_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/topushforwardstalk-comp--ff17a7b7bf8fcb12ddcf0e57.md) | 338 | `result-track:ff17a7b7bf8fcb12ddcf0e5706cc3e65d7f8b64dc8d73e2c6a553e47b0e1c180` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/instance--e13a0346112e4774e8511543.md) | 345 | `declaration-track:e13a0346112e4774e851154328c57041db0f2ebe7cf37066b12f37946d68ffc4` |
| 39 | `theorem` | [algebraMap_pushforward_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/algebramap-pushforward-stalk--fcbdf7f2b95e0c4221aabf4c.md) | 348 | `result-track:fcbdf7f2b95e0c4221aabf4c72c4a0baf3aee42cd3d5952ebaefa2145647b369` |
| 40 | `def` | [toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/topushforwardstalkalghom--fc39da57bc6bf7ade718733b.md) | 361 | `declaration-track:fc39da57bc6bf7ade718733bdfdd866742904a743634227734b3d6722efe0efd` |
| 41 | `theorem` | [isLocalizedModule_toPushforwardStalkAlgHom_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/islocalizedmodule-topushforwardstalkalghom-aux--83e9f10c0e5c53bd99556e0a.md) | 366 | `result-track:83e9f10c0e5c53bd99556e0acca592c0b769a3768bd993135b708659d7cff500` |
| 42 | `instance` | [isLocalizedModule_toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/declarations/islocalizedmodule-topushforwardstalkalghom--175755ac02d9a0367e7a9363.md) | 398 | `declaration-track:175755ac02d9a0367e7a93634bfbccaf402a23b91ef366f3d0d6fe3e4693d5cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
