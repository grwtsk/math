# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpGlobal.Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99995bb7c62766c246123fb10e8da329f2c4fb36",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99995bb7c62766c246123fb10e8da329f2c4fb36`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/bumpmoment--869e8e8ef12785e607acf968.md) | 30 | `declaration-track:869e8e8ef12785e607acf9688d724062af6d77ce7ac045c5973fd606015af7b3` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/bumpmoment-intervalintegrable--29f7244b29aa8364c5574e9c.md) | 35 | `result-track:29f7244b29aa8364c5574e9c35d953e1e974e01445a37f92229e331a18912162` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/bumpmoment-zero-eq-source--4b8914a24a489af21d680606.md) | 42 | `result-track:4b8914a24a489af21d680606e2e1859150a889806e462ec7851cf0961255443e` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/bumpmoment-zero-zero--039432dfffa37733d1133df0.md) | 55 | `result-track:039432dfffa37733d1133df05d1269e6da8b8986a7075afc2abec91196bdb76e` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/bumpflux-hasderivat--ab574681874ca478a9a5fe40.md) | 65 | `result-track:ab574681874ca478a9a5fe4070f4d88271d41199a26bc14c161c2be302f37943` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/bumpmoment-equation--9dd0083cecc2e0717858fa6a.md) | 76 | `result-track:9dd0083cecc2e0717858fa6ac9e6710026e43d92bfc83c6281faa4b28f4a76e9` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/re-eq-zero-of-weighted-energy--4f18f2520ccf8dddacddaf1d.md) | 111 | `result-track:4f18f2520ccf8dddacddaf1d500f29d72da7c935c7f69ca04d07e723a4262975` |
| 8 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/bumpmoment-hasderivat--94f33fc8f5dec462763ae35b.md) | 144 | `result-track:94f33fc8f5dec462763ae35bec0e1d5eda248d791cde9582fb9ccfba5dfe2c74` |
| 9 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/bumpmoment-continuous--dd6d435d4a26a534eef07802.md) | 180 | `result-track:dd6d435d4a26a534eef078021707a73d1642a7bbe7c4ff1d7c6aa9fca83ff44d` |
| 10 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialprofile--66947e3c16488cfbacfe082e.md) | 185 | `declaration-track:66947e3c16488cfbacfe082e52e4df5d95b406f4a6fef815aff9d6b79cf9cdce` |
| 11 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialflux--08d979978feb420e95dd210a.md) | 188 | `declaration-track:08d979978feb420e95dd210a76244613292f4920e3e5dfda47ae2b098685f191` |
| 12 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialprofile-hasderivat--094b3e455182ec43e9ddca87.md) | 192 | `result-track:094b3e455182ec43e9ddca879c193e4be0d016910b992e4d6ae89a7b03f9afc2` |
| 13 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialflux-hasderivat--6ead53fdf230f90bb6853abd.md) | 201 | `result-track:6ead53fdf230f90bb6853abdf5fa2f073fc2ab5348aa8d9e339cdfa8c8f393e9` |
| 14 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialprofile-continuous--33a066ae5add812a0168da40.md) | 211 | `result-track:33a066ae5add812a0168da40e83b64b0d7cffcb5e27de9ab4c4d7fb5b3413ebe` |
| 15 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialflux-continuous--2d2608292bf003e94539183e.md) | 215 | `result-track:2d2608292bf003e94539183ebac428e9c8e3b3fd3cc24d4e1998d68b5486ad73` |
| 16 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialmass--891300156a34791a4ffbb4da.md) | 220 | `declaration-track:891300156a34791a4ffbb4daf6dba36297171bf942e9f54090aaa091cf7a0602` |
| 17 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialenergy--792511b9764b110fbd0ed2d1.md) | 223 | `declaration-track:792511b9764b110fbd0ed2d161097a7df6bf159773bf319ce66d26c02e1b4bb8` |
| 18 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radial-integrands-intervalintegrable--e7084b72f184f11bad11082f.md) | 227 | `result-track:e7084b72f184f11bad11082ff1079296f5a9982f459c27c7723def30dfc1449b` |
| 19 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialenergy-nonneg--95b94538af7f82af4ca7e495.md) | 239 | `result-track:95b94538af7f82af4ca7e49514cb1382f6e9bae2a8f029ca77d78ef8b9c84476` |
| 20 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialprofile-eventually-ne-zero--381cbdd07f9ca5d0b4143a5c.md) | 245 | `result-track:381cbdd07f9ca5d0b4143a5ca77124672c04382d772faf3c091a1dd65fc7d893` |
| 21 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radialmass-pos--125f884bc0746614b9210422.md) | 252 | `result-track:125f884bc0746614b9210422851293613ae484773132536c8e118a4179faddc8` |
| 22 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/radial-energy-identity--68dd2a98f714ab100b58623b.md) | 268 | `result-track:68dd2a98f714ab100b58623ba38823bf397359c6c93099065bf7f2927cb9273c` |
| 23 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobal/Variant081e971ab2bd2517d5d8c783de6d5e9ad9aa026aa0a7afd9bd416503e7bb1310.lean/declarations/bumpmoment-zero-re--330636d0e4f8cd3494b6115d.md) | 326 | `result-track:330636d0e4f8cd3494b6115dd38fbc6a54f07fce7e2694e0774ec5f94efeb612` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
