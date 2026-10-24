# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6869a528bb83428480254d0aa7f8697598b46c0",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6869a528bb83428480254d0aa7f8697598b46c0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MellinCalculus` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaConj` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.SmoothExistence` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinInversion` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/psi-eq-sum-range--da58d0775119075597b50554.md) | 50 | `result-track:da58d0775119075597b50554cac9f7e2ce08ed1aafc66ebfe854cd4913eb2563` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/chebyshevpsi--a6e5d7e7c8f1f131820a4c2f.md) | 56 | `declaration-track:a6e5d7e7c8f1f131820a4c2fe564dbcf43202a04c07f2d4ee24f21faef40c41d` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/logderivativedirichlet--f409ac37d1a02902f66d15cf.md) | 59 | `result-track:f409ac37d1a02902f66d15cf91b5c733df0bbbb5fad8e79ce03d2b25ccfd53da` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevintegrand--70373ac740d962e387dec7cf.md) | 70 | `declaration-track:70373ac740d962e387dec7cfb285e6275a4f007b6142e60a2b6b2a93231309e7` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshev--989da5e7a50cb6db2eb4b7fc.md) | 75 | `declaration-track:989da5e7a50cb6db2eb4b7fcd544079a52dd880d709b5607c50aebf3b484d8fc` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevintegrand-conj--1e81683170606523c20e7262.md) | 81 | `result-track:1e81683170606523c20e72626a9cc473bb73ec21a596e18547fde414d58ef8bb` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--9741ee61a3c5a20b9bf57b60.md) | 106 | `result-track:9741ee61a3c5a20b9bf57b60216033c12ced265813e75322c23d458cea5fde44` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--0c32ee4c85a2a52e5d82557a.md) | 141 | `result-track:0c32ee4c85a2a52e5d82557a9192c1990847136707165f8163c5505b21c60e77` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevdirichlet--deb6b7d9189dee7632aaefad.md) | 212 | `result-track:deb6b7d9189dee7632aaefaddce078a9d742ce9a521d961e3fd00f60cf59acaf` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevclose-aux--200d71acb7fb1457707aae3f.md) | 311 | `result-track:200d71acb7fb1457707aae3fd4d2b7b9fd5ee7bf58632ca8dbe8cf9261b922c9` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevclose--1092dac6c327f8e4af631241.md) | 614 | `result-track:1092dac6c327f8e4af6312415e69eb3da62b452093ecac9cc1f1a8d155adf7e8` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--8d7e4b7bbe8974e8bf25b1a4.md) | 713 | `declaration-track:8d7e4b7bbe8974e8bf25b1a4c5511c902b1ca3552cbd8538f9f700101fce3938` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--74d0937c529eb7fadf7e9275.md) | 717 | `declaration-track:74d0937c529eb7fadf7e92756853cc53aa57bd735df976b5aba2ebd2540d15f9` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--91083ecd81be3036c5070d00.md) | 721 | `declaration-track:91083ecd81be3036c5070d00b2fbf6d921f6f7f3645fa88de0a0ef21d2ff90ea` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--bd4374064b334267f1f5a261.md) | 725 | `declaration-track:bd4374064b334267f1f5a261fb27116b6aebfe8676a66e4f88a4de3ff43ad7a2` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--242f74afb728bac0ae40de13.md) | 729 | `declaration-track:242f74afb728bac0ae40de13ad130780fa555e33f3e4ce00bb526d1d5ac4791f` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--ec1f1738b26831fa6cb5dd26.md) | 733 | `declaration-track:ec1f1738b26831fa6cb5dd2697ee52de67c5130d0f6569af5f471a219dea6a4c` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--21327477cc0f9c8db6b947d0.md) | 737 | `declaration-track:21327477cc0f9c8db6b947d06cc160ecfcee44d842027fb25609cf819ca506bc` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--312b4e86f75dcba3edad1eae.md) | 741 | `declaration-track:312b4e86f75dcba3edad1eae625439c9076e57478232dbca3aa133acdba3865e` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--09ad02c0eb1b0d629221a24c.md) | 745 | `declaration-track:09ad02c0eb1b0d629221a24c326b4c8c3916c434436db58a767fa26181ddaf5f` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i--93cc0a21a5b1f4f5cc855bbc.md) | 749 | `declaration-track:93cc0a21a5b1f4f5cc855bbcafe24c719f926b6b5b94ed53a1ff234006ca5eb2` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/realdiff-of-complexdiff--805476848bea1c2eeb83ac81.md) | 753 | `result-track:805476848bea1c2eeb83ac813eb2e4a3ec94b1f88f20ad04b09b050a047ecc8c` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/logderivzetahasbound--1a039f9698e2e4196658e89e.md) | 759 | `declaration-track:1a039f9698e2e4196658e89ee67d722379a599fc0ee3332efdac216612082888` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/logderivzetaisholosmall--897f8c79d0ff952bae4d321c.md) | 763 | `declaration-track:897f8c79d0ff952bae4d321ca6cce6029c4d746b6b2cb09e6d9e5f77cc0a06c9` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--e09ba2df92cf02b8316a9d50.md) | 767 | `result-track:e09ba2df92cf02b8316a9d50dd8712a7731a24015df7ea1f86c7f4ae3bd4b45b` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--4a317abee2715e63dab006c7.md) | 772 | `result-track:4a317abee2715e63dab006c7498e5212f895d7d08f0d33eaf700b0972244a987` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevpull1-aux-integrable--41d0070d089af276e0e8d39b.md) | 779 | `result-track:41d0070d089af276e0e8d39b97afccf159e82816da54e7badf31068eb2b76ea8` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/bddaboveonrect--75ea5c001387161d267a6e28.md) | 841 | `result-track:75ea5c001387161d267a6e28c356d0f960235fbc871e581e2fff39f62e6ecfae` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevpull1--3cdbdb263b05e526d3b0df6d.md) | 848 | `result-track:3cdbdb263b05e526d3b0df6d0b88e806f885e6a6b98c9fed27b555370f464542` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/interval-membership--11968b6c40c620b077ac9d07.md) | 1019 | `result-track:11968b6c40c620b077ac9d07b384373daa44ddc86839b9296dce9fe10d1ce9fa` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/verticalintegral-split-three-finite--6698d59ea5ace30f55f41ee9.md) | 1028 | `result-track:6698d59ea5ace30f55f41ee900598b9b965ef8167e44ae97692ac203152106f2` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/verticalintegral-split-three-finite--738469e1bc0f89e0823916ff.md) | 1044 | `result-track:738469e1bc0f89e0823916ff725d8e93081b5104d5543fad08089a15c6201141` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevpull2-aux1--1a31bb7ef9d0a2136d154379.md) | 1061 | `result-track:1a31bb7ef9d0a2136d154379f06e5b8a02b9ed7095b44454a22d6e57a5c124b6` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/smoothedchebyshevpull2--a85c72c8dde7f36d4ca78dd8.md) | 1080 | `result-track:a85c72c8dde7f36d4ca78dd8289d643f1a56e4a2aac809e05f6924c1e3588b59` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/zetaboxeval--3db4f99c8b82873417144790.md) | 1263 | `result-track:3db4f99c8b82873417144790b8516d7f27c5b9ca9429d81ca04689f97f3aafd1` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/poisson-kernel-integrable--0acbd29004588e0d58144530.md) | 1283 | `result-track:0acbd29004588e0d5814453012a251b03e7a5773c78044f5bd0aee9d8b139713` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/ae-volume-of-contains-compl-singleton-zero--b200c91234dbe211d4cde160.md) | 1298 | `result-track:b200c91234dbe211d4cde160909c0ba0dfef1580b952a094e0ef8e2f1cf40723` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/integral-evaluation--b52e80eba5126ead1e9651d3.md) | 1327 | `result-track:b52e80eba5126ead1e9651d3a36d596e9d93150860aad800f0f1b0211156564d` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/ibound-aux1--597d09578fdd07150d188a6b.md) | 1399 | `result-track:597d09578fdd07150d188a6bddd5e339d7ca6e1cca0830b6daa9c8b003522b96` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i1bound--42f6c733d9d0b3f3746e28cf.md) | 1430 | `result-track:42f6c733d9d0b3f3746e28cf2acf4c55c1106c01d19d1720e27baf514b9d3c11` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i9i1--5bc606c171fd06c6cbc5d8df.md) | 1742 | `result-track:5bc606c171fd06c6cbc5d8dfb93a8abf7c250fccb6568ba86949884a43229f87` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i9bound--90c931ca5b043f964a524fd7.md) | 1756 | `result-track:90c931ca5b043f964a524fd71d1ee858548ac8f5dab542f7e7f3e46aff83702b` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/one-add-inv-log--d60dd2000e9ee6e38f07f127.md) | 1772 | `result-track:d60dd2000e9ee6e38f07f1271d0c40bc1a419d44a7212f8237305120d2a235ad` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i2bound--5f7ddd4775c240fca9477ec8.md) | 1777 | `result-track:5f7ddd4775c240fca9477ec823e592425456f9d2d5319328f35535ee2e6f3034` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i8i2--4a76f2acfa1cd945c09724ad.md) | 1923 | `result-track:4a76f2acfa1cd945c09724ada214df865bcbc7cb539ae3148d6b5799a035168b` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i8bound--27630f96301909462b547934.md) | 1938 | `result-track:27630f96301909462b54793457a30184ae21da01f4b527a15f689d99e5ffd964` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/log-pow-over-xsq-integral-bounded--f1f81a8e7cc2bed4b502dea6.md) | 1956 | `result-track:f1f81a8e7cc2bed4b502dea62b976bddc3b50c0a89bc5a935e4a0b8f0e356478` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i3bound--3cc8e5d0ee1205fbf639d26c.md) | 2206 | `result-track:3cc8e5d0ee1205fbf639d26ca3a6fb902d03dc394a7a980d7ca832e9fdc5cc29` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i7i3--c87413f150b4e6b91141928a.md) | 2477 | `result-track:c87413f150b4e6b91141928a5bee1156ad60d8c399234a36cd37387f7e66ee41` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i7bound--ab48cffa3b8c1920d424a91c.md) | 2491 | `result-track:ab48cffa3b8c1920d424a91c7c4a1fcaca10de789018d21843f258a108a189cb` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i4bound--7caaefd77617bfd8f8ef318b.md) | 2506 | `result-track:7caaefd77617bfd8f8ef318b0eee9d6df4a9d977c2ed0bd08d10ff5a4b00dc77` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i6i4--37bae8b815038ce1a148d8a7.md) | 2878 | `result-track:37bae8b815038ce1a148d8a7aec86027005f7b848a2b1bc719b7ecc3e906b7a0` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i6bound--0f9cfccda79d87607e167f47.md) | 2892 | `result-track:0f9cfccda79d87607e167f472296cd398ae8989d78d149b7847f38618ba821c1` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/i5bound--3d5577db90fba14a7aa291df.md) | 2909 | `result-track:3d5577db90fba14a7aa291df543f51566ecc80fe080f761fa36097d42151a01d` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/logderivzetaboundedandholo--991bf50f4fe5662d7e55f478.md) | 3059 | `result-track:991bf50f4fe5662d7e55f478d92a811cacb25d0ab5c1f3c29bb4cc2fb2b2207f` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/mellinofsmooth1cexplicit--f04f797833f4c468855cda4c.md) | 3085 | `result-track:f04f797833f4c468855cda4c1feb8e7a9ea7bf6a9ac2022e9024fb8ed3b9ef92` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/x-to-inf--7402b88ababe01588e690b8d.md) | 3105 | `result-track:7402b88ababe01588e690b8da822a4c59e5ea27ae6f6b148abfe59274cdc075f` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant019fe6211dd7a474392654a1dc286bdedb2faf2e64b2cb6c39b5784522450e3b.lean/declarations/mediumpnt--45389c82a455777406951b9e.md) | 3167 | `result-track:45389c82a455777406951b9ee6396e4f4ea91d0828970e8157c29aeece662472` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
