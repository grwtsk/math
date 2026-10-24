# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Spec.Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a55694b93a90347505922ec61d438411b1348f43",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a55694b93a90347505922ec61d438411b1348f43`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.LocallyRingedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.StructureSheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Spec.topObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-topobj--26c0319457b2d8879e49dcbb.md) | 54 | `declaration-track:26c0319457b2d8879e49dcbbaa02e63440ebc448b7e783b79b056f4f953c6096` |
| 2 | `def` | [Spec.topMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-topmap--af82fc018bd807cb3dd42a59.md) | 61 | `declaration-track:af82fc018bd807cb3dd42a5968e797f6fb90002309c93bcda9422e60fa1a9e9f` |
| 3 | `theorem` | [Spec.topMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-topmap-id--85945e296869642d90b564dc.md) | 67 | `result-track:85945e296869642d90b564dcdfa6ab8c9b3975cca11081438c20fde027485b5a` |
| 4 | `theorem` | [Spec.topMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-topmap-comp--f288e07f28d4a152cfd9844f.md) | 72 | `result-track:f288e07f28d4a152cfd9844fc58799f1c0d3522f7e59a3a92c6c0e852df05b25` |
| 5 | `def` | [Spec.toTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-totop--8eeb7cdd57aef686024cacb4.md) | 83 | `declaration-track:8eeb7cdd57aef686024cacb44b8c1215fbad8ca96fbc4d47ac2bbc06f3f2c342` |
| 6 | `def` | [Spec.sheafedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-sheafedspaceobj--61d103965ad97c0e11f1b260.md) | 94 | `declaration-track:61d103965ad97c0e11f1b26060e8d08a6101b786595e35a098ec43b4d54980b2` |
| 7 | `def` | [Spec.sheafedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-sheafedspacemap--c73fdc21946c39e6d06c7bff.md) | 104 | `declaration-track:c73fdc21946c39e6d06c7bff7434c438aff1a8f5d14ed17f430da6c59823f026` |
| 8 | `theorem` | [Spec.sheafedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-sheafedspacemap-id--8fe9d57e9f3ca958a0f4d86f.md) | 115 | `result-track:8fe9d57e9f3ca958a0f4d86f23dcd25ff025e194abb0ea86e9393b1039061c88` |
| 9 | `theorem` | [Spec.sheafedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-sheafedspacemap-comp--eff58f742bc8befee197b4a5.md) | 126 | `result-track:eff58f742bc8befee197b4a5b59cf0d20073a580fcab8b5c5c46dd0b312d0793` |
| 10 | `def` | [Spec.toSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-tosheafedspace--08f44ca9ff514e80f5363537.md) | 141 | `declaration-track:08f44ca9ff514e80f5363537e5eee8459e54077d06fdbc5138884e81c1acb6e1` |
| 11 | `def` | [Spec.toPresheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-topresheafedspace--36b24dc3ba2cf2da8d8b3f1a.md) | 151 | `declaration-track:36b24dc3ba2cf2da8d8b3f1adeefdbf42f2954a29b76499f7beccf2d2b84c816` |
| 12 | `theorem` | [Spec.toPresheafedSpace_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-topresheafedspace-obj--c3fd852f01dacf6d7dbdfff2.md) | 157 | `result-track:c3fd852f01dacf6d7dbdfff2df439dfb710ba79aae66505fcc493675f23a67bf` |
| 13 | `theorem` | [Spec.toPresheafedSpace_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-topresheafedspace-obj-op--fd040b9cb377784dfa6be1a5.md) | 163 | `result-track:fd040b9cb377784dfa6be1a5b6561df675f590796ae01a71530502198732d981` |
| 14 | `theorem` | [Spec.toPresheafedSpace_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-topresheafedspace-map--2436df96750d5480e6906401.md) | 170 | `result-track:2436df96750d5480e6906401c902d5cd4a1a3e73dd72155ed15218b29e3c8587` |
| 15 | `theorem` | [Spec.toPresheafedSpace_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-topresheafedspace-map-op--bac0bbe2c684287934c0710b.md) | 176 | `result-track:bac0bbe2c684287934c0710b0cae380286de79c2cb66d1c54843170872de7d6f` |
| 16 | `theorem` | [Spec.basicOpen_hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-basicopen-hom-ext--4f880069a6d5820f41c320c0.md) | 182 | `result-track:4f880069a6d5820f41c320c07e057b57be057fca580acb95f44fcaa97b6d8d39` |
| 17 | `def` | [Spec.locallyRingedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-locallyringedspaceobj--b87df6d1b357b4d4817b14cf.md) | 210 | `declaration-track:b87df6d1b357b4d4817b14cf4f6f3f4b4ed595c49f1d31ef613f19fadded3095` |
| 18 | `theorem` | [stalkMap_toStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/stalkmap-tostalk--83fec4e81c9467fa42b532bb.md) | 219 | `result-track:83fec4e81c9467fa42b532bbb04f505718235f9c568b7a4ccc8b91b75295028f` |
| 19 | `theorem` | [localRingHom_comp_stalkIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/localringhom-comp-stalkiso--8051839f7e86097f09f7c343.md) | 233 | `result-track:8051839f7e86097f09f7c343aa7ef294e98c7f4638bef110d7c49f3419912a42` |
| 20 | `def` | [Spec.locallyRingedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-locallyringedspacemap--d1fc0fc38e1c2805752f86f9.md) | 253 | `declaration-track:d1fc0fc38e1c2805752f86f944a34cbb7f5894ebccc5f79782a3c23cc5bf3c66` |
| 21 | `theorem` | [Spec.locallyRingedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-locallyringedspacemap-id--db276129a893dd1b31c77b1f.md) | 274 | `result-track:db276129a893dd1b31c77b1f589c20905eae3073e4e044c995eb7a0a02c2be68` |
| 22 | `theorem` | [Spec.locallyRingedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-locallyringedspacemap-comp--1e9d78494c9275fbc69f525c.md) | 281 | `result-track:1e9d78494c9275fbc69f525cc786b8537404538e76d97703d31440f593423ba8` |
| 23 | `def` | [Spec.toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-tolocallyringedspace--f405c1d77813c0f29b13c6c2.md) | 292 | `declaration-track:f405c1d77813c0f29b13c6c2785095010cb2fd3d436469e1b91a17c8c9e42550` |
| 24 | `def` | [toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/tospec--a476f56d00ad0468c27bb235.md) | 306 | `declaration-track:a476f56d00ad0468c27bb2358e6294e8d6c0dd3bf592751cca5aff3fa7114b29` |
| 25 | `instance` | [isIso_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/isiso-tospec--142625d1837a83e242d0f231.md) | 311 | `declaration-track:142625d1837a83e242d0f231772e805baf1b44447588c8d04cb40def26871aa0` |
| 26 | `theorem` | [Spec_Γ_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-naturality--0d2480c40e1af8065173d8fa.md) | 317 | `result-track:0d2480c40e1af8065173d8fa352ae607bfc22fdc6e047ce93c5056dacd845dec` |
| 27 | `def` | [SpecΓIdentity](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-identity--2e7eecd96fc909605c2b350a.md) | 327 | `declaration-track:2e7eecd96fc909605c2b350a8d011211b9bb84d155276aa9a1a86fccb3e554db` |
| 28 | `theorem` | [Spec_map_localization_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/spec-map-localization-isiso--766683290408ad8f2f2b4004.md) | 338 | `result-track:766683290408ad8f2f2b400443d1ffa658e72319d16bd6ef505a3fcd3de2a7af` |
| 29 | `def` | [toPushforwardStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/topushforwardstalk--b99397ba8cac442535657439.md) | 363 | `declaration-track:b99397ba8cac4425356574399b6667b558c2ee6f5f41e7e43debca15f2143268` |
| 30 | `theorem` | [toPushforwardStalk_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/topushforwardstalk-comp--499e9e05d6691f40afd123b0.md) | 370 | `result-track:499e9e05d6691f40afd123b02483de025c8c85ecaba37ac6095cc3f96e731a75` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/instance--d8c87dd1dee9fa2998d072a1.md) | 381 | `declaration-track:d8c87dd1dee9fa2998d072a1a515b842b9b39f595a2dd1c3fa67d0714e4c92bd` |
| 32 | `theorem` | [algebraMap_pushforward_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/algebramap-pushforward-stalk--cef1a26e68427af8c8091fe1.md) | 384 | `result-track:cef1a26e68427af8c8091fe1c8453b994798ca9fbad5209eadcde6d397f4f147` |
| 33 | `def` | [toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/topushforwardstalkalghom--1e2d4e8a7a8e8b5b04bec350.md) | 399 | `declaration-track:1e2d4e8a7a8e8b5b04bec3502b4a26fe1ac352a23c6832e50f14fbdf4aed6b97` |
| 34 | `theorem` | [isLocalizedModule_toPushforwardStalkAlgHom_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/islocalizedmodule-topushforwardstalkalghom-aux--3c0cb6f114eb0a94b3aab545.md) | 405 | `result-track:3c0cb6f114eb0a94b3aab545e5acabf062e253c6eb5fb236dfa5467ca175a50f` |
| 35 | `instance` | [isLocalizedModule_toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/declarations/islocalizedmodule-topushforwardstalkalghom--9424e7f1db02ddddacdd3234.md) | 440 | `declaration-track:9424e7f1db02ddddacdd323490ce3e423dbe5dc497161bba0877d092df1295ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
