# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cardinality.Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b681a629e78b0adafb31fc6d3352666d07e2a8c4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b681a629e78b0adafb31fc6d3352666d07e2a8c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Cardinal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Denumerable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.GaloisField` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.TransferInstance` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Cardinality` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Divisibility` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Fintype.isPrimePow_card_of_field](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/declarations/fintype-isprimepow-card-of-field--74d30593eb15d8f8c6e892bb.md) | 48 | `result-track:74d30593eb15d8f8c6e892bb6009a9cb8b77550500a4a665f7633ed709a16ea0` |
| 2 | `theorem` | [Fintype.nonempty_field_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/declarations/fintype-nonempty-field-iff--36c9a3911e8795cdb87645a2.md) | 61 | `result-track:36c9a3911e8795cdb87645a2071bdf7f5604cfe6fa80ab3f3972ce3af62cc75b` |
| 3 | `theorem` | [Fintype.not_isField_of_card_not_prime_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/declarations/fintype-not-isfield-of-card-not-prime-pow--9bc6e5742c9ab3a78d2d8f6b.md) | 68 | `result-track:9bc6e5742c9ab3a78d2d8f6bd439f73b70a8ee7c0c428f06b24d77a6dd253d2c` |
| 4 | `theorem` | [Infinite.nonempty_field](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/declarations/infinite-nonempty-field--7cfed6d944054b2a3c684f53.md) | 75 | `result-track:7cfed6d944054b2a3c684f5335c07f57b4d51d0587708d334b25198d4bf3bb3b` |
| 5 | `theorem` | [Field.nonempty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/declarations/field-nonempty-iff--9e71b254fe65bd9f0ebb9f40.md) | 89 | `result-track:9e71b254fe65bd9f0ebb9f4033b2585908f48b403634bfd4c1af9008c1a41234` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
