# Verification target: GRWTSK.NumberTheory.Attempt01.Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "989357ff2ca68938060b7b18b80a418586276859",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `989357ff2ca68938060b7b18b80a418586276859`.

Source path: `GRWTSK/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NormalizedGammaBudget` — import line 1; external provider; requires a separately pinned dependency.
- `FiniteRationalCertificate` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pi_lower](../../../../mathematics/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean/declarations/log-pi-lower--8b784be107d5a8475e23466b.md) | 15 | `result-track:8b784be107d5a8475e23466b29834d486f71aac42d5a14829887dba9fe17ed5e` |
| 2 | `theorem` | [actual_endpoint_lt](../../../../mathematics/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean/declarations/actual-endpoint-lt--d37f2357e1bea02d35385330.md) | 26 | `result-track:d37f2357e1bea02d35385330873bc702013e4a5c99f3f640ed6eec91180f99df` |
| 3 | `theorem` | [sqrt_two_bounds](../../../../mathematics/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean/declarations/sqrt-two-bounds--3cd92c5590d8219b9c8e2966.md) | 32 | `result-track:3cd92c5590d8219b9c8e2966bcf07d2e6eb309f62ead14c8e73b22b41fbf638c` |
| 4 | `theorem` | [sqrt_three_bounds](../../../../mathematics/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean/declarations/sqrt-three-bounds--c8066d87abd2d575c11c86e6.md) | 37 | `result-track:c8066d87abd2d575c11c86e6e401a9850dd343e1a79c6e43f0147774fc8795b4` |
| 5 | `theorem` | [fixed_prime_sum_gt](../../../../mathematics/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean/declarations/fixed-prime-sum-gt--540b7ee8604bd967de458c78.md) | 42 | `result-track:540b7ee8604bd967de458c780e4e2cb6d7e0b7b38c8f0c60d72f1e0320626fe4` |
| 6 | `theorem` | [actual_coarse_calibration_lt](../../../../mathematics/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean/declarations/actual-coarse-calibration-lt--41dc392fd7aa87ecbaffd627.md) | 57 | `result-track:41dc392fd7aa87ecbaffd62730ee10e7e8dd7cc68a18a2f2906649801d44e28e` |
| 7 | `theorem` | [actual_sharp_calibration_lt](../../../../mathematics/NumberTheory/Attempt01/Variant3eb63564978106c18f099915fa51d40e10ccb4baf80cb3647e4e2f71d2f4bd9b.lean/declarations/actual-sharp-calibration-lt--1489613c8c3c318294b5463f.md) | 75 | `result-track:1489613c8c3c318294b5463fdb406dde0b1225e9b51d9e65c4fa654effb14bab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
