# Verification target: GRWTSK.NumberTheory.Attempt01.Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a08eca9f241541ff9afa308462f1c0beac1acad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a08eca9f241541ff9afa308462f1c0beac1acad`.

Source path: `GRWTSK/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NormalizedGammaBudget` — import line 6; external provider; requires a separately pinned dependency.
- `FiniteRationalCertificate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pi_lower](../../../../mathematics/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/declarations/log-pi-lower--07d0fd9475c02d669a03936d.md) | 23 | `result-track:07d0fd9475c02d669a03936d7bfb65279ea6129cd7ee05589e06da6afdbd2b82` |
| 2 | `theorem` | [actual_endpoint_lt](../../../../mathematics/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/declarations/actual-endpoint-lt--64258bba26e6eaea61378fdb.md) | 34 | `result-track:64258bba26e6eaea61378fdb1787fa3bd227fa6a2d1879cdbbd005b130f97bc3` |
| 3 | `theorem` | [sqrt_two_bounds](../../../../mathematics/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/declarations/sqrt-two-bounds--97260dfa4962fad1a6e231ed.md) | 40 | `result-track:97260dfa4962fad1a6e231edb9cef51c4304b45f2eaa64dfff221bcbcb71402e` |
| 4 | `theorem` | [sqrt_three_bounds](../../../../mathematics/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/declarations/sqrt-three-bounds--52e0a5530147bbbcf6437ef4.md) | 45 | `result-track:52e0a5530147bbbcf6437ef4a674f88befe66fcf85e00610c06a3e023a1f9628` |
| 5 | `theorem` | [fixed_prime_sum_gt](../../../../mathematics/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/declarations/fixed-prime-sum-gt--b6763b4471484ac83d3357fc.md) | 50 | `result-track:b6763b4471484ac83d3357fc835582e4043d3b9d564b78620dcfbf0599016c3c` |
| 6 | `theorem` | [actual_coarse_calibration_lt](../../../../mathematics/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/declarations/actual-coarse-calibration-lt--176c69101a68e58c5d7bed05.md) | 65 | `result-track:176c69101a68e58c5d7bed051cdae8b89ab963ed57f85171ddaab7aa3d6a2ffb` |
| 7 | `theorem` | [actual_sharp_calibration_lt](../../../../mathematics/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/declarations/actual-sharp-calibration-lt--a96e7f1133dc8b855698b414.md) | 83 | `result-track:a96e7f1133dc8b855698b414e0bc5d21a5425cedec50146c26db4cee90d40c6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
