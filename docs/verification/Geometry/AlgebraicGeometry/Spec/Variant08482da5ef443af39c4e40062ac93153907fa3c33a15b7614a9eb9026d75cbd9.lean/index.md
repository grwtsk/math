# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Spec.Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18230a358725ee8a60d2fe0f6956d80bfcf2184d",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18230a358725ee8a60d2fe0f6956d80bfcf2184d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean.json)

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
| 1 | `def` | [Spec.topObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topobj--6de654b846b2cc3e3c8a82b4.md) | 58 | `declaration-track:6de654b846b2cc3e3c8a82b4d0967407c3b78312f9b5a9a2a4fd9a7731f442e8` |
| 2 | `theorem` | [Spec.topObj_forget](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topobj-forget--a06cdaebd1605db44b458c1a.md) | 61 | `result-track:a06cdaebd1605db44b458c1a4c01329567a46d25202d1dc2fe9b85db462bfdba` |
| 3 | `def` | [Spec.topMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topmap--c7a0650d61b0cfc19c9cf7cf.md) | 66 | `declaration-track:c7a0650d61b0cfc19c9cf7cf819f00de7e625e905b3e120aeff3ea1d9254049f` |
| 4 | `theorem` | [Spec.topMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topmap-id--15347a6dd760d7f1a82bdd12.md) | 70 | `result-track:15347a6dd760d7f1a82bdd12329ab4ba270556b550a879b7ad054ade5a3c67e6` |
| 5 | `theorem` | [Spec.topMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topmap-comp--e3872796641d93569f762231.md) | 74 | `result-track:e3872796641d93569f7622313c662e1f5b81a32e03ff61bd1780317812c6fce5` |
| 6 | `def` | [Spec.toTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-totop--c769ba721c1312a39dcb6514.md) | 83 | `declaration-track:c769ba721c1312a39dcb6514f44f6ea140d955808974f0c5e5d0595e57bc68f6` |
| 7 | `def` | [Spec.sheafedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-sheafedspaceobj--a60b83adbd993f7a461e4dac.md) | 90 | `declaration-track:a60b83adbd993f7a461e4dac97929b63c7d96fc2232f1211d9dfe12703a481cf` |
| 8 | `def` | [Spec.sheafedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-sheafedspacemap--095bfba3d2bc2c89bed11d92.md) | 99 | `declaration-track:095bfba3d2bc2c89bed11d92ca9e2d88414b3679892037bfe79efd37b278db7c` |
| 9 | `theorem` | [Spec.sheafedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-sheafedspacemap-id--979e829f79003a2a397665ff.md) | 110 | `result-track:979e829f79003a2a397665fff7d4118ff4f03714c84d3a5c8b8534a88266ee68` |
| 10 | `theorem` | [Spec.sheafedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-sheafedspacemap-comp--abab1b585201172b84a2a449.md) | 121 | `result-track:abab1b585201172b84a2a449361e62d8d623418aefd38d8307a0f6bcebb9cdb9` |
| 11 | `def` | [Spec.toSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-tosheafedspace--f0af3a0510fdac0a8be205e0.md) | 137 | `declaration-track:f0af3a0510fdac0a8be205e04db3899cc177aa450c96f97c6dad2fbedd211f3d` |
| 12 | `def` | [Spec.toPresheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topresheafedspace--f9a0205ae2fa984066af3026.md) | 144 | `declaration-track:f9a0205ae2fa984066af3026ce161f382578e959eb51882dbe7309a6b837c382` |
| 13 | `theorem` | [Spec.toPresheafedSpace_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topresheafedspace-obj--28f79737afcdb9312d492633.md) | 148 | `result-track:28f79737afcdb9312d492633df1fb1b9fd1d38c3e97373a7346df4571397d8ab` |
| 14 | `theorem` | [Spec.toPresheafedSpace_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topresheafedspace-obj-op--9c9a8bedecd4dc7cefb92d9d.md) | 152 | `result-track:9c9a8bedecd4dc7cefb92d9d7d954719681ca103a8aff40291a12131f220f8ef` |
| 15 | `theorem` | [Spec.toPresheafedSpace_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topresheafedspace-map--3df26a61c50f41142e2b3e3c.md) | 157 | `result-track:3df26a61c50f41142e2b3e3c10c522c15258eb1196b6cabdc0ce0a4c9229b4e2` |
| 16 | `theorem` | [Spec.toPresheafedSpace_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-topresheafedspace-map-op--c759c7fe7c24f96eefe93990.md) | 161 | `result-track:c759c7fe7c24f96eefe9399001255ba8548de5767666afda9662d91cee1348ac` |
| 17 | `theorem` | [Spec.basicOpen_hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-basicopen-hom-ext--85fb27c1e90871e7242019cc.md) | 166 | `result-track:85fb27c1e90871e7242019ccc0d94479ffbd3f0fa360b6e87e2540b52f58c0ae` |
| 18 | `def` | [Spec.locallyRingedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-locallyringedspaceobj--ebd48bd459940d4d3ca4e789.md) | 187 | `declaration-track:ebd48bd459940d4d3ca4e789388900a10b58911d87a28b125e9756ac187d5c86` |
| 19 | `lemma` | [Spec.locallyRingedSpaceObj_sheaf](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-locallyringedspaceobj-sheaf--b9de3019615ad5c546425117.md) | 191 | `result-track:b9de3019615ad5c546425117a600eb2abf8deafd8b8d7eeca276d6cf10e693a6` |
| 20 | `lemma` | [Spec.locallyRingedSpaceObj_sheaf'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-locallyringedspaceobj-sheaf--fc388eb865477e34b90151f2.md) | 194 | `result-track:fc388eb865477e34b90151f2582c06985695c29b6ebfb1355c7281b37231d825` |
| 21 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-locallyringedspaceobj-presheaf-map--4e16254f33b94daa89549589.md) | 197 | `result-track:4e16254f33b94daa895495898a9d657f6bf266ad92441b1daad7ceb03b878171` |
| 22 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-locallyringedspaceobj-presheaf--2ba384974aeeab8cd1cf5db2.md) | 201 | `result-track:2ba384974aeeab8cd1cf5db27e553f4943cc83f839856651aa7f63d58fb99845` |
| 23 | `lemma` | [Spec.locallyRingedSpaceObj_presheaf_map'](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-locallyringedspaceobj-presheaf-map--e5d3dd6ccc40adacd01afae2.md) | 204 | `result-track:e5d3dd6ccc40adacd01afae2fa11d73c6ef8acc67b59265c232d141d0e1e7128` |
| 24 | `theorem` | [stalkMap_toStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/stalkmap-tostalk--34c2d45cef28d2f550702194.md) | 210 | `result-track:34c2d45cef28d2f55070219434b4ee400a411653c3725c0499e5cdff648d93f6` |
| 25 | `theorem` | [localRingHom_comp_stalkIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/localringhom-comp-stalkiso--45481510d8c1c610261ae0f7.md) | 226 | `result-track:45481510d8c1c610261ae0f75fb3708b4bf3c322c453e0609ac35fc59cd82c19` |
| 26 | `def` | [Spec.locallyRingedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-locallyringedspacemap--44944b006a55b3ff7138819a.md) | 244 | `declaration-track:44944b006a55b3ff7138819acee7ff847d446ce776b5381f5dcfce0922eac2f5` |
| 27 | `theorem` | [Spec.locallyRingedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-locallyringedspacemap-id--31eeb2455e82dea059cc507c.md) | 255 | `result-track:31eeb2455e82dea059cc507ce0ef67fcde47a7339b2c5c80888805947f00bb55` |
| 28 | `theorem` | [Spec.locallyRingedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-locallyringedspacemap-comp--352ce5ae8e3d9becf6878e7d.md) | 260 | `result-track:352ce5ae8e3d9becf6878e7d4bdd4ad8fb93180601ba9a49819a1e85c93610da` |
| 29 | `def` | [Spec.toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-tolocallyringedspace--d47c82f5a71c6156f74a0ea9.md) | 269 | `declaration-track:d47c82f5a71c6156f74a0ea9b11e70f5b340aa38c8574877932aaebabd405452` |
| 30 | `def` | [toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/tospec--fed066568a6e92272c12edb2.md) | 281 | `declaration-track:fed066568a6e92272c12edb254b3ecc8a70fab3625ca6368dab2ff3473a77f4c` |
| 31 | `instance` | [isIso_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/isiso-tospec--c4ce7616bdc4aa0387d2b4d3.md) | 284 | `declaration-track:c4ce7616bdc4aa0387d2b4d384a20ced9cd800ff59f3680d83a049f6c9ec819c` |
| 32 | `theorem` | [Spec_Γ_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/spec-naturality--e536d73b55642dd360193609.md) | 288 | `result-track:e536d73b55642dd360193609157aa61193bb6aa4bfec4e968c84bbb981b42d25` |
| 33 | `def` | [LocallyRingedSpace.SpecΓIdentity](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/locallyringedspace-spec-identity--2c4b65515e5643743ef5cd52.md) | 301 | `declaration-track:2c4b65515e5643743ef5cd529cfaf2d4d7ee6e8fc830a349c18555394cdf16b9` |
| 34 | `theorem` | [isIso_SpecMap_stakMap_localization](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/isiso-specmap-stakmap-localization--2b62fcd863868f8c105895a3.md) | 309 | `result-track:2b62fcd863868f8c105895a398f4751f4b29e05df3b22acd71cef0a36458e91f` |
| 35 | `def` | [toPushforwardStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/topushforwardstalk--c4d9661073656b6457ffa1ce.md) | 333 | `declaration-track:c4d9661073656b6457ffa1ced208dbcf28cb60e23734e85f6e6ca5079c34bba5` |
| 36 | `theorem` | [toPushforwardStalk_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/topushforwardstalk-comp--05e3f4e1d8268fa30c0c7e44.md) | 339 | `result-track:05e3f4e1d8268fa30c0c7e440e5860e12b55a4c8ff395d334723043c5d4e5874` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/instance--e0b7227ea3b9014d12c1c97b.md) | 346 | `declaration-track:e0b7227ea3b9014d12c1c97b85d45868e56fa970f230a9329314dee385724183` |
| 38 | `theorem` | [algebraMap_pushforward_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/algebramap-pushforward-stalk--ddd9e408c203549b26593c86.md) | 349 | `result-track:ddd9e408c203549b26593c86186d3e72dfca567825f854ee29553206065091b5` |
| 39 | `def` | [toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/topushforwardstalkalghom--813c227c40423cbfa2695f26.md) | 362 | `declaration-track:813c227c40423cbfa2695f26d6ac8b56d2dde3cd22f5af8ae1437bdbc029e946` |
| 40 | `theorem` | [isLocalizedModule_toPushforwardStalkAlgHom_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/islocalizedmodule-topushforwardstalkalghom-aux--d8da5672ead2075048dc82bf.md) | 368 | `result-track:d8da5672ead2075048dc82bfafda52dde5620d238bb106bae504418c46a884ba` |
| 41 | `instance` | [isLocalizedModule_toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/declarations/islocalizedmodule-topushforwardstalkalghom--24e0a4ca218fc7300803849f.md) | 401 | `declaration-track:24e0a4ca218fc7300803849f77ed10aa940949c16e788907da45adfe731cc833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
