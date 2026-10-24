# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SumFourSquares.Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05e44b1be541c77c571022c25f91066da9ea3b59",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05e44b1be541c77c571022c25f91066da9ea3b59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Identities` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Parity` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/macro-rules--3d688b7c0fbf5aba8c33fb3a.md) | 30 | `declaration-track:3d688b7c0fbf5aba8c33fb3a96637bd45ad838a392244d8c397643573c6bc214` |
| 2 | `theorem` | [euler_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/euler-four-squares--a732e90634c0e7b868b4216a.md) | 33 | `result-track:a732e90634c0e7b868b4216a719dbfd74fa73f44a6c77c8d22bc36a053150521` |
| 3 | `theorem` | [Nat.euler_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/nat-euler-four-squares--0b3294bc87bc834e50702f25.md) | 39 | `result-track:0b3294bc87bc834e50702f25a7de819f7a56392d932489de4699a8fd431701e2` |
| 4 | `theorem` | [sq_add_sq_of_two_mul_sq_add_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/sq-add-sq-of-two-mul-sq-add-sq--62149ecfde182249653f2908.md) | 51 | `result-track:62149ecfde182249653f29084e76fabab945b9a2a17bd489323062472c05ac12` |
| 5 | `theorem` | [lt_of_sum_four_squares_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/lt-of-sum-four-squares-eq-mul--3cea8e70a0cad54adef397dc.md) | 67 | `result-track:3cea8e70a0cad54adef397dc93510737f5bcb815153689d05310a1a766e10ef8` |
| 6 | `theorem` | [exists_sq_add_sq_add_one_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/exists-sq-add-sq-add-one-eq-mul--627ebb01d8ba894cba8328e1.md) | 81 | `result-track:627ebb01d8ba894cba8328e19d84ba82c7c345332e81154df50048d4f4392147` |
| 7 | `theorem` | [exists_sq_add_sq_add_one_eq_k](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/exists-sq-add-sq-add-one-eq-k--b8d40ba50634a5d3e8c4c138.md) | 103 | `result-track:b8d40ba50634a5d3e8c4c1388b1bdafcc8cb106b4492fcb6ed5e46fe560a9ab0` |
| 8 | `theorem` | [sum_four_squares_of_two_mul_sum_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/sum-four-squares-of-two-mul-sum-four-squares--da9b068dff9aae9c5e0d1bb2.md) | 117 | `result-track:da9b068dff9aae9c5e0d1bb2ef140ff5bf9ed3667ceb7a1553234485541c7077` |
| 9 | `theorem` | [Prime.sum_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/prime-sum-four-squares--95d978cf9b8aac55a39703e9.md) | 143 | `result-track:95d978cf9b8aac55a39703e9a3b8c41dbd44c10ce143b983468fd754906f2e53` |
| 10 | `theorem` | [sum_four_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/declarations/sum-four-squares--0bd36fcb1049082953316545.md) | 226 | `result-track:0bd36fcb1049082953316545f3ed64e09f6e0eb346213fca30864a5895f968ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
