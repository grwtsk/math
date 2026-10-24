# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1365e51b2cf5fd8a3efb9c2e8ed59f5304fb93a",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1365e51b2cf5fd8a3efb9c2e8ed59f5304fb93a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean.json)

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
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/psi-eq-sum-range--eb80dbad400f5ec5623d2ffd.md) | 41 | `result-track:eb80dbad400f5ec5623d2ffdfe18140cdf3d366129ba7556b9c34b9f7e7ce73f` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/chebyshevpsi--b15cc7ddb538df9bfc40f522.md) | 45 | `declaration-track:b15cc7ddb538df9bfc40f5227b3e973d8ae8e2977ffc59143bb56a8627c0b368` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/logderivativedirichlet--d0f27242359a5e082f3c4c72.md) | 47 | `result-track:d0f27242359a5e082f3c4c72432234e578e39e0f6c19b4bc4f4d49821e90c6f8` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevintegrand--c06fd3cb80f61f5953f71359.md) | 57 | `declaration-track:c06fd3cb80f61f5953f71359cac413264ad62e194fc1f06a5e0b213eb4edbae0` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshev--b90de113a0d9360c8db452d2.md) | 61 | `declaration-track:b90de113a0d9360c8db452d2e53ca4df3cb422d4b7c6784c3eef3b7b1d70c4d5` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevintegrand-conj--90338c7b5e7180585a4ee03a.md) | 65 | `result-track:90338c7b5e7180585a4ee03aadf3e93658cf65575da66be328efa42e62f86caa` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--83fe8a01fac7181e05dfbcc3.md) | 88 | `result-track:83fe8a01fac7181e05dfbcc31b883d07f3c621eea7a0b0733531dd7715e34010` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--02229218560c85d4c32e3492.md) | 121 | `result-track:02229218560c85d4c32e349263464e565df79ac47d58b546d1a0941974fd369b` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevdirichlet--ea96e9f887ca92a42e9bbb22.md) | 186 | `result-track:ea96e9f887ca92a42e9bbb224522e2478e1303dd95b181a89d6d2addcc39cc1b` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevclose-aux--9a345752a5cc44b3b0ffb246.md) | 284 | `result-track:9a345752a5cc44b3b0ffb246e81d09dc784f0fb3e5e791ef9c83d4603c2903b7` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevclose--9309160fed0751dc9d9a7a2e.md) | 560 | `result-track:9309160fed0751dc9d9a7a2e8817283a7105f13c0774e4d68d442c6034f9c156` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--781da7248facc3371c007b59.md) | 639 | `declaration-track:781da7248facc3371c007b596db9a0df3568a1891bbf71ea1fa280e22922bbd7` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--07780c2dd9cce8a2a72a8c8f.md) | 642 | `declaration-track:07780c2dd9cce8a2a72a8c8fc3f244a1d10525d2b1f538e84b092908ec4e7cea` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--4b1b31d9b7fc3938ff7bada5.md) | 645 | `declaration-track:4b1b31d9b7fc3938ff7bada53a8d48dcdfc0a5986c1484f1b6daaa6c3b93d80f` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--d829390a13883036f0a88482.md) | 648 | `declaration-track:d829390a13883036f0a8848238e19a0d8c142ee434cda431302a9da65c92ebc4` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--fbb6abc21dd454bf0bce562e.md) | 651 | `declaration-track:fbb6abc21dd454bf0bce562e81e7b10430dcae271f00cf593e29f36402c3e476` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--e703274237b8d83813149f29.md) | 654 | `declaration-track:e703274237b8d83813149f299ce4807c8b7a0afe564a9408c4c35e2147d1fdbc` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--fd58c8e10b21b9f16fdf3ff6.md) | 657 | `declaration-track:fd58c8e10b21b9f16fdf3ff610d30547feb21c693bfa5274ac1396d798446307` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--d50dbd85c68ce61606c70e21.md) | 660 | `declaration-track:d50dbd85c68ce61606c70e216f1379f9bbc50292f212d4e9cfc4320d1a50202f` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--07ec432468a9bddfeca6b62b.md) | 663 | `declaration-track:07ec432468a9bddfeca6b62b39ea227abd3c9041a9a7d94658e6b2bd0df2af40` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i--08ae02b7302cbdf82918ef1a.md) | 666 | `declaration-track:08ae02b7302cbdf82918ef1a1fdc985ed2a93d01dd09ef59daf92b95bb11c437` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/realdiff-of-complexdiff--7087f362fcee1b77d9091a62.md) | 669 | `result-track:7087f362fcee1b77d9091a62100413d8852d7f5b7036f1eaff20f27dc9814e56` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/logderivzetahasbound--7443a202f4fddf470241c25f.md) | 674 | `declaration-track:7443a202f4fddf470241c25f020e60fb9932fbf9a24dd49c74fb6bf1a0627fbf` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/logderivzetaisholosmall--61199b5c15a4bd3bed133072.md) | 677 | `declaration-track:61199b5c15a4bd3bed133072c981aba6a95c731bf8168a06879b914c27df07e2` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--35db09bb7a3c42d50d1cad22.md) | 680 | `result-track:35db09bb7a3c42d50d1cad22ad61dcb5d88187dce7cf054210249ea4d90cbee6` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--57c61f539a2a731c83f64a0c.md) | 684 | `result-track:57c61f539a2a731c83f64a0c4da4026e8026278cc2856331380d7391dd45058d` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevpull1-aux-integrable--7173319532f84385ea186315.md) | 690 | `result-track:7173319532f84385ea18631577ed7494dedea7c8ba2f0dd752d308b75ab2ccd5` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/bddaboveonrect--9e8670e3368b25c1bb5ad0a1.md) | 751 | `result-track:9e8670e3368b25c1bb5ad0a122229826ab1ccfd7c667d15711c5b36350505e37` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevpull1--8b91d5d73d1baf3d87fc4f3b.md) | 757 | `result-track:8b91d5d73d1baf3d87fc4f3b6c8135ecd4bb950b43002d4614a010e6308f2283` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/interval-membership--2dc24f4fc18a4b5899ca470d.md) | 925 | `result-track:2dc24f4fc18a4b5899ca470d0f1ab8d7885de6c585b3cf0079a681887c8cd98d` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/verticalintegral-split-three-finite--03973a7e010e6e2612bea5fd.md) | 933 | `result-track:03973a7e010e6e2612bea5fd49b8da40a2d9f46886cf6434c3493cc3af133a87` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/verticalintegral-split-three-finite--dc4d24dc3bce328a6d2d4626.md) | 948 | `result-track:dc4d24dc3bce328a6d2d4626be1315e86c3b2a9a034c5c0dec516f78339e85a5` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevpull2-aux1--ab938e8b22f2e9670defa996.md) | 964 | `result-track:ab938e8b22f2e9670defa9968d8f7290f2f6f3482565960bd8cfa242a509c45c` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/smoothedchebyshevpull2--6016506bdddbd932466a7cbc.md) | 982 | `result-track:6016506bdddbd932466a7cbca330098aec7fdc96834303324f0c12450576c07e` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/zetaboxeval--393181f7673bc903093ae4d7.md) | 1164 | `result-track:393181f7673bc903093ae4d74e2117c20e962e22c7cc29d2ee186a66e7c0cebe` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/poisson-kernel-integrable--afe1f221e59039b532765e44.md) | 1183 | `result-track:afe1f221e59039b532765e445b7f9a7530e99baa4d6e5db1fb59329094cc4587` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/ae-volume-of-contains-compl-singleton-zero--52b95f63c7a6e7468e4aea64.md) | 1197 | `result-track:52b95f63c7a6e7468e4aea64f4381e22c21253862c895b9573a7068cce952d83` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/integral-evaluation--9d1e612dd676b19d60a58674.md) | 1221 | `result-track:9d1e612dd676b19d60a58674e7da64b458c9f321cb6e146ad2341d06687cb777` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/ibound-aux1--25296ef487ff0256b3b121b3.md) | 1286 | `result-track:25296ef487ff0256b3b121b3f5ccd61eb43ad15c582b8715705906ceb618f6a6` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i1bound--bfcaadaa22154f1897258f4c.md) | 1316 | `result-track:bfcaadaa22154f1897258f4cb6602190c635f5f81a060baa841cd1f134a81cc9` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i9i1--719b9b5d4c8a1a9303ab6147.md) | 1574 | `result-track:719b9b5d4c8a1a9303ab6147b079edf1c69d0d01db3b4e972516845d205506c8` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i9bound--c15f89c89afe4f2c0a77652e.md) | 1587 | `result-track:c15f89c89afe4f2c0a77652e10d09a5642eee3510e19515180be1507fcb8d6a5` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/one-add-inv-log--813c1433099f2a7611d40729.md) | 1602 | `result-track:813c1433099f2a7611d407296a32b5d613fd76e8a3e84ce4fce57c4379e07b11` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i2bound--f7684b7292282f511205f714.md) | 1606 | `result-track:f7684b7292282f511205f71497f56c98e7927bf0c7240d89bf673a0f680b169c` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i8i2--ebf44a2aec00eb6c8b57ff4d.md) | 1749 | `result-track:ebf44a2aec00eb6c8b57ff4d8c22d6f04dab507b81d90e3df1dae08fd101ad10` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i8bound--b335802c50fc6b10ff6e4947.md) | 1763 | `result-track:b335802c50fc6b10ff6e49476532e65cac024114cf72c2818b572a8944d66309` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/log-pow-over-xsq-integral-bounded--12916fd6de6bffd87843e225.md) | 1779 | `result-track:12916fd6de6bffd87843e225ad2137062d7d0e73eca3fba4d5534472aff33e4a` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i3bound--452a80f305c462bda94de401.md) | 2001 | `result-track:452a80f305c462bda94de401cd8c8dbaf8cf07f28d863d88ceaa0a555054e7a0` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i7i3--ccd3d2261f6921d6cf5af734.md) | 2235 | `result-track:ccd3d2261f6921d6cf5af7342721e46b5b9cae8868cabbe1504cb4b9191cb644` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i7bound--6af8d1c9c3532dcd459cc6bc.md) | 2248 | `result-track:6af8d1c9c3532dcd459cc6bca5fb00128b9b70cd6879b02c38c9c41d48b14944` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i4bound--8c94f1b106d770f4df97e7f0.md) | 2262 | `result-track:8c94f1b106d770f4df97e7f09a8514d54ac4473c55531a9b55c089a02fd5516d` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i6i4--98332b6add7d42bc744fb841.md) | 2624 | `result-track:98332b6add7d42bc744fb8415642174b6ed6f18ce6cef6bd0d6434953603f21f` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i6bound--3d60b3c75da137a30715901e.md) | 2637 | `result-track:3d60b3c75da137a30715901e64767ba54388de96fab55f06d02dc71244b77edf` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/i5bound--c149a412aa6a1f692706e541.md) | 2653 | `result-track:c149a412aa6a1f692706e541696f0de4061e1720462db1cca35e4456ec2be582` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/logderivzetaboundedandholo--c72b8cdbbfff9ea00a228cf2.md) | 2781 | `result-track:c72b8cdbbfff9ea00a228cf2e486c007e367e1dca71a37175bc376daaa7475ca` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/mellinofsmooth1cexplicit--725e3b9944e8aaa6abc37741.md) | 2806 | `result-track:725e3b9944e8aaa6abc3774189295f7a4c8839d15bbf37faa81c39f22474f554` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/x-to-inf--0c4c87281c19cb4ec2b4831d.md) | 2824 | `result-track:0c4c87281c19cb4ec2b4831ddd81451722f67104504303bdf8f3ff22f11f0cb4` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/declarations/mediumpnt--e2798ba5c0ad717bcc014477.md) | 2879 | `result-track:e2798ba5c0ad717bcc014477e9b1b74897aff41afc031b263eed04e52b8796a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
