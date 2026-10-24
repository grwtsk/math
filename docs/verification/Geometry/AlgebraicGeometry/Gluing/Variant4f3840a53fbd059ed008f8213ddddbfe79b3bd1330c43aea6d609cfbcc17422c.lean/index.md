# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Gluing.Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a985a4acd24189fa486ee61ddfb20ac6433bb3b9",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a985a4acd24189fa486ee61ddfb20ac6433bb3b9`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Gluing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.OpenImmersion.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.LocallyRingedSpace.HasColimits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/gluedata--0b60ae20a009d50c1aa488e3.md) | 96 | `declaration-track:0b60ae20a009d50c1aa488e3da23e971dacb7da336f6c1d8c822bd88ed2e08aa` |
| 2 | `abbrev` | [toTopGlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/totopgluedata--632aabada2d80d864f51ae85.md) | 122 | `declaration-track:632aabada2d80d864f51ae851b089627c470b202d35e879a809da2e79d49137c` |
| 3 | `theorem` | [ι_openEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/openembedding--ee1175d5eb1c0b88dcf97589.md) | 127 | `result-track:ee1175d5eb1c0b88dcf97589299ccf7c03f0cafe9c8c18c12f92863accd06ff2` |
| 4 | `theorem` | [pullback_base](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/pullback-base--295bbeec2a767c6b6a24ca33.md) | 137 | `result-track:295bbeec2a767c6b6a24ca33928b8e403d8f988f842525fae1196b87207f5420` |
| 5 | `theorem` | [f_invApp_f_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/f-invapp-f-app--7d3d17b257251cfe24393de2.md) | 155 | `result-track:7d3d17b257251cfe24393de2cc79cba71aeb58522be3304f1eab21d2d2adf4a3` |
| 6 | `theorem` | [snd_invApp_t_app'](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/snd-invapp-t-app--45b7235d9cab614673fd2b45.md) | 184 | `result-track:45b7235d9cab614673fd2b457212e1e255956ae922d4182026e11a1221bdff18` |
| 7 | `theorem` | [snd_invApp_t_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/snd-invapp-t-app--14c3dde7b8bf82ab16ceced9.md) | 233 | `result-track:14c3dde7b8bf82ab16ceced9b299a71e42c05d5dccded515e08369c6370ceb51` |
| 8 | `theorem` | [ι_image_preimage_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/image-preimage-eq--494a91e2abff3ed4f1007276.md) | 246 | `result-track:494a91e2abff3ed4f10072769e7b4d19388db02efa77c1022bc447889cd772a0` |
| 9 | `def` | [opensImagePreimageMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/opensimagepreimagemap--979c1b5ca00344e422428e0d.md) | 273 | `declaration-track:979c1b5ca00344e422428e0d70bdadf8c4fcf7430ac0785de7a422f17842ffe3` |
| 10 | `theorem` | [opensImagePreimageMap_app'](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/opensimagepreimagemap-app--6d2d74663946b6d49e41c818.md) | 283 | `result-track:6d2d74663946b6d49e41c818166cca0ae294737228fa3166ad4b3a5be683fa12` |
| 11 | `theorem` | [opensImagePreimageMap_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/opensimagepreimagemap-app--158f05b7fa4797ccc6650bb1.md) | 302 | `result-track:158f05b7fa4797ccc6650bb199849bb30fa92d206c56b93b72e4bfa442a430ae` |
| 12 | `theorem` | [opensImagePreimageMap_app_assoc](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/opensimagepreimagemap-app-assoc--0d44fb928c008986d5e3c9c8.md) | 311 | `result-track:0d44fb928c008986d5e3c9c8b430bc908268017b79751156ec2266d9a60ec22b` |
| 13 | `abbrev` | [diagramOverOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/diagramoveropen--a6fe5b726947c8e79fb51eed.md) | 323 | `declaration-track:a6fe5b726947c8e79fb51eedde38fb790ee93066e2f55df2ef51ab17ab4110dd` |
| 14 | `abbrev` | [diagramOverOpenπ](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/diagramoveropen--764811cfc13a880b2fd60797.md) | 331 | `declaration-track:764811cfc13a880b2fd607979a02f6d6206ae3941271b9b39a6818a1770c0a56` |
| 15 | `def` | [ιInvAppπApp](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/invapp-app--0a13ba1e92200a092516201c.md) | 337 | `declaration-track:0a13ba1e92200a092516201c6e344c306637dd2f06163bfcca7bec09b95ad8c5` |
| 16 | `def` | [ιInvApp](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/invapp--445e65a36357f931e1fdb3f6.md) | 360 | `declaration-track:445e65a36357f931e1fdb3f6d5ef85e25ca4e0c132565cc34689a8e0a58855b7` |
| 17 | `theorem` | [ιInvApp_π](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/invapp--5bb9db3b77027c0d19be1bb4.md) | 413 | `result-track:5bb9db3b77027c0d19be1bb470849dd34dcf115cdc326f26e4a39a67a8f76e28` |
| 18 | `abbrev` | [ιInvAppπEqMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/invapp-eqmap--4394002f557801cd83eef0be.md) | 446 | `declaration-track:4394002f557801cd83eef0bedf5615db1e9fd6f6fa44f8754e8cd3d4c9047bed` |
| 19 | `theorem` | [π_ιInvApp_π](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/invapp--08e81fe219d717817d01d195.md) | 451 | `result-track:08e81fe219d717817d01d195eb6239bcea7bb42c1121d2dfbbe59c934f0d4431` |
| 20 | `theorem` | [π_ιInvApp_eq_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/invapp-eq-id--f1c64bea2416d12f341cc8d0.md) | 487 | `result-track:f1c64bea2416d12f341cc8d0fb5efda535c45ccd743eeec9f7d7af772a46a8f5` |
| 21 | `instance` | [componentwise_diagram_π_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/componentwise-diagram-isiso--e7079fd1f0d87e19b71c72be.md) | 503 | `declaration-track:e7079fd1f0d87e19b71c72be7a78f7800f75d4f6c7950d0a29845adbea16e6d1` |
| 22 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/isopenimmersion--fc3a6d9a8fc7bfd4129778b1.md) | 512 | `declaration-track:fc3a6d9a8fc7bfd4129778b1d2bf17c834e01f91b6fac03e54a336fb80efab10` |
| 23 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/vpullbackconeislimit--19d69324fadd571afc953f3a.md) | 524 | `declaration-track:19d69324fadd571afc953f3a4531a6e0fbd35cd0a687d433a2245333639add41` |
| 24 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/jointly-surjective--c601e05021442ee08211779f.md) | 550 | `result-track:c601e05021442ee08211779f260b3a18f5da18630e1e97a08283fd49a7f862b3` |
| 25 | `structure` | [GlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/gluedata--5dd15c404ecf204673acd446.md) | 582 | `declaration-track:5dd15c404ecf204673acd4467e06fba42782594a58e2d0ae61229d997b47e4ef` |
| 26 | `abbrev` | [toPresheafedSpaceGlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/topresheafedspacegluedata--85cba9ed94244d788764b97f.md) | 596 | `declaration-track:85cba9ed94244d788764b97f2e54cad71f02d03e0c11b24ba395dd670860c556` |
| 27 | `abbrev` | [isoPresheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/isopresheafedspace--a564ae954ff8b387f7d2344a.md) | 604 | `declaration-track:a564ae954ff8b387f7d2344ab66d3e551dbfb7b361daaf62d24b97479f6cd357` |
| 28 | `theorem` | [ι_isoPresheafedSpace_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/isopresheafedspace-inv--ee30fe860c70ab8f12aab39d.md) | 609 | `result-track:ee30fe860c70ab8f12aab39d250ee7a720b300bbe663b7eb0b2be468acf24217` |
| 29 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/isopenimmersion--b9f9ad073a3a80b86c48fc4f.md) | 614 | `declaration-track:b9f9ad073a3a80b86c48fc4f67af478fa82daa30be0f58dda3a57574bb9118e3` |
| 30 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/jointly-surjective--a0911a845a5347e02c142e9a.md) | 621 | `result-track:a0911a845a5347e02c142e9ad97a0203b3868c226d4b1ae5f494a15796bb6aa2` |
| 31 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/vpullbackconeislimit--9edfe802297cff516add0fef.md) | 632 | `declaration-track:9edfe802297cff516add0fef6cec5a6f13de3e05d55042793ba4ac47f3e502b3` |
| 32 | `structure` | [GlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/gluedata--d076938b76e1980c9a01c89e.md) | 663 | `declaration-track:d076938b76e1980c9a01c89e972bf6a16f57f71add120f095eb457908ab0a5c9` |
| 33 | `abbrev` | [toSheafedSpaceGlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/tosheafedspacegluedata--37c671c8f795effe8565144a.md) | 676 | `declaration-track:37c671c8f795effe8565144a87fe474adbf124949fb668ccab1fbe7645c49201` |
| 34 | `abbrev` | [isoSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/isosheafedspace--22938e462b00085bdf9ca0e9.md) | 682 | `declaration-track:22938e462b00085bdf9ca0e94f3c91dbde56c8734714661a16de439bbbb6bdd5` |
| 35 | `theorem` | [ι_isoSheafedSpace_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/isosheafedspace-inv--fb54fed592155b947c490027.md) | 686 | `result-track:fb54fed592155b947c49002735c5b019a4dc2be946f688a8d5dfcb680d74d341` |
| 36 | `instance` | [ι_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/isopenimmersion--22446c5ecf099e955211c771.md) | 691 | `declaration-track:22446c5ecf099e955211c7713a3141725db00030b916711729fc0a8532c69b41` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/instance--f8379e09679bbbac52769f98.md) | 698 | `declaration-track:f8379e09679bbbac52769f98d04d35eef65568ad1dc01e89183736b5eb7567f1` |
| 38 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/jointly-surjective--34a3f7b2cf66c58fc6678be9.md) | 701 | `result-track:34a3f7b2cf66c58fc6678be96caa6889468f9a5abac7900f4b39c8dabcbe9408` |
| 39 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean/declarations/vpullbackconeislimit--59ae5001231e59cad8e86fff.md) | 714 | `declaration-track:59ae5001231e59cad8e86fff5dc7afe1c350d264448657eb656ba6a3a0836bfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
