# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNT.Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean.json)

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
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/psi-eq-sum-range--29f308a7c556a0304297e237.md) | 33 | `result-track:29f308a7c556a0304297e2375954b9e2383a5bb1541edba771df15ff50235abd` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/chebyshevpsi--b9b5e79a3711dc501574167f.md) | 49 | `declaration-track:b9b5e79a3711dc501574167ff0986b146ee77e8fa7495efd5c27b29e8469c551` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/logderivativedirichlet--291147c43a7e783f444d8a37.md) | 64 | `result-track:291147c43a7e783f444d8a374d54341267f04cff24094eefb0b0142ca34d2743` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevintegrand--2a6cf541321994b300670014.md) | 81 | `declaration-track:2a6cf541321994b30067001423e08ab9f04393e58ab1c560e1f89f99fcbc0a93` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshev--838ab3518d26833f2f9e3d16.md) | 96 | `declaration-track:838ab3518d26833f2f9e3d16479d3e327a24c2b63f9026a86ec14d89ac86e7d6` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevintegrand-conj--5abef6d7c038dbe4d97c0acb.md) | 102 | `result-track:5abef6d7c038dbe4d97c0acb0e969862829bfe2b7447d5d232267ba68b8d0abd` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevdirichlet-aux-integrable--ce30b295410e6ca0f2c09f09.md) | 143 | `result-track:ce30b295410e6ca0f2c09f097f5a50d187000443867ad5769bfca0339d3f3895` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral--6c85b05b941099cefcf62e01.md) | 191 | `result-track:6c85b05b941099cefcf62e016fe6766f1d21d836280d21906f2f3cf1fc640a00` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevdirichlet--d91014906de6ff27bf1f46c4.md) | 283 | `result-track:d91014906de6ff27bf1f46c43768039f6938db4bca358b4856ce47f300273de1` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevclose-aux--66b0a1911bbc859693ed0d53.md) | 386 | `result-track:66b0a1911bbc859693ed0d5357e7a241126d071d1bba468e57eaad6f340f1fd1` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevclose--9e07e79f470a411942312964.md) | 708 | `result-track:9e07e79f470a41194231296430ad25f4a7fcc7609649f1ebe894c23a27e7ed41` |
| 12 | `def` | [I₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--08ecfa5031519732693af3b3.md) | 836 | `declaration-track:08ecfa5031519732693af3b3ee0ec4c90d7edd7f61fb201b59acae3ee0de52ae` |
| 13 | `def` | [I₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--4176b63dc80d7ebc33991ed5.md) | 853 | `declaration-track:4176b63dc80d7ebc33991ed5a0d9c3d84bd0260eb2b6af441e0e8b945549c6e5` |
| 14 | `def` | [I₃₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--2f7b7b44d5753a06a52c0655.md) | 870 | `declaration-track:2f7b7b44d5753a06a52c06557194b4995c3ff8a2236f6ed46a53c04e70f40f31` |
| 15 | `def` | [I₈](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--ad853b617e257750ee47a417.md) | 887 | `declaration-track:ad853b617e257750ee47a4176d4b5a5257d38015f80b4e39b58d3b02bdedb137` |
| 16 | `def` | [I₉](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--9a8cd4a5afe7972962013ebf.md) | 904 | `declaration-track:9a8cd4a5afe7972962013ebff41cd7f0dec598632ae5e0eaf5a30cca0600e132` |
| 17 | `def` | [I₃](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--9e73114ec6cdd756a448834b.md) | 921 | `declaration-track:9e73114ec6cdd756a448834b8a5a89eb032acfe9ab113d077ef39fb13c98b030` |
| 18 | `def` | [I₇](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--cd390e490e0f691827816cd9.md) | 938 | `declaration-track:cd390e490e0f691827816cd9c0f0258b84470d1f4590662e6f074c277c700793` |
| 19 | `def` | [I₄](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--77b2d2e72641c73bede496c2.md) | 955 | `declaration-track:77b2d2e72641c73bede496c222a3f54ee2d71060cbe79b5d500ebc1715eed5a4` |
| 20 | `def` | [I₆](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--58c46c5ffdde46715c6eb8b7.md) | 972 | `declaration-track:58c46c5ffdde46715c6eb8b70f38bc94d2755d26716f9f67781672c805fa1fd2` |
| 21 | `def` | [I₅](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i--ef2a2288c80e4e3230aede98.md) | 989 | `declaration-track:ef2a2288c80e4e3230aede98fd4b59f891ebfac76ee73e7287fb871dd3ef0804` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/realdiff-of-complexdiff--8d8190b75ac1eaeb5dec78eb.md) | 993 | `result-track:8d8190b75ac1eaeb5dec78eb004e5a9c4a3cabef33142d7f3d9f05ad8b3ef34f` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/logderivzetahasbound--e5314f90125d5646b2ee46cc.md) | 999 | `declaration-track:e5314f90125d5646b2ee46cc3ed867b4d983021364ff80fac3cf8321f13ee2bc` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/logderivzetaisholosmall--da4ca5a68c75c373ab8b02cd.md) | 1003 | `declaration-track:da4ca5a68c75c373ab8b02cd1b9e415bc3800c18399b75335c710a20015fc52d` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit--b510fb7d920be06f31fb01db.md) | 1007 | `result-track:b510fb7d920be06f31fb01db56a743aa3cf06c99ee701c601e088709c9b3143a` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines--1e7ec2c4d643b7946d557d6e.md) | 1025 | `result-track:1e7ec2c4d643b7946d557d6e8cf6bf58058cc74bd5d31091672a2857d4f79161` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevpull1-aux-integrable--d7bd9f516089fbffaf141691.md) | 1048 | `result-track:d7bd9f516089fbffaf14169172b2b28c5b943cae05e86e39282384cbf3a67f18` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/bddaboveonrect--4118a939a64d257d1b43c592.md) | 1115 | `result-track:4118a939a64d257d1b43c5928b983046f7bf19a80e6ca8c3c45e3ee955c841b8` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevpull1--732478f20363c294cd3aded8.md) | 1134 | `result-track:732478f20363c294cd3aded8058aba67ce06eba4dd6f9fb0f66621b2711747c3` |
| 30 | `lemma` | [interval_membership](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/interval-membership--82dfa6a0ff8e1ca154ca859e.md) | 1305 | `result-track:82dfa6a0ff8e1ca154ca859e51f78408a27a1c3fa1441b17a502325756794576` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/verticalintegral-split-three-finite--4dc1c469f9415ffbc2beb7e6.md) | 1314 | `result-track:4dc1c469f9415ffbc2beb7e6828308a345a82cbed3bcb96b24e2c369d4191a9d` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/verticalintegral-split-three-finite--65f5fb471bdae09d779ff77b.md) | 1330 | `result-track:65f5fb471bdae09d779ff77b59206d846cdc014b00dede81da01144a7e93c279` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevpull2-aux1--91b8c422f8067bbeb4629a39.md) | 1347 | `result-track:91b8c422f8067bbeb4629a39719395b56a35e027d1e7e973914f80470b51af03` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/smoothedchebyshevpull2--84c6a67dedc0e4fb38e17a52.md) | 1382 | `result-track:84c6a67dedc0e4fb38e17a524d41bb6452ee397c24254752b14476bc7f7fc83d` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/zetaboxeval--591effd0576378056e2b919e.md) | 1581 | `result-track:591effd0576378056e2b919e606eebb33548d1dbbc378fc232be34785a9b484c` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/poisson-kernel-integrable--0ab5eb6eaba0db21fea26322.md) | 1601 | `result-track:0ab5eb6eaba0db21fea263222f356091709437da9d37d34c5f318203a572083c` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/ae-volume-of-contains-compl-singleton-zero--6ae451f1da2e08e02f2ff393.md) | 1616 | `result-track:6ae451f1da2e08e02f2ff3934025ad98fb7966a813bfb923799c735ced4a5f9b` |
| 38 | `theorem` | [integral_evaluation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/integral-evaluation--86b206ad80686ba38efdcd98.md) | 1645 | `result-track:86b206ad80686ba38efdcd98280afdc6c602e46255844b09d5d0af1f4b1de57c` |
| 39 | `lemma` | [IBound_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/ibound-aux1--78064fa2eedd2c16ea36f935.md) | 1737 | `result-track:78064fa2eedd2c16ea36f935e3d33f6367f8c0b357a04ffc794f302b2588c5e1` |
| 40 | `theorem` | [I1Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i1bound--cddcac24012b97360d5be6fa.md) | 1824 | `result-track:cddcac24012b97360d5be6fa4c6c690d4561da8f0aae544579abab30186011e7` |
| 41 | `lemma` | [I9I1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i9i1--3d6d19c6b05506dfdbeb82a0.md) | 2136 | `result-track:3d6d19c6b05506dfdbeb82a0eaf16b6d8f0c2c72380b38af3f6e1099f1d910b0` |
| 42 | `theorem` | [I9Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i9bound--79dfd33492ded7c5b329af97.md) | 2150 | `result-track:79dfd33492ded7c5b329af97e742aec71ad988bdfc0d25dfface2f0d7a2a56a9` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/one-add-inv-log--4879b34392d690f22810ee58.md) | 2166 | `result-track:4879b34392d690f22810ee58b2b5a3305ef3e23fe340e8574dbe12bbec84b9ca` |
| 44 | `lemma` | [I2Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i2bound--46eb3097d80f2dc44edb16a5.md) | 2207 | `result-track:46eb3097d80f2dc44edb16a587f96d7b3d45807597ad10b99073c4635ce2eb40` |
| 45 | `lemma` | [I8I2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i8i2--c145228c93da1faa093a08b6.md) | 2364 | `result-track:c145228c93da1faa093a08b68a61bc0c52ee65fc12fee6725df219961870b5ae` |
| 46 | `lemma` | [I8Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i8bound--f5054045718685b5ab7672b6.md) | 2392 | `result-track:f5054045718685b5ab7672b696a3420d94103eb9c8a527bbccd3ffab4efb5fe8` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/log-pow-over-xsq-integral-bounded--74454300d17019e0760779ec.md) | 2420 | `result-track:74454300d17019e0760779ec9b3bcf3bdb42cd7dda0719e17e8a44687b560bd4` |
| 48 | `theorem` | [I3Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i3bound--ea0d3c2e1f8666fec762796b.md) | 2705 | `result-track:ea0d3c2e1f8666fec762796bb071cbd5876f1e964681d3ed9cac8e86c4894607` |
| 49 | `lemma` | [I7I3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i7i3--c0fa1ab88351ac8847374fdd.md) | 2976 | `result-track:c0fa1ab88351ac8847374fdd392669fa4ef93c34c5446357a12a5a8dbaf77a68` |
| 50 | `lemma` | [I7Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i7bound--4bf80b45964ef2a439a309ab.md) | 2990 | `result-track:4bf80b45964ef2a439a309ab249ed614894cc307acd161d28f12bcb230a7388d` |
| 51 | `lemma` | [I4Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i4bound--057d0b429090b17be3b4e5c4.md) | 3024 | `result-track:057d0b429090b17be3b4e5c4d39e4fa97957133a51d0e99dd20e0cd9f8424471` |
| 52 | `lemma` | [I6I4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i6i4--8bcb544a56e6907bbe724554.md) | 3396 | `result-track:8bcb544a56e6907bbe7245542f13cccd043fd0d82ea4f8b3237a6889485a2886` |
| 53 | `lemma` | [I6Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i6bound--83988a9c55b9f843a67f2592.md) | 3410 | `result-track:83988a9c55b9f843a67f25927238aafb81182ebecec282f28617f5b56a55e9b0` |
| 54 | `lemma` | [I5Bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/i5bound--fc8329961bab45778d91e727.md) | 3441 | `result-track:fc8329961bab45778d91e727c841e3e02903d5465dcb35ffdbdf2e43de70a8cd` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/logderivzetaboundedandholo--05eb4fbed4fa374b6093b67d.md) | 3591 | `result-track:05eb4fbed4fa374b6093b67dadd668a1f00a486df4501d7b4dcaebfc6eed49ea` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/mellinofsmooth1cexplicit--9954f80876fbaa0d1013dc52.md) | 3617 | `result-track:9954f80876fbaa0d1013dc52302f688eea814a0517380fc81a3e753377b78268` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/x-to-inf--8d458920a9e4831513aba5dc.md) | 3637 | `result-track:8d458920a9e4831513aba5dcc4c2132492d30409da28ed11fc65f6b537dfe05f` |
| 58 | `theorem` | [MediumPNT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/declarations/mediumpnt--a5b8cea29325728b66a629a6.md) | 3710 | `result-track:a5b8cea29325728b66a629a692566b98480068eaa79472afa6e7ca0c48f5937c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
