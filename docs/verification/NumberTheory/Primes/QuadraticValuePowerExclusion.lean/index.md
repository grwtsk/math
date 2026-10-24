# Verification target: GRWTSK.NumberTheory.Primes.QuadraticValuePowerExclusion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c0e42816d744016b78af53067b9eb80800576c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/QuadraticValuePowerExclusion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/QuadraticValuePowerExclusion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/QuadraticValuePowerExclusion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c0e42816d744016b78af53067b9eb80800576c`.

Source path: `GRWTSK/NumberTheory/Primes/QuadraticValuePowerExclusion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/QuadraticValuePowerExclusion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadraticValue_between_squares](../../../../mathematics/NumberTheory/Primes/QuadraticValuePowerExclusion.lean/declarations/quadraticvalue-between-squares--eb271c5363cf88a9580d40c7.md) | 22 | `result-track:eb271c5363cf88a9580d40c7eab16d7522204521d33e3a9be656d33a8faae25a` |
| 2 | `theorem` | [quadraticValue_not_square](../../../../mathematics/NumberTheory/Primes/QuadraticValuePowerExclusion.lean/declarations/quadraticvalue-not-square--63ef076ec2a13eac60c87c4a.md) | 27 | `result-track:63ef076ec2a13eac60c87c4a233aef4ba51bd127675f8faffcf3e5ea540aed15` |
| 3 | `theorem` | [quadraticValue_ne_even_power](../../../../mathematics/NumberTheory/Primes/QuadraticValuePowerExclusion.lean/declarations/quadraticvalue-ne-even-power--baeca8b2be8fc666078f3d1e.md) | 39 | `result-track:baeca8b2be8fc666078f3d1e7ad5b72be482704eb684d3bdcaba714633e28a78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
