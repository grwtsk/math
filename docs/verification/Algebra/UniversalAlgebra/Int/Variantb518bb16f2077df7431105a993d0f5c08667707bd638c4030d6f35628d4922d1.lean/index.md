# Verification target: GRWTSK.Algebra.UniversalAlgebra.Int.Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9493163e7061a3e6a6ff629f0915c20501375de6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9493163e7061a3e6a6ff629f0915c20501375de6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean/declarations/instzeroleoneclass--56346d697564e2e786e3f73b.md) | 44 | `declaration-track:56346d697564e2e786e3f73bb879843c8d0183bb06119203213d263ecd615a0d` |
| 2 | `instance` | [instIsStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean/declarations/instisstrictorderedring--1203046f5f4039cf0982888c.md) | 45 | `declaration-track:1203046f5f4039cf0982888c90f9a9c36a959ba37a6cfbd6bbf7f4d90945718d` |
| 3 | `lemma` | [isCompl_even_odd](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean/declarations/iscompl-even-odd--5ab0be39ec8728c5db1dde8f.md) | 49 | `result-track:5ab0be39ec8728c5db1dde8f9be25b4432beac9b9b2c2d87856bd53c9314e1cc` |
| 4 | `lemma` | [_root_.GRWTSK.Algebra.UniversalAlgebra.IsComplEvenOdd.Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.Nat.cast_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean/declarations/root-grwtsk-algebra-universalalgebra-iscomplevenodd-variant7f28bdcfd4cc2--9a5802e36b2b37400054c78a.md) | 52 | `result-track:9a5802e36b2b37400054c78a204c4dd17f5c399610fc22272998d0db702e8692` |
| 5 | `lemma` | [two_le_iff_pos_of_even](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean/declarations/two-le-iff-pos-of-even--db4765ef66875dcd69fa1b85.md) | 55 | `result-track:db4765ef66875dcd69fa1b85fe2b1379ff28ae266363b8e9ba7ec68d8b2519fa` |
| 6 | `lemma` | [add_two_le_iff_lt_of_even_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variantb518bb16f2077df7431105a993d0f5c08667707bd638c4030d6f35628d4922d1.lean/declarations/add-two-le-iff-lt-of-even-sub--114d71a3a4e826a20b7ba49c.md) | 58 | `result-track:114d71a3a4e826a20b7ba49c6e2dcbd25d85b752d7ba5a11af55338c22dd98c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
