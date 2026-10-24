# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Gluing.Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7afa24fe0a6ae7c2a7a42182bdb3b9fa30424220",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7afa24fe0a6ae7c2a7a42182bdb3b9fa30424220`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Gluing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.OpenImmersion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace.HasColimits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/gluedata--ef56bd2029bc7b1cf982637e.md) | 93 | `declaration-track:ef56bd2029bc7b1cf982637e81c3ba4908c2ad148ce2e85ac5aa75cfd08b3731` |
| 2 | `abbrev` | [toTopGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/totopgluedata--5f83e9f1bd5905d2ca3fe9c2.md) | 118 | `declaration-track:5f83e9f1bd5905d2ca3fe9c22067a44e355e1cac442eaf5ee2be2c809f722250` |
| 3 | `theorem` | [ι_isOpenEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/isopenembedding--417f90ee4abe91f38288b731.md) | 122 | `result-track:417f90ee4abe91f38288b7316bf9bde5966d8e71236ac13bed2d8a8a11aa626f` |
| 4 | `theorem` | [pullback_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/pullback-base--1a4298c00a7d5fee0d6076c0.md) | 127 | `result-track:1a4298c00a7d5fee0d6076c06d529f0224af068e24eecad18591e2ea2325ee02` |
| 5 | `theorem` | [f_invApp_f_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/f-invapp-f-app--c66d25f50fee02f874eb026f.md) | 139 | `result-track:c66d25f50fee02f874eb026f33fc4be761f277ebb89b7ad7fe5888c60b79dbc1` |
| 6 | `theorem` | [snd_invApp_t_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/snd-invapp-t-app--c081d838eb1d009324d89d04.md) | 167 | `result-track:c081d838eb1d009324d89d04bca03f9877b30f88cecdd36b5e741cb99dc57e20` |
| 7 | `theorem` | [snd_invApp_t_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/snd-invapp-t-app--8cf64fe4065adafce5911033.md) | 217 | `result-track:8cf64fe4065adafce591103310b043b0d02175ceb10742be5930ad08e25dea4e` |
| 8 | `theorem` | [ι_image_preimage_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/image-preimage-eq--96c5c89630b2eae578e6b4c9.md) | 229 | `result-track:96c5c89630b2eae578e6b4c96f28a189a0e7c54e70c3a3917c9a9f9eb303570b` |
| 9 | `def` | [opensImagePreimageMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/opensimagepreimagemap--c7a390917ceeafc06e63369c.md) | 255 | `declaration-track:c7a390917ceeafc06e63369c5ee183b130cb69d26be5454148294c168b37f177` |
| 10 | `theorem` | [opensImagePreimageMap_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/opensimagepreimagemap-app--f438f15b4bf6988df9dd2e92.md) | 264 | `result-track:f438f15b4bf6988df9dd2e92835a5609001490033c69fbfa1f5e111f73d44f33` |
| 11 | `theorem` | [opensImagePreimageMap_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/opensimagepreimagemap-app--fd87024401bdc82175d05978.md) | 282 | `result-track:fd87024401bdc82175d05978401cc77d46b095d83951c2626afa7d018a7aa536` |
| 12 | `theorem` | [opensImagePreimageMap_app_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/opensimagepreimagemap-app-assoc--22280864b01cf2f1145b4e06.md) | 290 | `result-track:22280864b01cf2f1145b4e069d4d67565133b2cd7628e05497491b01e17c296b` |
| 13 | `abbrev` | [diagramOverOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/diagramoveropen--f08abd821e48e9a6cbf120be.md) | 301 | `declaration-track:f08abd821e48e9a6cbf120be990fcf4abe39843f7ecf6e16e7857cb8fe60acd1` |
| 14 | `abbrev` | [diagramOverOpenπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/diagramoveropen--15585fb47c71cd95fde2d613.md) | 308 | `declaration-track:15585fb47c71cd95fde2d6139f1e47d161a9faf847d3c229c61d5a0cc7289d11` |
| 15 | `def` | [ιInvAppπApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/invapp-app--061c99245d424227cfbf994f.md) | 313 | `declaration-track:061c99245d424227cfbf994f4042a371ed4c1a1b8bab33e7b4ecce9db5e0bc9d` |
| 16 | `def` | [ιInvApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/invapp--bb8b3767df4dd67de0c5efae.md) | 335 | `declaration-track:bb8b3767df4dd67de0c5efaedace9671559affdef139d7b4707688fc9f1fba4a` |
| 17 | `theorem` | [ιInvApp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/invapp--d1c8bbfd795fd5bb447404d3.md) | 388 | `result-track:d1c8bbfd795fd5bb447404d383627ebb190ee3aac454067168f5b6bbe0c701da` |
| 18 | `abbrev` | [ιInvAppπEqMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/invapp-eqmap--763eed29e2c7d4b99e73064f.md) | 420 | `declaration-track:763eed29e2c7d4b99e73064f5a551933911162f890fd632ee4a5662602525cff` |
| 19 | `theorem` | [π_ιInvApp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/invapp--b2837cc73281d10f349f7aa3.md) | 424 | `result-track:b2837cc73281d10f349f7aa3bee0216fc9e9b91888f3b4ce521045bd1e60411b` |
| 20 | `theorem` | [π_ιInvApp_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/invapp-eq-id--2ba98885fbd55ab4a985edda.md) | 458 | `result-track:2ba98885fbd55ab4a985edda05d48f132cfbfeb4b2f702fc36060da93eb8cb51` |
| 21 | `instance` | [componentwise_diagram_π_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/componentwise-diagram-isiso--6f8c6bc9497e60679d04706b.md) | 473 | `declaration-track:6f8c6bc9497e60679d04706be9ea74bbf37b2d08837e1d28bfe4688676f8f985` |
| 22 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/isopenimmersion--ad4cafc7c3037525c25a1659.md) | 481 | `declaration-track:ad4cafc7c3037525c25a165930e05b47b8906c9d05fd92ba24784ed12a8ca604` |
| 23 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/vpullbackconeislimit--0ac300c6c313e061c71b9495.md) | 492 | `declaration-track:0ac300c6c313e061c71b9495add244b7667a164bd26363d0960660230f6c367a` |
| 24 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/jointly-surjective--a3321da70fd37a851f66e864.md) | 517 | `result-track:a3321da70fd37a851f66e864a98ead792bde335db4a836847cb254fb16e8a584` |
| 25 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/gluedata--45477c8d1177ad3862ec121b.md) | 544 | `declaration-track:45477c8d1177ad3862ec121bcbe2208d812741512874486c4da29e1e6b2cdee7` |
| 26 | `abbrev` | [toPresheafedSpaceGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/topresheafedspacegluedata--edb863fb43ec852be7901b1b.md) | 557 | `declaration-track:edb863fb43ec852be7901b1b9ded1e8d83c3a75afc32e65fa455c30f45291114` |
| 27 | `abbrev` | [isoPresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/isopresheafedspace--43b157b6627e154c8c3511ed.md) | 564 | `declaration-track:43b157b6627e154c8c3511eddfc12fc761d2baa9d74535991968efeb17b1646f` |
| 28 | `theorem` | [ι_isoPresheafedSpace_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/isopresheafedspace-inv--e288b8489870014c8ef77f79.md) | 568 | `result-track:e288b8489870014c8ef77f7914cdd94ab3da5b65278a32e8177e2a33c1741741` |
| 29 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/isopenimmersion--2c7f0d7d0989367a3e91ea88.md) | 572 | `declaration-track:2c7f0d7d0989367a3e91ea880c9d2f156a22ab5d6dc7895de089361153c204f6` |
| 30 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/jointly-surjective--b48d5c0d55276a1c2928a6ce.md) | 577 | `result-track:b48d5c0d55276a1c2928a6ced1053cae522c6a30a2ac5cbfdb88b5a11b7f4ee0` |
| 31 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/vpullbackconeislimit--5d37e27b5a449d33779504ff.md) | 587 | `declaration-track:5d37e27b5a449d33779504ffb2ef08edcc66dc0de0a647198ea8c82170ef1539` |
| 32 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/gluedata--1e2985317f992832004630ad.md) | 615 | `declaration-track:1e2985317f992832004630adae977cd8a17e98fef9c92b99767b61521eee15e4` |
| 33 | `abbrev` | [toSheafedSpaceGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/tosheafedspacegluedata--5a0a2fe5d19264a21939a78d.md) | 627 | `declaration-track:5a0a2fe5d19264a21939a78dab8c7213bc480ef70a585c2894a9260ce84367a3` |
| 34 | `abbrev` | [isoSheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/isosheafedspace--0c48520d8a2fd8e33190c0a2.md) | 632 | `declaration-track:0c48520d8a2fd8e33190c0a2685dc8b4b17d6a842d2aa55476c3c17351f8ad43` |
| 35 | `theorem` | [ι_isoSheafedSpace_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/isosheafedspace-inv--d63537e70f1fa7a664ee96b0.md) | 635 | `result-track:d63537e70f1fa7a664ee96b0dbc4f5019a5d32615bff80bd20c1277d1876ffe5` |
| 36 | `instance` | [ι_isOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/isopenimmersion--eb6e346cf6ed580af1940ce4.md) | 639 | `declaration-track:eb6e346cf6ed580af1940ce4bb81f0d777ec42d78fe3e45bdc7e8cdb7aedb177` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/instance--b9c7f357e37f2c90defb7112.md) | 645 | `declaration-track:b9c7f357e37f2c90defb7112a5bf708cdf7c45e65fb920f77b2948425ca46bf1` |
| 38 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/jointly-surjective--001b4ce03a0a1ea69d24b945.md) | 648 | `result-track:001b4ce03a0a1ea69d24b9452574ab893a3c906749d9e87092e5b83896ffa7e9` |
| 39 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant8b9e455c898d295db17947f607c194de2b73d2d8cb25947d96d0a5d29ca5183f.lean/declarations/vpullbackconeislimit--0b595768695f6669670be75a.md) | 660 | `declaration-track:0b595768695f6669670be75a0abdcb0e4f747362a28b9103ee86f7c393a03779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
