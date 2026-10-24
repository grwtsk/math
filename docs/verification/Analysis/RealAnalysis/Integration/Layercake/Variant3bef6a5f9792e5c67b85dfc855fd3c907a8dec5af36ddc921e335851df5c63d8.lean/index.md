# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Layercake.Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f7df4ecfb474def3681bb622071838acc047db3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f7df4ecfb474def3681bb622071838acc047db3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countable_meas_le_ne_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/countable-meas-le-ne-meas-lt--303e7d7431b1c5fd5cd5f2f0.md) | 79 | `result-track:303e7d7431b1c5fd5cd5f2f014af54f9add6cca136cdf185a33e1fc02eba910e` |
| 2 | `theorem` | [meas_le_ae_eq_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/meas-le-ae-eq-meas-lt--dcd48f279105d75c2a90ed3c.md) | 90 | `result-track:dcd48f279105d75c2a90ed3ca76b52057b86950061e39ba0338db809b8689ee9` |
| 3 | `theorem` | [lintegral_comp_eq_lintegral_meas_le_mul_of_measurable_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/lintegral-comp-eq-lintegral-meas-le-mul-of-measurable-of-sigmafinite--b331535ab0c44bbd4d8adea3.md) | 111 | `result-track:b331535ab0c44bbd4d8adea303ce0a55e7e3cdce1083075022de2843a1a1c663` |
| 4 | `theorem` | [lintegral_comp_eq_lintegral_meas_le_mul_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/lintegral-comp-eq-lintegral-meas-le-mul-of-measurable--50b24878d0428ddac61a0bae.md) | 199 | `result-track:50b24878d0428ddac61a0bae6537fd0f345b8328d3b843deb5bd82d6d25b5bfc` |
| 5 | `theorem` | [lintegral_comp_eq_lintegral_meas_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/lintegral-comp-eq-lintegral-meas-le-mul--6a0efb5c3e39ec1263aa4a5b.md) | 399 | `result-track:6a0efb5c3e39ec1263aa4a5bbb48704bcef4ae2b4778df8b92c1db43c382dce1` |
| 6 | `theorem` | [lintegral_eq_lintegral_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/lintegral-eq-lintegral-meas-le--db9be2add547ad0ab3f6d3e1.md) | 450 | `result-track:db9be2add547ad0ab3f6d3e1a1564353ecf3d939a45f16ccca1a8344ad80570b` |
| 7 | `theorem` | [lintegral_comp_eq_lintegral_meas_lt_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/lintegral-comp-eq-lintegral-meas-lt-mul--863bafed1ba9664519aec6a3.md) | 483 | `result-track:863bafed1ba9664519aec6a3ae46418d73c5b4a813d885a4af20046177ce9007` |
| 8 | `theorem` | [lintegral_eq_lintegral_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/lintegral-eq-lintegral-meas-lt--05abf917c8c9f2d31b565099.md) | 501 | `result-track:05abf917c8c9f2d31b5650993f51f7ef86192e056894837564a1c14446df4780` |
| 9 | `theorem` | [Integrable.integral_eq_integral_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/integrable-integral-eq-integral-meas-lt--1744ad12073a1f8a8e044389.md) | 523 | `result-track:1744ad12073a1f8a8e044389e554dc2b83f3fd7ee230474013c239d4beda5d44` |
| 10 | `theorem` | [Integrable.integral_eq_integral_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/integrable-integral-eq-integral-meas-le--193728de99b99ac1ce4c31ea.md) | 544 | `result-track:193728de99b99ac1ce4c31eac798fe04c09bba0a0458cb7780c5dccbdacde98b` |
| 11 | `lemma` | [Integrable.integral_eq_integral_Ioc_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/declarations/integrable-integral-eq-integral-ioc-meas-le--0916c59e635b7ac2649187a8.md) | 552 | `result-track:0916c59e635b7ac2649187a853b61a302439c73046b37edbd1920b7d0d0687e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
