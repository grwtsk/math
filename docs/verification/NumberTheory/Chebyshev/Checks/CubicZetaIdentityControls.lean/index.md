# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.CubicZetaIdentityControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18e7f4b2372f61b44eea8497d83a9f658ef01b43",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18e7f4b2372f61b44eea8497d83a9f658ef01b43`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pole_parameter_not_admissible](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/declarations/pole-parameter-not-admissible--afba951cba826e4bf7daf1a3.md) | 20 | `result-track:afba951cba826e4bf7daf1a3c968de147064d7089adc8a0bcd5f5114680131cc` |
| 2 | `theorem` | [left_boundary_not_admissible](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/declarations/left-boundary-not-admissible--3e73385b201902369ffa0bb8.md) | 23 | `result-track:3e73385b201902369ffa0bb89e089e92a2d83e46d780d3ca80623a5b42cbbb61` |
| 3 | `theorem` | [zero_value_from_cubic](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/declarations/zero-value-from-cubic--30b5e526d60ffa5c8bc768ae.md) | 26 | `result-track:30b5e526d60ffa5c8bc768ae023125eb0a734c124e5202916090eab3c6ef6bf1` |
| 4 | `theorem` | [minus_one_value_from_cubic](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/declarations/minus-one-value-from-cubic--fac892058a65ffc04f8dbed0.md) | 31 | `result-track:fac892058a65ffc04f8dbed0be62c947fb11ffec78be8d90955c722d8eb24122` |
| 5 | `theorem` | [normalized_value_at_pole](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/declarations/normalized-value-at-pole--9bcc97e431b20055ad142c10.md) | 36 | `result-track:9bcc97e431b20055ad142c10ad69960bca61d20c202b7928ec5abb835b46a18c` |
| 6 | `theorem` | [zero_factor_does_not_cancel](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/declarations/zero-factor-does-not-cancel--4a2e86b54af2d5bbda89fa7b.md) | 41 | `result-track:4a2e86b54af2d5bbda89fa7b5b8f97ac90306b0bac3ffb855c03c925b880fae9` |
| 7 | `theorem` | [terminal_zero_exponent](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/declarations/terminal-zero-exponent--a70782df6edcb44f8e82cec0.md) | 45 | `result-track:a70782df6edcb44f8e82cec088b2ff7f65af2de5adcd34c223d9a35fd15594fe` |
| 8 | `theorem` | [empty_prefix_at_two](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/declarations/empty-prefix-at-two--4d7af082a3f448cac9247cae.md) | 49 | `result-track:4d7af082a3f448cac9247cae4b54503ea430f3646d2eb1f424bea4f79b270795` |
| 9 | `theorem` | [zero_divisor_does_not_bound_regular_term](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicZetaIdentityControls.lean/declarations/zero-divisor-does-not-bound-regular-term--a03138ac52d04c4720213d2c.md) | 56 | `result-track:a03138ac52d04c4720213d2cba3b1306ef0e782eb339fb2d228242506e7268f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
