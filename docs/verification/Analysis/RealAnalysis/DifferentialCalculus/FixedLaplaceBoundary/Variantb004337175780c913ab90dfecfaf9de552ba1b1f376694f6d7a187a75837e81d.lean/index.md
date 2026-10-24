# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceBoundary.Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9df9365dd94ff5200a3abb99c0ad4710bf0256d9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9df9365dd94ff5200a3abb99c0ad4710bf0256d9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpmoment--72c3bce964bd7cd420dc9ea9.md) | 32 | `declaration-track:72c3bce964bd7cd420dc9ea91a0f20ab5d704fd0bfc8cfef248a1b0af68ed80e` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpmoment-intervalintegrable--54e5cfec2be6c1dcbc9f3901.md) | 37 | `result-track:54e5cfec2be6c1dcbc9f390134ea452571bde6613b634cc07e43e345fb74cb91` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpmoment-zero-eq-source--8b1178a9fd6cb3df82e57058.md) | 44 | `result-track:8b1178a9fd6cb3df82e570587217b72a06262d37bb062d311fd2bca6ce299c5f` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpmoment-zero-zero--e44d63e934047e06ef91ef21.md) | 57 | `result-track:e44d63e934047e06ef91ef21bf76cc0443a227bb4686efcc3b2a11e84adba73d` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpflux-hasderivat--3edb2ebf7c1f457d89162af0.md) | 67 | `result-track:3edb2ebf7c1f457d89162af0f93c1c6546e09f99bc97567f4fd7ec0d16b1c755` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpmoment-equation--c3729165eec394c088aced39.md) | 78 | `result-track:c3729165eec394c088aced395fb507d5d44c3b2021e8bb7180cc8d350729d270` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/re-eq-zero-of-weighted-energy--2bac3e7ddaf5c71341ee4e18.md) | 113 | `result-track:2bac3e7ddaf5c71341ee4e18357dccffd5c84ef50c797db7d565880eea4ab420` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpprimitive-hasderivat--4ef6af766273b9c45b76856f.md) | 142 | `result-track:4ef6af766273b9c45b76856f41c7ca556835416a6530513f5cbbb3d465d3c39d` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpmoment-closedformula--2131f0d4c176a98d881a3fa2.md) | 157 | `result-track:2131f0d4c176a98d881a3fa23f502a4a37f25d30b7fbfdf0ea66a7c823b5126f` |
| 10 | `theorem` | [V_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/v-zero--1f7ce117e0a6c6be58aec23c.md) | 182 | `result-track:1f7ce117e0a6c6be58aec23c5628112b659a21a69687d9023bf45a6be7a70d97` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/v-eq-bumpmoment--44b120a13963a2a2e53aa78c.md) | 191 | `result-track:44b120a13963a2a2e53aa78cf2353a416a8a4787ba8f9127bac9ed721a5755c3` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/w-eq-bumpmoment--b99ca0ec160da3e449320ccf.md) | 204 | `result-track:b99ca0ec160da3e449320ccf1fadbf7a18762a75ee414915d98d1209909fa346` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpmoment-hasderivat--7d2e9b938ee2d816f1744890.md) | 226 | `result-track:7d2e9b938ee2d816f17448900bbba7d66c7cbbc947ac87ee20f3bc36d1e337e5` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpmoment-continuous--b00abd8dd965452d8e668d4a.md) | 262 | `result-track:b00abd8dd965452d8e668d4a1a8b3c75bff281c38e5f38cb26f75f8d5d598d02` |
| 15 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialprofile--32211b61ff03b881f3c91cca.md) | 267 | `declaration-track:32211b61ff03b881f3c91ccade47deb0368723ac9ac2f739d91532e3d6612ac6` |
| 16 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialflux--d805d75a5794d88b8122f733.md) | 270 | `declaration-track:d805d75a5794d88b8122f7331726867486b5297bb36333f02453fa8b8adf2c64` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialprofile-hasderivat--bfe54a0972a4466b6ecc57a2.md) | 274 | `result-track:bfe54a0972a4466b6ecc57a2e3c13aff097efaff8681c2f5ac547f970e61a5b7` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialflux-hasderivat--9b5c75f8d354f9398978768c.md) | 283 | `result-track:9b5c75f8d354f9398978768c9801cf0c088a73e09d11420d00cd9d46d2ad14e3` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialprofile-continuous--f39f7b857bc2a5e372493977.md) | 293 | `result-track:f39f7b857bc2a5e3724939778fb57da27691da0800d01132673d247c3b86ddb6` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialflux-continuous--ae83fdc3bbdf660c43d88713.md) | 297 | `result-track:ae83fdc3bbdf660c43d88713d11f2ae7ced0cb4eb86007a2e1c72c275894e78e` |
| 21 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialmass--41de34dc5e5f41a6c5e0e493.md) | 302 | `declaration-track:41de34dc5e5f41a6c5e0e4936e1082190090d824fe60f67d361e7d9cd730f09e` |
| 22 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialenergy--ea16a564992524a748420a45.md) | 305 | `declaration-track:ea16a564992524a748420a45d2b2fd8b15cc4ee01e62333c7c309d83eeed8c38` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radial-integrands-intervalintegrable--cc2ce05536bc13075d41abba.md) | 309 | `result-track:cc2ce05536bc13075d41abbad33a0cefe308c8653bfd09ef40343e25f5e789d9` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialenergy-nonneg--053fe0eb06ae1215ef6b825f.md) | 321 | `result-track:053fe0eb06ae1215ef6b825f5c5a0a750991b7c3eaffa43e032d2ec40215c4dd` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialprofile-eventually-ne-zero--5938d9786f095241f845a30f.md) | 327 | `result-track:5938d9786f095241f845a30fe0b67e764b5af1495fe47c48950935612c831f1d` |
| 26 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radialmass-pos--2bd8bd1bf8b17901ee67cf9a.md) | 334 | `result-track:2bd8bd1bf8b17901ee67cf9ac7d6c76559f2a53324d4f7bf05f0c96660f98d08` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/radial-energy-identity--c69d7e39a03f08627469fc1f.md) | 350 | `result-track:c69d7e39a03f08627469fc1ffa05caed239493e0c9cf1783712f6a47c22661d9` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/bumpmoment-zero-re--583ee95003ef8ecab2a0c3c7.md) | 408 | `result-track:583ee95003ef8ecab2a0c3c7929eeb737c92f25966cf84e6ce60611977fccbbd` |
| 29 | `theorem` | [V_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/v-continuous--d0ae0c946d0617086882e38b.md) | 426 | `result-track:d0ae0c946d0617086882e38b9a7947983214f1339b19ac957fdcd305938064ca` |
| 30 | `theorem` | [actualLaplace_continuousOn_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/actuallaplace-continuouson-closed--e479ba306635b2de16b7cec8.md) | 434 | `result-track:e479ba306635b2de16b7cec863144204f60f367229a0d0080bc9708027b72661` |
| 31 | `theorem` | [sourceProduct_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/sourceproduct-continuousat--e282766ae391872d41601d66.md) | 460 | `result-track:e282766ae391872d41601d66e07450e991792eef1964ca12990428b60da4d8b4` |
| 32 | `theorem` | [actualLaplace_eq_product_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/actuallaplace-eq-product-closed--546550bd74a223dc5923a2bb.md) | 473 | `result-track:546550bd74a223dc5923a2bb6784b3f0d4d78af53f96dc40dd7b3a19ff007c65` |
| 33 | `theorem` | [actualLaplace_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/declarations/actuallaplace-boundary--e2dc5908e5ffcbb74cd23a20.md) | 499 | `result-track:e2dc5908e5ffcbb74cd23a207a773ba9637917774def21ec521c78e1db28ff20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
