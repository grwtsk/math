# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cardinality.Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ed0f20c48789be21c4ec3994aa18fec7f318c3b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ed0f20c48789be21c4ec3994aa18fec7f318c3b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Cardinal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Encodable` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.GaloisField` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Cardinality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Divisibility` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Fintype.isPrimePow_card_of_field](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean/declarations/fintype-isprimepow-card-of-field--3c93b10a5bcbde7f7e880523.md) | 37 | `result-track:3c93b10a5bcbde7f7e880523577fb99679ce31f33772f3a10158d2dbe4f9e68f` |
| 2 | `theorem` | [Fintype.nonempty_field_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean/declarations/fintype-nonempty-field-iff--bee60d89a6dc933f3aebe387.md) | 49 | `result-track:bee60d89a6dc933f3aebe387bbd41b3827be020d755bb44b8e1bbb70d6402738` |
| 3 | `theorem` | [Fintype.not_isField_of_card_not_prime_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean/declarations/fintype-not-isfield-of-card-not-prime-pow--c00527b9e0bbc97dd171ef66.md) | 57 | `result-track:c00527b9e0bbc97dd171ef66ac74e632e0cba9172ae62d9e509826bd98592f01` |
| 4 | `theorem` | [Infinite.nonempty_field](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean/declarations/infinite-nonempty-field--e6eecbc9cbc8ef43be15e42c.md) | 62 | `result-track:e6eecbc9cbc8ef43be15e42cc3f21672788076acaeb43cf0495466d5d14d2d2e` |
| 5 | `theorem` | [Field.nonempty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cardinality/Variantd3bfd22362cdb5ab304ee155e37b83f3effceee3d4d95160848f222d1f9a4cbc.lean/declarations/field-nonempty-iff--4e20fca0218c34b9a65b6a37.md) | 68 | `result-track:4e20fca0218c34b9a65b6a371e8cc26955939856225e423e482aa1aa274d55bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
