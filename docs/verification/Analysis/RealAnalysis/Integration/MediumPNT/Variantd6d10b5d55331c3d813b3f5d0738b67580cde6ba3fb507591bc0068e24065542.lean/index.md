# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb3df6bb92a2045719d68973cd0e7dda81e5a15b",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb3df6bb92a2045719d68973cd0e7dda81e5a15b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MellinCalculus` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.ZetaBounds` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.ZetaConj` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.SmoothExistence` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinInversion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/psi-eq-sum-range--f4d3a31dcbaeee03c3f43375.md) | 41 | `result-track:f4d3a31dcbaeee03c3f43375448cf60d7612abbd2085d4124500ad154fc215a0` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/chebyshevpsi--915bc2cf6c96d5f50afab081.md) | 57 | `declaration-track:915bc2cf6c96d5f50afab081732ff2c7f911923787511855fd3ddd924227ed50` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/logderivativedirichlet--276c9de32960a86e30464688.md) | 72 | `result-track:276c9de32960a86e304646886090076ff29018c4de3a633ee6964b74ccf8448e` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevintegrand--6e72381ba5937eb6613ceea4.md) | 89 | `declaration-track:6e72381ba5937eb6613ceea41037f172936a4ba9233e384e741708e2970a2e17` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshev--338c868af8bb93ddd902cc4e.md) | 104 | `declaration-track:338c868af8bb93ddd902cc4ec3535a269c575685600e0f7664737aacf5b7632f` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevintegrand-conj--154fe06d0c35407c91d28470.md) | 110 | `result-track:154fe06d0c35407c91d28470e7e7998691014c286adb62246fff0c7a5665a8ea` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--192488dc8a9580705e054d30.md) | 151 | `result-track:192488dc8a9580705e054d308cb0452d120967166f1c10c81be310bee626afd8` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--e7f59eff649a5dc1a6ce7884.md) | 199 | `result-track:e7f59eff649a5dc1a6ce788474bc4ac266072c4d9bb30f6eb80e33f3bc020ecf` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevdirichlet--ac956db763e23199b9eb8e1e.md) | 291 | `result-track:ac956db763e23199b9eb8e1e51ef07b7cf2857291fba6b0334c9f9dc9ed55d00` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevclose-aux--bbc1c160d4c94bdee525249b.md) | 394 | `result-track:bbc1c160d4c94bdee525249b4bb7e833292445f759e371b874b0855805bd1525` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevclose--8927de06cc5674a11d4c0f0b.md) | 716 | `result-track:8927de06cc5674a11d4c0f0becc3c189f25a5ca47a6638cc16e93e33ecf0c569` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--b8d31a219cdf61af96e9d058.md) | 844 | `declaration-track:b8d31a219cdf61af96e9d0582c45bd3736d7db61752f665c10493ca23cb4422c` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--7481212b2efc265bdeb1fd5b.md) | 861 | `declaration-track:7481212b2efc265bdeb1fd5b3cc0824a93eb6cced33e2d5f01c30cb16e13f16a` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--9eacbe8a3b674fb000d89f25.md) | 878 | `declaration-track:9eacbe8a3b674fb000d89f251d15bdddddcee74847811053edc515d0caee64fe` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--dd2cf51da75b48f057ef7ee4.md) | 895 | `declaration-track:dd2cf51da75b48f057ef7ee40f5cd1603de66c95db5e446c68cfdc84feff5a64` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--7272284b10f288196aaab218.md) | 912 | `declaration-track:7272284b10f288196aaab2189499feb841defdb384c577c7ed7b879f8f26f24a` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--3322738ee0296c81343e6313.md) | 929 | `declaration-track:3322738ee0296c81343e6313d8f71c21b55bf670642e3c098b79f9c8a548e461` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--011517a6a36c6535d13abdca.md) | 946 | `declaration-track:011517a6a36c6535d13abdca1142a6e911d2747d8bed7d1ab81f48dd91ccc2cb` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--958f60426bdc36b8b6001a2f.md) | 963 | `declaration-track:958f60426bdc36b8b6001a2f20dbe9e998712e57530c3a0a94ec4f90d32e7d88` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--1357ede9d0b22b31aeaf88bb.md) | 980 | `declaration-track:1357ede9d0b22b31aeaf88bba82622968444bcdc9136c17ad8c8c670bf4657a4` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i--515e8e42e36cf0d348d569d8.md) | 997 | `declaration-track:515e8e42e36cf0d348d569d83bcf344cc837b8ae8b480bfed1b29dad6bcde231` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/realdiff-of-complexdiff--b90c8749fa330662ed90b2f2.md) | 1001 | `result-track:b90c8749fa330662ed90b2f2e026b7ee85320dcccc5b8060da72bc9f5bc1f630` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/logderivzetahasbound--293842dc4d3828a8c98ffd2b.md) | 1007 | `declaration-track:293842dc4d3828a8c98ffd2bec84a95aacbe83644ef7bbe5372b0fc2939b0f71` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/logderivzetaisholosmall--54402182379a21a2283221f4.md) | 1011 | `declaration-track:54402182379a21a2283221f434e23894b00c00706505b229c87cfe0866313068` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--50e2bc9efe627409b7c756ac.md) | 1015 | `result-track:50e2bc9efe627409b7c756ac944796336e33f8cefa513483529975ed848f5425` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--5133ab1a27b7dbd076288848.md) | 1033 | `result-track:5133ab1a27b7dbd07628884856b7365063e059b992bece1064c2f7b7add48563` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevpull1-aux-integrable--1a521f337686895a71d0433c.md) | 1056 | `result-track:1a521f337686895a71d0433cbea28aaa445d809d8fe32bc285deb3e0ee5dff86` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/bddaboveonrect--9fd7166afab2cf442043f79e.md) | 1123 | `result-track:9fd7166afab2cf442043f79e8eb12069271e59ed8580d65933c45f289a40f521` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevpull1--f6a6596a1356f1776ceb0de6.md) | 1142 | `result-track:f6a6596a1356f1776ceb0de6c06f10a3741b9243a7995e4a4242f29706ce000b` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/interval-membership--e5408251272f8879e59e2e87.md) | 1313 | `result-track:e5408251272f8879e59e2e87038bc5bd5bd66c70f0ea098e813ab7253768951e` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/verticalintegral-split-three-finite--679b64d61cc1c592856d2ad8.md) | 1322 | `result-track:679b64d61cc1c592856d2ad8ad9ef4ecfab4aecb2e8dc17d556b5d2904f5c0c2` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/verticalintegral-split-three-finite--4e475bbbf92a3251849795f2.md) | 1338 | `result-track:4e475bbbf92a3251849795f293f98b11ff81caa32e78d2516210b63ca0cc0087` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevpull2-aux1--ce254fa1f8c800339e7295b1.md) | 1355 | `result-track:ce254fa1f8c800339e7295b15f158a40e87fa560b4662ceba78b1a6a49113577` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/smoothedchebyshevpull2--bb2b88efcbc830403f5793da.md) | 1390 | `result-track:bb2b88efcbc830403f5793dad5b4ea562fa53269ecd5977398a95e5de5361120` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/zetaboxeval--b9cd6ecc8575a68a14f902b9.md) | 1589 | `result-track:b9cd6ecc8575a68a14f902b9a86fc6b13a4f0cf4e3537144b87a876ea68f8a3f` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/poisson-kernel-integrable--d5cdca600db57672bf4606be.md) | 1609 | `result-track:d5cdca600db57672bf4606beec4d8fa638e328f45266f5903ff2dbaa23418fd4` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/ae-volume-of-contains-compl-singleton-zero--a2739f979449a37d58d6d7fe.md) | 1624 | `result-track:a2739f979449a37d58d6d7fe553d3517dd8c90b5bf2362589c213c485e1b6025` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/integral-evaluation--cf066fdfd6bf5ccc6fec1c89.md) | 1653 | `result-track:cf066fdfd6bf5ccc6fec1c8943bf5d34b115a138e8aae0daa9af5b750cec153c` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/ibound-aux1--1c08a481bf36113002074237.md) | 1745 | `result-track:1c08a481bf36113002074237cd79c61ae465e5563bd921fb4899dcf795d85808` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i1bound--939e8ac056e37518138f65c3.md) | 1832 | `result-track:939e8ac056e37518138f65c3483f077e723e8a542658e00f84eed0edd34c561d` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i9i1--55fff9b68fbce75598d08b03.md) | 2144 | `result-track:55fff9b68fbce75598d08b03215fc1f38ca8c8262da538c23a38a9ab8c21c0ef` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i9bound--f9d33c977dfe195e4c6f89d9.md) | 2158 | `result-track:f9d33c977dfe195e4c6f89d9e99625c4f13a6d19c7bda16c26cb5534145d4e4e` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/one-add-inv-log--f8ed3e81a449b6557e0e5398.md) | 2174 | `result-track:f8ed3e81a449b6557e0e5398d15868a81d857187050050018264100bfbf10e36` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i2bound--99bab1b9d6f1d26dbce81e61.md) | 2215 | `result-track:99bab1b9d6f1d26dbce81e616ab0cb7c7899096e354ecc0d9f00f50b9138fa97` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i8i2--1e9fcbd320834b0ceefac12b.md) | 2372 | `result-track:1e9fcbd320834b0ceefac12bb7aacf57044c933b175b6b041fe2c29ca82f1af5` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i8bound--85367ccdedf753f38ae6b734.md) | 2400 | `result-track:85367ccdedf753f38ae6b734730fee53ecfe04c5447f8d4db4880202c9e3286f` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/log-pow-over-xsq-integral-bounded--b9bcf562143b0fb24ea54f11.md) | 2428 | `result-track:b9bcf562143b0fb24ea54f113f3c9b08bc44e38b99fe42c27e856baaf48c10f8` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i3bound--ebed54a9f2cbce3ff6a6ba6d.md) | 2713 | `result-track:ebed54a9f2cbce3ff6a6ba6d13afb844d4c20645507c0bb38843bbc89d9cd53f` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i7i3--c69329f048090c422e1cc0cb.md) | 2984 | `result-track:c69329f048090c422e1cc0cbcc2b803fa010b53eefb2c4c7f0ae6de92721af53` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i7bound--d351f62f14679e39fc46aff0.md) | 2998 | `result-track:d351f62f14679e39fc46aff08830fb8269b881319932f9180a0aca0fd151ad7b` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i4bound--3712d31225f171bf780f7828.md) | 3032 | `result-track:3712d31225f171bf780f7828bd2f26cec545ca8eb0f16281b05996723f763f64` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i6i4--6dc7d545e66aaf2a586720bc.md) | 3404 | `result-track:6dc7d545e66aaf2a586720bc23beb92c4c97adb71a78e40e57e076f0e1339a31` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i6bound--88e2d20cc3ca721bf930e525.md) | 3418 | `result-track:88e2d20cc3ca721bf930e525f40647eb5d094d6bdfcedf147b04e8dec42cf12a` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/i5bound--64ea2e6db85a87fb273c83ea.md) | 3449 | `result-track:64ea2e6db85a87fb273c83ea8396e7fc22bbff2cf85d5788e23008790f08c779` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/logderivzetaboundedandholo--0046466a70540c3ced643c94.md) | 3599 | `result-track:0046466a70540c3ced643c9433bd9a7930e63b7e18b856d37bdcc2b60334cdcc` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/mellinofsmooth1cexplicit--17ec19449398de20fafcb108.md) | 3625 | `result-track:17ec19449398de20fafcb108f108bb502eaa4bae831458e301374d1f4e04a7b2` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/x-to-inf--e917d3963e3089bce7a942b0.md) | 3645 | `result-track:e917d3963e3089bce7a942b0a4e6dc35ec57856a8eb1780d3ed99ce296d3b26a` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantd6d10b5d55331c3d813b3f5d0738b67580cde6ba3fb507591bc0068e24065542.lean/declarations/mediumpnt--f524367804633754922f376c.md) | 3718 | `result-track:f524367804633754922f376cb2f0b986269abad8e24ed9ceb55acb6ff5ca946e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
