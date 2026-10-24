# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DivisibleDensityRow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f96a7548f124836a2a6feec12478914fbb8e549",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f96a7548f124836a2a6feec12478914fbb8e549`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebius`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.Prime.Infinite` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [divisible_density_row_at_cutoff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean/declarations/divisible-density-row-at-cutoff--4d32bfd27f08c0df07077f9c.md) | 19 | `result-track:4d32bfd27f08c0df07077f9c179fa296e733c0e37a5865dbd551186bbc92215a` |
| 2 | `theorem` | [prime_divisible_density_row_at_cutoff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean/declarations/prime-divisible-density-row-at-cutoff--23187b2be3a0e44862ae1690.md) | 35 | `result-track:23187b2be3a0e44862ae1690b133f4e4c358676f966c48559c24d13abfb169de` |
| 3 | `theorem` | [prime_divisible_row_exceeds_inverse_square](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean/declarations/prime-divisible-row-exceeds-inverse-square--b378ecd1b1f38a6b34f4fb05.md) | 44 | `result-track:b378ecd1b1f38a6b34f4fb056f2b9b4d11200a62977a326facd62535c6024ae6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
