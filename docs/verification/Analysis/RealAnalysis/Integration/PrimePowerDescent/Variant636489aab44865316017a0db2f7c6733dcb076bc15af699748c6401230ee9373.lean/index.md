# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimePowerDescent.Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d9832d6237c01078cf6aa307e3f7dcd1d05df3f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d9832d6237c01078cf6aa307e3f7dcd1d05df3f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean.json)

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
| 1 | `def` | [primePowerInventory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/primepowerinventory--730171caa6d14cd7075ac52a.md) | 23 | `declaration-track:730171caa6d14cd7075ac52a4e788aaf686141881edc12e2596ab2ff9abc83d2` |
| 2 | `theorem` | [inventory_filter_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/inventory-filter-log--a9ab3c0f1f76e1c9485e0210.md) | 27 | `result-track:a9ab3c0f1f76e1c9485e0210790a35c1805e53baaf7424765efb1e19ed6609b7` |
| 3 | `theorem` | [chebyshev_eq_finite_steps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/chebyshev-eq-finite-steps--352de828e521c93917dda131.md) | 42 | `result-track:352de828e521c93917dda1319932de13fd703111eba7ccc3eafe70ded1890dab` |
| 4 | `theorem` | [integral_closed_step](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/integral-closed-step--64644a6f1f3cb677fce7ba85.md) | 52 | `result-track:64644a6f1f3cb677fce7ba85aa48d9367037c5763be308889e7d695a5710d3d6` |
| 5 | `theorem` | [integral_closed_step_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/integral-closed-step-deriv--64db3458d19f49817d443078.md) | 78 | `result-track:64db3458d19f49817d44307884935ea33eb97a1aba3667453fe2c98f7817d550` |
| 6 | `theorem` | [intervalIntegrable_closed_step](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/intervalintegrable-closed-step--86e32a1c2c862d0bf0f1705a.md) | 87 | `result-track:86e32a1c2c862d0bf0f1705a9128c3319f3ffeea952be31562746e7478d0dad3` |
| 7 | `theorem` | [inventory_log_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/inventory-log-bounds--6af986097f41ef9593adc611.md) | 94 | `result-track:6af986097f41ef9593adc611ae14652d73dd2cdafa56ea39f876ab07e5e9cec6` |
| 8 | `theorem` | [integral_finite_steps_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/integral-finite-steps-deriv--b07e329e0c80604551adf4a3.md) | 104 | `result-track:b07e329e0c80604551adf4a3dcb3f591ddafa0b3a6c9e815e53a0a2ba5ea39a8` |
| 9 | `theorem` | [chebyshev_mul_eq_steps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/chebyshev-mul-eq-steps--49016b306f493e96de34e84a.md) | 120 | `result-track:49016b306f493e96de34e84ab18087ca311e1ea409a1b7fcc6df12c7edf8309c` |
| 10 | `theorem` | [chebyshev_mul_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/chebyshev-mul-deriv-intervalintegrable--6c15097b2b6480d1bad54dc6.md) | 130 | `result-track:6c15097b2b6480d1bad54dc6054a5fabfad728fe7ecd951db9ec4534cf4c7da4` |
| 11 | `theorem` | [chebyshev_prime_power_step_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/chebyshev-prime-power-step-integral--31816be8e6363585b185010c.md) | 159 | `result-track:31816be8e6363585b185010cf071cc6cfec48de9cdb7f25491c37e86d62641e4` |
| 12 | `theorem` | [chebyshev_prime_power_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/chebyshev-prime-power-ibp--eddcf931f78446ffc42262e1.md) | 182 | `result-track:eddcf931f78446ffc42262e1d6abe8e94bbede99ac9c9143144f433cfc66128b` |
| 13 | `def` | [exponentialTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/exponentialtest--8b8d7bdd8bd373dae2d5df48.md) | 205 | `declaration-track:8b8d7bdd8bd373dae2d5df48cb7eae70892266cd33bbc4c7f02c5374d4ad3df0` |
| 14 | `theorem` | [exponentialTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/exponentialtest-contdiff--85a5dbf52cccded4328c96a5.md) | 208 | `result-track:85a5dbf52cccded4328c96a5a5cdb2806d5d0e4c1cbb787fffd607e64b10f52c` |
| 15 | `theorem` | [exponentialTest_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/exponentialtest-deriv--86fdc543314da00528c0935e.md) | 213 | `result-track:86fdc543314da00528c0935ef42e76de6616ed70706f743262c7ba881706df76` |
| 16 | `theorem` | [source_signed_pairing_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/source-signed-pairing-ibp--0b4961c87947e68a3ca1ad16.md) | 225 | `result-track:0b4961c87947e68a3ca1ad160936318af0a4132935369e5f803fd05b33a42a5d` |
| 17 | `theorem` | [chebyshev_prime_power_ibp_of_upper_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/chebyshev-prime-power-ibp-of-upper-zero--716b5d0801179f61a1212082.md) | 238 | `result-track:716b5d0801179f61a1212082646aa8f8299aa2b5f93c17c6915938fa18c7c489` |
| 18 | `theorem` | [prime_two_correction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/prime-two-correction--59feca1526bc648fa6731466.md) | 247 | `result-track:59feca1526bc648fa673146650712a3960caf3db08362b73415f1cb85029bdd8` |
| 19 | `theorem` | [omitted_prime_two_boundary_is_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/omitted-prime-two-boundary-is-nonzero--a018a875fabf394029770f1f.md) | 260 | `result-track:a018a875fabf394029770f1f3a7b3a47a38efc53d20f75b171ae981f2ee3d057` |
| 20 | `theorem` | [exponentialTest_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/exponentialtest-log--946ca4db2bb9d8b0ca50ac52.md) | 270 | `result-track:946ca4db2bb9d8b0ca50ac52876b036b095ed882f06d1d1680b71ae74a86c347` |
| 21 | `theorem` | [source_prime_power_contribution_eq_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/source-prime-power-contribution-eq-closed--9ff8070e170168f91df97dbb.md) | 278 | `result-track:9ff8070e170168f91df97dbb9e9ec62774ef084922bf4796e92a53e6cfc37b5b` |
| 22 | `theorem` | [exp_mul_exponentialTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/exp-mul-exponentialtest--a50a0262a041189aaf59bb09.md) | 298 | `result-track:a50a0262a041189aaf59bb09c615cd6f1df945531c81d1449e03ae26b4964843` |
| 23 | `theorem` | [source_prime_power_descent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/source-prime-power-descent--bfc53ec9efad165b37c0200d.md) | 307 | `result-track:bfc53ec9efad165b37c0200d5b4145537b2b0eece5d8630a5bd77745cc6738b3` |
| 24 | `theorem` | [source_arithmetic_representation_of_correlation_conditions](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/declarations/source-arithmetic-representation-of-correlation-conditions--6a9c7814179618bece24ee0c.md) | 325 | `result-track:6a9c7814179618bece24ee0c9b78f1a3a6d79a2aa2699cb66118f6fd7daa561d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
