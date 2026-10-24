# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.IntegerWitnessControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e38c67c6235d1c4c4556aed214e7b73b0e5501",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e38c67c6235d1c4c4556aed214e7b73b0e5501`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower`](../../../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [negative_floor](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/negative-floor--05b1d3fe78d0de3de2ea020a.md) | 15 | `result-track:05b1d3fe78d0de3de2ea020aa179fefdea54c1af9027de37164585777855b63a` |
| 2 | `theorem` | [truncation_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/truncation-reject--057909e69d1f86f026eb38d5.md) | 17 | `result-track:057909e69d1f86f026eb38d5a3a9f3baa4097e8cc1c4ffc0c6c7150f3fcd49d8` |
| 3 | `theorem` | [exact_radius](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/exact-radius--d2d7ce633149ef42d44db0cf.md) | 19 | `result-track:d2d7ce633149ef42d44db0cf162a65249cc6010a862297681ab6c0b92c3bacec` |
| 4 | `theorem` | [larger_radius_not_same_state](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/larger-radius-not-same-state--cecb2b3b4bff78099f60726c.md) | 21 | `result-track:cecb2b3b4bff78099f60726cee642dc9f12f6c9db15eba7ce13d641fb4d9c90c` |
| 5 | `theorem` | [smaller_radius_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/smaller-radius-reject--ec326a49c4693c499497835d.md) | 23 | `result-track:ec326a49c4693c499497835d164c35076f0fbf789c93fde01c2ce50aff12b5a2` |
| 6 | `theorem` | [quadratic_error_required](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/quadratic-error-required--4e203c6211789d58439de2df.md) | 25 | `result-track:4e203c6211789d58439de2dff474256567e8238b779de56f82e3653ad635cdd6` |
| 7 | `theorem` | [complete_chain](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/complete-chain--c81c638e8eb8abdc0dc56d92.md) | 27 | `result-track:c81c638e8eb8abdc0dc56d921c07c34906fb1c8001337f17de41260027a03632` |
| 8 | `theorem` | [right_final_does_not_hide_bad_step](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/right-final-does-not-hide-bad-step--0144801c4206631e27f31a5a.md) | 29 | `result-track:0144801c4206631e27f31a5a5709888f16c966706aff56fd8422a16dad9be793` |
| 9 | `theorem` | [wrong_seed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/wrong-seed--fe900b67959ea6d8963f43f1.md) | 32 | `result-track:fe900b67959ea6d8963f43f13b6fcefed7e6ad42177bcf003247f3857d22ea28` |
| 10 | `theorem` | [wrong_final_radius](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/wrong-final-radius--2b6fc38540733219fb1d5e99.md) | 34 | `result-track:2b6fc38540733219fb1d5e99ea4d6732c399f4e9489a07707301cf09e9276be8` |
| 11 | `theorem` | [missing_last](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/missing-last--43d80cec6b27ef55eb333c1a.md) | 37 | `result-track:43d80cec6b27ef55eb333c1a1232f6870eda53d8d4419a2966327c49e5acd2ca` |
| 12 | `theorem` | [extra_row](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/extra-row--ab37d21def76c028f8639d6c.md) | 39 | `result-track:ab37d21def76c028f8639d6c807601bd70038d5dcef4720737ea6e3f447cc0f4` |
| 13 | `theorem` | [order_matters](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/order-matters--40d2cd837b38f249a99cac72.md) | 41 | `result-track:40d2cd837b38f249a99cac7208afcfd71cffcc06d8112f62fdbf38e861be9066` |
| 14 | `theorem` | [empty_chain](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/empty-chain--e14ee8aa7df3041755173ff2.md) | 43 | `result-track:e14ee8aa7df3041755173ff2dfd43b976b551ea6c55b56f5c1fad5e7e4d504d9` |
| 15 | `theorem` | [empty_positive_count](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/empty-positive-count--69033010855b71e457ab0666.md) | 45 | `result-track:69033010855b71e457ab0666279b679535e689132a02b103143c639984193bc5` |
| 16 | `theorem` | [fixed_point_extra_row_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/fixed-point-extra-row-reject--2f99c49f982a0d9181216990.md) | 47 | `result-track:2f99c49f982a0d91812169905f57ade57bddfb7ed09edb6f736f1136d777707b` |
| 17 | `theorem` | [fixed_point_full_count](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/fixed-point-full-count--d8fa6cb10ac7d933f7ca4b95.md) | 49 | `result-track:d8fa6cb10ac7d933f7ca4b95c54372fefe41a574830ae08f7771e1eea4e463f1` |
| 18 | `theorem` | [negative_arithmetic_state](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/negative-arithmetic-state--c7afa51aac4bb19e54fbaf46.md) | 52 | `result-track:c7afa51aac4bb19e54fbaf4611b7282776889b08a69a727405deccd3370ed06d` |
| 19 | `theorem` | [floor_upper_is_strict](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/floor-upper-is-strict--e160c820bbe91cbc59e9add3.md) | 54 | `result-track:e160c820bbe91cbc59e9add394a0a2ae2ecdc0d79c0643e458c464db17812312` |
| 20 | `theorem` | [ceil_lower_is_strict](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/ceil-lower-is-strict--27564f20d2e2f784cbe53e0b.md) | 56 | `result-track:27564f20d2e2f784cbe53e0b9289631a069f277254bc71b78c767f627c04526b` |
| 21 | `theorem` | [base_zero_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerWitnessControls.lean/declarations/base-zero-reject--fb9d9f2aca5ad3a7fd7ab9d9.md) | 59 | `result-track:fb9d9f2aca5ad3a7fd7ab9d9fc8a2f545dc5af1365879f5d98713a1635415936` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
