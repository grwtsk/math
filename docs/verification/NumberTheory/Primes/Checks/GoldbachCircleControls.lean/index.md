# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachCircleControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed996579bcf97d4cc042bc1e357356041aa32eba",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachCircleControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCircleControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCircleControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed996579bcf97d4cc042bc1e357356041aa32eba`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachCircleControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachCircleControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral`](../../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_frequency_integral](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCircleControls.lean/declarations/zero-frequency-integral--ebfb75862ccc98f4ec10fbe5.md) | 25 | `result-track:ebfb75862ccc98f4ec10fbe52be41b809c6fd46bb7de37438884103cd76f1648` |
| 2 | `theorem` | [positive_frequency_integral](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCircleControls.lean/declarations/positive-frequency-integral--ffb0cfd23b273e801e89bdeb.md) | 30 | `result-track:ffb0cfd23b273e801e89bdeb7a16135c528d7af420cadcfd69576a0c26feca3a` |
| 3 | `theorem` | [negative_frequency_integral](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCircleControls.lean/declarations/negative-frequency-integral--b3046adfc8480d403d729aaa.md) | 35 | `result-track:b3046adfc8480d403d729aaa0463567935bfed6a2b3af9bd20576eb4eec6cd7c` |
| 4 | `theorem` | [missing_negative_phase_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCircleControls.lean/declarations/missing-negative-phase-control--504f03f9ebb09b73edb1114f.md) | 41 | `result-track:504f03f9ebb09b73edb1114fb92c8502dfd12ddb4d6f64192235df469bf968dc` |
| 5 | `theorem` | [four_circle_identity](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCircleControls.lean/declarations/four-circle-identity--6fb60abfa2e0d5835ca17534.md) | 48 | `result-track:6fb60abfa2e0d5835ca17534a9f7ffdc7a7f5b9f450f15c25aa9be96589fb35b` |
| 6 | `theorem` | [frequency_match_without_prime_weight](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCircleControls.lean/declarations/frequency-match-without-prime-weight--cc6dfd380c97d522ff68b12a.md) | 57 | `result-track:cc6dfd380c97d522ff68b12ae8b072dd4f4e1e3887dd5ad4738945f250fe0a38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
