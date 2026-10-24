# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.RoundedEvaluationControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ae4618f69355cb07f15d234b1e1823f13106551",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ae4618f69355cb07f15d234b1e1823f13106551`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation`](../../../../../mathematics/Analysis/ComplexAnalysis/RoundedLogPowerEvaluation.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [negative_floor](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/negative-floor--21dabebbd4ab157fdbd04368.md) | 23 | `result-track:21dabebbd4ab157fdbd04368e365af44109c2ae61006826abf563f55e5f4719b` |
| 2 | `theorem` | [upward_never_shrinks](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/upward-never-shrinks--80a013048ef06a3d7ea66fcd.md) | 27 | `result-track:80a013048ef06a3d7ea66fcd51bffdcb51026673523ff8a73796cb8962cc4d35` |
| 3 | `theorem` | [seed_is_rounded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/seed-is-rounded--6ccde20c12695e82c5f670d4.md) | 31 | `result-track:6ccde20c12695e82c5f670d4b5dfe0c0dd7fdb89e7ece19339b2496c2d639767` |
| 4 | `theorem` | [seed_roundoff_is_charged](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/seed-roundoff-is-charged--57f6ac3b93ff33efcaed6809.md) | 34 | `result-track:57f6ac3b93ff33efcaed68093293834e8032bf3b696f198be656fd99d6ce0218` |
| 5 | `theorem` | [quadratic_error_is_needed](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/quadratic-error-is-needed--162490637f813d952f2936af.md) | 38 | `result-track:162490637f813d952f2936af4da50c9ce0b7d3b12967f90e51c45e725d3a58aa` |
| 6 | `theorem` | [early_rounding_is_amplified](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/early-rounding-is-amplified--a934475dd1cc308e52d6f496.md) | 42 | `result-track:a934475dd1cc308e52d6f496488499a62edcfc7b8cd8a2ae1691570872a26316` |
| 7 | `theorem` | [two_coordinates_not_one](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/two-coordinates-not-one--d93c2441e774ffff69360b6e.md) | 46 | `result-track:d93c2441e774ffff69360b6efa50ef10f4fe1c2eee03c8dc5f0a3cb842665ec4` |
| 8 | `theorem` | [zero_bits_roundoff](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/zero-bits-roundoff--7675012ad3b8d5d6dbbb0614.md) | 50 | `result-track:7675012ad3b8d5d6dbbb0614c4e20d111537a3772ea0a41eed0287ab41707fb6` |
| 9 | `theorem` | [empty_candidates_fail](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/empty-candidates-fail--6e245178c49056d1e0e7e451.md) | 52 | `result-track:6e245178c49056d1e0e7e451ab364566b4c5adab83106f0827fa47cbac5c729d` |
| 10 | `theorem` | [selection_skips_bad_budget](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/selection-skips-bad-budget--c050a87845b24195653e6c2e.md) | 56 | `result-track:c050a87845b24195653e6c2e1719498e6e3e5d2a328d1fdfb8458435160847c8` |
| 11 | `theorem` | [finite_exhaustion_is_failure](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/finite-exhaustion-is-failure--5dda90bb1eb71e8ca3e7f7d2.md) | 60 | `result-track:5dda90bb1eb71e8ca3e7f7d250a3ba54b6c1c126dc2befb8740ff04b1ab45263` |
| 12 | `theorem` | [tolerance_allows_equality](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/tolerance-allows-equality--33a4ccee75b551c92e30d1f9.md) | 65 | `result-track:33a4ccee75b551c92e30d1f9e9b051f833c6a249e59871a8fbff6d8f1dc9a040` |
| 13 | `theorem` | [prime_margin_still_strict](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RoundedEvaluationControls.lean/declarations/prime-margin-still-strict--dc0d59d3bc1d7d69a1e72f4f.md) | 69 | `result-track:dc0d59d3bc1d7d69a1e72f4f61cc8ac134c4423f347ace75034f9c27f1530615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
