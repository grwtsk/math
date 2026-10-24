# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "604b95747e0aa01200c88c373c411d36cd0cb748",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `604b95747e0aa01200c88c373c411d36cd0cb748`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MellinCalculus` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.ZetaBounds` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.ZetaConj` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.SmoothExistence` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinInversion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/psi-eq-sum-range--668ff7aeb2865f66ee7205c0.md) | 33 | `result-track:668ff7aeb2865f66ee7205c0b2ecdd34516e1ea9410a27347396911ef0500fc8` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/chebyshevpsi--493775fdefc357ea18adebe3.md) | 49 | `declaration-track:493775fdefc357ea18adebe34acb3f19ff5388429c70383063b49fa09925b70e` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/logderivativedirichlet--1a37ae2a7deb7a489712ab99.md) | 64 | `result-track:1a37ae2a7deb7a489712ab995a741cddeeec7d438e115c5ad0e00030e611ab51` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevintegrand--f20c7e12849898014c326449.md) | 81 | `declaration-track:f20c7e12849898014c3264499d223e60ceaaf44785dfb5fe5ad37195e62e20bf` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshev--57a0af85dadf7309b2d6c0de.md) | 96 | `declaration-track:57a0af85dadf7309b2d6c0de7036224f71896700f8ce5a3f325d1e5813cb87ff` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevintegrand-conj--b6c30ebd4349bdca5a1912d6.md) | 102 | `result-track:b6c30ebd4349bdca5a1912d65d4abc4e4bd1a7f2811574287746f94f6d3b8dcd` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--b2fce1eb461d9ea94331e316.md) | 143 | `result-track:b2fce1eb461d9ea94331e316facda6d6504222783f3197b168f58cc1df2573fd` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--9e40a307f51f3886bdcab676.md) | 191 | `result-track:9e40a307f51f3886bdcab67601684ed4dbb70622645a3c0694c1f797be2f08b4` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevdirichlet--8cd4a1e6a7031fefe7dab34c.md) | 283 | `result-track:8cd4a1e6a7031fefe7dab34ca267477aad453edccdef350e427688e0a18e46e5` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevclose-aux--631de81df445359c9c736561.md) | 386 | `result-track:631de81df445359c9c7365614fe1492dbb0731e23bb81cabf45b63c2c45da122` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevclose--e3cf5d0b55bc63719b3356cf.md) | 708 | `result-track:e3cf5d0b55bc63719b3356cfd51fe420bab86470b88f5ca9d1019e090ec57f77` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--5bf4134d07c98983ef5bed7b.md) | 836 | `declaration-track:5bf4134d07c98983ef5bed7b13463cb014d3c55c4479a96dbd49b80030d38a79` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--f6713abeb807b3e666fc6814.md) | 853 | `declaration-track:f6713abeb807b3e666fc6814e75e557f36b9be8a1b3280e5969d2685bac00b91` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--23c590c8e5bf86e55b6fc2d2.md) | 870 | `declaration-track:23c590c8e5bf86e55b6fc2d26ce58e25160fe711e9941bcf2cf6c8ac7e87b582` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--94fcc386e804837738c8e765.md) | 887 | `declaration-track:94fcc386e804837738c8e76550cbf70703ed38d1501c91ffe9212561e1d8c5e0` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--77315ec985b4e37b508eb142.md) | 904 | `declaration-track:77315ec985b4e37b508eb142421dde44e94fd7ac42096352c647e4869d92f9ea` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--60dd1f550e56a96b20a21d98.md) | 921 | `declaration-track:60dd1f550e56a96b20a21d988ca48ea44cadd1e4f17d9b3cf1fd4781b90b584b` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--b2ef9d9ae818b2a74525f21a.md) | 938 | `declaration-track:b2ef9d9ae818b2a74525f21a2d5d94edd79432107ec6217242115f3abc450d82` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--d7f07ad9788abfcaa1f44f1c.md) | 955 | `declaration-track:d7f07ad9788abfcaa1f44f1c969cee327999848c968c414af1d4266af098a2fc` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--d060bc08b3c7befd7d2fc856.md) | 972 | `declaration-track:d060bc08b3c7befd7d2fc856ba26c5c97aad53472ef7d92128babb5bd0c1c9e8` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i--2f16344bc2c8a48c5198e307.md) | 989 | `declaration-track:2f16344bc2c8a48c5198e3071ef97d25e52b7d05fb848d67364c25feefc5972f` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/realdiff-of-complexdiff--2d0ee5500aa308cc38f972a2.md) | 993 | `result-track:2d0ee5500aa308cc38f972a2cba4838eca71528ea157e296880a010c2bd20113` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/logderivzetahasbound--664a5874d9dbebd042e3fd83.md) | 999 | `declaration-track:664a5874d9dbebd042e3fd83c8374312525c312b7f2bebbf3f985552047851dc` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/logderivzetaisholosmall--55f1650953b2d58f08031c43.md) | 1003 | `declaration-track:55f1650953b2d58f08031c4367d04a625317cf0b50de0ce41afc86d531eabe1a` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--36a16a880bc4d3b1919acf89.md) | 1007 | `result-track:36a16a880bc4d3b1919acf8975a2f8893e405704adee6d220376a9a89de47edb` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--a56c35b12618896a615ead45.md) | 1025 | `result-track:a56c35b12618896a615ead45ffbab6bf3289a1ac41c4731373f157721cfc4d46` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevpull1-aux-integrable--9c3ba4f76841ea0c92caaa4d.md) | 1048 | `result-track:9c3ba4f76841ea0c92caaa4d5ef870235753952730a17dbd899f6e0926fe2f69` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/bddaboveonrect--db2c686ce70f1de9b7ffd2e3.md) | 1115 | `result-track:db2c686ce70f1de9b7ffd2e3377fadd72d94d36de1f10a50d71f6b553ae2f012` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevpull1--2312a1046be41f28421d5ab3.md) | 1134 | `result-track:2312a1046be41f28421d5ab3201939f4753cab386cf2c555a950d5b483978f74` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/interval-membership--c7bd328e620e4872fa364e55.md) | 1305 | `result-track:c7bd328e620e4872fa364e5578cf322cb34a32c37b561efacd43378abc48dfa8` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/verticalintegral-split-three-finite--e5b17a6fbb0b59e03388c0fb.md) | 1314 | `result-track:e5b17a6fbb0b59e03388c0fb5d2a468df18f8da0865fce9ecc7feb1c265d3a9d` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/verticalintegral-split-three-finite--540fab021c557a8252f5583b.md) | 1330 | `result-track:540fab021c557a8252f5583b72cfe224cd7909dd99e8c2d9c926cfc695f116b9` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevpull2-aux1--87f362f69c64a408f2950768.md) | 1347 | `result-track:87f362f69c64a408f2950768e83902200ded8f2f15b768df983463818efa32cf` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/smoothedchebyshevpull2--9e742d685bb1ab93be78bce8.md) | 1382 | `result-track:9e742d685bb1ab93be78bce85cdd98f78412e671ba902e31acc92607805c5f03` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/zetaboxeval--183bbc6e307ec86c66f2e07c.md) | 1585 | `result-track:183bbc6e307ec86c66f2e07c5c0a2472ebbd571e30b6b82ce1c1666854d4a3a6` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/poisson-kernel-integrable--1023c2cde2c1d89dab200bec.md) | 1605 | `result-track:1023c2cde2c1d89dab200bec5809d1ae722f8ea5a21255e3c000315b4da6104f` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/ae-volume-of-contains-compl-singleton-zero--0c0e33486199cf22501a67e8.md) | 1620 | `result-track:0c0e33486199cf22501a67e8973953c0c1b3353008d794ab69b0196b6a691919` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/integral-evaluation--bb3b32a25bee4dea0dddc7f0.md) | 1649 | `result-track:bb3b32a25bee4dea0dddc7f0efa433422dbd300f4fa3fa391455a3bbca56536c` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/ibound-aux1--e7e0e2dcb887695c78bccef5.md) | 1741 | `result-track:e7e0e2dcb887695c78bccef55ca8d50a36e74a6ad552660a0c0b5cfb0fa1cfd0` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i1bound--9a4f083443df1d6b4f8d4c89.md) | 1828 | `result-track:9a4f083443df1d6b4f8d4c89aee2d88db90971dde8433ee395a3218e2d5e2af0` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i9i1--b9562f4cb24f37e9f6d1f131.md) | 2140 | `result-track:b9562f4cb24f37e9f6d1f131695bf0b071c975fd2bb8781acc2a1f7ccbb02efc` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i9bound--d75310a0bee5266f0c5518da.md) | 2154 | `result-track:d75310a0bee5266f0c5518da954b4e00bf99aa8bdb7fe4e8794cf28eb7731840` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/one-add-inv-log--2d4a5e2f259be57367b0cb1d.md) | 2170 | `result-track:2d4a5e2f259be57367b0cb1d04a679c51f5c98e864d6f98f43a540011ecf2326` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i2bound--5f87f31dfa4b61369800631b.md) | 2211 | `result-track:5f87f31dfa4b61369800631b348edf95a5b4dfcfff070ef6ca8459330def2cff` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i8i2--9b78d1f651646db20329cc31.md) | 2368 | `result-track:9b78d1f651646db20329cc31ccc2c8b83be45ab147d7cc1b33fbd2c23c3e4d20` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i8bound--737f7eeac1f5f3da89ef1c86.md) | 2396 | `result-track:737f7eeac1f5f3da89ef1c86fd9a910153011f42dafc54d1a5a25d19c70f00a0` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/log-pow-over-xsq-integral-bounded--2ef0da0a04f52d3922dfde5e.md) | 2424 | `result-track:2ef0da0a04f52d3922dfde5e0f45094e1e04808934fd18d9862c9525f09dca76` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i3bound--ea3b008d54a42dffbf7b89b5.md) | 2709 | `result-track:ea3b008d54a42dffbf7b89b51eb52f05fc829e1fe5bb5215484edb62c3bcc799` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i7i3--c3c8b000f7df279f22a6b411.md) | 2980 | `result-track:c3c8b000f7df279f22a6b411b95f4e5e9867474c2763ba6abda20efa2cd9b411` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i7bound--5d6b882f8b36294215ad9868.md) | 2994 | `result-track:5d6b882f8b36294215ad9868148bcc9692a20edd682b5f697bf2d24ff5f4d37d` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i4bound--d0144805454c979c734f62fc.md) | 3028 | `result-track:d0144805454c979c734f62fcfdf478a03a4504bd1a04112e397ea607617afe7b` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i6i4--9d4778d6f767688bf1f06b2a.md) | 3400 | `result-track:9d4778d6f767688bf1f06b2a5669b8e61c39b45e95c4ae4a0ff4c1b9163d0403` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i6bound--5aab6284765bd297ff702fe6.md) | 3414 | `result-track:5aab6284765bd297ff702fe6ccfdb3b8db1ebe1482d5adc3aa8078caecdb27c3` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/i5bound--2b0f0107bd7c5b460bf60021.md) | 3445 | `result-track:2b0f0107bd7c5b460bf60021d2990ca00ca539f6c4311801081d722e84b3b047` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/logderivzetaboundedandholo--6ab34ca293d828a0d0107af6.md) | 3595 | `result-track:6ab34ca293d828a0d0107af6703a4c2068f47dd9ff32ce40c2d660f25ce904c0` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/mellinofsmooth1cexplicit--4412271044de3916e29c6b34.md) | 3621 | `result-track:4412271044de3916e29c6b342de13897d7a857a04d02fb3f67e300c92f963857` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/x-to-inf--b55785545ee275a59ea6531d.md) | 3641 | `result-track:b55785545ee275a59ea6531dbd233cf9294bbceacf6c9e4412519e15a6a4e8ae` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/declarations/mediumpnt--7ad2114cd23daafccdcb818e.md) | 3714 | `result-track:7ad2114cd23daafccdcb818e898f93d788420f8b936d68a706e9027b90a787b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
