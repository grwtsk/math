# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83f66040916d04628c1f8386ae50cec36e1f2b92",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83f66040916d04628c1f8386ae50cec36e1f2b92`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean.json)

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
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/psi-eq-sum-range--b061073aca35fb19174bead0.md) | 42 | `result-track:b061073aca35fb19174bead0712292858e792385420daa67aa241c215363f92b` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/chebyshevpsi--5acc6ab5303aa2de9fff3728.md) | 48 | `declaration-track:5acc6ab5303aa2de9fff3728ed8b6df565cf3d98150a2af20542659568a403da` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/logderivativedirichlet--09e7737612035f6ba0575510.md) | 51 | `result-track:09e7737612035f6ba0575510bc9fb365ecd5c66b24a36101a996052d21411d54` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevintegrand--87bddad562989b435297a2d7.md) | 62 | `declaration-track:87bddad562989b435297a2d7c8d30bd8e1ed0e08bed083772bb8c40a033678e8` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshev--2224fd9e94f25c13f258af00.md) | 67 | `declaration-track:2224fd9e94f25c13f258af0035c942211dc2ececaa27fba4d7a24c4ea0be6837` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevintegrand-conj--d250a96d0e50fa6fd866abe3.md) | 73 | `result-track:d250a96d0e50fa6fd866abe3d72d40010221baa9ff5dd074308960401fb3c07a` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--d5d20492b675e63b393eb537.md) | 98 | `result-track:d5d20492b675e63b393eb537d1c3b0553009acffc85860fe7d5183cc2bab1a47` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--537a8d38fda8f0b6a5b367b3.md) | 133 | `result-track:537a8d38fda8f0b6a5b367b3a3267eeb482a93c8cb25bba34b44443b18f6312a` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevdirichlet--7f322634c52a469615051437.md) | 204 | `result-track:7f322634c52a46961505143764b09e6e28b3bf306bc883f6d3eb5827bfdd4896` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevclose-aux--1c4415f7a552860ff58db54e.md) | 303 | `result-track:1c4415f7a552860ff58db54e0d2617ee283290762c9b0d509c96753b1bed9e25` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevclose--acb308f502985a68985075f7.md) | 606 | `result-track:acb308f502985a68985075f744eac2df437f277d6ba08add5f5f62354de6b29b` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--9213cc489c883d9375788178.md) | 705 | `declaration-track:9213cc489c883d9375788178c4729046e064340f1b649a75c8e56ec9c89dc563` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--30c417fd11df83816839b63b.md) | 709 | `declaration-track:30c417fd11df83816839b63be4ead87d58c274ab5c050befbdafb89d466200cf` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--46dcd7e33a32056a7f27c02b.md) | 713 | `declaration-track:46dcd7e33a32056a7f27c02b127654936bf875fcdd6247ebcdf135be6f9c687f` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--d54b6504bb16a6767eed75ed.md) | 717 | `declaration-track:d54b6504bb16a6767eed75ed8187492f0445419c1d5ed603dc322ad1f33e742b` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--7fa8db09eab8e71afcfccfd7.md) | 721 | `declaration-track:7fa8db09eab8e71afcfccfd7ca0d18b3e552c364f039eed14d58347cbdd2c5c6` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--92a7619bb488e4972c6c0d31.md) | 725 | `declaration-track:92a7619bb488e4972c6c0d3144b6b81f1b53b3a646f9331d87829977d61b83b5` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--1145823b2d72a88a637064f1.md) | 729 | `declaration-track:1145823b2d72a88a637064f1ad7fc83ba8ebac5347376a4b9018e013f45db686` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--a560d431238876370c60f993.md) | 733 | `declaration-track:a560d431238876370c60f99357b3061b8631014587ce04bb391bcc7e40445059` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--8cf100ea32c039db4982378e.md) | 737 | `declaration-track:8cf100ea32c039db4982378ec98fac048c66f0421d542c3d9f73192cf3c922db` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i--1ed608ac6adb44fa213330a4.md) | 741 | `declaration-track:1ed608ac6adb44fa213330a43e5d272305b23d7bd8d62b3ab40d8d7228715722` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/realdiff-of-complexdiff--cef11e2b802ae96519132198.md) | 745 | `result-track:cef11e2b802ae96519132198a198d96d029743c9693448400f75fc7cee047f08` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/logderivzetahasbound--7235f06992b5cec139109244.md) | 751 | `declaration-track:7235f06992b5cec1391092449c7d668827a80643688224e71ab01416490dda27` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/logderivzetaisholosmall--8f1259d6de5523a1290bd8eb.md) | 755 | `declaration-track:8f1259d6de5523a1290bd8ebc02f53c36b2690d8fba597749d056743ef527a38` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--01441c76ecc8c5b4c437ae2f.md) | 759 | `result-track:01441c76ecc8c5b4c437ae2f83380fd4dfcd3d94c38aa9917276f81b55401ee2` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--f5a06a670dc9a331b7012bf9.md) | 764 | `result-track:f5a06a670dc9a331b7012bf9bce076d266dd4f867e8bbbdd3b9e67c2207ad69b` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevpull1-aux-integrable--3091a441b043467e40f05c59.md) | 771 | `result-track:3091a441b043467e40f05c59b6eca7a5f2378bc8f0a9a2ac9b09aa85f2faa160` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/bddaboveonrect--603385382550a922904e7d60.md) | 833 | `result-track:603385382550a922904e7d60cbaaaf1e380b921ccc6863d3fb75e539bf253b74` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevpull1--23009bb77eab199ec59553da.md) | 840 | `result-track:23009bb77eab199ec59553da6c723baba601674316ee8db5e31a1b375f62264b` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/interval-membership--f2fba1f6a945218425f81cf8.md) | 1011 | `result-track:f2fba1f6a945218425f81cf8042ae0a8d9647fb9092e12e3d58b66529b20cdc1` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/verticalintegral-split-three-finite--9a9fcbe909d7d74417232e97.md) | 1020 | `result-track:9a9fcbe909d7d74417232e976eb539f82ac8a6dc0162d4905be900fa5ccd05ef` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/verticalintegral-split-three-finite--539c28c6c9d52295869ef80e.md) | 1036 | `result-track:539c28c6c9d52295869ef80ea0b8bb19b42e03b2a54b6770305236a292cca8ff` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevpull2-aux1--ff34ec6d53632f4c3f860936.md) | 1053 | `result-track:ff34ec6d53632f4c3f860936046937678872dd998eb00f4f2662462bb0f6ec3e` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/smoothedchebyshevpull2--f8058271253d3f7fecbe81cf.md) | 1072 | `result-track:f8058271253d3f7fecbe81cf39d0ca45718fd32e7f4a01b1d9901a3184c8044d` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/zetaboxeval--19855d2d440e5896e085831d.md) | 1255 | `result-track:19855d2d440e5896e085831de861f3fa4cf45584bd19d36e9809ebbac39560f0` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/poisson-kernel-integrable--8842afdd0f69306fc5b313d7.md) | 1275 | `result-track:8842afdd0f69306fc5b313d70fbe2a6991fc5bbc75d18c3a12e983e86fa66535` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/ae-volume-of-contains-compl-singleton-zero--ad46fc7648d673474ff62f39.md) | 1290 | `result-track:ad46fc7648d673474ff62f39fcc82c3c048b226e9fc13d8ed441348aa812a1a1` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/integral-evaluation--3e5cf640acd29cca5e84cedc.md) | 1319 | `result-track:3e5cf640acd29cca5e84cedcc427c57dd2a96610c1dff6a559f8d5ef6d85a54a` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/ibound-aux1--c48cac3b19b33624c0d38172.md) | 1391 | `result-track:c48cac3b19b33624c0d3817279706c7e384762b29684519b10a3e1bd65b5705e` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i1bound--d626d69f3fc436b9cd17c031.md) | 1422 | `result-track:d626d69f3fc436b9cd17c031c7ab33584b1048285f992889c1ce85f9137b686f` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i9i1--16b5a765bc40f002a66614d8.md) | 1734 | `result-track:16b5a765bc40f002a66614d8135eb010f479d7ad47635e1cdf892a72bfcee1f0` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i9bound--fb2415d96ee8617aab14ffd5.md) | 1748 | `result-track:fb2415d96ee8617aab14ffd5daa86713dd44848e0a9a1bb37d88f7d8f1a327c5` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/one-add-inv-log--1df96643b9592266907018d6.md) | 1764 | `result-track:1df96643b9592266907018d6bcec8b450a0f0691fb91745a204fa89c0f210279` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i2bound--05684bcfeb85322a1728f8b4.md) | 1769 | `result-track:05684bcfeb85322a1728f8b4d082b97b47685b14bb75b5f3f9243798fcd9216d` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i8i2--6f739288ca6bed07cb8648b7.md) | 1915 | `result-track:6f739288ca6bed07cb8648b74a8c67117e2b816b65adc311b32dc578ce86363d` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i8bound--7929f0c71680ebc4c93a8795.md) | 1930 | `result-track:7929f0c71680ebc4c93a8795153330bdade1f1a4717f2276a9642c4fa08538b5` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/log-pow-over-xsq-integral-bounded--1ea19e823d1354bebf11bee4.md) | 1948 | `result-track:1ea19e823d1354bebf11bee4b077b92f43cd75d33ec2c5440e34a64192b574c1` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i3bound--e52c34eb6d14fb9677cd4860.md) | 2198 | `result-track:e52c34eb6d14fb9677cd48601a0e06555f802056381ea6c8579f3d0de2496768` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i7i3--bafa01c8f9e9cb4ecc3b0f0d.md) | 2469 | `result-track:bafa01c8f9e9cb4ecc3b0f0d10ae01543ed3f901ad65a69edc2a41c790b8a8ff` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i7bound--8cc9c14968ebb9f435a48307.md) | 2483 | `result-track:8cc9c14968ebb9f435a48307c0f870eac6d4c7b72a8f2ed01b1bb3477668efad` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i4bound--d55afebc6a593eb38dab8f36.md) | 2498 | `result-track:d55afebc6a593eb38dab8f361dadcc4feb582ebcc50afdd77ee70de519872a34` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i6i4--9ddbe589fa640d56615e56e1.md) | 2870 | `result-track:9ddbe589fa640d56615e56e1118cf7623c36537dba86ab9c4a7eef8817ad267f` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i6bound--3c93668a75c71613b081084a.md) | 2884 | `result-track:3c93668a75c71613b081084ad645250eef6cfe57acf2ad5196becc5d812f87ea` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/i5bound--28264d22471fe141d67960cf.md) | 2901 | `result-track:28264d22471fe141d67960cf3415b09e96fddbfe0c26669d03825f48ae30dc0a` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/logderivzetaboundedandholo--62f58fda78ffacaae53a7162.md) | 3051 | `result-track:62f58fda78ffacaae53a71627df7840d76d5a5f0b3087a405f9fbb5ecc8b2f26` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/mellinofsmooth1cexplicit--538d61e62af47eaf3c423f03.md) | 3077 | `result-track:538d61e62af47eaf3c423f03fa61604daa0b378b6b5efbe266d35c6867b65a0f` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/x-to-inf--6e64dade1bba0f3957004a3c.md) | 3097 | `result-track:6e64dade1bba0f3957004a3c0fd53cf90d373203f2f851f04e2b1061d8367ed1` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/declarations/mediumpnt--fbf29db6cd88f6fea2ec299b.md) | 3159 | `result-track:fbf29db6cd88f6fea2ec299b8386f1df6a5cb5e715280e277cba577cc8a565a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
