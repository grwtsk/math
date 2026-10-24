# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FirstPrimeAbelStatements.Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63e555df0f22c9de6bbc1a457712f7da87f4fab1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63e555df0f22c9de6bbc1a457712f7da87f4fab1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstPrimeWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeweight--d157fbc733b8587f44cc0232.md) | 24 | `declaration-track:d157fbc733b8587f44cc0232b18f062ca74d957567546e9f27d25af865451788` |
| 2 | `def` | [firstPrimeRemainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeremainder--54a26fec992b58949fdfc372.md) | 28 | `declaration-track:54a26fec992b58949fdfc3721f516d80fd3fd62ee75f52addcacfd745ce5f2d8` |
| 3 | `def` | [firstPrimeDecayingMain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimedecayingmain--1eca4f49341d2d02d47da962.md) | 32 | `declaration-track:1eca4f49341d2d02d47da9620c4a5ffbea3d44886f7bfa98841f5ecd6b302e18` |
| 4 | `theorem` | [firstPrimeWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeweight-hasderivat--b8e48d4366332b903d2e1c1c.md) | 36 | `result-track:b8e48d4366332b903d2e1c1ce00a80c9cbb24111df7ff4d17cae9da5cbe663a4` |
| 5 | `theorem` | [firstPrimeWeight_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeweight-contdiff--dc0897a565122fb192512f85.md) | 46 | `result-track:dc0897a565122fb192512f8587757dac3aabe802d6d963b577cbfe4574f39943` |
| 6 | `theorem` | [firstPrimeWeight_zero_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeweight-zero-endpoint--a30e7dd7fb9b04e4c809c0e4.md) | 49 | `result-track:a30e7dd7fb9b04e4c809c0e4dd45d8e19c3948497d4d4648162d0521f4e333f5` |
| 7 | `theorem` | [firstPrimeWeight_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeweight-at-zero--00f545884cb456e33d1ab871.md) | 53 | `result-track:00f545884cb456e33d1ab871eac753e4b217c473a72cc3331f5a1fd81ff3ce72` |
| 8 | `theorem` | [first_prime_summand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/first-prime-summand--2d3bae91953cc5eeb347bc57.md) | 58 | `result-track:2d3bae91953cc5eeb347bc57a8cef30cd2727e97e8475a330c0bc18d2e7665b0` |
| 9 | `theorem` | [primeContribution_eq_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/primecontribution-eq-closed--6074abe1651b6fc5a773550f.md) | 72 | `result-track:6074abe1651b6fc5a773550f0c37dcd7d5fcab083c7e7719b3a62ae94faf7f21` |
| 10 | `theorem` | [firstPrimeWeight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeweight-intervalintegrable--c3339829fc394bb3c61a0e8d.md) | 105 | `result-track:c3339829fc394bb3c61a0e8dc64fcf08e5e8dbf0f1898dc57dfb3967c09b026d` |
| 11 | `theorem` | [firstPrimeRemainder_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeremainder-intervalintegrable--3b95b7b162e6ec2ef6e218f2.md) | 110 | `result-track:3b95b7b162e6ec2ef6e218f2fc1e8b4cb4ffad8b6f3b12a605fb7bd47438e542` |
| 12 | `theorem` | [primeContribution_centered_abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/primecontribution-centered-abel--e3377c0e143247013cba944b.md) | 117 | `result-track:e3377c0e143247013cba944b2524a2fa6474199a660c975dfdf7ae32cf30074a` |
| 13 | `theorem` | [firstPrimeWeight_integral_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeweight-integral-eq-neg--81e3e7c6a61142d8e53b1cb5.md) | 127 | `result-track:81e3e7c6a61142d8e53b1cb5cb2266e69b37bf2c73888e59d17b4abf4861fbe5` |
| 14 | `theorem` | [primeContribution_eq_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/primecontribution-eq-remainder--de79ed3129efa43945caf641.md) | 134 | `result-track:de79ed3129efa43945caf641fce0234437a9e7d5b403f05875f3640bb91c95b2` |
| 15 | `theorem` | [firstPrimeDecayingMain_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimedecayingmain-intervalintegrable--786e3c0897b8f4c2fac01593.md) | 140 | `result-track:786e3c0897b8f4c2fac01593e9ffa601e884f11390fbad5a41d7b7994f90093e` |
| 16 | `theorem` | [firstPrimeDecayingMain_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimedecayingmain-abs-le--05822d79eca6c038e7cffa07.md) | 147 | `result-track:05822d79eca6c038e7cffa07ee775163335d8bd387182839a62ba0a7dc1f59f7` |
| 17 | `theorem` | [firstPrimeWeight_derivative_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/firstprimeweight-derivative-abs-le--7119dd88844578df3dc84481.md) | 181 | `result-track:7119dd88844578df3dc844811a5a4d579a0b51f29bf243d5aeb066f231f208c7` |
| 18 | `theorem` | [primeContribution_add_remainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/primecontribution-add-remainder-abs-le--50428400e1801b36276c4572.md) | 197 | `result-track:50428400e1801b36276c457280ab56cfe59d61eda6098399b27f9cbf9b961d54` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--11e052061dfe624bddd4d16a.md) | 216 | `declaration-track:11e052061dfe624bddd4d16ae15034150cca416b082358996bdd5913204f8655` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--f146c0a3e8a8fa7a00531eab.md) | 218 | `declaration-track:f146c0a3e8a8fa7a00531eabbfb02ac2ffd353b776e8a87d814411e847cbc08d` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--2ab9853c8f7b24baf43a43df.md) | 220 | `declaration-track:2ab9853c8f7b24baf43a43dfda23614a75a2f928b84a300b617b59ab29aa5c63` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--4bc3869b3bfc2bcb95400ad3.md) | 222 | `declaration-track:4bc3869b3bfc2bcb95400ad38d87c71c0d0279c9569feeba4b00080f0f49214d` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--460ca7b59ac1ddf68274ec13.md) | 228 | `declaration-track:460ca7b59ac1ddf68274ec1359ed24316226db1e61e641c725b4b824ec7e723a` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--f3a84d4d00d1912348adba79.md) | 231 | `declaration-track:f3a84d4d00d1912348adba79798e53e434f6bc8b6c9d45ee16e3e4914a9725e1` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--15c0bc94cc4b0ed01f5f6a71.md) | 234 | `declaration-track:15c0bc94cc4b0ed01f5f6a711c62db4a168a6adfe6239fbbf17e79aaa442cddf` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--d273520d3fc78f06b725e7fc.md) | 237 | `declaration-track:d273520d3fc78f06b725e7fc89a424fe0fa8e6de27e551721cbf680aa52c9dfd` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--d8c02d7859f0f413981dce48.md) | 243 | `declaration-track:d8c02d7859f0f413981dce489b270042f0caa15cced8ee2f453038bec286aeb1` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--5538221817a77ada9cd337b8.md) | 249 | `declaration-track:5538221817a77ada9cd337b8342573bc57e3f50bc4d76fbdfdd47832a2d76876` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--12ff5f8835d24c1eff4ab3b1.md) | 253 | `declaration-track:12ff5f8835d24c1eff4ab3b17038d3296045960e7f6d7c0980edce40cdb3c440` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--64f191005e96ee0468b4b510.md) | 258 | `declaration-track:64f191005e96ee0468b4b5103edcf8e1da7316dc0c5d69224e470196dfb8e617` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--244b23eedabb69572fb87d13.md) | 263 | `declaration-track:244b23eedabb69572fb87d13885f3e4744bbb42b71dc7791b4a3d8591fd787e8` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--0918f61b33f97726b806bae4.md) | 267 | `declaration-track:0918f61b33f97726b806bae4a4257a133f94430093127414d6a71821d4147e98` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--468815f16599a8c52e198cc4.md) | 271 | `declaration-track:468815f16599a8c52e198cc43b25cd9e0aac26fd731cba6daa4bb229b5b7c4f6` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--a8a17f5937254d21e4a3536a.md) | 276 | `declaration-track:a8a17f5937254d21e4a3536aeafda4d966474818357ce283c466613538c974ad` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--145d90c6468e43ee011d1fc1.md) | 280 | `declaration-track:145d90c6468e43ee011d1fc103c7bd27b2e9ba51c751e400786c36ee3c7c18ff` |
| 36 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/declarations/example--7960a0dfc010035fe042fa77.md) | 285 | `declaration-track:7960a0dfc010035fe042fa77517d0f81191c3056f72284053ebd599ecd00920e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
