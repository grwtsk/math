# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimePowerDescent.Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4174728642f2a3265b1e27be9f7854589bfa9f9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4174728642f2a3265b1e27be9f7854589bfa9f9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePowerInventory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/primepowerinventory--6ecfac11de39513cd8c898a3.md) | 31 | `declaration-track:6ecfac11de39513cd8c898a37107ba281603ceab73ab5cd0774b53b5a2e7fb49` |
| 2 | `theorem` | [inventory_filter_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/inventory-filter-log--66c0c21678505ffea9099647.md) | 35 | `result-track:66c0c21678505ffea9099647d7b78197827161a45f7d694decb8cfb5ff08a29f` |
| 3 | `theorem` | [chebyshev_eq_finite_steps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/chebyshev-eq-finite-steps--0cbbdec6dcdbf6f745262940.md) | 50 | `result-track:0cbbdec6dcdbf6f74526294023bc7d2fff6afcf0b5f94e74b8f6df17af21f7ac` |
| 4 | `theorem` | [integral_closed_step](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/integral-closed-step--c274f0d31652de836ebbf878.md) | 60 | `result-track:c274f0d31652de836ebbf87889f8c41556d54bf664d1883e191720966ae3b4d6` |
| 5 | `theorem` | [integral_closed_step_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/integral-closed-step-deriv--aafc5621cb87dc5c1568fc24.md) | 86 | `result-track:aafc5621cb87dc5c1568fc2406a37e0e7035684e50f11704099d765fb92261b7` |
| 6 | `theorem` | [intervalIntegrable_closed_step](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/intervalintegrable-closed-step--46c09fd8f75e8ca5471ea3b1.md) | 95 | `result-track:46c09fd8f75e8ca5471ea3b174b5a4039b99b4afd4b830f1e3143cf4a62c0287` |
| 7 | `theorem` | [inventory_log_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/inventory-log-bounds--617d199f5f19a19302276644.md) | 102 | `result-track:617d199f5f19a19302276644779f7b4c535f04ecabea9bc7d9ed9f31d371a648` |
| 8 | `theorem` | [integral_finite_steps_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/integral-finite-steps-deriv--4605c7b2a205869bd707647e.md) | 112 | `result-track:4605c7b2a205869bd707647ed2792c40db65b380e8c21f03e4ef4195bfd443ca` |
| 9 | `theorem` | [chebyshev_mul_eq_steps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/chebyshev-mul-eq-steps--0ed234acfbcbfb16e18cb33b.md) | 128 | `result-track:0ed234acfbcbfb16e18cb33b7b17111fee59d027a40eda054040e6d483461010` |
| 10 | `theorem` | [chebyshev_mul_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/chebyshev-mul-deriv-intervalintegrable--81a9eee7e7f180e35d42f72c.md) | 138 | `result-track:81a9eee7e7f180e35d42f72ce03669cf2f5dbae1102013f93c46f85680881277` |
| 11 | `theorem` | [chebyshev_prime_power_step_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/chebyshev-prime-power-step-integral--a5211aa7e235ce63694375d6.md) | 167 | `result-track:a5211aa7e235ce63694375d6d4ffd76dc1d9ab2cdc638b365dc5d01caa8519c0` |
| 12 | `theorem` | [chebyshev_prime_power_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/chebyshev-prime-power-ibp--5769a6c179476bfcfa792d08.md) | 190 | `result-track:5769a6c179476bfcfa792d08836c5df8e2f6dccfd75c6a566d61dfe06f7a2e1b` |
| 13 | `def` | [exponentialTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/exponentialtest--87d8ec9e281036a3b156c9bc.md) | 213 | `declaration-track:87d8ec9e281036a3b156c9bcfb878299663a9b880e06f1942fa467b3c1384d85` |
| 14 | `theorem` | [exponentialTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/exponentialtest-contdiff--68a3b1b0d3680188f8b64af7.md) | 216 | `result-track:68a3b1b0d3680188f8b64af7448c0c76e893ac8618ecfcb4d2ccb2f4adce6c8f` |
| 15 | `theorem` | [exponentialTest_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/exponentialtest-deriv--38f508990ae678581b812b87.md) | 221 | `result-track:38f508990ae678581b812b8745383a52b26f5461c16bdf18a1f3db2667d3a864` |
| 16 | `theorem` | [source_signed_pairing_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/source-signed-pairing-ibp--2d02b3db69cee10bfb87ead5.md) | 233 | `result-track:2d02b3db69cee10bfb87ead52acf70faf0d1272397c5a89638414e5d23a233fe` |
| 17 | `theorem` | [chebyshev_prime_power_ibp_of_upper_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/chebyshev-prime-power-ibp-of-upper-zero--93070527ad4f65b69707d428.md) | 246 | `result-track:93070527ad4f65b69707d4288c9693587cc7791b597752475b6ea98bc426e760` |
| 18 | `theorem` | [prime_two_correction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/prime-two-correction--bc30d6f5351551caf6290189.md) | 255 | `result-track:bc30d6f5351551caf62901891552fff29472ac778c89a94a33d658030b1b65b2` |
| 19 | `theorem` | [omitted_prime_two_boundary_is_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/omitted-prime-two-boundary-is-nonzero--ce9e83b21b3a18c0cc43ebea.md) | 268 | `result-track:ce9e83b21b3a18c0cc43ebeae984226611af8d0610e14175ec89b78556001e30` |
| 20 | `theorem` | [exponentialTest_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/exponentialtest-log--610e3e1b5d29cd7901b04d1a.md) | 278 | `result-track:610e3e1b5d29cd7901b04d1a943f926d6e24407310868cc3e8d3ce4ca0c77892` |
| 21 | `theorem` | [source_prime_power_contribution_eq_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/source-prime-power-contribution-eq-closed--f908c322319281b276c42196.md) | 286 | `result-track:f908c322319281b276c4219657a33f55e0e37e8e6aae6ce4a52d42419fe39237` |
| 22 | `theorem` | [exp_mul_exponentialTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/exp-mul-exponentialtest--a8f8ac1ebf56f51914b45e5b.md) | 306 | `result-track:a8f8ac1ebf56f51914b45e5b2ae82783226c008d06b5dbd72f141923d74f3d7b` |
| 23 | `theorem` | [source_prime_power_descent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/source-prime-power-descent--d103c0c19bfbb252a625f3fc.md) | 315 | `result-track:d103c0c19bfbb252a625f3fccd67922eb5958c87d7d3e3415a2bb55813c3c16e` |
| 24 | `theorem` | [source_arithmetic_representation_of_correlation_conditions](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/declarations/source-arithmetic-representation-of-correlation-conditions--d31701377116e423e0f04727.md) | 333 | `result-track:d31701377116e423e0f047279d38957a7f03102d7d3fe6374254e770028e2e60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
