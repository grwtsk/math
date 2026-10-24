# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachTwoArcThetaControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dffe7393706e2a755303be26e0c28c05d3c156a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dffe7393706e2a755303be26e0c28c05d3c156a`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff`](../../../../../mathematics/NumberTheory/Primes/GoldbachThetaExplicitCutoff.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [theta_prefix_zero_endpoint](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean/declarations/theta-prefix-zero-endpoint--2d1402a55f3017a6b7d4ef54.md) | 16 | `result-track:2d1402a55f3017a6b7d4ef54144d94a405231671f7b847464e1c1b94e1066560` |
| 2 | `theorem` | [zero_prefix_budget_impossible](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean/declarations/zero-prefix-budget-impossible--b4641e4adf27a2e623fb63fd.md) | 21 | `result-track:b4641e4adf27a2e623fb63fdfec6ba43043ad16293c4e198bca53dba20d095fb` |
| 3 | `theorem` | [odd_prefix_at_two](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean/declarations/odd-prefix-at-two--714eb0afed8246bb461d8fc3.md) | 28 | `result-track:714eb0afed8246bb461d8fc342f30758c177dfbed788eae74913f3b19511c51b` |
| 4 | `theorem` | [even_prime_correction_begins_at_two](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean/declarations/even-prime-correction-begins-at-two--a407b29c4d7468f9cccc86a8.md) | 35 | `result-track:a407b29c4d7468f9cccc86a87cf06ee009aa705de0b5899169837c4922f225da` |
| 5 | `theorem` | [even_prime_correction_at_four](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean/declarations/even-prime-correction-at-four--f7672b3f8df03af7753f478c.md) | 41 | `result-track:f7672b3f8df03af7753f478c20a815fedfd4ebfa43704bc4bece4f0c4323cd41` |
| 6 | `theorem` | [small_prefix_allowance_requires_payment](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean/declarations/small-prefix-allowance-requires-payment--ef6d793ecfb89ccd6e062ff6.md) | 47 | `result-track:ef6d793ecfb89ccd6e062ff656e44b88719f912ae1a8ec7e215de7366d7f8713` |
| 7 | `theorem` | [declared_cutoff_pays_small_prefix_allowance](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachTwoArcThetaControls.lean/declarations/declared-cutoff-pays-small-prefix-allowance--fa3a22dbf162b68147f10fbb.md) | 50 | `result-track:fa3a22dbf162b68147f10fbba8624cc6c28aa431a5d0582775a697a9c87ffa44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
