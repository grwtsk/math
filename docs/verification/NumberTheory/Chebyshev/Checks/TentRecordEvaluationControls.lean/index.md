# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TentRecordEvaluationControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e592e3e50265bedf980b00020b6fd737bcbe4ea5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e592e3e50265bedf980b00020b6fd737bcbe4ea5`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentRecordEvaluation`](../../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [empty_polynomial_retains_error](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/empty-polynomial-retains-error--083360b934c607fb32e8e0ed.md) | 18 | `result-track:083360b934c607fb32e8e0ed6dc22f7b532382432ddf163b09258263b0ba5742` |
| 2 | `theorem` | [quadratic_polynomial_at_half](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/quadratic-polynomial-at-half--89d22e3470543bf398e7fa3e.md) | 22 | `result-track:89d22e3470543bf398e7fa3e04f6167d0695379d81e1cbd91600c44d6bb5d555` |
| 3 | `theorem` | [degree_guard_rejects_large_argument](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/degree-guard-rejects-large-argument--8ae5623e32ec917268ba1b52.md) | 26 | `result-track:8ae5623e32ec917268ba1b52a50865e55c001af207f30019e76798db0adb0d48` |
| 4 | `theorem` | [zero_center_rejects_denominator](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/zero-center-rejects-denominator--9a03a5baff4e0c12a7f00510.md) | 29 | `result-track:9a03a5baff4e0c12a7f005108c03a29b0118b0822e5c46e97ff2845b6b172620` |
| 5 | `theorem` | [minus_one_center_rejects_denominator](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/minus-one-center-rejects-denominator--cf4e87091b13795db53a153b.md) | 33 | `result-track:cf4e87091b13795db53a153b7007421e2373d069af004538789639c1e76e2424` |
| 6 | `theorem` | [middle_endpoint_error_has_coefficient_two](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/middle-endpoint-error-has-coefficient-two--24a3d48a2d722100fe09e6d3.md) | 37 | `result-track:24a3d48a2d722100fe09e6d3a1f4695a12fb43dfeb4a5a6dba37a380f1d3328e` |
| 7 | `theorem` | [multiplicity_scales_error](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/multiplicity-scales-error--f514662860c9d832198e9f04.md) | 40 | `result-track:f514662860c9d832198e9f044dd15faaad129055d188edf4b5d4fa674ad5decd` |
| 8 | `theorem` | [logarithm_error_is_separate](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/logarithm-error-is-separate--0009c996595051295cf8d65f.md) | 43 | `result-track:0009c996595051295cf8d65f7a0eae4e82d2cec34465041e19634d30b6dcb34b` |
| 9 | `theorem` | [positive_radius_not_exact_coordinate](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/positive-radius-not-exact-coordinate--06a0f07f2246682d27cfe5f5.md) | 46 | `result-track:06a0f07f2246682d27cfe5f56622d5e20ad31363978af16f1a7bc9a77132aac6` |
| 10 | `theorem` | [same_height_not_same_point](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentRecordEvaluationControls.lean/declarations/same-height-not-same-point--931ff5d279220d1227ecf446.md) | 57 | `result-track:931ff5d279220d1227ecf446a421d75538a05d54324adbf100af4e76101144d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
