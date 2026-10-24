# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszQuadraticLaplace.Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2577d56d032c131a9b09ff4aaed21372f068765",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2577d56d032c131a9b09ff4aaed21372f068765`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredInitialLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/profile--8391adf229802ff45b7e466b.md) | 21 | `declaration-track:8391adf229802ff45b7e466bb7bb25dc849dd64fea5ee6f065365a8f7ef769e6` |
| 2 | `def` | [actualRieszAbsoluteCumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/actualrieszabsolutecumulative--eed2912fe76615555dce7103.md) | 26 | `declaration-track:eed2912fe76615555dce7103cce61727fbf2fc2d7d2ecb799649eb5fcabd2bd9` |
| 3 | `def` | [actualRieszQuadraticLaplaceBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/actualrieszquadraticlaplacebudget--0b2f324d32299942b74a8e80.md) | 29 | `declaration-track:0b2f324d32299942b74a8e804511647d16fb12f6f34725e773388220871334ae` |
| 4 | `theorem` | [profile_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/profile-continuouson--75a5b2acb02545b2b3c8c08d.md) | 32 | `result-track:75a5b2acb02545b2b3c8c08dc00a38f3dc7936ae0c0fcf86d59830e0b90c720d` |
| 5 | `theorem` | [profile_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/profile-intervalintegrable--0ff918a758f3865ccc697118.md) | 37 | `result-track:0ff918a758f3865ccc697118c53799c9beb83413549366ef5d7266596d9ac5f2` |
| 6 | `theorem` | [area_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/area-nonneg--bd9a128094192c0f17203ef2.md) | 42 | `result-track:bd9a128094192c0f17203ef29219621af14b6e30f8da75a3f7941aed74ed1d4a` |
| 7 | `theorem` | [area_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/area-ac--3d434718a46611e3c7146a3f.md) | 45 | `result-track:3d434718a46611e3c7146a3f4285c7e06656c99d47d6cc3110a380e7a2a517cb` |
| 8 | `theorem` | [area_ae_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/area-ae-deriv--5e0a6b3e591dd788932e4daf.md) | 50 | `result-track:5e0a6b3e591dd788932e4daf5137ece99a3b1d1dc96a9118b0226062661813cd` |
| 9 | `theorem` | [area_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/area-zero--65ad7984056cbdedff7b0048.md) | 55 | `result-track:65ad7984056cbdedff7b0048e2350a720db5f62ea9b1580b91fef5bf2d018106` |
| 10 | `theorem` | [area_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/area-weight-intervalintegrable--8dceeb55f45e58191a01ee35.md) | 58 | `result-track:8dceeb55f45e58191a01ee3558eebf8328d68c5db65a0272aea789af0e5b5b8d` |
| 11 | `theorem` | [absolute_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/absolute-weight-intervalintegrable--b13746e6c37c2e2677de853f.md) | 63 | `result-track:b13746e6c37c2e2677de853f8520907373564d40afebdb29cf119120f500306f` |
| 12 | `theorem` | [finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/finite-abel--b775db6484544122619f21eb.md) | 67 | `result-track:b775db6484544122619f21ebb60abf259afbc489155fb51494c5f5b56ed07237` |
| 13 | `theorem` | [actualRieszAbsoluteCumulative_future_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/actualrieszabsolutecumulative-future-envelope--dca52fd3db11817ce5017b04.md) | 94 | `result-track:dca52fd3db11817ce5017b040ef84036e54ebb3ca431a7d176fb80f961d47cd6` |
| 14 | `theorem` | [polynomial_exp_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/polynomial-exp-integral-bound--71d91b5358616f859d829569.md) | 111 | `result-track:71d91b5358616f859d8295692b6b5bc70d53990f7d4aaaf7853f79eba20cc99e` |
| 15 | `theorem` | [cumulative_weight_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/cumulative-weight-norm-bound--2738ddbcf8adc5d4e58435e9.md) | 142 | `result-track:2738ddbcf8adc5d4e58435e97450653f63633e7fc757b13ad62e6b20dbaadf66` |
| 16 | `theorem` | [cumulative_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/cumulative-weight-integrable--89f02c7363c0c2fdf441bfb6.md) | 159 | `result-track:89f02c7363c0c2fdf441bfb65b60ef806bab8f42cd3fc3d3ca9a5a6f253cd30b` |
| 17 | `theorem` | [cumulative_weight_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/cumulative-weight-tendsto-zero--ab3477e91fcf6708e3486240.md) | 173 | `result-track:ab3477e91fcf6708e3486240d3b13e2b1e9bdef68fcb30d584e103f7f0d3b9ec` |
| 18 | `theorem` | [weighted_norm_finite_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/weighted-norm-finite-tendsto--80ba1538831f318221d26a79.md) | 192 | `result-track:80ba1538831f318221d26a79a8fe01e73aeceb96ffb3065739bea842fbfd6dc2` |
| 19 | `theorem` | [profile_real_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/profile-real-weight-integrable--1170a8b5845209d69b0b218b.md) | 206 | `result-track:1170a8b5845209d69b0b218b991b91c864e7c19cfd59a53260cc76b839d2b44a` |
| 20 | `theorem` | [absolute_weight_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/absolute-weight-integral-bound--535c123363c678f9d207c634.md) | 220 | `result-track:535c123363c678f9d207c6341e08be0b50c09b300b2bc994daefd974aaf7c7e4` |
| 21 | `theorem` | [profile_continuousOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/profile-continuouson-positive--8b4088211a552f023c35e1d6.md) | 251 | `result-track:8b4088211a552f023c35e1d63447ff026e54ecb87d5c30223646fe644a1b191d` |
| 22 | `theorem` | [kernel_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/kernel-norm--89fbc00da46c8c1736bb6304.md) | 256 | `result-track:89fbc00da46c8c1736bb630445feaf4d826d41e41a8d405d573ae2963b1d3911` |
| 23 | `theorem` | [actualFixedCenteredRieszLaplace_positive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/actualfixedcenteredrieszlaplace-positive-integrable--62143505d9dbc705cdaa1305.md) | 263 | `result-track:62143505d9dbc705cdaa1305fbebc7866dd21d6a860b9adafbde182dfd8b4519` |
| 24 | `theorem` | [actualFixedCenteredRieszLaplace_absolute_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/actualfixedcenteredrieszlaplace-absolute-budget--8cd837e519527e0efc062871.md) | 282 | `result-track:8cd837e519527e0efc062871d2632ed6a5189ab17d723f4a916c50c3696deb18` |
| 25 | `theorem` | [actualFixedCenteredRieszLaplace_positive_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/declarations/actualfixedcenteredrieszlaplace-positive-norm-le--9f8aef2157bedabbcffd6f8f.md) | 294 | `result-track:9f8aef2157bedabbcffd6f8fe6d50f3597dcdb8dfee344a21fbcc0fe2eeb15e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
