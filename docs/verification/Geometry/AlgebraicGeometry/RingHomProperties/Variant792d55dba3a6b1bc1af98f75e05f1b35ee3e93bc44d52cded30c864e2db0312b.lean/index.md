# Verification target: GRWTSK.Geometry.AlgebraicGeometry.RingHomProperties.Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "653ea3160ced1b0792ac93326eb237d91538f8c7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `653ea3160ced1b0792ac93326eb237d91538f8c7`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RespectsIso.basicOpen_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/respectsiso-basicopen-iff--41dba2655c8ba288ae5defc0.md) | 55 | `result-track:41dba2655c8ba288ae5defc0a1f059d00007e565b2379693836865e32a1ea81f` |
| 2 | `theorem` | [RespectsIso.basicOpen_iff_localization](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/respectsiso-basicopen-iff-localization--40e7fdfc574385db68a55909.md) | 80 | `result-track:40e7fdfc574385db68a55909fcdb1348aecc6e1cf1e43c0361d53f0b487be6af` |
| 3 | `theorem` | [RespectsIso.ofRestrict_morphismRestrict_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/respectsiso-ofrestrict-morphismrestrict-iff--25da48134940a8c40bb1d97d.md) | 92 | `result-track:25da48134940a8c40bb1d97da44f7b3ee84e51350beeafe274059f4afe5fe3f7` |
| 4 | `theorem` | [StableUnderBaseChange.Γ_pullback_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/stableunderbasechange-pullback-fst--c52b5292929cc7e7a1e863d2.md) | 149 | `result-track:c52b5292929cc7e7a1e863d27f54cdd58d0c50504e4bb9ab2bbb70abbdb6b6b0` |
| 5 | `def` | [sourceAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/sourceaffinelocally--bd77f0bc6b5d64c1efd5f5ef.md) | 176 | `declaration-track:bd77f0bc6b5d64c1efd5f5ef5e74d0cec6bf2387900f1a95652ef694dc57e182` |
| 6 | `abbrev` | [affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/affinelocally--b1d46a201ceb540f702ff9a5.md) | 183 | `declaration-track:b1d46a201ceb540f702ff9a5384de1101fd3cfdfe37c6d96ba8b97285f17203d` |
| 7 | `theorem` | [sourceAffineLocally_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/sourceaffinelocally-respectsiso--cbb7761333c34bb583dac399.md) | 189 | `result-track:cbb7761333c34bb583dac399835fa4549ea3db2712519aa6b62a7043ffebcb54` |
| 8 | `theorem` | [affineLocally_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/affinelocally-respectsiso--4bc2a1f7580dcb6d0c432d75.md) | 207 | `result-track:4bc2a1f7580dcb6d0c432d75447977ad9c6c72f27a23fbca0686838636fd1faf` |
| 9 | `theorem` | [affineLocally_iff_affineOpens_le](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/affinelocally-iff-affineopens-le--815a4ac6396c10014e005a00.md) | 211 | `result-track:815a4ac6396c10014e005a0086cc98d50f40f15b5edc4f781ec22327a70274c8` |
| 10 | `theorem` | [scheme_restrict_basicOpen_of_localizationPreserves](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/scheme-restrict-basicopen-of-localizationpreserves--bdf759a2f6c9dc1e68b3a440.md) | 250 | `result-track:bdf759a2f6c9dc1e68b3a44032c2fe30d3bb2467b03aa14e7963d335d149c1c5` |
| 11 | `theorem` | [sourceAffineLocally_isLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/sourceaffinelocally-islocal--d8bf2915091f80ce7c40a6ad.md) | 267 | `result-track:d8bf2915091f80ce7c40a6ad9bfa59b9e86b271410d907056e08ed7c63f92d2b` |
| 12 | `theorem` | [sourceAffineLocally_of_source_open_cover_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/sourceaffinelocally-of-source-open-cover-aux--9b6b338946622cacd446b5f3.md) | 295 | `result-track:9b6b338946622cacd446b5f3e3dcd01e238188cbfe0553dc04f06518ca40cc34` |
| 13 | `theorem` | [isOpenImmersionCat_comp_of_sourceAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/isopenimmersioncat-comp-of-sourceaffinelocally--d1c854dc0af7004d8299964d.md) | 338 | `result-track:d1c854dc0af7004d8299964d1c7b5f76343d899d26bacdee7002fddc0bdfa453` |
| 14 | `theorem` | [sourceAffineLocally_of_source_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/sourceaffinelocally-of-source-opencover--ab9f33fb1ac9995d9c8539d9.md) | 357 | `result-track:ab9f33fb1ac9995d9c8539d957121402147abbb51413dc60e4d64aa4f9a18069` |
| 15 | `theorem` | [affine_openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/affine-opencover-tfae--a530b088725130de1c7322ab.md) | 419 | `result-track:a530b088725130de1c7322abc878e26ab105868e8e560bf58ef62d67e66e16f6` |
| 16 | `theorem` | [openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/opencover-tfae--aba5a0c0f939a104144dd62b.md) | 448 | `result-track:aba5a0c0f939a104144dd62b2f5fb60e1824d02f3a5e90c628b428446ca6701f` |
| 17 | `theorem` | [sourceAffineLocally_comp_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/sourceaffinelocally-comp-of-isopenimmersion--202f209b15fca8e78eed5be4.md) | 491 | `result-track:202f209b15fca8e78eed5be42d8089aeca9cba726e8d11de68a40a808c21e890` |
| 18 | `theorem` | [source_affine_openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/source-affine-opencover-iff--80c45ad78acdc8e29a9c5c07.md) | 499 | `result-track:80c45ad78acdc8e29a9c5c07a1b5ad756a2839cd24a6a0d1a481fa1b8f010b60` |
| 19 | `theorem` | [isLocal_sourceAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/islocal-sourceaffinelocally--228f6f0444204414fad81080.md) | 514 | `result-track:228f6f0444204414fad81080e66d575310463a81052f6fd99f6431c12cd1507e` |
| 20 | `theorem` | [is_local_affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/is-local-affinelocally--cbf03b12f18d231303e733d4.md) | 519 | `result-track:cbf03b12f18d231303e733d44b195997fed14ebdea09cfdab4cd0196e9384233` |
| 21 | `theorem` | [affine_openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/affine-opencover-iff--82c8b4a5048664dbc5218fee.md) | 523 | `result-track:82c8b4a5048664dbc5218fee81e78261da9e25cfb16fe02faa8813ae4cbeabe1` |
| 22 | `theorem` | [source_openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/source-opencover-iff--7e3efd02a22162668bc88cd0.md) | 533 | `result-track:7e3efd02a22162668bc88cd05cf6bebb37d48077bce6d0e8ff38387207c8f077` |
| 23 | `theorem` | [affineLocally_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/affinelocally-of-isopenimmersion--2dde350276e8a634755e7172.md) | 561 | `result-track:2dde350276e8a634755e7172af6a63b3b9d21a31f668b7452b7d05d4484f7651` |
| 24 | `theorem` | [affineLocally_of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/affinelocally-of-comp--217680d0c27096190ba9a464.md) | 588 | `result-track:217680d0c27096190ba9a4649f539c194c963fccef596d884c9a10d367665ae5` |
| 25 | `theorem` | [affineLocally_stableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/declarations/affinelocally-stableundercomposition--81ed12f2bbff195a450b321a.md) | 627 | `result-track:81ed12f2bbff195a450b321a05556d3785c34496b4270bb05af701213bcd1178` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
