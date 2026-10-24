# Verification target: GRWTSK.Analysis.ComplexAnalysis.StrongPNT.Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4174ed82a0b4c9ac6a8ada5434aab619353c11ae",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4174ed82a0b4c9ac6a8ada5434aab619353c11ae`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.HasPrimitives` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Principal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.BorelCaratheodory` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MediumPNT` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AnalyticOn.norm_le_of_norm_le_on_sphere](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/analyticon-norm-le-of-norm-le-on-sphere--d4271f7d1f8b4e3cf6723cdf.md) | 47 | `result-track:d4271f7d1f8b4e3cf6723cdf05dfe63e093cdff5fe0cf9341bffa75456579de7` |
| 2 | `theorem` | [borelCaratheodory'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/borelcaratheodory--ce698d930c974c2559115034.md) | 79 | `result-track:ce698d930c974c2559115034ead7253a4413bff263cf5f86f68955d14e3f3a8a` |
| 3 | `lemma` | [cauchy_formula_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/cauchy-formula-deriv--49f27966b6f714fa26499ea8.md) | 120 | `result-track:49f27966b6f714fa26499ea869b86fe65c7f5f54f8144ab3e66c81f3275049ba` |
| 4 | `lemma` | [DerivativeBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/derivativebound--56edba95c93ad6f9080a822a.md) | 159 | `result-track:56edba95c93ad6f9080a822aae60dc0903727bbd0b13a0bf35d9226a91835ebf` |
| 5 | `theorem` | [BorelCaratheodoryDeriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/borelcaratheodoryderiv--02178b0d871c8ae9ff910c04.md) | 201 | `result-track:02178b0d871c8ae9ff910c04531e109876da66779aa505c08356653ff837f501` |
| 6 | `theorem` | [LogOfAnalyticFunction](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/logofanalyticfunction--882f020bad3a89aac2b7cabc.md) | 257 | `result-track:882f020bad3a89aac2b7cabcfda9044e7d660518cc3231e011ed6f6c7aabf990` |
| 7 | `theorem` | [LogOfAnalyticFunction'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/logofanalyticfunction--fa3966538dce57c55acb0bb1.md) | 327 | `result-track:fa3966538dce57c55acb0bb175b5805e1cdcfffa225a0fa5c50c8fa334fd119c` |
| 8 | `def` | [SetOfZeros](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/setofzeros--71ce8fdf6058c858359c6733.md) | 346 | `declaration-track:71ce8fdf6058c858359c67339496ab0f5474911365ab46fd38ea8d9ea5365a32` |
| 9 | `lemma` | [finiteSetOfZeros_mono](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/finitesetofzeros-mono--ce8122093b5b657aee49fa3c.md) | 350 | `result-track:ce8122093b5b657aee49fa3c33cfd8dc48838868a060867457c22657122b5c7c` |
| 10 | `def` | [ZeroFactor](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/zerofactor--fc27b6ce61c0b944cfd48706.md) | 381 | `declaration-track:fc27b6ce61c0b944cfd48706efa5b43a960889d841ef5aec2e016087b29a8a53` |
| 11 | `lemma` | [ZeroFactorization](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/zerofactorization--893e79e4c267b3209937f70c.md) | 410 | `result-track:893e79e4c267b3209937f70c9525aaa679c43a0bfec426b40fad6f49482feb94` |
| 12 | `def` | [Cf](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/cf--f2d60c64f71554fb2fd5b216.md) | 454 | `declaration-track:f2d60c64f71554fb2fd5b216b34e5136aaaabd3ec3f97c1acbbc863ae7ce213a` |
| 13 | `lemma` | [analyticAt_finset_prod_sub_pow](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/analyticat-finset-prod-sub-pow--23fbf2009ecf2c10d6403205.md) | 464 | `result-track:23fbf2009ecf2c10d640320548d80f21dc0805aa7663b3a3165ac82027b91054` |
| 14 | `lemma` | [CfAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/cfanalytic--29a896e39a86239975a3eeee.md) | 487 | `result-track:29a896e39a86239975a3eeee320bb6ee7391afacf0b293146dbaeade1cb1f66f` |
| 15 | `def` | [BlaschkeB](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/blaschkeb--85bf32c3ce0594ddb4302cad.md) | 548 | `declaration-track:85bf32c3ce0594ddb4302cad0bddc311509f1db8b23d9664e926c29ac93805f2` |
| 16 | `lemma` | [BlaschkeAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/blaschkeanalytic--ec13fb8e09bf14bee58d5e73.md) | 564 | `result-track:ec13fb8e09bf14bee58d5e73aeb450e6ae2c5c6d1b5be2cbd3ebef15f1827d0f` |
| 17 | `lemma` | [BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/blaschkeofzero--2426a1ef935922b5f85772ae.md) | 601 | `result-track:2426a1ef935922b5f85772aeb9ebaadf28290c0200e7688b63cd4112896abac6` |
| 18 | `lemma` | [norm_fOfZero_le_norm_BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/norm-fofzero-le-norm-blaschkeofzero--feadfef6d66bf08ee97412bd.md) | 637 | `result-track:feadfef6d66bf08ee97412bd6d094c30c9d8b45976df4c0518e61c5b051732aa` |
| 19 | `lemma` | [DiskBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/diskbound--7da6bee7829f125e1ee0ec70.md) | 683 | `result-track:7da6bee7829f125e1ee0ec70833dfd7c8738729a4756dd1f219e7fdcde11d0bc` |
| 20 | `lemma` | [BlaschkeNonzero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/blaschkenonzero--496df32d8967c1ba2027d5a9.md) | 775 | `result-track:496df32d8967c1ba2027d5a9f72fd59b1ec1d72a61d0b7869bf726d6295413f8` |
| 21 | `theorem` | [ZerosBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/zerosbound--e89f196627a363b349f914ff.md) | 838 | `result-track:e89f196627a363b349f914ffa4db53344527bf7dde3544f3e727dafcedf37372` |
| 22 | `def` | [JBlaschke](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/jblaschke--fe2879165847d2ffef2b8798.md) | 878 | `declaration-track:fe2879165847d2ffef2b8798a1c971a1d25ca7c4edd095e8437524b480e8bcee` |
| 23 | `theorem` | [JBlaschkeDerivBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/jblaschkederivbound--fe44fd676cfbedd7bc9cf346.md) | 910 | `result-track:fe44fd676cfbedd7bc9cf346beb13229db6862414a8f23b69296659ae2fb7636` |
| 24 | `theorem` | [FinalBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/finalbound--c897664ba261f6c68a6d3722.md) | 980 | `result-track:c897664ba261f6c68a6d37225aaf93b20477e33ea03680999ba5e988293ceffa` |
| 25 | `theorem` | [ZeroInequality](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/zeroinequality--df23e6817b86129b25aac193.md) | 1483 | `result-track:df23e6817b86129b25aac193398c3db2667e2a95a24d07302a038343e6e4ee2e` |
| 26 | `def` | [E](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/e--a790572db6e0b4279753c9c8.md) | 1494 | `declaration-track:a790572db6e0b4279753c9c808076e4fe0d388c2b6484ca48dfc1e1d3e6d2751` |
| 27 | `lemma` | [EinIoo](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/einioo--5d722f6aeb41dbf5e324f089.md) | 1495 | `result-track:5d722f6aeb41dbf5e324f089250a92d2483f143658d856545d58b795442d5a05` |
| 28 | `theorem` | [ZeroInequalitySpecialized](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/zeroinequalityspecialized--07e969079e107a28302e804e.md) | 1496 | `result-track:07e969079e107a28302e804e377b4f38a101542a4f0f6aa63326f3e71dbb46de` |
| 29 | `def` | [DeltaT](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/deltat--9dfd4f2c5da741b1504af613.md) | 1507 | `declaration-track:9dfd4f2c5da741b1504af613fb22aedce34c9c6de99f6f82007fcd663126a0f7` |
| 30 | `lemma` | [DeltaRange](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/deltarange--fd9b865a36befb44c91f78e4.md) | 1532 | `result-track:fd9b865a36befb44c91f78e4f3769b4511a1bba93d709665e7ee597ae3b78c63` |
| 31 | `lemma` | [LogDerivZetaUniformLogSquaredBoundStrip](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/logderivzetauniformlogsquaredboundstrip--11060fa1a139c4e97f0107d9.md) | 1649 | `result-track:11060fa1a139c4e97f0107d9ad46f60212ef8cf473001bcb03dbf980ac11fd72` |
| 32 | `def` | [F](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/f--33006f7ce82da8150862b5f6.md) | 1658 | `declaration-track:33006f7ce82da8150862b5f6a1f73ea9604e72160fd7e71ac9797ae4bd537633` |
| 33 | `lemma` | [Fequ](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/fequ--30eea287e1059f35c6866a9b.md) | 1659 | `result-track:30eea287e1059f35c6866a9b07014cba2e2174577b0998cc8a51684e3492acfc` |
| 34 | `lemma` | [LogDerivZetaUniformLogSquaredBoundStripSpec](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/logderivzetauniformlogsquaredboundstripspec--0d4b056876ecfbbd59088a6b.md) | 1660 | `result-track:0d4b056876ecfbbd59088a6bfa388e3783511fb59710004f736990bfd766ec64` |
| 35 | `lemma` | [FLogTtoDeltaT](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/flogttodeltat--81e79337871ed0541f268ed2.md) | 1666 | `result-track:81e79337871ed0541f268ed2278761afdbc9d06364efe422711c9a1612bf0cac` |
| 36 | `lemma` | [LogDerivZetaBdd_of_Re_ge_three_halves](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/logderivzetabdd-of-re-ge-three-halves--98121731d9dd842e36ef32db.md) | 1671 | `result-track:98121731d9dd842e36ef32dbc53084e5f08248f803ff80ab3acf01041f43127e` |
| 37 | `theorem` | [LogDerivZetaUniformLogSquaredBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/logderivzetauniformlogsquaredbound--c0fa78ecf93304f0b09a8963.md) | 1754 | `result-track:c0fa78ecf93304f0b09a896386acda7ab63d1cb9d77537cb1518db7e648e0037` |
| 38 | `theorem` | [LogDerivZetaLogSquaredBoundSmallt](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/logderivzetalogsquaredboundsmallt--94360cd306eaabf1cedd5bdc.md) | 1794 | `result-track:94360cd306eaabf1cedd5bdc474b428ed667a2069a09e771e64d350dda5d49e3` |
| 39 | `def` | [I1New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i1new--f75093b5c78310b06261ef21.md) | 1834 | `declaration-track:f75093b5c78310b06261ef2101806aae6cf24b0fc31bed8bf0b0e36315a02b1b` |
| 40 | `def` | [I5New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i5new--367a1d49fc1c2a3786915b5b.md) | 1848 | `declaration-track:367a1d49fc1c2a3786915b5bd2537a188e41a0a60347bcbe57c8f21199856f42` |
| 41 | `lemma` | [IntegralLogSqOverTSqBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/integrallogsqovertsqbound--0f23c7ccb4b82dedd742fb1a.md) | 1852 | `result-track:0f23c7ccb4b82dedd742fb1a3b058964e4e1d3b0c975bc4b23b3d97ccca9fceb` |
| 42 | `lemma` | [NormXPowS](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/normxpows--ef5f9e522b8448e7b2557002.md) | 1905 | `result-track:ef5f9e522b8448e7b25570027c30f6a0abf8002ec9f76292b7828f24b5928ced` |
| 43 | `lemma` | [LogDerivZetaBoundForI1](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/logderivzetaboundfori1--1c1fc2daf524bd1d57661182.md) | 1910 | `result-track:1c1fc2daf524bd1d576611826b09a7af4fabb8f98beb8d6a38770bd6bce86f96` |
| 44 | `lemma` | [I1NewIntegrandBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i1newintegrandbound--a43eb40972df51cdd058312b.md) | 1928 | `result-track:a43eb40972df51cdd058312b7c9f4448478bac1a76736792d03ff2bbcf662a67` |
| 45 | `lemma` | [I1NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i1newbound--5fe3523f569921426dd4ded2.md) | 1994 | `result-track:5fe3523f569921426dd4ded2ef9c040c931a114c49930813c5d5a8b7676450d3` |
| 46 | `lemma` | [I5NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i5newbound--4aa420bfc67eb4001cf761e1.md) | 2108 | `result-track:4aa420bfc67eb4001cf761e10e19e66aa23572b93f53598b64f068311f6a49d2` |
| 47 | `def` | [I2New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i2new--ffb2811761656e0798fafc95.md) | 2142 | `declaration-track:ffb2811761656e0798fafc95a8954687d6f0ad0ae2b64e2039f7ba1467a68e5a` |
| 48 | `def` | [I4New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i4new--b8e018fe8a41c8ccaa04c13e.md) | 2156 | `declaration-track:b8e018fe8a41c8ccaa04c13e1df180270bbcae8771810f6248897e59b02a281c` |
| 49 | `lemma` | [I2NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i2newbound--2e2f175193f5b9cf76e1dc35.md) | 2189 | `result-track:2e2f175193f5b9cf76e1dc35706ecb6f8df4fbe7c838c002744902e18313509d` |
| 50 | `lemma` | [I4NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i4newbound--5ea34dd3228043e0e7081b9c.md) | 2211 | `result-track:5ea34dd3228043e0e7081b9c6acd026af5c8c2f55e20e86d4389669c0f6fe605` |
| 51 | `def` | [I3New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i3new--bb8d0c941699a5e1bb9a2804.md) | 2243 | `declaration-track:bb8d0c941699a5e1bb9a28040aaf6e5d8861c3028ef5dbde10c1857aa7763981` |
| 52 | `lemma` | [I3NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/i3newbound--52aa1163597c8b85d1d3133c.md) | 2279 | `result-track:52aa1163597c8b85d1d3133cc8b7e26691a9df8df099d1bc434d5512ced51c33` |
| 53 | `theorem` | [SmoothedChebyshevPull3](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/declarations/smoothedchebyshevpull3--dff89565e3c4c4d87f0686a5.md) | 2298 | `result-track:dff89565e3c4c4d87f0686a5fa92738d5d31eb283bc0cac513cdbf49759aef30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
