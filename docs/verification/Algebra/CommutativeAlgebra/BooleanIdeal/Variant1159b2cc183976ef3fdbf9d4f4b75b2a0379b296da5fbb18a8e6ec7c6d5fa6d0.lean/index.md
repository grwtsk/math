# Verification target: GRWTSK.Algebra.CommutativeAlgebra.BooleanIdeal.Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "117529826c14da46ef4ad86adc5522a595a2d026",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `117529826c14da46ef4ad86adc5522a595a2d026`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.ShiftSemantics` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BooleanCoordinateRing](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/booleancoordinatering--74acc0938da40e81ad8a3d52.md) | 23 | `declaration-track:74acc0938da40e81ad8a3d52c998c7c0872fe4a99a3131090d33aedce1d0d25c` |
| 2 | `def` | [bitfieldCoordinate](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/bitfieldcoordinate--6565b47ffe3f568c98f9b3b9.md) | 26 | `declaration-track:6565b47ffe3f568c98f9b3b9e7492f78dc4fa7eaa770e1ab8070fe2ef75eb1d6` |
| 3 | `structure` | [BooleanIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/booleanideal--4c7083434a4cc29a487bfe55.md) | 31 | `declaration-track:4c7083434a4cc29a487bfe550902ff8e0d3a83b09417ea8b80ec79a3adadfab4` |
| 4 | `def` | [BooleanIdeal.IsModel](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/booleanideal-ismodel--c14b45e852cfabc12c91528e.md) | 37 | `declaration-track:c14b45e852cfabc12c91528ec91fcfc6756c12005311fb87ee0333a5a47fd524` |
| 5 | `abbrev` | [BooleanVariety](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/booleanvariety--cf30e876e4a0a35984358d0d.md) | 44 | `declaration-track:cf30e876e4a0a35984358d0d37402dfc89bf72a211be93e9f64e1501ce415e93` |
| 6 | `theorem` | [BooleanIdeal.variety_empty_of_one_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/booleanideal-variety-empty-of-one-mem--dcbb367121619fd663c63712.md) | 47 | `result-track:dcbb367121619fd663c63712c385fe6a93ce61296914793bc63cbd7ecf044431` |
| 7 | `structure` | [BooleanNullstellensatzCertificate](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/booleannullstellensatzcertificate--e97a97eeb57dbb31f767db46.md) | 57 | `declaration-track:e97a97eeb57dbb31f767db46a3842a5ff4e0e0c921cc39241cb4524302fab507` |
| 8 | `theorem` | [boolean_variety_empty_iff_one_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/boolean-variety-empty-iff-one-mem--831d9bbecbc3ebaffb3e27ba.md) | 63 | `result-track:831d9bbecbc3ebaffb3e27ba4bad72963e02b347615c733dc12320cd14685146` |
| 9 | `structure` | [TypedBooleanIdealSystem](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/typedbooleanidealsystem--32204c36669fb2787f91823d.md) | 73 | `declaration-track:32204c36669fb2787f91823d5186d059568acb0ae1d62b6bd2e8dbee3a55cefd` |
| 10 | `structure` | [HammingBudgetCertificate](../../../../../mathematics/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/declarations/hammingbudgetcertificate--5a3fdefaa2eab83e7fe694fa.md) | 82 | `declaration-track:5a3fdefaa2eab83e7fe694fa1055d3473fe4ad93a8c6d4f1594914bdc5e3a5e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
