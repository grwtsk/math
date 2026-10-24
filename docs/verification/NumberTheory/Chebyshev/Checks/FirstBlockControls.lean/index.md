# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.FirstBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52c47b587b693a6474e3b827db5f5010345ce1fa",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52c47b587b693a6474e3b827db5f5010345ce1fa`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlock`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_last_bases](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/first-last-bases--f0390ee65b57126e91456990.md) | 18 | `result-track:f0390ee65b57126e914569902cfadb3b83f50b27065fcf243588af160fd426ef` |
| 2 | `theorem` | [boundary_log_reduction](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/boundary-log-reduction--c07026104a1dcdba6750d182.md) | 21 | `result-track:c07026104a1dcdba6750d18229e307c2da2109ff4bc79c0847b3b4af63035b44` |
| 3 | `theorem` | [sixtyfour_in_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/sixtyfour-in-block--797d5eda7679fbf7eb0c39b2.md) | 25 | `result-track:797d5eda7679fbf7eb0c39b2426760f2a6d48845417bce48c89799d4b857d26d` |
| 4 | `theorem` | [sixtyfive_not_in_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/sixtyfive-not-in-block--4b45127bf841e8485d33f066.md) | 29 | `result-track:4b45127bf841e8485d33f066ee7735f5c409812b5db09bb510906c9f3e136c10` |
| 5 | `theorem` | [negative_floor_not_truncation](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/negative-floor-not-truncation--ddde0a4bbe33a6a62edbc6c8.md) | 34 | `result-track:ddde0a4bbe33a6a62edbc6c8076e2485a3d38aa57a43caa48309243bfcb35f0e` |
| 6 | `theorem` | [exact_ceiling_not_next](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/exact-ceiling-not-next--08aa0baefcc6c4afe3762c2b.md) | 37 | `result-track:08aa0baefcc6c4afe3762c2b511cc03fefbd4e962463461befdf57078533a8fd` |
| 7 | `theorem` | [zero_steps_keep_error](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/zero-steps-keep-error--46c42e7d08654b1e0e2033dd.md) | 40 | `result-track:46c42e7d08654b1e0e2033dd7d33ff9124c5f1ac54524c20a05bbe348b884bb7` |
| 8 | `theorem` | [quadratic_residue_rounds_up](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/quadratic-residue-rounds-up--4bc10808fae4e7020abaf627.md) | 42 | `result-track:4bc10808fae4e7020abaf627285c6627d0ff2ada1426b10ea990fc9a919f6084` |
| 9 | `theorem` | [negative_error_blocked](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/negative-error-blocked--df54a1ca23476b48418fb6cd.md) | 46 | `result-track:df54a1ca23476b48418fb6cdd4d39d32f43b9d96e67a0296b715b204e7b3f7e2` |
| 10 | `theorem` | [unit_seed_keeps_allowance](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/unit-seed-keeps-allowance--afc0c93a0874a73404ca7a2f.md) | 49 | `result-track:afc0c93a0874a73404ca7a2f94709391de3f80b94f8859964d556e7853b1b557` |
| 11 | `theorem` | [later_record_unchanged](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/later-record-unchanged--d7363453bf4766964a16b719.md) | 51 | `result-track:d7363453bf4766964a16b7196cdf88cdb9e6d23961bcd7a8d29ada9646181586` |
| 12 | `theorem` | [terminal_unchanged](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FirstBlockControls.lean/declarations/terminal-unchanged--192c468679bae93c833e5e8e.md) | 56 | `result-track:192c468679bae93c833e5e8e852d503374db0c757f0c648555db92b29df47c4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
