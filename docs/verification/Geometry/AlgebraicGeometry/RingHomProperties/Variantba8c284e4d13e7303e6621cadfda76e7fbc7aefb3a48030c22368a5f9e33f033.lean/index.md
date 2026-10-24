# Verification target: GRWTSK.Geometry.AlgebraicGeometry.RingHomProperties.Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RespectsIso.basicOpen_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/respectsiso-basicopen-iff--21f65e0cdf900a389c520ce8.md) | 47 | `result-track:21f65e0cdf900a389c520ce8f785dc7d986e75db0471d6f325ce325a60d7508a` |
| 2 | `theorem` | [RespectsIso.basicOpen_iff_localization](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/respectsiso-basicopen-iff-localization--648eeba01bf9a0aba8749ee3.md) | 72 | `result-track:648eeba01bf9a0aba8749ee30ffac43cdd4de2bb2dde09e3bd45a733b3dcf0b0` |
| 3 | `theorem` | [RespectsIso.ofRestrict_morphismRestrict_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/respectsiso-ofrestrict-morphismrestrict-iff--5703cf194675d1f478d00e80.md) | 84 | `result-track:5703cf194675d1f478d00e8025997e94df11a3a6fc3e9bdda24346e5f18de706` |
| 4 | `theorem` | [StableUnderBaseChange.Γ_pullback_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/stableunderbasechange-pullback-fst--4273f5f6008f4d6be87fa434.md) | 141 | `result-track:4273f5f6008f4d6be87fa43435653b5bfc1a0a4c2ad158da30107cf348d6f2af` |
| 5 | `def` | [sourceAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/sourceaffinelocally--60767ea2d3fcd0826bcc0b0a.md) | 168 | `declaration-track:60767ea2d3fcd0826bcc0b0ae140509f61703bdf56e1aca9a248cfafc50a0179` |
| 6 | `abbrev` | [affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/affinelocally--cd15c082f9977e525fd9489c.md) | 175 | `declaration-track:cd15c082f9977e525fd9489c7c7bac11c60f18b9e64afbff2464cb83e49142dd` |
| 7 | `theorem` | [sourceAffineLocally_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/sourceaffinelocally-respectsiso--102fd1babf0486df83959ab5.md) | 181 | `result-track:102fd1babf0486df83959ab5dc36658adc13a25305491185f367d8059e438f3a` |
| 8 | `theorem` | [affineLocally_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/affinelocally-respectsiso--7ea759ab571d42133b4b86bf.md) | 199 | `result-track:7ea759ab571d42133b4b86bf8b30d57479800ed6fb1c289112269de69c73f539` |
| 9 | `theorem` | [affineLocally_iff_affineOpens_le](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/affinelocally-iff-affineopens-le--3c6e18c181b98170b07d3673.md) | 203 | `result-track:3c6e18c181b98170b07d3673d2c791d07c881499090fad640794aaab038e3078` |
| 10 | `theorem` | [scheme_restrict_basicOpen_of_localizationPreserves](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/scheme-restrict-basicopen-of-localizationpreserves--abe23ca22300ee509eb3ee42.md) | 242 | `result-track:abe23ca22300ee509eb3ee426a84b0b240ef9cd3465f018c3e19fa36bf3efa8b` |
| 11 | `theorem` | [sourceAffineLocally_isLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/sourceaffinelocally-islocal--18785c8840addfb84e5f6746.md) | 259 | `result-track:18785c8840addfb84e5f674697029a247abfb41022a799325e4b3b20943fee79` |
| 12 | `theorem` | [sourceAffineLocally_of_source_open_cover_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/sourceaffinelocally-of-source-open-cover-aux--4be73f6cba92a1985cda1521.md) | 287 | `result-track:4be73f6cba92a1985cda1521044bb1eab19f249c0338cb95abd40d5dd2b1e93d` |
| 13 | `theorem` | [isOpenImmersionCat_comp_of_sourceAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/isopenimmersioncat-comp-of-sourceaffinelocally--e90095c1715089e5055b0ca9.md) | 330 | `result-track:e90095c1715089e5055b0ca9711dc22159caab6926e7c6cabea0c55677e6e4f0` |
| 14 | `theorem` | [sourceAffineLocally_of_source_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/sourceaffinelocally-of-source-opencover--34d9c4461ce067f580b33bd6.md) | 349 | `result-track:34d9c4461ce067f580b33bd6e165df0be16ae409c970a16d200608cabbed9ba6` |
| 15 | `theorem` | [affine_openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/affine-opencover-tfae--cc1b520246a4abbc7bc603a5.md) | 411 | `result-track:cc1b520246a4abbc7bc603a5d0d9d049e83fbc99df70478c32f196af277eb192` |
| 16 | `theorem` | [openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/opencover-tfae--c54bf4aa1b011500c7c318fc.md) | 440 | `result-track:c54bf4aa1b011500c7c318fc4d9c2853c8764bb82964c1a9f3de0ed07d3c6207` |
| 17 | `theorem` | [sourceAffineLocally_comp_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/sourceaffinelocally-comp-of-isopenimmersion--1f217ef714394db495b12612.md) | 483 | `result-track:1f217ef714394db495b12612753b9ddfb6d1a8ad7fe7be68a5796cd44e8c54a3` |
| 18 | `theorem` | [source_affine_openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/source-affine-opencover-iff--9178f85ec22b17551e7c002a.md) | 491 | `result-track:9178f85ec22b17551e7c002aba168c88eee55157c8cc7ce7680baf5a4f12b7dd` |
| 19 | `theorem` | [isLocal_sourceAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/islocal-sourceaffinelocally--693e7e54f89b00d3322d4217.md) | 506 | `result-track:693e7e54f89b00d3322d4217dd684b0e487c4014f0a06c85f4e8618cbe259479` |
| 20 | `theorem` | [is_local_affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/is-local-affinelocally--c6fa844a4229b8dbca3a7818.md) | 511 | `result-track:c6fa844a4229b8dbca3a78187dfbc5314de9660794b245c717300e7ae915b3c9` |
| 21 | `theorem` | [affine_openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/affine-opencover-iff--692018d6eedbbadd1be65cfd.md) | 515 | `result-track:692018d6eedbbadd1be65cfd13276ad4da6b4dd48b207ae115c3068f7d10c7ea` |
| 22 | `theorem` | [source_openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/source-opencover-iff--d4e841e1aec44ab40c78e2e2.md) | 525 | `result-track:d4e841e1aec44ab40c78e2e2202bf4b7156b9ebe8ad65c81eaa85f8c8479f36e` |
| 23 | `theorem` | [affineLocally_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/affinelocally-of-isopenimmersion--71fb1ddb0b51edebb98d167c.md) | 553 | `result-track:71fb1ddb0b51edebb98d167cf49ff9a50f1498449894d8f16faf2d8fbcbe9170` |
| 24 | `theorem` | [affineLocally_of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/affinelocally-of-comp--0750d07f6697cfb2d0cea58c.md) | 580 | `result-track:0750d07f6697cfb2d0cea58ce58d62ac0d8c4014c950aa61aa649ab0ad3187df` |
| 25 | `theorem` | [affineLocally_stableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/declarations/affinelocally-stableundercomposition--a10eee774f2ab8dcfb4185b0.md) | 619 | `result-track:a10eee774f2ab8dcfb4185b06d1419f1db6b3e6a3b59757b33f6100f501ff53f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
