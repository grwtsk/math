# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f61eb59ef64e5c965b178c7ad71f6133d22bf20",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f61eb59ef64e5c965b178c7ad71f6133d22bf20`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MellinCalculus` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaConj` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.SmoothExistence` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinInversion` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/psi-eq-sum-range--6354395068300dbd1939c786.md) | 33 | `result-track:6354395068300dbd1939c786b224213be759644e5b531750e4227221a0f41947` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/chebyshevpsi--0e999b40703bfb0e7e173725.md) | 37 | `declaration-track:0e999b40703bfb0e7e1737258c1996454b5e406101385062788a464fc095e7b9` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/logderivativedirichlet--ae3b01bc81a2134ce3c1bac5.md) | 39 | `result-track:ae3b01bc81a2134ce3c1bac5cbd425f1c20221af1c9ce54043e4a7060d5104db` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevintegrand--5a398ed2ea800b58de0edfb1.md) | 49 | `declaration-track:5a398ed2ea800b58de0edfb119a036e0701209829d49876457217a5e2ed46b4f` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshev--12794eefb4990dfc247e31ee.md) | 53 | `declaration-track:12794eefb4990dfc247e31ee28ee9c4bca655266ab1e07c21e6da8e932029323` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevintegrand-conj--8a957004a7a02fa80c87bbde.md) | 57 | `result-track:8a957004a7a02fa80c87bbde703aeae2c07ce887f6a059e007704eef674bd0bb` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--d9e671ceade3b2a7679fd9d7.md) | 80 | `result-track:d9e671ceade3b2a7679fd9d78763d6bbc5a86949ab279a570d74162af8a060ac` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--0d6e006fceb2072ad8806399.md) | 113 | `result-track:0d6e006fceb2072ad8806399eed6784ab961048cf06738c867b5f97f825e281a` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevdirichlet--08d4b8406b8dcea3b01f1c32.md) | 178 | `result-track:08d4b8406b8dcea3b01f1c3224fcd1348f96f6aba21b8051400aaed38b5c7103` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevclose-aux--3a68946693db99366ba1dce3.md) | 276 | `result-track:3a68946693db99366ba1dce393a15b8e74e7f382ba29ebebd49b487950caf9f2` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevclose--bb93e522dd9dd8dc6dd4ad03.md) | 552 | `result-track:bb93e522dd9dd8dc6dd4ad03a62b39b940c6fd750f4f4e968b7b31e1e1a80364` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--a787e4160df9c4ae616e4a1e.md) | 631 | `declaration-track:a787e4160df9c4ae616e4a1e9369c9e7976282067814b58166cef24a443aef76` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--2d69f8f47ca4025f8ba4d772.md) | 634 | `declaration-track:2d69f8f47ca4025f8ba4d772bfec3802c4d9bc97f1cdc6a62de79941dcf36478` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--67bb3cc31dcaa9441a7a85b9.md) | 637 | `declaration-track:67bb3cc31dcaa9441a7a85b904bff192d98ef3dc563a8988e2f7193e54afa81e` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--2ceeda1d6e2ba4cb937673ea.md) | 640 | `declaration-track:2ceeda1d6e2ba4cb937673eaa3f87741d577ed2c902be4ebef31d4305735bfb7` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--f48a4558aef307574ef7b639.md) | 643 | `declaration-track:f48a4558aef307574ef7b63900633e6ffbb6c0ad4a17dbc1f5f71181c242151e` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--ef13ffd9a37eea1c5a84beea.md) | 646 | `declaration-track:ef13ffd9a37eea1c5a84beea604b1e4e5db0463c64fbd5ad89f1392bd2e0dd5e` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--5090e05bb18ad43aa98f819b.md) | 649 | `declaration-track:5090e05bb18ad43aa98f819b64f7c6a515dd821dec7b7cb1e6b6d8b66d43337f` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--33934b5966b9995aa6ac6464.md) | 652 | `declaration-track:33934b5966b9995aa6ac64644756863656a1cb3174956fbcb6028a9b67cf8c08` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--b4fcb17d0d75eba6745ab3e0.md) | 655 | `declaration-track:b4fcb17d0d75eba6745ab3e049d5d8adde96eae74ceb7ae7803250dc2b1a964d` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i--47f0c0de71a91be53c474455.md) | 658 | `declaration-track:47f0c0de71a91be53c47445540f080c4ee49b04e4157acc318f78ed90de659af` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/realdiff-of-complexdiff--29a201974ed683088ccc2e94.md) | 661 | `result-track:29a201974ed683088ccc2e9487da35509a79a21b3241e1b26d47c81c7eeef196` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/logderivzetahasbound--676e1b2e1ed6823598270424.md) | 666 | `declaration-track:676e1b2e1ed68235982704245ef6302b1a90c39f9b77353a2d019815e4f6007a` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/logderivzetaisholosmall--f5eca9c9d2a42517179427a8.md) | 669 | `declaration-track:f5eca9c9d2a42517179427a895a26168983c419c31353513017826c1c53bf7d8` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--d6aea125e2e70d970d481da2.md) | 672 | `result-track:d6aea125e2e70d970d481da2545e66967ca30b31f657540731322aa8c2aa3ba2` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--a57384b32513296ec2308324.md) | 676 | `result-track:a57384b32513296ec2308324d969ea27bfa84b4c91ebe4d3dd2eaf47e393af6f` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevpull1-aux-integrable--4d3598ea7e583f25b96fe2b2.md) | 682 | `result-track:4d3598ea7e583f25b96fe2b2f7a485c006d9d38397eb12c9b9a50c2db2138975` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/bddaboveonrect--a459ffa0ff0667a68b08cf4e.md) | 743 | `result-track:a459ffa0ff0667a68b08cf4ea2b8f8f7c5b438bb8b7925ccfb384f7197e7f077` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevpull1--5db6e15ca1093aa546b2146a.md) | 749 | `result-track:5db6e15ca1093aa546b2146a9e929526f463d0938a56312da59bbf6db0cd314c` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/interval-membership--53117b34dec86575fd9aff65.md) | 917 | `result-track:53117b34dec86575fd9aff65198f2a6104bbdef73d9fc14b612153d2658a01de` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/verticalintegral-split-three-finite--6fba627c37e71651d8f1d256.md) | 925 | `result-track:6fba627c37e71651d8f1d256214abc07ec620ee73e6135d079aa58aef22c4513` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/verticalintegral-split-three-finite--73536bfffca06124309559dc.md) | 940 | `result-track:73536bfffca06124309559dce1d9e3fb9129ab7f823aefd8c00e3103d87ca234` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevpull2-aux1--38a68f5c5e5592356ab785a1.md) | 956 | `result-track:38a68f5c5e5592356ab785a1c6296d7f6ab1c50c666a4181da7d5937c2ff4831` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/smoothedchebyshevpull2--3a1b3ee3fc07acc07b774253.md) | 974 | `result-track:3a1b3ee3fc07acc07b774253b6a100106502db2ab393d2bc3797ca9762a7c39b` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/zetaboxeval--bc479cd274cd6daebfc30457.md) | 1156 | `result-track:bc479cd274cd6daebfc304578cd22a7e066847f64060877f95ac22734814dd1d` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/poisson-kernel-integrable--bf459e9a890f378519c277a9.md) | 1175 | `result-track:bf459e9a890f378519c277a9040f22d5f89872b700c6dd4b904ae2ae48086734` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/ae-volume-of-contains-compl-singleton-zero--7a9bac67914e515a74a04ffd.md) | 1189 | `result-track:7a9bac67914e515a74a04ffd00ec37e8ed67b5a5862072f313c40c1fc264da03` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/integral-evaluation--1ec2e643b06cda1ca732383e.md) | 1213 | `result-track:1ec2e643b06cda1ca732383ede668a58800fc79afd35da0d6b8950363fff3e08` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/ibound-aux1--415928349f30639627cfce52.md) | 1278 | `result-track:415928349f30639627cfce52bbc0635d0b260cbe51861ae6f33413dfa58c5eb0` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i1bound--d1df41ad9d52b800db16dec8.md) | 1308 | `result-track:d1df41ad9d52b800db16dec8132b55823b096f587c3aadd971c4071cc7b02f5b` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i9i1--d338af4fb3bcf971113ccd0c.md) | 1566 | `result-track:d338af4fb3bcf971113ccd0c54fb88ec7dbd7329569f59fa1650d67b2d406173` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i9bound--2680e360ed6b9eac80784445.md) | 1579 | `result-track:2680e360ed6b9eac8078444553767eec60167386cbc08a4505ff2ddc4f92949c` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/one-add-inv-log--b9dd62d066bf943dbe39141d.md) | 1594 | `result-track:b9dd62d066bf943dbe39141d02bce6bc377cd9eccfd539e24977a827e29e4bc0` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i2bound--40664998cf9526da26102267.md) | 1598 | `result-track:40664998cf9526da26102267506e15d2abdc80ea1f9fa54f4d0282ff5b4a4432` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i8i2--2d169e46d0399fde80b9f2ae.md) | 1741 | `result-track:2d169e46d0399fde80b9f2aeadc32078501e073a6a84974fd05bffe0ed1eb25d` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i8bound--ff18f351c9588b5d0fd760ef.md) | 1755 | `result-track:ff18f351c9588b5d0fd760ef11dbe35ae40097ca09826ade7a48561b4eeeea3a` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/log-pow-over-xsq-integral-bounded--bdc5b769118465b93468bd96.md) | 1771 | `result-track:bdc5b769118465b93468bd969320847baa02a26fa84155879fe5b700f101acf6` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i3bound--1d3354174e8442f43bc58df8.md) | 1993 | `result-track:1d3354174e8442f43bc58df892d1dd6f0cff6b4ac23c89c5ed112b56524ea678` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i7i3--c64a2e43c67367ad5026ffd0.md) | 2227 | `result-track:c64a2e43c67367ad5026ffd024efffb6bbb3e182aaefb6a05e387db3aa3b09b7` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i7bound--4e9f5438429e05acd8e64b35.md) | 2240 | `result-track:4e9f5438429e05acd8e64b35d750d9a8a1283d55baa3ba7a1121b63560e7ecbf` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i4bound--71df407e1c0408da28c32c49.md) | 2254 | `result-track:71df407e1c0408da28c32c49e11af0e13a132c63f7bd53bfe277102a0bb757fd` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i6i4--024d1462999874f681071bdd.md) | 2616 | `result-track:024d1462999874f681071bdd3a11d4bfb26e596dcf5f7d9cca6d25790b88eb4e` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i6bound--9b77ff8c045601212fbfd118.md) | 2629 | `result-track:9b77ff8c045601212fbfd1184dea3546daabee9f513c81e8b1a8c9a01825ad04` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/i5bound--b0a4b78248ef9c577fc879ff.md) | 2645 | `result-track:b0a4b78248ef9c577fc879ffd6b8cf1388df426a886d8643d6b5e2a4eaf7fa95` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/logderivzetaboundedandholo--a2743265d408e634dd189a0f.md) | 2773 | `result-track:a2743265d408e634dd189a0fa6d42b9197565aa676c9a7319bdd7942ad455dd1` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/mellinofsmooth1cexplicit--541bc53bbf8fb108cabd7442.md) | 2798 | `result-track:541bc53bbf8fb108cabd7442df99fccc7299c34809186d7da3bc2a7a40ed9fca` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/x-to-inf--99ba42af209edbd3305fe846.md) | 2816 | `result-track:99ba42af209edbd3305fe8462edf0fc4fbd5b62447af6b92ba1e7be38d63b866` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant206a1c8c771efb3255315c43f78a41f35a364972908bb5993036f8210f421494.lean/declarations/mediumpnt--39936c7a3e59162fbdd2b779.md) | 2871 | `result-track:39936c7a3e59162fbdd2b779b491453ceb83323e863441c14a22b3aba9e2e8db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
