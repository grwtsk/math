# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44803b182000672977293e598b84e8212a3b9098",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44803b182000672977293e598b84e8212a3b9098`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean.json)

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
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/psi-eq-sum-range--fa4154423ed260d5d1750241.md) | 33 | `result-track:fa4154423ed260d5d1750241efe793aa255d726090ecd6fff3139c73f6203ae2` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/chebyshevpsi--886438c3078ff28ad1b53354.md) | 49 | `declaration-track:886438c3078ff28ad1b53354f5d20c6615d39521b7b96a3db3a7f99ae7cf9577` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/logderivativedirichlet--4d9e38524b9f2f99ab88625a.md) | 64 | `result-track:4d9e38524b9f2f99ab88625a80bc3f77e4fd11c9102356fa18c3216fd4542d16` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevintegrand--435ad8553e6a879a53d46200.md) | 81 | `declaration-track:435ad8553e6a879a53d462004cadf4661ae2f55b482470e16133ddc854f39c02` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshev--724e210197ba7e5f6108ff22.md) | 96 | `declaration-track:724e210197ba7e5f6108ff22162fa2f8fca88e471664129b7e2acc69e3ce5717` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevintegrand-conj--29227c7fbdb489917870fe6d.md) | 102 | `result-track:29227c7fbdb489917870fe6df13143c10f79c30f3daacb8ca87a3662a2f8cf7c` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--7926104100d3a54545b56728.md) | 143 | `result-track:7926104100d3a54545b567288a73d7f9f79ffe30285526385d34a103a573b217` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--a264d1d87b9855f101c6b856.md) | 191 | `result-track:a264d1d87b9855f101c6b8567404e82218f5e21db3940668a6fc70d2106bc078` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevdirichlet--db5cb4d1de59b94984d681d8.md) | 283 | `result-track:db5cb4d1de59b94984d681d8e0de4269370e37aa52af9417af9706d3cb277cb7` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevclose-aux--24100159068009f791aac088.md) | 386 | `result-track:24100159068009f791aac0889d4fc328767b4c10891131800271024102025579` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevclose--a1782091fc81dedc08649479.md) | 708 | `result-track:a1782091fc81dedc086494793383183c2a5196fd8bdd1b304d803ccf7708671a` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--21c1d3dc237d602f2b53146d.md) | 836 | `declaration-track:21c1d3dc237d602f2b53146d4439f310306a29e254ee223fd50dadf9fb566f48` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--33890af0ea22744024cc804c.md) | 853 | `declaration-track:33890af0ea22744024cc804c23841b3f33308eab7076f0096fa3c9e1c09ae51f` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--032b63f973ac72a8a13322b0.md) | 870 | `declaration-track:032b63f973ac72a8a13322b020babe6ff21a8d0ab7c140930620a08bfbf592fd` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--f6c67bb848b1632e06c66241.md) | 887 | `declaration-track:f6c67bb848b1632e06c662414fdbce9d00b4941ee48c023adf68f8b5f9d8ca16` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--e0c83c7eeb22cce20b76c4d9.md) | 904 | `declaration-track:e0c83c7eeb22cce20b76c4d9c7d84060e2dd530bc216e5bdb7224e8c744d1e36` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--14f7b91340b33450c83f5067.md) | 921 | `declaration-track:14f7b91340b33450c83f50679351761e4da083fac1a1afc5185561b25bd6b11e` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--aec4b641a5d16d12de2e438a.md) | 938 | `declaration-track:aec4b641a5d16d12de2e438a4103bc738799c08b91a4b9817cb940633e142685` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--44d86b22ee1aa10c03d053c1.md) | 955 | `declaration-track:44d86b22ee1aa10c03d053c15b89f2abd86c932127ddbb5f82ad0cb2f1f3930b` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--48c03fc8733c6cbf6acbc55a.md) | 972 | `declaration-track:48c03fc8733c6cbf6acbc55a8800b30af60039e8495a73d395d905985368044d` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i--aaa4bc5459ac62a0f4084741.md) | 989 | `declaration-track:aaa4bc5459ac62a0f4084741a78e8edfee9ff806100cb2cea680754519204846` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/realdiff-of-complexdiff--28e3870109b6ad3d7ea015bc.md) | 993 | `result-track:28e3870109b6ad3d7ea015bcfb9ed16d5a05798db88f1665e7d1db934be9d0c3` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/logderivzetahasbound--db726fecfd67ff564aae0203.md) | 999 | `declaration-track:db726fecfd67ff564aae02036fab2b9d697709f6afb3d0a485647a1cccd7a2aa` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/logderivzetaisholosmall--fac973fec71b2ffbf81e6e5f.md) | 1003 | `declaration-track:fac973fec71b2ffbf81e6e5fe33a9061914bb8bb391d6171f5b0b4f00b51a19f` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--6a5bbda493be2b5a1179a183.md) | 1007 | `result-track:6a5bbda493be2b5a1179a18336d8d2f09c660dcb61d5ce09642bbd21252dd50a` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--1f20adefdfd587d625d1a087.md) | 1025 | `result-track:1f20adefdfd587d625d1a087e2fb351e2f142f1df81c25493589137a1de48b11` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevpull1-aux-integrable--ab576b8ed86d3464e29ab783.md) | 1048 | `result-track:ab576b8ed86d3464e29ab78329c1c692d62c0bd5d4b189070bbacc853f221e98` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/bddaboveonrect--66b8de7ad335e7864bda49a8.md) | 1115 | `result-track:66b8de7ad335e7864bda49a8e2e6424b1dd24082eeecd1da67dddbcc1785bb0e` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevpull1--2913ea0fbff5974b5f7fe7c5.md) | 1134 | `result-track:2913ea0fbff5974b5f7fe7c59252347a3cdae82fd414c1866279f59475c70b83` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/interval-membership--abe9c0a5f877ab6d4fc16b06.md) | 1305 | `result-track:abe9c0a5f877ab6d4fc16b06c7b447b0035ec45e9964a14346cda8cf77beb7ee` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/verticalintegral-split-three-finite--fced7ca5ac9af39999976e7f.md) | 1314 | `result-track:fced7ca5ac9af39999976e7fe4797becdbb0d7f655f748e8f1cfa31b8ed30661` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/verticalintegral-split-three-finite--da3319ecb4d5a07fa74f9dd0.md) | 1330 | `result-track:da3319ecb4d5a07fa74f9dd0db9825ca7420aee41832c3a8c84d6fd945fed526` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevpull2-aux1--bc3fe82593f5aea42ec09b85.md) | 1347 | `result-track:bc3fe82593f5aea42ec09b853eec5916efeb1244ba6b6d361fc260c17357a307` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/smoothedchebyshevpull2--dec3ca3a910c92c8e6038440.md) | 1382 | `result-track:dec3ca3a910c92c8e60384400deb872b49c3ac80db8acdd236649133b79e5562` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/zetaboxeval--d191ebc531ade4e520a1818b.md) | 1581 | `result-track:d191ebc531ade4e520a1818b2252f72f8de20c08516956119e779470e6321dea` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/poisson-kernel-integrable--6655ee22031f1b33285ddddd.md) | 1601 | `result-track:6655ee22031f1b33285ddddd120b601ef64e5dbd1dea4e7fcc81dbf63f82ff0c` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/ae-volume-of-contains-compl-singleton-zero--3032d2ac74e1e20d970b11d8.md) | 1616 | `result-track:3032d2ac74e1e20d970b11d8e6c6623940760bf0a661a19464020f0fe434fccc` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/integral-evaluation--6d967fe0e6a2a15458be40ec.md) | 1645 | `result-track:6d967fe0e6a2a15458be40eced1f2f45c15353d35f576879e3cb7eed35de1594` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/ibound-aux1--a10f85f9a2a0436903e2f68d.md) | 1737 | `result-track:a10f85f9a2a0436903e2f68d1cfbd6d53a0138fa2fa15a91809f0e8322d1a5d5` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i1bound--9d972aa18f842c906039cf32.md) | 1824 | `result-track:9d972aa18f842c906039cf3287561614d4cfc9bc5506f537b4996305500553fe` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i9i1--84be5d53ce3e295059d28774.md) | 2136 | `result-track:84be5d53ce3e295059d287745c0e6f9a657508aed0f810ed701ba48a5e78c8f2` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i9bound--2e765d9b46f457a998eb9a61.md) | 2150 | `result-track:2e765d9b46f457a998eb9a6185dc05d1727d6a04b314740f9d52386712841e84` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/one-add-inv-log--6e2932a26fc5cc27710e6673.md) | 2166 | `result-track:6e2932a26fc5cc27710e66732156511330b2c50375e54eaad5a1f981e278e141` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i2bound--665f786dc7d85fd4b726b8a0.md) | 2207 | `result-track:665f786dc7d85fd4b726b8a0250c49700435f08c205fd8f7af60c723539fc5a3` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i8i2--ff8cb7fe6a897c2998d2aac5.md) | 2364 | `result-track:ff8cb7fe6a897c2998d2aac53f045d6169cba38ad163c1dbf010b6dc4d71eb7e` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i8bound--f265f5960863d3770d3fe718.md) | 2392 | `result-track:f265f5960863d3770d3fe718814c6d60eb74f9484fe1fe04a63205943cea1477` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/log-pow-over-xsq-integral-bounded--e6c4541b39e39a78153ee84f.md) | 2420 | `result-track:e6c4541b39e39a78153ee84f319885193438173d5c7b8b92fda809f7556521a8` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i3bound--71767d9b48557e3819a71d95.md) | 2705 | `result-track:71767d9b48557e3819a71d95163bebab5d7de10b7f4c043e4a689229740cf7d2` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i7i3--c150a7656416a22284353005.md) | 2976 | `result-track:c150a7656416a222843530058e5078757b704d778053d10480098873327425df` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i7bound--5066f458d6d83cdf480d0480.md) | 2990 | `result-track:5066f458d6d83cdf480d0480511758aa1e213cf9f27340ec10ca46fb59a1a811` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i4bound--fc1502b0abc4bd3506393e6a.md) | 3024 | `result-track:fc1502b0abc4bd3506393e6a1c1cf657bf4e94c147e9591f2b72035a31dc995f` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i6i4--7daa770704d963921e21d437.md) | 3396 | `result-track:7daa770704d963921e21d437795c522eb3ace9e6a0025660c7c627438666c124` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i6bound--880e68dbd052b4f364336e68.md) | 3410 | `result-track:880e68dbd052b4f364336e68ec545edbdf4495d98ec54e66da7ce7d83e1994d6` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/i5bound--73b9331acde4fa87175c7414.md) | 3441 | `result-track:73b9331acde4fa87175c74144432274b7cd60bf25d867e9e9b3e9397be473dd6` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/logderivzetaboundedandholo--758f387437b6369b27deb184.md) | 3591 | `result-track:758f387437b6369b27deb18451144e2975ef89e2938052bb8422fa43f9b09a8b` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/mellinofsmooth1cexplicit--80ae53527dd4db8f0d72bdca.md) | 3617 | `result-track:80ae53527dd4db8f0d72bdca38dbbbfc07073023ebb58cf72c71179c09b658ef` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/x-to-inf--5f714c4bf52362b39016902e.md) | 3637 | `result-track:5f714c4bf52362b39016902e983abd40f3f0aaef708fa5c9bfe953affec261b8` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/declarations/mediumpnt--533af4b58eb4060f98f69e21.md) | 3710 | `result-track:533af4b58eb4060f98f69e21f349d4b7898930d53818ebefa3c1e5eede26c031` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
