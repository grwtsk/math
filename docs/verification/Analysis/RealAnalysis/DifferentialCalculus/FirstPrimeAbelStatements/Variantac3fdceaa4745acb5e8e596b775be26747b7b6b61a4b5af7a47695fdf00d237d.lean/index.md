# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FirstPrimeAbelStatements.Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4b546129a123115b4230cf00d4952c77ea35f80",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4b546129a123115b4230cf00d4952c77ea35f80`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstPrimeWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeweight--b6a3d89252b18b83a37717c2.md) | 16 | `declaration-track:b6a3d89252b18b83a37717c280f87db5ea012670266857eb04d931b04503e690` |
| 2 | `def` | [firstPrimeRemainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeremainder--1419be52128113d98f03d1d8.md) | 20 | `declaration-track:1419be52128113d98f03d1d8c5fa3c31d3df2a299000e2b0c30b40f86f850447` |
| 3 | `def` | [firstPrimeDecayingMain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimedecayingmain--cecf602b125b6ccf0d899e4d.md) | 24 | `declaration-track:cecf602b125b6ccf0d899e4df89ed68aa6d039cf0a7f3db1535f8eeb92eb3ccd` |
| 4 | `theorem` | [firstPrimeWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeweight-hasderivat--1f46738cf2d7c2303aca7d9f.md) | 28 | `result-track:1f46738cf2d7c2303aca7d9f442d1ec0a5f4bc0347d904cc5f6dd9683f76453f` |
| 5 | `theorem` | [firstPrimeWeight_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeweight-contdiff--027f52b3f55a93eb95931caf.md) | 38 | `result-track:027f52b3f55a93eb95931caf715b7ca02bfb6949cd7201a9547c15351e1ed2a3` |
| 6 | `theorem` | [firstPrimeWeight_zero_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeweight-zero-endpoint--6e2dcc4d98e2c427d15fb8f1.md) | 41 | `result-track:6e2dcc4d98e2c427d15fb8f12817b387e55ea0d6cd8e255a8f97ed6b54103251` |
| 7 | `theorem` | [firstPrimeWeight_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeweight-at-zero--fc635032230b61bc1c6bc808.md) | 45 | `result-track:fc635032230b61bc1c6bc808384e92951f0ffc2a66103feedcaa725970b4975f` |
| 8 | `theorem` | [first_prime_summand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/first-prime-summand--481d4abe795b4fa99415d89a.md) | 50 | `result-track:481d4abe795b4fa99415d89a8aeb76c5b82b7b4b4c50ff354878381d7f9bfc38` |
| 9 | `theorem` | [primeContribution_eq_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/primecontribution-eq-closed--41b71f27c830f725f6f2884d.md) | 64 | `result-track:41b71f27c830f725f6f2884dda17b6187294325b1e185363f4549e79ccbeeda1` |
| 10 | `theorem` | [firstPrimeWeight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeweight-intervalintegrable--059bb541c51bb336d758ebb7.md) | 97 | `result-track:059bb541c51bb336d758ebb7a6395e6b880581c4564249f44c1a6f199a2fd96c` |
| 11 | `theorem` | [firstPrimeRemainder_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeremainder-intervalintegrable--d85eeb55303c5949f1341d1b.md) | 102 | `result-track:d85eeb55303c5949f1341d1bffe9f4f6e916fc930f0b4d8b0d8170ecdc62a4ec` |
| 12 | `theorem` | [primeContribution_centered_abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/primecontribution-centered-abel--3e20d08d70f2d77429df6ff7.md) | 109 | `result-track:3e20d08d70f2d77429df6ff7b6ed92cd02f50288f604202db376755040bea9aa` |
| 13 | `theorem` | [firstPrimeWeight_integral_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeweight-integral-eq-neg--aef83f5f3828a065e4988aa1.md) | 119 | `result-track:aef83f5f3828a065e4988aa1bd53f90580c45ce229ea1f67dbb41881c502c9f6` |
| 14 | `theorem` | [primeContribution_eq_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/primecontribution-eq-remainder--ec37e7b3e03b7b9e32416cc0.md) | 126 | `result-track:ec37e7b3e03b7b9e32416cc0fecb112312e4c27ba41c6604639211aed4edac77` |
| 15 | `theorem` | [firstPrimeDecayingMain_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimedecayingmain-intervalintegrable--dba0c892fd067aa9b844523d.md) | 132 | `result-track:dba0c892fd067aa9b844523df1e98b5958a25ac16845812c19d3b517fb9624e9` |
| 16 | `theorem` | [firstPrimeDecayingMain_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimedecayingmain-abs-le--3026f366192ba8dcd24530fb.md) | 139 | `result-track:3026f366192ba8dcd24530fba2adb4b387cfdd33fe6483622d7c752b08fc8b38` |
| 17 | `theorem` | [firstPrimeWeight_derivative_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/firstprimeweight-derivative-abs-le--f9527a078ff3ffec9d8d8adc.md) | 173 | `result-track:f9527a078ff3ffec9d8d8adc302fef859a73973454d5a17ff17f840584ded95e` |
| 18 | `theorem` | [primeContribution_add_remainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/primecontribution-add-remainder-abs-le--d1ec143ce2ff6ed19ddce484.md) | 189 | `result-track:d1ec143ce2ff6ed19ddce48481262beec12a8faaa93f0c263768d2f9fb1f384f` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--390ddc1bf15664cd79b29c15.md) | 208 | `declaration-track:390ddc1bf15664cd79b29c15213398ee1fbf8f86ab3981706543b2720da11e46` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--3736ee0df816fc427f130603.md) | 210 | `declaration-track:3736ee0df816fc427f13060384c689ff6723f0b8399b489e182037f851591063` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--427e0e457f5644af04201cb8.md) | 212 | `declaration-track:427e0e457f5644af04201cb84701449cdc74fef3bfaa5eb39085af7065949a3c` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--caee42dbdfe694ba9eab1092.md) | 214 | `declaration-track:caee42dbdfe694ba9eab1092b63fe2de8832aa740ce6bcdf17d365b10a115958` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--47796c4a282dc00457450fd9.md) | 220 | `declaration-track:47796c4a282dc00457450fd96b8b4b365f6c598176dfffe13c3c54d43f6d7c8f` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--ed869f4200b1d069d242fcad.md) | 223 | `declaration-track:ed869f4200b1d069d242fcad8efadb065143a9161f4d72bdf36fe8ba8bc3d070` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--df9c82a6afa2f337b34640ae.md) | 226 | `declaration-track:df9c82a6afa2f337b34640ae9a85eef3a9e4975ed8d2db1b05def8099b4f7130` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--1df97b311ebc2e4f0e553c4c.md) | 229 | `declaration-track:1df97b311ebc2e4f0e553c4ce323cbe519796fcb7145655c299780cda3c17c03` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--05d7e96cedee331642bbc385.md) | 235 | `declaration-track:05d7e96cedee331642bbc385d0c87dfe629fdc15dba6ee09aa1afe703952133b` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--6cffb5f447ec3d348a5d9ada.md) | 241 | `declaration-track:6cffb5f447ec3d348a5d9ada0ba9c2d308d502a8674666566991be2ab8102654` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--2105f194fe594062cc04ee20.md) | 245 | `declaration-track:2105f194fe594062cc04ee205d42d6046c821984a9e58b106889c50570b2f080` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--2069e456a753ca6effdc663a.md) | 250 | `declaration-track:2069e456a753ca6effdc663acf0f48db0ec6588c60fe1e23d0da12afff464081` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--5a7452745610cfab13b1b7fa.md) | 255 | `declaration-track:5a7452745610cfab13b1b7fa9e03daee0a9433fd471a43768046da1e0c75074e` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--8d14cf73e452a7e6ee340642.md) | 259 | `declaration-track:8d14cf73e452a7e6ee340642ed176a24e5f16f7f20e2fc8bd4a3491fabe1eaa5` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--a44a6f381de41f9a8caf5f21.md) | 263 | `declaration-track:a44a6f381de41f9a8caf5f21a12426c6ccad869b23be0cc83768a9ce19b5ebcc` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--1073f9a08417c775e2155672.md) | 268 | `declaration-track:1073f9a08417c775e2155672fd1cb9ae5fec31636b5e0b750747f440e33e1783` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--e4d384d9ef770711b4d35078.md) | 272 | `declaration-track:e4d384d9ef770711b4d35078f436002ec54ec7bb5e2ef995ce6d9b4bca204f1d` |
| 36 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Variantac3fdceaa4745acb5e8e596b775be26747b7b6b61a4b5af7a47695fdf00d237d.lean/declarations/example--b8c145e5fa99e2c8b76abb01.md) | 277 | `declaration-track:b8c145e5fa99e2c8b76abb01183ef4a73c7d31ba97acd7775794d91685958c0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
