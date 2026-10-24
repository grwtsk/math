# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TentLeftDecayControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e80077c35e48033ad4f3ee9a9ac1e53de29e8e60",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e80077c35e48033ad4f3ee9a9ac1e53de29e8e60`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentLeftDecay`](../../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_left_real_part](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/declarations/first-left-real-part--2ce28e39eef1bcc89fbf9a0e.md) | 21 | `result-track:2ce28e39eef1bcc89fbf9a0efcbc6f9a6bd39129286f88aa0a705db033e07b90` |
| 2 | `theorem` | [second_left_reflection](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/declarations/second-left-reflection--980d313020216262ba896417.md) | 24 | `result-track:980d313020216262ba896417b7818c95109709cdea875360823d2a4e3c8ae322` |
| 3 | `theorem` | [zero_height_reciprocal](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/declarations/zero-height-reciprocal--030ae0eda9f255702926e0f0.md) | 29 | `result-track:030ae0eda9f255702926e0f0c6f9f2732ed13185b4e12289a220d68bc757b6b5` |
| 4 | `theorem` | [two_reciprocals_not_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/declarations/two-reciprocals-not-zero--5b4be01965941099c890a1a2.md) | 31 | `result-track:5b4be01965941099c890a1a2a19798c27e9fdc17556e68bb0a857356b8e8ad62` |
| 5 | `theorem` | [zero_shift_digamma](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/declarations/zero-shift-digamma--be605d541f9f2324b960d435.md) | 35 | `result-track:be605d541f9f2324b960d435ec9ad2863c4529c9d5eb1fcfd5aa9dd20fa49d52` |
| 6 | `theorem` | [fixed_parameter_model](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/declarations/fixed-parameter-model--2aed4c95d2f7aad19e052c37.md) | 39 | `result-track:2aed4c95d2f7aad19e052c37bb3dc5eefa5e3176edfe25329df3c0db7ec9e201` |
| 7 | `theorem` | [growing_parameter_model](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/declarations/growing-parameter-model--f56e12c350c091319bae591a.md) | 46 | `result-track:f56e12c350c091319bae591aa558a5262c4a060815a639c6376000363f70ea37` |
| 8 | `theorem` | [no_damping_at_one](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentLeftDecayControls.lean/declarations/no-damping-at-one--d5df636f9ac214f3b7a733a2.md) | 50 | `result-track:d5df636f9ac214f3b7a733a28b491dbb88d06faa32b7a70647eae3daa764b52d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
