# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d1604bd6db34c61b3582358bc0ae0ae72c87a0c",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d1604bd6db34c61b3582358bc0ae0ae72c87a0c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean.json)

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
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/psi-eq-sum-range--3f81583d2b1959e9b2381fb0.md) | 41 | `result-track:3f81583d2b1959e9b2381fb032fb739d8c6bab57a9abfbe96c1b11417966ba4d` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/chebyshevpsi--26f140c564bad41819521188.md) | 57 | `declaration-track:26f140c564bad418195211886f487684d809dda5472b21739d01415f30b09238` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/logderivativedirichlet--bcdc56f59a15c10bef115dfa.md) | 72 | `result-track:bcdc56f59a15c10bef115dfaffefc232fee57468bb1318580fa379f2ceedaa5a` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevintegrand--c8ddae03827a1d5c23546541.md) | 89 | `declaration-track:c8ddae03827a1d5c23546541cd8d3395322ddad8ca74705da91ff3be01c5feef` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshev--530a0c4d30e712768287994d.md) | 104 | `declaration-track:530a0c4d30e712768287994dfc132d9cd276d29e66c5a634ecd025b3ab2edd9d` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevintegrand-conj--ee297420f67caf31c74a93cb.md) | 110 | `result-track:ee297420f67caf31c74a93cbe6e213943cd4eac9500098aa8a65ba01887af542` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--4eed819d4d993f0e14859847.md) | 151 | `result-track:4eed819d4d993f0e14859847b0b49be9f01734d7571a6dbc99d528ee7255c757` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--4bf95b717d2cd0a54ee302eb.md) | 199 | `result-track:4bf95b717d2cd0a54ee302ebfe43c8d1176d4b3e8b0c5e258a71f42876113aa9` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevdirichlet--87103bb0f45059037adbeeea.md) | 291 | `result-track:87103bb0f45059037adbeeea59bb7ceb676af50ceb854ff8e67c4624e3a212b4` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevclose-aux--3f3ec7e3a9a36f726a416169.md) | 394 | `result-track:3f3ec7e3a9a36f726a416169f5270cf337870ce720a141ffe2b365f9e8cae204` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevclose--7369e8a5d459081f1a0b8bed.md) | 716 | `result-track:7369e8a5d459081f1a0b8bed083084eb9245c7fdb2f2768519075805e0df1989` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--1ef05babde63c809a2ae5eb4.md) | 844 | `declaration-track:1ef05babde63c809a2ae5eb4a8dd57428a23caa8009b526d2a28f331853e402a` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--ea07db34702d612a95c0acf9.md) | 861 | `declaration-track:ea07db34702d612a95c0acf9b3bee888194659eaf1d71e02bb55b53d1662355d` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--0543477d20a35bd68f98344b.md) | 878 | `declaration-track:0543477d20a35bd68f98344bede1591b0d13f6589ff6ba7e0ba8d4f923eef3c8` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--77636029971e5bfe30bf873a.md) | 895 | `declaration-track:77636029971e5bfe30bf873ab5033383c13fc5c568923b867bdcd1263b5a8986` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--925e8f80da323f341e733158.md) | 912 | `declaration-track:925e8f80da323f341e73315890b36505ae97970188ddc9967fa4c936d7c3bb54` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--fe37098b594d552a6aff0459.md) | 929 | `declaration-track:fe37098b594d552a6aff0459d5b81446e050cb197722fb6fbb065f9114f1463a` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--27e5ee361aee3fdb3f972ab5.md) | 946 | `declaration-track:27e5ee361aee3fdb3f972ab575c9f00691467df3c9de3b3d61231a743c88b05e` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--3d4175c6620c8a7fdd0f5546.md) | 963 | `declaration-track:3d4175c6620c8a7fdd0f5546631d626a12787e0b7d43fc728ebdf4cafb11d5fb` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--4d60384cf7773f5aa3335996.md) | 980 | `declaration-track:4d60384cf7773f5aa333599616f052f5528af66c59ec3c3eecaa214a7964134a` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i--e8f269387d5868e445d5ec6b.md) | 997 | `declaration-track:e8f269387d5868e445d5ec6bc17a7c36f09d2713e152395659ccd0fb33956869` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/realdiff-of-complexdiff--84fbe7f690c9103554f51e53.md) | 1001 | `result-track:84fbe7f690c9103554f51e5359c2c9ce547801a60a3212710db556376e06d068` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/logderivzetahasbound--2a722fc9fdfe192f1c81b46d.md) | 1007 | `declaration-track:2a722fc9fdfe192f1c81b46d301a43ba388eb973cf7c03c8d2e733ae84b5009e` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/logderivzetaisholosmall--67ed00f7c9b8f6f81714ff3c.md) | 1011 | `declaration-track:67ed00f7c9b8f6f81714ff3cbb8b2418150cb4ead3834c4fc58cf70fedb145af` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--1247318cba57dab0fce1c5a6.md) | 1015 | `result-track:1247318cba57dab0fce1c5a6603eabdfd5f0c70919672531e36c3afb5a3779c0` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--fb2a142de433a3b128278019.md) | 1033 | `result-track:fb2a142de433a3b128278019c877adb38cd8316063b48af9a045cfbb8f2479a4` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevpull1-aux-integrable--21e474d30bcc2db3f34b95c0.md) | 1056 | `result-track:21e474d30bcc2db3f34b95c07593ba753ca635ba625284fe0d149d4e10d5a2b8` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/bddaboveonrect--124862b73da0f251b40a4c68.md) | 1123 | `result-track:124862b73da0f251b40a4c680df16a7c860cfece3041f11a06b445e8e2186ec0` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevpull1--cf3f3d3613a21eea7c477010.md) | 1142 | `result-track:cf3f3d3613a21eea7c4770109cd8a3b132184998758b5a3c4c514fa49ec52f91` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/interval-membership--1c4204206f8610b599df0cfd.md) | 1313 | `result-track:1c4204206f8610b599df0cfd29e1bb06bbe132b5919dd1dffef62310b8a0e2a7` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/verticalintegral-split-three-finite--457e7dea56a1aa733a91122a.md) | 1322 | `result-track:457e7dea56a1aa733a91122a81920fd5d6a5a46e9799639b29382a82f1054d2d` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/verticalintegral-split-three-finite--9b1773ccf7bb8f1e9f52ef31.md) | 1338 | `result-track:9b1773ccf7bb8f1e9f52ef31644e501308c4a6c4ba1c2d0ef687c7821798d234` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevpull2-aux1--ddd40cc079acf8d79fd90192.md) | 1355 | `result-track:ddd40cc079acf8d79fd90192d7793e5c84b37a5665d6313200fe9fd087278a4d` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/smoothedchebyshevpull2--dd7e6dcc09f29b5c081371ca.md) | 1390 | `result-track:dd7e6dcc09f29b5c081371ca6285dd784ad25f1b8ff9c4010d1721d1f5cbf235` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/zetaboxeval--5f7ce5bee395cc6816189dbf.md) | 1589 | `result-track:5f7ce5bee395cc6816189dbf2cb7ead9e1b483a02a04fb41a91215cf0f284092` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/poisson-kernel-integrable--44cd9d8d9cf7b17f74e33e9f.md) | 1609 | `result-track:44cd9d8d9cf7b17f74e33e9f922383adcce01bbcb49b13356c10e7ed508380eb` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/ae-volume-of-contains-compl-singleton-zero--a93d66ec27c4a0ed7822b9b2.md) | 1624 | `result-track:a93d66ec27c4a0ed7822b9b2f388409459a2710522d05e8ac485d9eda56270be` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/integral-evaluation--c65da93acd5f4ad526b63b06.md) | 1653 | `result-track:c65da93acd5f4ad526b63b0660a69f243e6d71f68d13b7484062b1da45acabfe` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/ibound-aux1--85e9b6bd4a2443ec47497c82.md) | 1745 | `result-track:85e9b6bd4a2443ec47497c8227c35b9f1805ae744895d60c1f1bb473335e3a89` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i1bound--b07e629204516412309e14aa.md) | 1832 | `result-track:b07e629204516412309e14aa60d9d82cb6fa19ff311730494aa1c794c4a9b07f` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i9i1--d1fcb9696290e4c642fcef7b.md) | 2144 | `result-track:d1fcb9696290e4c642fcef7baa3de80283bc65553fb173f9b491a5d8d6ee2d0a` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i9bound--5aea584ab03bd30506278daf.md) | 2158 | `result-track:5aea584ab03bd30506278dafd4f5b9015f0d7b8bf3dc196ceef14a9d1f47af5e` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/one-add-inv-log--73ac529161ac13d8c40c000d.md) | 2174 | `result-track:73ac529161ac13d8c40c000d3dccb54a9efa9b4aa4a90d633674581e819df7e2` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i2bound--a74d160a85da17cb34e1ead6.md) | 2215 | `result-track:a74d160a85da17cb34e1ead69867cd5d9eeebe506fc6a252a9b370408cf33fd0` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i8i2--12e50b0b26a9c79914034e82.md) | 2372 | `result-track:12e50b0b26a9c79914034e82e18f55adb261d3a6f4639c12a182b06a3dc3de7f` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i8bound--68809fc54a88583b81b98577.md) | 2400 | `result-track:68809fc54a88583b81b985775a181e08e9f9e0d222f3feacd063812c63ccb9a2` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/log-pow-over-xsq-integral-bounded--ba4bf11fda44d40f3b2c09ef.md) | 2428 | `result-track:ba4bf11fda44d40f3b2c09ef7db3e2c5c0154303a478c076927bb8c4f85d8822` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i3bound--e630aa2463a04dd14e0b1b7e.md) | 2713 | `result-track:e630aa2463a04dd14e0b1b7e8771cbb7f6c23467eebe5cf90481d83e7a6db278` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i7i3--66abc6686a3979fd266fdf99.md) | 2984 | `result-track:66abc6686a3979fd266fdf991a1fca27a270ac881092bce9d9fd963f91ccf0b0` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i7bound--9bf9dfa14257325cb3eb45e0.md) | 2998 | `result-track:9bf9dfa14257325cb3eb45e0e867af6da663f4ffaff17ce33c160cbc54680297` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i4bound--518d5dc2c829fb28efeca133.md) | 3032 | `result-track:518d5dc2c829fb28efeca133617bf228d0fbbeffce2d54d4efa9c317dfa147fc` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i6i4--fdb90cea78b3cc1525a3cf74.md) | 3404 | `result-track:fdb90cea78b3cc1525a3cf7421322e7d5a874324cff9935c4a4999c26294b4e5` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i6bound--d7827079f2f99306cc67615b.md) | 3418 | `result-track:d7827079f2f99306cc67615b1d500192503a0dd04d77e667f9af9e0897aa2297` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/i5bound--ce8c39432d9b3b436a956945.md) | 3449 | `result-track:ce8c39432d9b3b436a95694593580ce55f744133d4a95bf712880ea7614c95ee` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/logderivzetaboundedandholo--f006d9b585a96cc58c131e1d.md) | 3599 | `result-track:f006d9b585a96cc58c131e1d4bf17f93590311da8a5e2aa5ba2a761cf5acc527` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/mellinofsmooth1cexplicit--11c9552c2e42401771040c62.md) | 3625 | `result-track:11c9552c2e42401771040c620c0bc63fae8e1e8a0cd3a3eb4bc5583c0bb591e4` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/x-to-inf--f48357468196a2b1ff74da4f.md) | 3645 | `result-track:f48357468196a2b1ff74da4f26f47591f89ca69e182450f95462cc2a1ee2a05e` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/declarations/mediumpnt--93e2a4869a68bbff6af9c022.md) | 3718 | `result-track:93e2a4869a68bbff6af9c0222733f2434af5567b53a031ccddd7b51c485117bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
