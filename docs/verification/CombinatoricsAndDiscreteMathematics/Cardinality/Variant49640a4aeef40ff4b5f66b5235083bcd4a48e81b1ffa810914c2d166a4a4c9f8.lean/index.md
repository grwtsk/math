# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cardinality.Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71cea5ebf8cf56161290cecfe24e92ea4e4fbd18",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71cea5ebf8cf56161290cecfe24e92ea4e4fbd18`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Cardinal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Denumerable` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.GaloisField` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.TransferInstance` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Cardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Divisibility` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Fintype.isPrimePow_card_of_field](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean/declarations/fintype-isprimepow-card-of-field--7ffd680793c17e7f178d6cb8.md) | 40 | `result-track:7ffd680793c17e7f178d6cb8e8defd42678d9f44c1c5cde93b840bd9d8246400` |
| 2 | `theorem` | [Fintype.nonempty_field_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean/declarations/fintype-nonempty-field-iff--65873de27f8e915d39b226d8.md) | 53 | `result-track:65873de27f8e915d39b226d86471f1ba9c20fd890ba23efd0479663d5b976daa` |
| 3 | `theorem` | [Fintype.not_isField_of_card_not_prime_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean/declarations/fintype-not-isfield-of-card-not-prime-pow--6e05d6650a0c218c090dedbb.md) | 60 | `result-track:6e05d6650a0c218c090dedbbcf42f0c35fcd4d9ded0f7e3d88031432fefc6432` |
| 4 | `theorem` | [Infinite.nonempty_field](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean/declarations/infinite-nonempty-field--a804240aee26c70fd2d672ae.md) | 67 | `result-track:a804240aee26c70fd2d672aec2098e1b8120a980db3ec11d97c614ffc8c37de6` |
| 5 | `theorem` | [Field.nonempty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variant49640a4aeef40ff4b5f66b5235083bcd4a48e81b1ffa810914c2d166a4a4c9f8.lean/declarations/field-nonempty-iff--8a590053bc3098fb9c0519af.md) | 81 | `result-track:8a590053bc3098fb9c0519af161a991bc267fb7c9f2400580e25a286830a9353` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
