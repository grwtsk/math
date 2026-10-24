# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.MoebiusReciprocalPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ec442b10b1903350226742519bf17305d658ce8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ec442b10b1903350226742519bf17305d658ce8`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityFiniteSums`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityMobiusReciprocalPrefix](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/declarations/densitymobiusreciprocalprefix--cf07d8f781a485b43b489267.md) | 18 | `declaration-track:cf07d8f781a485b43b4892670c5d90ee1bd1203e723cce1048e5499674569375` |
| 2 | `theorem` | [density_mobius_reciprocal_prefix_source_inventory](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/declarations/density-mobius-reciprocal-prefix-source-inventory--d516661dd9c2a7c6852196bb.md) | 21 | `result-track:d516661dd9c2a7c6852196bb952e01f648559be4ed85794da04922befa3d783a` |
| 3 | `theorem` | [density_mobius_reciprocal_prefix_zero_of_lt_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/declarations/density-mobius-reciprocal-prefix-zero-of-lt-one--c745a64cc7b06e93abc5a8b1.md) | 26 | `result-track:c745a64cc7b06e93abc5a8b19c30f8659eb1c5be55ab981793579cdef2471d0c` |
| 4 | `theorem` | [density_mobius_closed_floor_convolution](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/declarations/density-mobius-closed-floor-convolution--58d79cfee029eddb7354960a.md) | 30 | `result-track:58d79cfee029eddb7354960a3999a1faaa48a803ecb123fd72a096c2114b8caa` |
| 5 | `theorem` | [density_mobius_reciprocal_prefix_abs_le_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/declarations/density-mobius-reciprocal-prefix-abs-le-one--48c634181d9e14a0263c6bfd.md) | 51 | `result-track:48c634181d9e14a0263c6bfd3deabd70f4c16704955b5a1f069579f45c944c31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
