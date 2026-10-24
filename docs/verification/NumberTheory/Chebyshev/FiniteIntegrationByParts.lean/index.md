# Verification target: GRWTSK.NumberTheory.Chebyshev.FiniteIntegrationByParts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2aea553f32491eebd03cf963391425b5785ce9c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2aea553f32491eebd03cf963391425b5785ce9c`.

Source path: `GRWTSK/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CorrelationPairing`](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePowerInventory](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/primepowerinventory--289042217fc1acf07985abd4.md) | 26 | `declaration-track:289042217fc1acf07985abd484418d06fd1cf7de11a548dd531a128484702a17` |
| 2 | `theorem` | [inventory_filter_log](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/inventory-filter-log--6c70d5e0df39fbcf339f5e59.md) | 30 | `result-track:6c70d5e0df39fbcf339f5e59fb93a2b38f751087582c7b0befc198846a538c2e` |
| 3 | `theorem` | [chebyshev_eq_finite_steps](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/chebyshev-eq-finite-steps--7d1fa4b84b6de1af680a6814.md) | 45 | `result-track:7d1fa4b84b6de1af680a681484f723e65c3d09e5042660bbbc8ca202ce509542` |
| 4 | `theorem` | [integral_closed_step](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/integral-closed-step--ca3f32aea08d485a3934642f.md) | 55 | `result-track:ca3f32aea08d485a3934642fcd34f814654c4d1e6542613ee2bd80ad55d749de` |
| 5 | `theorem` | [integral_closed_step_deriv](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/integral-closed-step-deriv--45992384d5f33a56acaaf063.md) | 81 | `result-track:45992384d5f33a56acaaf0633d379a82db7c2475a50f68ebfad62bf49310eacf` |
| 6 | `theorem` | [intervalIntegrable_closed_step](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/intervalintegrable-closed-step--628cc9a0acf026f8f98164b5.md) | 90 | `result-track:628cc9a0acf026f8f98164b579121e42ff1452d44e7956fbbc57051d347ae0ee` |
| 7 | `theorem` | [inventory_log_bounds](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/inventory-log-bounds--b03d62ebfbaed9e0e92e5791.md) | 97 | `result-track:b03d62ebfbaed9e0e92e5791999aa4d81803004f907db0a7b38e178d0c0fc41c` |
| 8 | `theorem` | [integral_finite_steps_deriv](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/integral-finite-steps-deriv--dd80541d2baf9084f1d22058.md) | 107 | `result-track:dd80541d2baf9084f1d220584f4848264780d617c65d537b6a7dd9c900399dcc` |
| 9 | `theorem` | [chebyshev_mul_eq_steps](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/chebyshev-mul-eq-steps--c7c2a82c87d36d5ca9ed344b.md) | 123 | `result-track:c7c2a82c87d36d5ca9ed344b2f1e23f3cd2e8e04f018f6a987c8054eb8348e23` |
| 10 | `theorem` | [chebyshev_mul_deriv_intervalIntegrable](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/chebyshev-mul-deriv-intervalintegrable--84cd8bea4f3615d2839d52fc.md) | 133 | `result-track:84cd8bea4f3615d2839d52fc952765d9a6cbe5404f2a550ae2e04ab3309e928b` |
| 11 | `theorem` | [chebyshev_prime_power_step_integral](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/chebyshev-prime-power-step-integral--ab089af85a75feba27f5e3ba.md) | 162 | `result-track:ab089af85a75feba27f5e3ba52c2230ee7a92399886004d0f26c17b98839e6e7` |
| 12 | `theorem` | [chebyshev_prime_power_ibp](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/chebyshev-prime-power-ibp--daddeee88da7ab72cf062adc.md) | 185 | `result-track:daddeee88da7ab72cf062adc8d3666ad0cbf2fa0a8d2b85de07e04622cf54f72` |
| 13 | `def` | [exponentialTest](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/exponentialtest--8b1c077c319fc9640b58fdec.md) | 208 | `declaration-track:8b1c077c319fc9640b58fdec2f8b7fa5a0d4ce778e12431ff36c560477ce1ab7` |
| 14 | `theorem` | [exponentialTest_contDiff](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/exponentialtest-contdiff--d6b4f52527d58a026e848cd3.md) | 211 | `result-track:d6b4f52527d58a026e848cd315269784d3d13220dc860ac428a3828194c69c97` |
| 15 | `theorem` | [exponentialTest_deriv](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/exponentialtest-deriv--c5e25390f49a60af8d6cecb3.md) | 216 | `result-track:c5e25390f49a60af8d6cecb34f9cc1a5d88d2aec239081dd3e9ba820c59bf240` |
| 16 | `theorem` | [source_signed_pairing_ibp](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/source-signed-pairing-ibp--00d9c0526419a607724b9941.md) | 228 | `result-track:00d9c0526419a607724b9941a21f09638987c5430d927d71ce9f3602b2df125f` |
| 17 | `theorem` | [chebyshev_prime_power_ibp_of_upper_zero](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/chebyshev-prime-power-ibp-of-upper-zero--e47155c111ad699c44431e65.md) | 241 | `result-track:e47155c111ad699c44431e652e61328a0bf6adcdf343748412bef70d1c5bc35f` |
| 18 | `theorem` | [prime_two_correction](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/prime-two-correction--298771073b851bb19e08c4db.md) | 250 | `result-track:298771073b851bb19e08c4db9d4ec6a4d5e72511448c8a054617797e7172ae78` |
| 19 | `theorem` | [omitted_prime_two_boundary_is_nonzero](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/omitted-prime-two-boundary-is-nonzero--06b86ae15c3614eef9957bbd.md) | 263 | `result-track:06b86ae15c3614eef9957bbd9ae7bcfeb779b39558402acf85e47526ae8ec37c` |
| 20 | `theorem` | [exponentialTest_log](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/exponentialtest-log--4615804a4b6639632f5d9c81.md) | 273 | `result-track:4615804a4b6639632f5d9c81ca2839db2123fb5254d0dec150ab9ecb98db5c58` |
| 21 | `theorem` | [source_prime_power_contribution_eq_closed](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/source-prime-power-contribution-eq-closed--0e913b335f2b1c9177e57611.md) | 281 | `result-track:0e913b335f2b1c9177e576119b31aae69c8a0d3e52728259d3981c788d56197a` |
| 22 | `theorem` | [exp_mul_exponentialTest](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/exp-mul-exponentialtest--4344b25e85265b0851c589cd.md) | 301 | `result-track:4344b25e85265b0851c589cdf3b339ebc141c17c4572a452ce3ed6dc10fd6ab6` |
| 23 | `theorem` | [source_prime_power_descent](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/source-prime-power-descent--dec2063952a593869dec9373.md) | 310 | `result-track:dec2063952a593869dec9373c8cd4b65eb006407b15df658d1bbffb9b287421a` |
| 24 | `theorem` | [source_arithmetic_representation_of_correlation_conditions](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/declarations/source-arithmetic-representation-of-correlation-conditions--f5ab975c730d31c93aecd2bf.md) | 328 | `result-track:f5ab975c730d31c93aecd2bfb84eb74cd598b48a489be8d5ce8c52babf77a634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
