# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cardinality.Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccd47125e8a304c8d1ec784175182d127b8695ba",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccd47125e8a304c8d1ec784175182d127b8695ba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Cardinal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Encodable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.GaloisField` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Cardinality` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Divisibility` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Fintype.isPrimePow_card_of_field](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean/declarations/fintype-isprimepow-card-of-field--b4c25878fab25ac6ccb2e1a6.md) | 45 | `result-track:b4c25878fab25ac6ccb2e1a69dccae9f3eb46a4757d3c70ee3da319416a33319` |
| 2 | `theorem` | [Fintype.nonempty_field_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean/declarations/fintype-nonempty-field-iff--36bf83c1980c661b892771d9.md) | 57 | `result-track:36bf83c1980c661b892771d96dcdcb38a4255400ea830d749926545ce82e70c2` |
| 3 | `theorem` | [Fintype.not_isField_of_card_not_prime_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean/declarations/fintype-not-isfield-of-card-not-prime-pow--2bde50a5bb97a4794c2777e4.md) | 65 | `result-track:2bde50a5bb97a4794c2777e4068824ef57856e9722648c5d6c86ba6c34d37e3c` |
| 4 | `theorem` | [Infinite.nonempty_field](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean/declarations/infinite-nonempty-field--8636795b0b1775ae9fa0282f.md) | 70 | `result-track:8636795b0b1775ae9fa0282f1a26e281fd4f1359bb6766138dcdc467f3c61f1c` |
| 5 | `theorem` | [Field.nonempty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantbb38772473553829c41cf4f9a800d54bf05a188077659d960bbac40ab17adfb9.lean/declarations/field-nonempty-iff--3b4d9b24c420405c8ef92bb3.md) | 76 | `result-track:3b4d9b24c420405c8ef92bb3064400830226d88c65530777c1e6695c0e56c356` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
