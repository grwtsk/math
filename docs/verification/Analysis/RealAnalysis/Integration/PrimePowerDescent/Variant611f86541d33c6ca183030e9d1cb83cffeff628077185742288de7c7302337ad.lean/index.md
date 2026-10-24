# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimePowerDescent.Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4963666ae38854c5dd8311aa9356403ba9d4abc",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4963666ae38854c5dd8311aa9356403ba9d4abc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePowerInventory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/primepowerinventory--48a160026051ac5253bb5b21.md) | 23 | `declaration-track:48a160026051ac5253bb5b21afa4dda90c0c116ce40e88b9713825c8231ccfc3` |
| 2 | `theorem` | [inventory_filter_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/inventory-filter-log--5a3966862cc19867ab618a6e.md) | 27 | `result-track:5a3966862cc19867ab618a6e36f7afc27c224df7b114171539db38d6797bb3f0` |
| 3 | `theorem` | [chebyshev_eq_finite_steps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/chebyshev-eq-finite-steps--15df21077b34a2a2d527aa7b.md) | 42 | `result-track:15df21077b34a2a2d527aa7b4b38e3229dabb7f372baa370df505faad219bdc5` |
| 4 | `theorem` | [integral_closed_step](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/integral-closed-step--e570ed7a97468ec2bfe86d27.md) | 52 | `result-track:e570ed7a97468ec2bfe86d27c3b0b110ca2bd25ea5d0154f0bff41caca3d5bdb` |
| 5 | `theorem` | [integral_closed_step_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/integral-closed-step-deriv--72a2db88ef532cdbaaf4d2e0.md) | 78 | `result-track:72a2db88ef532cdbaaf4d2e0c6d2c49c2016ee3edd99fbcafc3de1945d342aa0` |
| 6 | `theorem` | [intervalIntegrable_closed_step](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/intervalintegrable-closed-step--2a22e4d484e20a17adac0a9e.md) | 87 | `result-track:2a22e4d484e20a17adac0a9e2cd2d0fcccc10ae78d9b1ca28b75c42df75003a3` |
| 7 | `theorem` | [inventory_log_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/inventory-log-bounds--a127353d52a8db8c6bef0a68.md) | 94 | `result-track:a127353d52a8db8c6bef0a68bc529cc7ab8cb34103f237de1644865965184852` |
| 8 | `theorem` | [integral_finite_steps_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/integral-finite-steps-deriv--5c446f1034c893bf4ad30f53.md) | 104 | `result-track:5c446f1034c893bf4ad30f53237f390bfa3fc978d8e3f0ad4ae2fd84428cd90b` |
| 9 | `theorem` | [chebyshev_mul_eq_steps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/chebyshev-mul-eq-steps--0ff40962fc16376d74939e7c.md) | 120 | `result-track:0ff40962fc16376d74939e7c362d5f8a493736e7453a04b9ae7782e4690f868d` |
| 10 | `theorem` | [chebyshev_mul_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/chebyshev-mul-deriv-intervalintegrable--2745714c9cbf7110fe942646.md) | 130 | `result-track:2745714c9cbf7110fe942646e6bb641e0289e26d5b59a0ac3ed636564efdf7b6` |
| 11 | `theorem` | [chebyshev_prime_power_step_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/chebyshev-prime-power-step-integral--5818c9049117775bd96181e9.md) | 159 | `result-track:5818c9049117775bd96181e94627d7af0697125649b589f74309ac968453544d` |
| 12 | `theorem` | [chebyshev_prime_power_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/chebyshev-prime-power-ibp--d19a60a96b3eace1b1ff3bfa.md) | 182 | `result-track:d19a60a96b3eace1b1ff3bfa2cef2fda01e92b1152f4c1c224823aaf8bfde686` |
| 13 | `def` | [exponentialTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/exponentialtest--2cde41dad8b21cdde4ea3d53.md) | 205 | `declaration-track:2cde41dad8b21cdde4ea3d53a3c7af83520ed5e5b0020cc87c01ef5e53ed0546` |
| 14 | `theorem` | [exponentialTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/exponentialtest-contdiff--dcc2e493aff14b0f58ed3aae.md) | 208 | `result-track:dcc2e493aff14b0f58ed3aae2a3822202b6bd9f5fe70329f59f3deaaf3a13e41` |
| 15 | `theorem` | [exponentialTest_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/exponentialtest-deriv--0e6c00bfb5c95d39de1dfac8.md) | 213 | `result-track:0e6c00bfb5c95d39de1dfac86533b12b82d883828f0e98c250ef576ab3b249f1` |
| 16 | `theorem` | [source_signed_pairing_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/source-signed-pairing-ibp--49a87702c8a7f96835b3a3a8.md) | 225 | `result-track:49a87702c8a7f96835b3a3a8b251bed0fdede2fcfec3fe9b6485d7e26cada7da` |
| 17 | `theorem` | [chebyshev_prime_power_ibp_of_upper_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/chebyshev-prime-power-ibp-of-upper-zero--ad3d186830780d856239d4f6.md) | 238 | `result-track:ad3d186830780d856239d4f6f8efa196bd681b2e23b47876be8201084484ce53` |
| 18 | `theorem` | [prime_two_correction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/prime-two-correction--2f56fed5b16615b37b3b26c0.md) | 247 | `result-track:2f56fed5b16615b37b3b26c006d8f07ebc0623987aa41c6caffb8913040b2a34` |
| 19 | `theorem` | [omitted_prime_two_boundary_is_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/omitted-prime-two-boundary-is-nonzero--7820e5b1a026f6312d4771e4.md) | 260 | `result-track:7820e5b1a026f6312d4771e4c81a12501452b0d04249243ee35acf2dcb940444` |
| 20 | `theorem` | [exponentialTest_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/exponentialtest-log--f805570744af6c06cfff4e94.md) | 270 | `result-track:f805570744af6c06cfff4e941f33f7c116920963a5ec2a7bd5bd500be5c945cf` |
| 21 | `theorem` | [source_prime_power_contribution_eq_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/source-prime-power-contribution-eq-closed--4023d5e3a80927c52b05d67b.md) | 278 | `result-track:4023d5e3a80927c52b05d67b16bc9208d80749e7c7b304bb1434c16e3c44185f` |
| 22 | `theorem` | [exp_mul_exponentialTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/exp-mul-exponentialtest--0c48128bce430f1374fb68a8.md) | 298 | `result-track:0c48128bce430f1374fb68a8d5444adc01245f91e786f62f3f4dacebfac756dd` |
| 23 | `theorem` | [source_prime_power_descent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/source-prime-power-descent--ea3e19486953d9e566c40db0.md) | 307 | `result-track:ea3e19486953d9e566c40db0f139e299bf968ac1b057cd394c71c8100ddff259` |
| 24 | `theorem` | [source_arithmetic_representation_of_correlation_conditions](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/declarations/source-arithmetic-representation-of-correlation-conditions--0c0170d7a0287f6d289ba840.md) | 325 | `result-track:0c0170d7a0287f6d289ba840085528dd60b27d48f45395eaf1a66eab487afc9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
