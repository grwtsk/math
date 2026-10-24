# Verification target: GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3566e10e2a75b8364c4577ebc8a7622b57f1aa2c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/index.md) · [Full source](../../../../mathematics/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3566e10e2a75b8364c4577ebc8a7622b57f1aa2c`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Exponential` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_lt_exp_two_mul_div_four](../../../../mathematics/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/declarations/polynomial-lt-exp-two-mul-div-four--38dcb2fe3be2fe4348144e2f.md) | 33 | `result-track:38dcb2fe3be2fe4348144e2f79d02ca9e3b323663006f71d837071d3db40f8a7` |
| 2 | `theorem` | [polynomial_lt_exp_two_mul_div_four_of_ge_threshold](../../../../mathematics/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/declarations/polynomial-lt-exp-two-mul-div-four-of-ge-threshold--99d3debfda88e43fca30d8a1.md) | 66 | `result-track:99d3debfda88e43fca30d8a1fc97eb92ef2f38b2e427655149af68b8ab5c0cd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
