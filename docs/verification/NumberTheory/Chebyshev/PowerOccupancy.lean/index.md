# Verification target: GRWTSK.NumberTheory.Chebyshev.PowerOccupancy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95e7281beff83923aeb18c63b214979729281e5a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/PowerOccupancy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/PowerOccupancy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/PowerOccupancy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95e7281beff83923aeb18c63b214979729281e5a`.

Source path: `GRWTSK/NumberTheory/Chebyshev/PowerOccupancy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/PowerOccupancy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Pow` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [successor_power_gap](../../../../mathematics/NumberTheory/Chebyshev/PowerOccupancy.lean/declarations/successor-power-gap--c075a5a5c2c9079afa04378c.md) | 23 | `result-track:c075a5a5c2c9079afa04378cf0ebf4613cdce164b33e369e15e7be1d55584faa` |
| 2 | `theorem` | [successor_power_above_square](../../../../mathematics/NumberTheory/Chebyshev/PowerOccupancy.lean/declarations/successor-power-above-square--de293a9b9389356080333a91.md) | 41 | `result-track:de293a9b9389356080333a91aab48e68d2e3005075c81ace64db7737ecdd366c` |
| 3 | `theorem` | [square_interval_power_base_unique](../../../../mathematics/NumberTheory/Chebyshev/PowerOccupancy.lean/declarations/square-interval-power-base-unique--f27267be454f2d13ce4911ea.md) | 61 | `result-track:f27267be454f2d13ce4911ea1ed7aa343b243b040b2aec427e2d3ad0a25332d7` |
| 4 | `theorem` | [closed_left_endpoint_control](../../../../mathematics/NumberTheory/Chebyshev/PowerOccupancy.lean/declarations/closed-left-endpoint-control--35ccaac6319b4863123ca552.md) | 77 | `result-track:35ccaac6319b4863123ca552f98eef3d4d764bc8332417f0d87f6a2ccc43da72` |
| 5 | `theorem` | [exponent_one_control](../../../../mathematics/NumberTheory/Chebyshev/PowerOccupancy.lean/declarations/exponent-one-control--34d337a0cfa43b2821a66616.md) | 83 | `result-track:34d337a0cfa43b2821a66616f9edac4c8a5ba89335135500e1a8c39948a04fe3` |
| 6 | `theorem` | [different_exponents_control](../../../../mathematics/NumberTheory/Chebyshev/PowerOccupancy.lean/declarations/different-exponents-control--2543620d774e73f4ae0dfe78.md) | 90 | `result-track:2543620d774e73f4ae0dfe780d8c459df6664737c4613040e21d57a0c58c1b1e` |
| 7 | `theorem` | [right_square_endpoint_control](../../../../mathematics/NumberTheory/Chebyshev/PowerOccupancy.lean/declarations/right-square-endpoint-control--ea7ac8c9780630b3dd5f2b61.md) | 96 | `result-track:ea7ac8c9780630b3dd5f2b61c5cc196ea9cbe4b8499db70f4e1fa001538b0456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
