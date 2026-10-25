# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.DoubleFactorial.Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01c2df5b038b099f2b262cdbe0229b3580591235",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01c2df5b038b099f2b262cdbe0229b3580591235`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [doubleFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/doublefactorial--8a8e97bd4af298a65a073ddf.md) | 37 | `declaration-track:8a8e97bd4af298a65a073ddf7dedc454f91c68745577e4ff9099169daac7bf9b` |
| 2 | `lemma` | [doubleFactorial_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/doublefactorial-pos--adabd6c300c038a44f45d475.md) | 45 | `result-track:adabd6c300c038a44f45d4750933c2ca0977f2ddf39c5e56a2429218f8b6b254` |
| 3 | `theorem` | [doubleFactorial_add_two](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/doublefactorial-add-two--42f79eafad5e82f02b6daf5e.md) | 49 | `result-track:42f79eafad5e82f02b6daf5e48430795b6e867bf5ff9ec6e588e650c9e6e06de` |
| 4 | `theorem` | [doubleFactorial_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/doublefactorial-add-one--73161bc2bb1de929d70768f6.md) | 52 | `result-track:73161bc2bb1de929d70768f682986507e356ee5f17607dc8dcdd67e53749e96c` |
| 5 | `theorem` | [factorial_eq_mul_doubleFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/factorial-eq-mul-doublefactorial--1807adef298674d194a5f4a8.md) | 54 | `result-track:1807adef298674d194a5f4a81d5fd789668f45a69d83793f2ca4ff6ba498dfa4` |
| 6 | `lemma` | [doubleFactorial_le_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/doublefactorial-le-factorial--3f38dd1f803707e8b67627e8.md) | 60 | `result-track:3f38dd1f803707e8b67627e8f9918cf13aa555b9cb3d8b01b8d67d4ae718501d` |
| 7 | `theorem` | [doubleFactorial_two_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/doublefactorial-two-mul--b47a900d6409501e301baebb.md) | 65 | `result-track:b47a900d6409501e301baebbc7194ded45716bb6d567e294b439c1c72f24f013` |
| 8 | `theorem` | [doubleFactorial_eq_prod_even](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/doublefactorial-eq-prod-even--b8769140a144fade36036c75.md) | 72 | `result-track:b8769140a144fade36036c7535dc9601945bcbdad675b07c1d109daa7d7f29c9` |
| 9 | `theorem` | [doubleFactorial_eq_prod_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/doublefactorial-eq-prod-odd--ad37090a14977130c2cd9f71.md) | 79 | `result-track:ad37090a14977130c2cd9f716e2c5079d3ebbf5c493a92a6ab89f8e03e7844f4` |
| 10 | `def` | [evalDoubleFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/evaldoublefactorial--cc088316937f3c3a97c1c6bc.md) | 94 | `declaration-track:cc088316937f3c3a97c1c6bc89d54c2c03102fc319b5984c90a80fca52eeb1c2` |
| 11 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/DoubleFactorial/Varianta2228bf89aa4b02e0ff0a102d200d9c63328a896e11dfd2ddbc167d58f9674b0.lean/declarations/example--315a7d020add31156b646ddd.md) | 101 | `declaration-track:315a7d020add31156b646ddd7d21fbfd63c1f0bf443e5d3786a256a49ba05900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
