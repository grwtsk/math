# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Spec.Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "933c74125d834f873382a29bf9a1b52d92a781b0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `933c74125d834f873382a29bf9a1b52d92a781b0`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.StructureSheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Spec.topObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topobj--22bde9f88cf0d28c4f6996e9.md) | 62 | `declaration-track:22bde9f88cf0d28c4f6996e9849af44f4a5bd372500cc53fbb9d1573af50f987` |
| 2 | `theorem` | [Spec.topObj_forget](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topobj-forget--e6e0d481efaf94c3721d5013.md) | 65 | `result-track:e6e0d481efaf94c3721d50131d8f40e6cc8667c41e0c3a19660ef92e2db5815c` |
| 3 | `def` | [Spec.topMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topmap--a5dd283184bd43d84d29cc31.md) | 70 | `declaration-track:a5dd283184bd43d84d29cc312c7d0d26ec9acd3088530ee20ed876f8fb206ff9` |
| 4 | `theorem` | [Spec.topMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topmap-id--cc4a5467e3c677eccbebd577.md) | 74 | `result-track:cc4a5467e3c677eccbebd5773158db236d9af70571e1dd7b50f2380e91c3eb0a` |
| 5 | `theorem` | [Spec.topMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topmap-comp--871eb4bb69ddc644ca4f5c44.md) | 78 | `result-track:871eb4bb69ddc644ca4f5c4459b02579dbef8492103a55b4a3ceb26a21554c3d` |
| 6 | `def` | [Spec.toTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-totop--59643afeb5c6ea83ca3682af.md) | 87 | `declaration-track:59643afeb5c6ea83ca3682af1dcd34294264ce0ecda2fce650e8d7bef3c94381` |
| 7 | `def` | [Spec.sheafedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-sheafedspaceobj--92e6925d39024654f1eae007.md) | 94 | `declaration-track:92e6925d39024654f1eae007f344025fa261312ccbae22308b17b8c752f37298` |
| 8 | `def` | [Spec.sheafedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-sheafedspacemap--c83ae202d5b8083ce042d037.md) | 102 | `declaration-track:c83ae202d5b8083ce042d037514ac9ff4b04df6f623b92d0fe61e89847d78a26` |
| 9 | `theorem` | [Spec.sheafedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-sheafedspacemap-id--3b483abdedbdea06a8bd4a3c.md) | 111 | `result-track:3b483abdedbdea06a8bd4a3c11805929111621023801b79c5d449d3ceabc515e` |
| 10 | `theorem` | [Spec.sheafedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-sheafedspacemap-comp--381f4db179a6d3c90a6c20f7.md) | 120 | `result-track:381f4db179a6d3c90a6c20f7afef544661d333eeea32fcc215dfb6ac906d9bc3` |
| 11 | `def` | [Spec.toSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-tosheafedspace--b2218187b35ce0793068624a.md) | 135 | `declaration-track:b2218187b35ce0793068624abde97e4946902aae331467db64e457493f1ffd4c` |
| 12 | `def` | [Spec.toPresheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topresheafedspace--c4a87c3188011874c7ecf53a.md) | 142 | `declaration-track:c4a87c3188011874c7ecf53a40cf692cb5f915d247c2ac1785ce658cbfea6b3c` |
| 13 | `theorem` | [Spec.toPresheafedSpace_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topresheafedspace-obj--056a959756d82b636571e3f6.md) | 146 | `result-track:056a959756d82b636571e3f6fc1e416db0a1cd57d2a211030b0416d996a13dca` |
| 14 | `theorem` | [Spec.toPresheafedSpace_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topresheafedspace-obj-op--0f272594df5a0502d2724e5a.md) | 150 | `result-track:0f272594df5a0502d2724e5a4a8aa0f9c3f2fc5f8e64134c830461f2dfe07747` |
| 15 | `theorem` | [Spec.toPresheafedSpace_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topresheafedspace-map--a12a08e0b831e4e0c6a87501.md) | 155 | `result-track:a12a08e0b831e4e0c6a87501e711284d612e9d9180a130a7cfec5955d634b546` |
| 16 | `theorem` | [Spec.toPresheafedSpace_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-topresheafedspace-map-op--45a0fad44cf98d90dfcc866c.md) | 159 | `result-track:45a0fad44cf98d90dfcc866c7e28cfc0ae5e37bf5f7e9effc0a8fd222bd3c04c` |
| 17 | `theorem` | [Spec.basicOpen_hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-basicopen-hom-ext--ea25f7d96efb34af7c4b25ae.md) | 163 | `result-track:ea25f7d96efb34af7c4b25aee9fa54e4c223b80940fcd16c190ea99d7ea6a9fb` |
| 18 | `def` | [Spec.locallyRingedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-locallyringedspaceobj--f4f164134e227345fc0240d6.md) | 183 | `declaration-track:f4f164134e227345fc0240d6a0fed4157dc9f4017e378dbe71c8f25e81421c89` |
| 19 | `lemma` | [Spec.locallyRingedSpaceObj_sheaf](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-locallyringedspaceobj-sheaf--5155509c41d981cd057c436d.md) | 189 | `result-track:5155509c41d981cd057c436dfd92fc41ecdac1f6f266ce5d0b3c4523fa16070a` |
| 20 | `lemma` | [Spec.locallyRingedSpaceObj_sheaf'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-locallyringedspaceobj-sheaf--e4057b8a9dfc8e575360c7cd.md) | 192 | `result-track:e4057b8a9dfc8e575360c7cd0d8dfc5acbea427b82d85d42d06348216db486f6` |
| 21 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-locallyringedspaceobj-presheaf-map--bd39c065b3e90155f26aea20.md) | 195 | `result-track:bd39c065b3e90155f26aea208b3432d93b5f0d5cbb1cc5cec6e185aab4222ee2` |
| 22 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-locallyringedspaceobj-presheaf--3a322db26d09367980d77d84.md) | 199 | `result-track:3a322db26d09367980d77d848820c7d716a5afee4c95f1486142eeb7e52af4a0` |
| 23 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf_map'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-locallyringedspaceobj-presheaf-map--2fa07bdc15eabbf9845691e4.md) | 202 | `result-track:2fa07bdc15eabbf9845691e4b0b94c6c781f3ae80b856b5a293b677661f596c1` |
| 24 | `theorem` | [stalkMap_toStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/stalkmap-tostalk--e3aff700f6e510467d4ce6bd.md) | 207 | `result-track:e3aff700f6e510467d4ce6bde33e615ee4f52b45add1252add374deab7416a9d` |
| 25 | `theorem` | [localRingHom_comp_stalkIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/localringhom-comp-stalkiso--4b2c5adb44cdc6b39c11bec6.md) | 221 | `result-track:4b2c5adb44cdc6b39c11bec6d0d4affd817faf831acffae97d48139dcf44a0a2` |
| 26 | `theorem` | [localRingHom_comp_stalkIso_apply'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/localringhom-comp-stalkiso-apply--228c0c934854d6de1f61982a.md) | 237 | `result-track:228c0c934854d6de1f61982a4728c3465e0b6b3bf6e3e96b797c8bb866d09cb9` |
| 27 | `def` | [Spec.locallyRingedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-locallyringedspacemap--69e8f8b3d32b09aab01c40ff.md) | 248 | `declaration-track:69e8f8b3d32b09aab01c40ff85a1b920cf363ad548a9e051ae5fe3216280ef72` |
| 28 | `theorem` | [Spec.locallyRingedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-locallyringedspacemap-id--43f8088d457d1fe2ed4f7081.md) | 268 | `result-track:43f8088d457d1fe2ed4f7081676b0e9a46c73e6297dfc2bf7c2b9a70dcae9737` |
| 29 | `theorem` | [Spec.locallyRingedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-locallyringedspacemap-comp--5c84bf733ca68ae45fe74d1c.md) | 273 | `result-track:5c84bf733ca68ae45fe74d1ce430bef6b0638727e60e3c1a43617327d067e4ba` |
| 30 | `def` | [Spec.toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-tolocallyringedspace--e43c0efcc5dfad98c8d203b5.md) | 282 | `declaration-track:e43c0efcc5dfad98c8d203b5ba42f7b74bb70ee0c873ce755f3fd945e2174d73` |
| 31 | `def` | [toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/tospec--fcf72fd37bf37ae5dc8706a2.md) | 293 | `declaration-track:fcf72fd37bf37ae5dc8706a28ffeaae76a437373c684790a69f30471402eff5a` |
| 32 | `instance` | [isIso_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/isiso-tospec--83534199964fa50aec1af630.md) | 296 | `declaration-track:83534199964fa50aec1af63019b69c463796661f643495af00fb3d690aa7d94d` |
| 33 | `theorem` | [Spec_Γ_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-naturality--78b19bead10a131efe54a926.md) | 300 | `result-track:78b19bead10a131efe54a92625e9727b1042957d3bc2ae23a75c7f65e1e0a4eb` |
| 34 | `def` | [LocallyRingedSpace.SpecΓIdentity](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/locallyringedspace-spec-identity--ba1346ced4e40c2fbdc5de12.md) | 309 | `declaration-track:ba1346ced4e40c2fbdc5de128ab29645e3879d32a7eb6f0ee6335d77dbd71392` |
| 35 | `theorem` | [Spec_map_localization_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/spec-map-localization-isiso--fa4ed288d96aad832dc5e5b9.md) | 318 | `result-track:fa4ed288d96aad832dc5e5b9974455100f6bbbb67da5271e0c056fd53a0e48a4` |
| 36 | `def` | [toPushforwardStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/topushforwardstalk--225cd45b98c2e53b0f26fae1.md) | 341 | `declaration-track:225cd45b98c2e53b0f26fae11b76acb69f8dbb79aa2f110b527cfac77c6b78d9` |
| 37 | `theorem` | [toPushforwardStalk_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/topushforwardstalk-comp--f11354bd444a14d5ff31e30a.md) | 346 | `result-track:f11354bd444a14d5ff31e30a083e93962bdbb39d75c3bc0b0c6677f8a8599c4a` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/instance--03008790b6572c053e8e2ed1.md) | 353 | `declaration-track:03008790b6572c053e8e2ed1813c57731dd562558f2c0e215a5d82863266219c` |
| 39 | `theorem` | [algebraMap_pushforward_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/algebramap-pushforward-stalk--7a1d53fcdfda2f96e83c19a4.md) | 356 | `result-track:7a1d53fcdfda2f96e83c19a4dc0483dc9394f2130eac27eec7f50d8eb7c8e9bc` |
| 40 | `def` | [toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/topushforwardstalkalghom--e35afbdb34c07a005d8e44df.md) | 369 | `declaration-track:e35afbdb34c07a005d8e44df1520cdcd1ecab91713f3b3ba52ef3adc5b16baca` |
| 41 | `theorem` | [isLocalizedModule_toPushforwardStalkAlgHom_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/islocalizedmodule-topushforwardstalkalghom-aux--00d67e2c293ed63111704a8c.md) | 374 | `result-track:00d67e2c293ed63111704a8c442431d3146c4abce8555d66111c4350070ecc47` |
| 42 | `instance` | [isLocalizedModule_toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/declarations/islocalizedmodule-topushforwardstalkalghom--8778a2697600e9c5583e8974.md) | 406 | `declaration-track:8778a2697600e9c5583e8974dda62ea03cb59af9862a696399121dd2a18f8784` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
