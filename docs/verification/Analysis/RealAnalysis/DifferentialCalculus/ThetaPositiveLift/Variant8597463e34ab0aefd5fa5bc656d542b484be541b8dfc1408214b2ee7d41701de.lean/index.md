# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d1d1ac9bc11c4693bb0aa777f68c3282c7e5443",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d1d1ac9bc11c4693bb0aa777f68c3282c7e5443`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankTwo` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailGap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap--580f540d58d71f4b76dc82f0.md) | 25 | `declaration-track:580f540d58d71f4b76dc82f0a2faf3b616c069723891e95c91f52d24f5a71e30` |
| 2 | `theorem` | [hasDerivAt_thetaTail_normalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/hasderivat-thetatail-normalized--0bdd920a8025f34938f10cc1.md) | 29 | `result-track:0bdd920a8025f34938f10cc1ebfad320d89e042aff181a0f6cee252fcb2f97ab` |
| 3 | `theorem` | [thetaTailGap_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-nonnegative--bc6234829f8d6387141f85e7.md) | 38 | `result-track:bc6234829f8d6387141f85e7107347be162510ee058112354c77781f8d5e4384` |
| 4 | `theorem` | [thetaTailGap_derivative_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-derivative-ratio--a64886597d463f2cbc5c6675.md) | 49 | `result-track:a64886597d463f2cbc5c6675f8add3f674cbeb0367a0a72ef15d03a047aab86d` |
| 5 | `theorem` | [thetaTailGap_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-succ-succ--31b76ba6f42b3158969da99d.md) | 59 | `result-track:31b76ba6f42b3158969da99d5e6982edcd00132b348a56855ec4544de6514766` |
| 6 | `theorem` | [thetaTailGap_zero_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-zero-succ--0251be090eb976b79cb9678b.md) | 67 | `result-track:0251be090eb976b79cb9678b38247d60151cace0807e7a5b3a6d387a26fc96aa` |
| 7 | `theorem` | [thetaPhi_logSlope_strictAnti](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetaphi-logslope-strictanti--43e7f8e1119e7795621691ad.md) | 76 | `result-track:43e7f8e1119e7795621691ad059c2be7e1bccd2bbd2c7738787bf7ba28c1d786` |
| 8 | `theorem` | [thetaPhi_logSlope_cross_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetaphi-logslope-cross-positive--a297304dd1b257a2da3ef4ab.md) | 85 | `result-track:a297304dd1b257a2da3ef4ab56d059dfe077b9553b1e7dbf53967c062eed3761` |
| 9 | `theorem` | [thetaTailGap_zero_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-zero-two-integral--70e4beaf1a0efa40d0c5cc7c.md) | 92 | `result-track:70e4beaf1a0efa40d0c5cc7ce11474cba16639adad4560da75b6119b4951bea2` |
| 10 | `theorem` | [zero_two_gap_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/zero-two-gap-integrand-integrable--8c0f7cd589e0a7f4784fc058.md) | 99 | `result-track:8c0f7cd589e0a7f4784fc058e77acbb695dd5fcd3851cb991e30384bbe669e28` |
| 11 | `theorem` | [thetaTailGap_zero_two_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-zero-two-positive--25fd38a7e0d3eed7d9576053.md) | 112 | `result-track:25fd38a7e0d3eed7d957605322e8ddce507254bc8b93dc857350ae7f08261f37` |
| 12 | `theorem` | [hasDerivAt_thetaTailGap_zero_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/hasderivat-thetatailgap-zero-succ-succ--9064b852d5e1181d6e4ee8d5.md) | 126 | `result-track:9064b852d5e1181d6e4ee8d50b7f832580d1998cf37d1262d0ea26b57d365c4e` |
| 13 | `theorem` | [thetaPhi_mul_sub_pow_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetaphi-mul-sub-pow-tendsto--6ced91e9cb3cc14385f60ec5.md) | 141 | `result-track:6ced91e9cb3cc14385f60ec51ca3d29f8f92f5e08b1ceb1b9bdbd451f8794ce2` |
| 14 | `theorem` | [thetaPhi_deriv_sub_pow_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetaphi-deriv-sub-pow-integrable--9682e8d37d55a2fa882a5ea7.md) | 163 | `result-track:9682e8d37d55a2fa882a5ea7503471de4c51da4b6955a061cde0da544505bc81` |
| 15 | `theorem` | [thetaPhi_deriv_tailKernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetaphi-deriv-tailkernel-integral--3b56b4011ecce6e93f818d4d.md) | 177 | `result-track:3b56b4011ecce6e93f818d4d4e43fae6dc539104eaf91d2bcfd8d401d1e65cd0` |
| 16 | `theorem` | [thetaTailGap_zero_succ_succ_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-zero-succ-succ-integral--aea828557904c81f7d73340d.md) | 207 | `result-track:aea828557904c81f7d73340d49a8ef92e01017114c8c57e35ae50443c63178f7` |
| 17 | `theorem` | [thetaPhi_deriv_mul_sub_pow_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetaphi-deriv-mul-sub-pow-tendsto--70c4f40980991b9b1ba5bb46.md) | 232 | `result-track:70c4f40980991b9b1ba5bb4640b04a29508682582d0e1f05348b8d3e701afe61` |
| 18 | `theorem` | [thetaPhi_second_sub_pow_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetaphi-second-sub-pow-integrable--0eda0cf37fded9a42cbc71a9.md) | 244 | `result-track:0eda0cf37fded9a42cbc71a931cacaf12dd8186bbcf474ed13a1a7e44f3b311f` |
| 19 | `theorem` | [thetaPhi_deriv_tailKernel_integral_all](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetaphi-deriv-tailkernel-integral-all--4e6437db2c2a2e99514ca238.md) | 258 | `result-track:4e6437db2c2a2e99514ca238c09faee9120cd294f5f7672911d30388df190fde` |
| 20 | `theorem` | [thetaPhi_second_tailKernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetaphi-second-tailkernel-integral--20e52d4d17ee229e92472518.md) | 269 | `result-track:20e52d4d17ee229e92472518bae06581d96f038f93f7c87da2285f59b925599c` |
| 21 | `theorem` | [thetaTailGap_zero_succ_succ_deriv_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-zero-succ-succ-deriv-integral--c8c944fd4c22d54ba273e533.md) | 301 | `result-track:c8c944fd4c22d54ba273e5337d2ab9c6ac734441f42ee3822db0746541672131` |
| 22 | `theorem` | [thetaTailGap_source_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-source-integrand-integrable--eff79b8f006129a567853144.md) | 322 | `result-track:eff79b8f006129a567853144f07fbfa820cb43fd74230f252127cf01e7acbd4e` |
| 23 | `theorem` | [thetaTailGap_source_deriv_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean/declarations/thetatailgap-source-deriv-integrand-integrable--484a55b78b6cbfb4eedc35e2.md) | 334 | `result-track:484a55b78b6cbfb4eedc35e22fe755f67ae4635cfb41a158bba8f52dfb035336` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
